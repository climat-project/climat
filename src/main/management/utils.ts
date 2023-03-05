import fs from 'fs-extra';
import path from 'path';
import { isError } from '../exceptions';
import { com } from 'climat-lib';
import parse = com.climat.library.commandParser.parse;
import RootToolchain = com.climat.library.domain.toolchain.RootToolchain;

export const CLIMAT_HOME_DIR_NAME = 'climat';
export const MAIN_MANIFEST_NAME = 'climat.cli';

const join = platformPath().join;

export async function moveManifestToClimatHome(
  toolchainHome: string,
  pathToManifest: string,
  name: string,
): Promise<void> {
  const path = platformPath();
  const toolchainDir = path.join(toolchainHome, name);
  await fs.ensureDir(toolchainHome);
  await fs.chmod(toolchainHome, 0o755);

  await fs.ensureDir(toolchainDir);
  await fs.chmod(toolchainDir, 0o755);

  await fs.writeFile(
    path.join(toolchainDir, MAIN_MANIFEST_NAME),
    pathToManifest,
  );
}

export async function removeToolchain(
  toolchainHome: string,
  name: string,
): Promise<void> {
  try {
    await fs.rm(platformPath().join(toolchainHome, name), {
      recursive: true,
    });
  } catch (e) {
    if (isError(e)) {
      if (e.code === 'ENOENT') {
        throw new Error(`Toolchain named \`${name}\` was not found`);
      }
    }
    throw e;
  }
}

export async function removeAliasSymlinks(
  name: string,
  scriptBin: string,
  toolchainHome: string,
  nameSuffix = '',
): Promise<void> {
  const toolchain = parse(
    (
      await fs.readFile(join(toolchainHome, name, MAIN_MANIFEST_NAME))
    ).toString(),
  );
  const aliases = toolchain.aliases.map((alias) => alias.name);
  await Promise.all(
    aliases.map((alias) => fs.unlink(join(scriptBin, alias + nameSuffix))),
  );
}

export function platformPath(): path.PlatformPath {
  return handlePlatforms(
    () => path.posix,
    () => path.win32,
  );
}

export function handlePlatforms<T>(unix: () => T, windows: () => T): T {
  switch (process.platform) {
    case 'linux':
    case 'darwin':
      return unix();
    case 'win32':
      return windows();
    default:
      throw new Error(`${process.platform} OS is not supported`);
  }
}
