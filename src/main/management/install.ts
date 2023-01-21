import fs from 'fs-extra';
import { ToolchainProcessor } from 'climat-lib';
import { windowsInstall } from './windows';
import { unixInstall } from './unix';
import untildify from 'untildify';
import fetch from 'node-fetch';

async function getJson(uriToJson: string): Promise<string> {
  const isHttpUri =
    uriToJson.startsWith('https://') || uriToJson.startsWith('http://');

  if (isHttpUri) {
    return await fetch(uriToJson).then((r) => r.text());
  } else {
    return fs.readFileSync(untildify(uriToJson), 'utf8');
  }
}

export default async function install(uriToJson: string): Promise<void> {
  const json = await getJson(uriToJson);
  const { name } = ToolchainProcessor.Companion.parse(json);

  switch (process.platform) {
    case 'linux': // TODO check if other unix like systems are supported by the current unix implementation
      unixInstall(json, name);
      break;
    case 'win32':
      await windowsInstall(json, name);
      break;
    default:
      throw new Error(`${process.platform} OS is not supported`);
  }
}
