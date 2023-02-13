import { cwd } from 'process';
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
import ToolchainProcessor = com.climat.library.toolchain.ToolchainProcessor;

export async function exec(
  pathToManifest: string,
  command: string,
  skipValidation: boolean = false,
) {
  const manifest = await fs.readFile(untildify(pathToManifest), 'utf8');
  _exec(manifest, command, skipValidation);
}

export async function runGlobal(name: string, command: string): Promise<void> {
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

export async function run(command: string): Promise<void> {
  for (
    let wd = cwd(), i = 0;
    (await fs.pathExists(wd)) && i < 50;
    wd = path.join(wd, '..'), ++i
  ) {
    const pathToManifest = path.join(wd, MAIN_MANIFEST_NAME);
    if (await fs.pathExists(pathToManifest)) {
      exec(pathToManifest, command);
      return;
    }
  }

  console.log(`No ${MAIN_MANIFEST_NAME} found up the directory hierarchy`);
}

function _exec(cliDsl: string, command: string, skipValidation: boolean) {
  ToolchainProcessor.createFromJsonString(
    cliDsl,
    (command) => {
      if (command instanceof TemplateActionValue) {
        child_process.execSync(command.value!, {
          stdio: 'inherit',
        });
      } else {
        throw new Error(`${command.type} not supported`);
      }
    },
    skipValidation,
  ).executeFromString(command);
}
