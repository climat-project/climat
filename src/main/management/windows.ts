import path from 'path';
import { homedir, EOL } from 'os';
import {
  CLIMAT_HOME_DIR_NAME,
  moveManifestToClimatHome,
  removeToolchain,
} from './utils';
import fs from 'fs-extra';
import { warn } from '../output/theme';

const join = path.win32.join;
export const CLIMAT_HOME = join(homedir(), CLIMAT_HOME_DIR_NAME);
export const TOOLCHAIN_HOME = join(CLIMAT_HOME, 'toolchains');
const climatBinPath = join(CLIMAT_HOME, 'bin');

function getBatchScript(name: string): string {
  return `@echo off${EOL}` + `climat runGlobal "${name}" %*`;
}

function getBatchFilePath(name: string): string {
  return join(climatBinPath, `${name}.bat`);
}

export async function windowsInstall(
  manifest: string,
  name: string,
): Promise<void> {
  await moveManifestToClimatHome(TOOLCHAIN_HOME, manifest, name);

  await fs.ensureDir(climatBinPath);
  await fs.writeFile(getBatchFilePath(name), getBatchScript(name));

  // TODO: add path automatically
  // This requires writing to the Windows registry
  // Was attempted before but it was deleted (see 608553d9073a08df9e2329c0e3d97354cca4b4e7)
  if (!process.env.PATH?.includes(climatBinPath)) {
    console.warn(warn(`Please add '${climatBinPath}' to system PATH`));
  }
}

export async function windowsUninstall(name: string): Promise<void> {
  await removeToolchain(TOOLCHAIN_HOME, name);
  await fs.unlink(getBatchFilePath(name));
}

export async function windowsPurge(): Promise<void> {
  await fs.rm(CLIMAT_HOME, {
    recursive: true,
  });
}
