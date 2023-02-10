import { EOL, homedir } from "os";
import path from "path";
import {
  CLIMAT_HOME_DIR_NAME,
  MAIN_MANIFEST_NAME,
  moveManifestToClimatHome,
  removeToolchainFromClimatHome
} from "./utils";
import fs from "fs-extra";

const CLIMAT_STAPLE = '#CLIMAT INIT';
const home = homedir();
const join = path.posix.join;
const bashrcPath = join(home, '.bashrc');
const climatHome = join(home, CLIMAT_HOME_DIR_NAME);
const bashFunctionsPath = join(climatHome, '.bash_functions');

function functionExists(name: string): boolean {
  return (
    fs.pathExistsSync(bashFunctionsPath) &&
    fs.readFileSync(bashFunctionsPath, 'utf8').includes(`function ${name}`)
  );
}

function functionsInitializedInBashRc(): boolean {
  return fs.readFileSync(bashrcPath, 'utf8').includes(CLIMAT_STAPLE);
}

function getFunctionsInitializationBashSnippet(): string {
  return [
    EOL,
    CLIMAT_STAPLE,
    `if [ -f ${bashFunctionsPath} ]; then`,
    `  . ${bashFunctionsPath}`,
    'fi',
    EOL,
  ].join(EOL);
}

function getFunctionCommand(name: string): string {
  return `function ${name} { climat execNoValidation "~/${CLIMAT_HOME_DIR_NAME}/${name}/${MAIN_MANIFEST_NAME}" "$*"; }${EOL}`;
}

export function unixInstall(manifest: string, name: string): void {
  moveManifestToClimatHome(manifest, name, path.posix);

  if (!functionExists(name)) {
    fs.appendFileSync(bashFunctionsPath, getFunctionCommand(name));
  }

  if (!functionsInitializedInBashRc()) {
    fs.appendFileSync(bashrcPath, getFunctionsInitializationBashSnippet());
  }
}

export function unixUninstall(name: string): void {
  removeToolchainFromClimatHome(name, path.posix);
  const newData = fs
    .readFileSync(bashFunctionsPath, 'utf8')
    .replace(new RegExp(`^function ${name}.*${EOL}`), '');
  fs.writeFileSync(bashFunctionsPath, newData);
}
