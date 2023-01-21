#!/usr/bin/env node

import { ToolchainProcessor } from 'climat-lib';
import process from 'process';
import manifest from './manifest.climat.json';
import install from './management/install';
import uninstall from './management/uninstall';
import { getExec, run } from './run';

const climat = {
  exec: getExec(false),
  execNoValidation: getExec(true),

  validate: (pathToJson: string): void => {
    ToolchainProcessor.Companion.parse(pathToJson);
  },

  run,

  uninstall,
  install,
};
ToolchainProcessor.createFromJsonString(JSON.stringify(manifest), (js) =>
  eval(js),
).execute(process.argv.slice(2));
