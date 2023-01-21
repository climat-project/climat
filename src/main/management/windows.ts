import path from 'path';
import { homedir } from 'os';
import {
  CLIMAT_HOME_DIR_NAME,
  MAIN_JSON_NAME,
  moveJsonToClimatHome,
  removeJsonFromClimatHome,
} from './utils';
import fs from 'fs-extra';
import upath from 'upath';
import { promisified as regedit } from 'regedit';

const HKCU_ENVIRONMENT = 'HKCU\\Environment';
const join = path.win32.join;
const climatHome = join(homedir(), CLIMAT_HOME_DIR_NAME);
const climatBinPath = join(climatHome, 'bin');

function getBatchScript(name: string): string {
  return `climat execNoValidation "${upath.toUnix(
    join(climatHome, name, MAIN_JSON_NAME),
  )}"`;
}

function getBatchFilePath(name: string): string {
  return join(climatBinPath, `${name}.bat`);
}

async function getUserPath(): Promise<string> {
  const results = await regedit.list([HKCU_ENVIRONMENT]);
  const env = results[HKCU_ENVIRONMENT];
  if (!env.exists) {
    throw new Error(`Nonexistent registry key ${HKCU_ENVIRONMENT}`);
  }

  return env.values['Path'].value as string;
}

async function augmentPathWithClimatBin(): Promise<void> {
  const envPath = await getUserPath();
  if (envPath.includes(climatBinPath)) {
    return;
  }
  await regedit.putValue({
    [HKCU_ENVIRONMENT]: {
      Path: {
        value: `${envPath}${climatBinPath};`,
        type: 'REG_SZ',
      },
    },
  });
}

export async function windowsInstall(
  json: string,
  name: string,
): Promise<void> {
  moveJsonToClimatHome(json, name, path.win32);

  fs.ensureDirSync(climatBinPath);
  fs.writeFileSync(getBatchFilePath(name), getBatchScript(name));

  await augmentPathWithClimatBin();
}

export function windowsUninstall(name: string): void {
  removeJsonFromClimatHome(name, path.win32);
  fs.unlinkSync(getBatchFilePath(name));
}
