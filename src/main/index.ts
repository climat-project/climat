#!/usr/bin/env node

import { ToolchainProcessor } from 'climat-lib';
import fs from 'fs';
import child_process from 'child_process';
import manifest from './manifest.climat.json';
/**
 * @file This is the entrypoint for your project.
 * If used as a node module, when someone runs
 * `import stuff from 'your-module'` (typescript)
 * or `const stuff = require('your-module')` (javascript)
 * whatever is exported here is what they'll get.
 * For small projects you could put all your code right in this file.
 */
const climat = {
  exec: (pathToJson: string, command: string): void => {
    const json = fs.readFileSync(pathToJson, 'utf8');

    ToolchainProcessor.createFromJsonString(json, (command) => {
      child_process.execSync(command, {
        stdio: ['inherit', 'pipe', 'pipe'],
      });
    }).executeFromString(command);
  },
};
ToolchainProcessor.createFromJsonString(JSON.stringify(manifest), (js) =>
  eval(js),
).execute(process.argv.slice(2));
