import { homedir } from 'os';
import fs from 'fs-extra';
import path from 'path';
import { isError } from '../exceptions';

export const CLIMAT_HOME_DIR_NAME = '.climat';
export const MAIN_MANIFEST_NAME = 'climat.cli';

const climatHome = path.join(homedir(), CLIMAT_HOME_DIR_NAME);

export function moveManifestToClimatHome(
  pathToManifest: string,
  name: string,
  path: path.PlatformPath,
): void {
  fs.ensureDirSync(climatHome);
  fs.ensureDirSync(path.join(climatHome, name));
  fs.writeFileSync(
    path.join(climatHome, name, MAIN_MANIFEST_NAME),
    pathToManifest,
  );
}

export function removeToolchainFromClimatHome(
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
