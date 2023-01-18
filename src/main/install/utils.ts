import { homedir } from 'os';
import fs from 'fs-extra';
import path from 'path';

export const CLIMAT_HOME_DIR_NAME = '.climat';
export const MAIN_JSON_NAME = 'climat.json';

export function moveJsonToClimatHome(
  pathToJson: string,
  name: string,
  path: path.PlatformPath,
): void {
  const climatHome = path.join(homedir(), CLIMAT_HOME_DIR_NAME);
  fs.ensureDirSync(climatHome);
  fs.ensureDirSync(path.join(climatHome, name));
  fs.copyFileSync(pathToJson, path.join(climatHome, name, MAIN_JSON_NAME));
}
