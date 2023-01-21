import { EOL, homedir } from 'os';
import path from 'path';
import {
  CLIMAT_HOME_DIR_NAME,
  MAIN_JSON_NAME,
  moveJsonToClimatHome,
  removeToolchainFromClimatHome,
} from './utils';
import fs from 'fs-extra';

const CLIMAT_STAPLE = '#CLIMAT INIT';
const home = homedir();
const join = path.posix.join;
const bashrcPath = join(home, '.bashrc');
const climatHome = join(home, CLIMAT_HOME_DIR_NAME);
const bashAliasesPath = join(climatHome, '.bash_aliases');

function aliasExists(name: string): boolean {
  return (
    fs.pathExistsSync(bashAliasesPath) &&
    fs.readFileSync(bashAliasesPath, 'utf8').includes(`alias ${name}`)
  );
}

function aliasesInitializedInBashRc(): boolean {
  return fs.readFileSync(bashrcPath, 'utf8').includes(CLIMAT_STAPLE);
}

function getAliasesInitializationBashSnippet(): string {
  return [
    EOL,
    CLIMAT_STAPLE,
    `if [ -f ${bashAliasesPath} ]; then`,
    `  . ${bashAliasesPath}`,
    'fi',
    EOL,
  ].join(EOL);
}

function getAliasCommand(name: string): string {
  return `alias ${name}='climat execNoValidation "~/${CLIMAT_HOME_DIR_NAME}/${name}/${MAIN_JSON_NAME}"'${EOL}`;
}

export function unixInstall(json: string, name: string): void {
  moveJsonToClimatHome(json, name, path.posix);

  if (!aliasExists(name)) {
    fs.appendFileSync(bashAliasesPath, getAliasCommand(name));
  }

  if (!aliasesInitializedInBashRc()) {
    fs.appendFileSync(bashrcPath, getAliasesInitializationBashSnippet());
  }
}

export function unixUninstall(name: string): void {
  removeToolchainFromClimatHome(name, path.posix);
  const newData = fs
    .readFileSync(bashAliasesPath, 'utf8')
    .replace(new RegExp(`^alias ${name}.*${EOL}`), '');
  fs.writeFileSync(bashAliasesPath, newData);
}
