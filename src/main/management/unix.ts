import { EOL } from 'os';
import path from 'path';
import {
  CLIMAT_HOME_DIR_NAME,
  moveManifestToClimatHome,
  removeAliasSymlinks,
  removeToolchain,
} from './utils';
import fs from 'fs-extra';
import { getInstalledToolchains } from './list';

const join = path.posix.join;
export const CLIMAT_HOME = join(
  '/',
  'usr',
  'local',
  'lib',
  CLIMAT_HOME_DIR_NAME,
);
export const TOOLCHAIN_HOME = join(CLIMAT_HOME, 'toolchains');
const climatScriptBin = join('/', 'usr', 'local', 'bin');

function getScriptContent(name: string): string {
  return (
    '#' + // Need to do this because of the SheBang webpack plugin.
    `!/bin/bash${EOL}${EOL}climat runGlobal "${name}" "$@"${EOL}`
  );
}

export async function unixInstall(
  pathToManifest: string,
  name: string,
  aliases: string[],
): Promise<void> {
  const binPath = join(climatScriptBin, name);
  await moveManifestToClimatHome(TOOLCHAIN_HOME, pathToManifest, name);

  if (!(await fs.pathExists(binPath))) {
    await fs.writeFile(binPath, getScriptContent(name), {
      flag: 'wx',
    });
    await fs.chmod(binPath, 0o755);

    await Promise.all(
      aliases.map(async (alias) => {
        await fs.symlink(binPath, join(climatScriptBin, alias));
        await fs.chmod(binPath, 0o755);
      }),
    );
  }
}

export async function unixUninstall(name: string): Promise<void> {
  await removeAliasSymlinks(name, climatScriptBin, TOOLCHAIN_HOME);
  await removeToolchain(TOOLCHAIN_HOME, name);
  await fs.rm(join(climatScriptBin, name));
}

export async function unixPurge(): Promise<void> {
  await Promise.all(
    (
      await getInstalledToolchains()
    ).map((tc) => fs.rm(join(climatScriptBin, tc))),
  );
  await fs.rm(CLIMAT_HOME, {
    recursive: true,
  });
}
