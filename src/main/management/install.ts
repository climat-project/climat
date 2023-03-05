import fs from 'fs-extra';
import { com } from 'climat-lib';
import { windowsInstall } from './windows';
import { unixInstall } from './unix';
import untildify from 'untildify';
import fetch from 'node-fetch';
import { EOL } from 'os';
const { parse } = com.climat.library.commandParser;
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
  const { name, aliases } = parse(json);
  const aliasStrings = aliases.map((alias) => alias.name);

  await handlePlatforms(
    () => unixInstall(json, name, aliasStrings),
    () => windowsInstall(json, name, aliasStrings),
  );
}
