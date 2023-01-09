import { EOL, homedir } from 'os';
import path from 'path';
import { moveJsonToClimatHome } from '$/install/utils';
import fs from 'fs-extra';
import { CLIMAT_HOME_DIR_NAME } from './utils';

const CLIMAT_STAPLE = '#CLIMAT INIT';
const home = homedir();
const bashrcPath = path.join(home, '.bashrc');
const climatHome = path.join(home, CLIMAT_HOME_DIR_NAME);
const bashAliasesPath = path.join(climatHome, '.bash_aliases');

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
  return `alias ${name}='climat execNoValidation "~/${CLIMAT_HOME_DIR_NAME}/${name}.json'${EOL}"`;
}

export default function unix(pathToJson: string, name: string): void {
  moveJsonToClimatHome(pathToJson, name, path.posix);

  if (!aliasExists(name)) {
    fs.appendFileSync(bashAliasesPath, getAliasCommand(name));
  }

  if (!aliasesInitializedInBashRc()) {
    fs.appendFileSync(bashrcPath, getAliasesInitializationBashSnippet());
  }
}
