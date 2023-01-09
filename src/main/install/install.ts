import fs from 'fs-extra';
import { ToolchainProcessor } from '../../../../climat-lib/build/developmentLibrary';
import windows from '$/install/windows';
import unix from '$/install/unix';

export default async function install(pathToJson: string): Promise<void> {
  const json = fs.readFileSync(pathToJson, 'utf8');
  const { name } = ToolchainProcessor.Companion.parse(json);

  switch (process.platform) {
    case 'linux': // TODO check if other unix like systems are supported by the current unix implementation
      unix(pathToJson, name);
      break;
    case 'win32':
      await windows(pathToJson, name);
      break;
    default:
      throw new Error(`${process.platform} OS is not supported`);
  }
}
