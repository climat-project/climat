#!/usr/bin/env node

import { ToolchainProcessor } from 'climat-lib';
import process from 'process';
import manifest from './manifest.climat.json';
import install from './management/install';
import uninstall from './management/uninstall';
import { getExec, run } from './run';

function prettifyErrorsAsync<T extends unknown[]>(
  fn: (...args: T) => Promise<void>,
): () => Promise<void> {
  return async (...args: T) => {
    try {
      await fn(...args);
    } catch (e: unknown) {
      if (e instanceof Error) {
        console.error(e.message);
      } else {
        console.error(e);
      }
    }
  };
}

function prettifyErrors<T extends unknown[]>(
  fn: (...args: T) => void,
): () => void {
  return prettifyErrorsAsync((...args: T) => {
    fn(...args);
    return Promise.resolve();
  });
}

const climat = {
  exec: prettifyErrors(getExec(false)),
  execNoValidation: prettifyErrors(getExec(true)),

  validate: prettifyErrors((pathToJson: string): void => {
    ToolchainProcessor.Companion.parse(pathToJson);
  }),

  run: prettifyErrors(run),

  uninstall: prettifyErrors(uninstall),
  install: prettifyErrorsAsync(install),
};
ToolchainProcessor.createFromJsonString(JSON.stringify(manifest), (js) =>
  eval(js),
).execute(process.argv.slice(2));
