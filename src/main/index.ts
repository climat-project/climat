#!/usr/bin/env node

import { ToolchainProcessor, validation } from 'climat-lib';
import process from 'process';
import manifest from './manifest.climat.json';
import install from './management/install';
import uninstall from './management/uninstall';
import { getExec, run } from './run';
import { prettifyAsync } from './output/prettify';
import { warn } from './output/theme';
import { EOL } from 'os';
import _ from 'lodash';
import ValidationEntryType = validation.ValidationResult.ValidationEntryType;

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

prettifyAsync(async () => {
  const toolchain = ToolchainProcessor.Companion.parse(
    JSON.stringify(manifest),
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
    prettifyAsync((js) => eval(js)),
    true,
  ).execute(process.argv.slice(2));
});
