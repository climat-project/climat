import { EOL } from 'os';
import path from 'path';
import {
  CLIMAT_HOME_DIR_NAME,
  MAIN_MANIFEST_NAME,
  moveManifestToClimatHome,
  removeToolchain,
} from './utils';
import fs from 'fs-extra';

const join = path.posix.join;
const climatHome = join('/', 'usr', 'local', 'lib', CLIMAT_HOME_DIR_NAME);
const climatScriptBin = join('/', 'usr', 'local', 'bin');

function getScriptContent(name: string): string {
  return (
    '#' + // Need to do this because of the SheBang webpack plugin. TODO: Check if we can remove it
    `!/bin/bash${EOL}${EOL}climat execNoValidation "${climatHome}/${name}/${MAIN_MANIFEST_NAME}" --command "$*"${EOL}`
  );
}

export function unixInstall(pathToManifest: string, name: string): void {
  const binPath = join(climatScriptBin, name);
  moveManifestToClimatHome(climatHome, pathToManifest, name, path.posix);

  if (!fs.pathExistsSync(binPath)) {
    fs.writeFileSync(binPath, getScriptContent(name), {
      flag: 'wx',
    });
    fs.chmodSync(binPath, 0o755);
  }
}

export function unixUninstall(name: string): void {
  removeToolchain(climatHome, name, path.posix);
  fs.rmSync(path.join(climatScriptBin, name));
}
