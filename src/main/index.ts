#!/usr/bin/env node

import { ToolchainProcessor } from 'climat-lib';
import fs from 'fs-extra';
import child_process from 'child_process';
import process from 'process';
import manifest from './manifest.climat.json';
import install from './management/install';
import untildify from 'untildify';
import uninstall from './management/uninstall';

function getExec(skipValidation: boolean) {
  return function (pathToJson: string, command: string): void {
    const json = fs.readFileSync(untildify(pathToJson), 'utf8');

    ToolchainProcessor.createFromJsonString(
      json,
      (command) => {
        child_process.execSync(command, {
          stdio: 'inherit',
        });
      },
      skipValidation,
    ).executeFromString(command);
  };
}

const climat = {
  exec: getExec(false),
  execNoValidation: getExec(true),

  validate: (pathToJson: string): void => {
    ToolchainProcessor.Companion.parse(pathToJson);
  },

  uninstall,
  install,
};
ToolchainProcessor.createFromJsonString(JSON.stringify(manifest), (js) =>
  eval(js),
).execute(process.argv.slice(2));
