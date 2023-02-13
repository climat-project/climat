import fs from 'fs-extra';
import { com } from 'climat-lib';
import { windowsInstall } from './windows';
import { unixInstall } from './unix';
import untildify from 'untildify';
import fetch from 'node-fetch';
import { EOL } from 'os';
import ToolchainProcessor = com.climat.library.toolchain.ToolchainProcessor;
import { handlePlatforms } from './utils';

async function getJson(uriToJson: string): Promise<string> {
  const isHttpUri =
    uriToJson.startsWith('https://') || uriToJson.startsWith('http://');

  if (isHttpUri) {
    const response = await fetch(uriToJson);
    if (response.ok) {
      return response.text();
    } else {
      throw new Error(
        `Server response ${response.status}: ${EOL}${response.statusText}`,
      );
    }
  } else {
    return fs.readFile(untildify(uriToJson), 'utf8');
  }
}

export default async function install(uriToJson: string): Promise<void> {
  const json = await getJson(uriToJson);
  const { name } = ToolchainProcessor.Companion.parse(json);

  await handlePlatforms(
    () => unixInstall(json, name),
    () => windowsInstall(json, name),
  );
}
