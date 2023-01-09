import fs from 'fs-extra';
import { ToolchainProcessor } from '../../../climat-lib/build/developmentLibrary';
import os from 'os';
import path from 'path';
import { promisified as regedit } from 'regedit';
import * as upath from 'upath';

const eol = os.EOL;
const CLIMAT_HOME_DIR_NAME = '.climat';

function moveJsonToClimatHome(pathToJson: string, name: string): void {
  const climatHome = path.join(os.homedir(), CLIMAT_HOME_DIR_NAME);

  fs.ensureDirSync(climatHome);
  fs.copyFileSync(pathToJson, path.join(climatHome, name + '.json'));
}

function unix(pathToJson: string, name: string): void {
  const climatStaple = '#CLIMAT INIT';
  const home = os.homedir();
  const bashrc = path.join(home, '.bashrc');
  const climatHome = path.join(home, CLIMAT_HOME_DIR_NAME);
  const bashAliases = path.join(climatHome, '.bash_aliases');

  moveJsonToClimatHome(pathToJson, name);

  const aliasExists =
    fs.pathExistsSync(bashAliases) &&
    fs.readFileSync(bashAliases, 'utf8').includes(`alias ${name}`);

  if (!aliasExists) {
    fs.appendFileSync(
      bashAliases,
      `alias ${name}='climat execNoValidation "~/${CLIMAT_HOME_DIR_NAME}/${name}.json'${eol}"`,
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
}

async function windows(pathToJson: string, name: string): Promise<void> {
  const hkey = 'HKCU\\Environment';
  const join = path.win32.join;
  const climatHome = join(os.homedir(), CLIMAT_HOME_DIR_NAME);
  const climatBin = join(climatHome, 'bin');
  moveJsonToClimatHome(pathToJson, name);

  fs.ensureDirSync(climatBin);
  fs.writeFileSync(
    join(climatBin, `${name}.bat`),
    `climat execNoValidation "${upath.toUnix(
      join(climatHome, `${name}.json`),
    )}"`,
  );

  const results = await regedit.list([hkey]);
  const env = results[hkey];
  if (!env.exists) {
    throw new Error(`Inexistent registry key ${hkey}`);
  }

  const envPath = env.values['Path'].value as string;

  if (envPath.includes(climatBin)) {
    return;
  }
  await regedit.putValue({
    [hkey]: {
      Path: {
        value: `${path}${climatBin};`,
        type: 'REG_SZ',
      },
    },
  });
}

export default async function install(pathToJson: string): Promise<void> {
  console.log(pathToJson);
  const json = fs.readFileSync(pathToJson, 'utf8');
  const { name } = ToolchainProcessor.Companion.parse(json);

  switch (process.platform) {
    case 'linux': // TODO check if other unix like systems are supported
      unix(pathToJson, name);
      break;
    case 'win32':
      await windows(pathToJson, name);
      break;
    default:
      throw new Error(`${process.platform} OS is not supported`);
  }
}
