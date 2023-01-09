import { homedir } from 'os';
import fs from 'fs-extra';
import path from 'path';

export const CLIMAT_HOME_DIR_NAME = '.climat';

export function moveJsonToClimatHome(
  pathToJson: string,
  name: string,
  path: path.PlatformPath,
): void {
  const climatHome = path.join(homedir(), CLIMAT_HOME_DIR_NAME);
  fs.ensureDirSync(climatHome);
  fs.copyFileSync(pathToJson, path.join(climatHome, `${name}.json`));
}
