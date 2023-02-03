import { cwd } from "process";
import fs from "fs-extra";
import path from "path";
import untildify from "untildify";
import { domain, ToolchainProcessor } from "climat-lib";
import child_process from "child_process";
import TemplateActionValue = domain.action.TemplateActionValue;

const CLIMAT_JSON_FILE = 'climat.json';

export function getExec(skipValidation: boolean) {
  return function (pathToJson: string, command: string): void {
    const json = fs.readFileSync(untildify(pathToJson), 'utf8');

    ToolchainProcessor.createFromJsonString(
      json,
      (command) => {
        if (command instanceof TemplateActionValue) {
          child_process.execSync(command.template, {
            stdio: 'inherit',
          });
        }
        else {
          throw new Error(`${command.type} not supported`)
        }
      },
      skipValidation,
    ).executeFromString(command);
  };
}

export function run(command: string): void {
  for (
    let wd = cwd(), i = 0;
    fs.existsSync(wd) && i < 50;
    wd = path.join(wd, '..'), ++i
  ) {
    const pathToJson = path.join(wd, CLIMAT_JSON_FILE);
    if (fs.existsSync(pathToJson)) {
      getExec(false)(pathToJson, command);
      return;
    }
  }

  console.log(`No ${CLIMAT_JSON_FILE} found up the directory hierarchy`);
}
