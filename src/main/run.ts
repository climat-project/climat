import { argv, cwd } from 'process';
import fs from 'fs-extra';
import path from 'path';
import untildify from 'untildify';
import { com } from 'climat-lib';
import {
  MAIN_MANIFEST_NAME,
  handlePlatforms,
  platformPath,
} from './management/utils';
import { TOOLCHAIN_HOME as WINDOWS_TOOLCHAIN_HOME } from './management/windows';
import { TOOLCHAIN_HOME as UNIX_TOOLCHAIN_HOME } from './management/unix';
import child_process from 'child_process';
import TemplateActionValue = com.climat.library.domain.action.TemplateActionValue;
import CustomScriptActionValue = com.climat.library.domain.action.CustomScriptActionValue;
import Toolchain = com.climat.library.domain.toolchain.Toolchain;
const { executeFromCliDsl } = com.climat.library.commandParser;

export async function exec(
  pathToManifest: string,
  command: string[],
  skipValidation = false,
): Promise<void> {
  const manifest = await fs.readFile(untildify(pathToManifest), 'utf8');
  _exec(manifest, command, skipValidation);
}

export async function runGlobal(
  name: string,
  command: string[],
): Promise<void> {
  const { join } = platformPath();
  const toolchainHome = await handlePlatforms(
    () => UNIX_TOOLCHAIN_HOME,
    () => WINDOWS_TOOLCHAIN_HOME,
  );
  const manifest = await fs.readFile(
    join(toolchainHome, name, MAIN_MANIFEST_NAME),
    'utf8',
  );
  _exec(manifest, command, true);
}

export async function run(command: string[]): Promise<void> {
  for (
    let wd = cwd(), i = 0;
    (await fs.pathExists(wd)) && i < 50;
    wd = path.join(wd, '..'), ++i
  ) {
    const pathToManifest = path.join(wd, MAIN_MANIFEST_NAME);
    if (await fs.pathExists(pathToManifest)) {
      await exec(pathToManifest, command);
      return;
    }
  }

  console.log(`No ${MAIN_MANIFEST_NAME} found up the directory hierarchy`);
}

type CustomScriptJsScope = {
  params: { [key: string]: string };
  command: CustomScriptActionValue;
  toolchain: Toolchain;
};

function _exec(
  cliDsl: string,
  command: string[],
  skipValidation: boolean,
): void {
  executeFromCliDsl(
    command,
    cliDsl,
    (command, toolchain) => {
      if (command instanceof TemplateActionValue) {
        child_process.execSync(command.value!, {
          stdio: 'inherit',
        });
      } else if (command instanceof CustomScriptActionValue) {
        handleCustomScript(command, toolchain);
      } else {
        throw new Error(`${command.type} not supported`);
      }
    },
    skipValidation,
  );
}

function handleCustomScript(
  command: CustomScriptActionValue,
  toolchain: Toolchain,
): void {
  if (command.name === 'js') {
    const $scope: CustomScriptJsScope = {
      params: {},
      command,
      toolchain,
    };
    command.valueForJs?.entries.forEach((param) => {
      $scope.params[camelise(param.key)] = param.value;
    });
    evalCustomScript.call({}, $scope);
  } else {
    throw new Error(`${command.name || 'default'} custom script not supported`);
  }
}

function camelise(s: string): string {
  return s.replace(/-./g, (x) => x[1].toUpperCase());
}

function evalCustomScript({
  params,
  command,
  toolchain,
}: CustomScriptJsScope): void {
  eval(command.customScript);
}
