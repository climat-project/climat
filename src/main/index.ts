#!/usr/bin/env node

import { domain, ToolchainProcessor, validation } from 'climat-lib';
import process from 'process';
import install from './management/install';
import uninstall from './management/uninstall';
import { getExec, run } from './run';
import { prettifyAsync } from './output/prettify';
import { warn } from './output/theme';
import { EOL } from 'os';
import _ from 'lodash';
// ES6 imports don't work with raw-loader for some reason
// eslint-disable-next-line @typescript-eslint/no-var-requires
const cli = require('./manifest.cli') as string;
import ValidationEntryType = validation.ValidationResult.ValidationEntryType;
import CustomScriptActionValue = domain.action.CustomScriptActionValue;

const climat = {
  exec: getExec(false),
  execNoValidation: getExec(true),
  validate: (pathToManifest: string): void => {
    ToolchainProcessor.Companion.parse(pathToManifest);
  },
  run,
  uninstall,
  install,
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
        const params = command.valueForJs;
        return eval(command.customScript);
      } else {
        throw new Error(`\`${command.type}\` command type not supported`);
      }
    }),
    true,
  ).execute(process.argv.slice(2));
})();
