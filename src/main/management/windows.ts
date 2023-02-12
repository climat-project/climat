import path from 'path';
import { homedir } from 'os';
import {
  CLIMAT_HOME_DIR_NAME,
  MAIN_MANIFEST_NAME,
  moveManifestToClimatHome,
  removeToolchain,
} from './utils';
import fs from 'fs-extra';
import upath from 'upath';
import { warn } from '../output/theme';

const join = path.win32.join;
const climatHome = join(homedir(), CLIMAT_HOME_DIR_NAME);
const climatBinPath = join(climatHome, 'bin');

function getBatchScript(name: string): string {
  return `climat execNoValidation "${upath.toUnix(
    join(climatHome, name, MAIN_MANIFEST_NAME),
  )}" --command`;
}

function getBatchFilePath(name: string): string {
  return join(climatBinPath, `${name}.bat`);
}

export async function windowsInstall(
  manifest: string,
  name: string,
): Promise<void> {
  moveManifestToClimatHome(climatHome, manifest, name, path.win32);

  fs.ensureDirSync(climatBinPath);
  fs.writeFileSync(getBatchFilePath(name), getBatchScript(name));

  // TODO: add path automatically
  // This requires writing to the Windows registry
  // Was attempted before but it was deleted (see 608553d9073a08df9e2329c0e3d97354cca4b4e7)
  if (!process.env.PATH?.includes(climatBinPath)) {
    console.warn(warn(`Please add '${climatBinPath}' to system PATH`));
  }
}

export function windowsUninstall(name: string): void {
  removeToolchain(climatHome, name, path.win32);
  fs.unlinkSync(getBatchFilePath(name));
}
