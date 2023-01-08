#!/usr/bin/env node

import { ToolchainProcessor } from 'climat-lib';
import fs from 'fs-extra';
import child_process from 'child_process';
import process from 'process';
import path from 'path';
import os from 'os';
import manifest from './manifest.climat.json';

function getExec(skipValidation: boolean) {
  return function (pathToJson: string, command: string): void {
    const json = fs.readFileSync(pathToJson, 'utf8');

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
    throw new Error('Not implemented!');
  },

  uninstall: (name: string): void => {
    throw new Error('Not implemented');
  },

  install: (pathToJson: string): void => {
    // TODO handle Windows
    const json = fs.readFileSync(pathToJson, 'utf8');
    const { name } = ToolchainProcessor.Companion.parse(json);

    const climatStaple = '#CLIMAT INIT';
    const home = os.homedir();
    const eol = os.EOL;
    const bashrc = path.join(home, '.bashrc');
    const climatHome = path.join(home, '.climat');
    const bashAliases = path.join(climatHome, '.bash_aliases');

    fs.ensureDirSync(climatHome);
    fs.copyFileSync(pathToJson, path.join(climatHome, name + '.json'));

    const aliasExists =
      fs.pathExistsSync(bashAliases) &&
      fs.readFileSync(bashAliases, 'utf8').includes(`alias ${name}`);

    if (!aliasExists) {
      fs.appendFileSync(
        bashAliases,
        `alias ${name}='climat execNoValidation ~/.climat/${name}.json'${eol}`,
      );
    }

    const climatInstalled = fs
      .readFileSync(bashrc, 'utf8')
      .includes(climatStaple);
    if (!climatInstalled) {
      fs.appendFileSync(
        bashrc,
        [
          eol,
          climatStaple,
          `if [ -f ${bashAliases} ]; then`,
          `  . ${bashAliases}`,
          'fi',
          eol,
        ].join(eol),
      );
    }
  },
};
ToolchainProcessor.createFromJsonString(JSON.stringify(manifest), (js) =>
  eval(js),
).execute(process.argv.slice(2));
