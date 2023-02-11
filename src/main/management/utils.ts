import { homedir } from 'os';
import fs from 'fs-extra';
import path from 'path';
import { isError } from '../exceptions';

export const CLIMAT_HOME_DIR_NAME = 'climat';
export const MAIN_MANIFEST_NAME = 'climat.cli';

export function moveManifestToClimatHome(
  climatHome: string,
  pathToManifest: string,
  name: string,
  path: path.PlatformPath,
): void {
  const toolchainDir = path.join(climatHome, name);
  fs.ensureDirSync(climatHome);
  fs.ensureDirSync(toolchainDir);
  fs.writeFileSync(
    path.join(climatHome, name, MAIN_MANIFEST_NAME),
    pathToManifest,
  );
  fs.chmodSync(toolchainDir, 0o755);
}

export function removeToolchain(
  climatHome: string,
  name: string,
  path: path.PlatformPath,
): void {
  try {
    fs.rmSync(path.join(climatHome, name), {
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
