#!/usr/bin/env node

import { com } from 'climat-lib';
import process from 'process';
import install from './management/install';
import uninstall from './management/uninstall';
import { exec, run, runGlobal } from './run';
import { prettifyAsync } from './output/prettify';
import { warn } from './output/theme';
import { EOL } from 'os';
import _ from 'lodash';
// ES6 imports don't work with raw-loader for some reason
// eslint-disable-next-line @typescript-eslint/no-var-requires
const cli = require('./manifest.cli') as string;
import ValidationEntryType = com.climat.library.validation.ValidationResult.ValidationEntryType;
import CustomScriptActionValue = com.climat.library.domain.action.CustomScriptActionValue;
import ToolchainProcessor = com.climat.library.toolchain.ToolchainProcessor;
import { list } from './management/list';
import { purge } from './management/purge';

const climat = {
  exec,
  validate: (pathToManifest: string): void => {
    ToolchainProcessor.Companion.parse(pathToManifest);
  },
  run,
  runGlobal,
  uninstall,
  install,
  list,
  purge,
};

void prettifyAsync(async () => {
  const toolchain = ToolchainProcessor.Companion.parse(
    // TODO extract in file
    cli,
  );
  const validations = ToolchainProcessor.Companion.validate(toolchain);

  const warnings = _(validations)
    .filter((x) => x.type === ValidationEntryType.Warning)
    .map((x) => `${x.code}: ${x.message}`)
    .join(EOL);
  if (!_.isEmpty(warnings)) {
    console.warn(warn('Warnings:'));
    console.warn(warn(warnings));
  }

  const errors = _(validations)
    .filter((x) => x.type === ValidationEntryType.Error)
    .map((x) => `${x.code}: ${x.message}`)
    .join(EOL);
  if (!_.isEmpty(warnings)) {
    throw new Error(errors);
  }

  ToolchainProcessor.create(
    toolchain,
    prettifyAsync((command) => {
      if (command instanceof CustomScriptActionValue) {
        // Params used inside `eval`
        // eslint-disable-next-line @typescript-eslint/no-unused-vars
        const params = command.valueForJs;
        return eval(command.customScript);
      } else {
        throw new Error(`\`${command.type}\` command type not supported`);
      }
    }),
    true,
  ).execute(process.argv.slice(2));
})();
