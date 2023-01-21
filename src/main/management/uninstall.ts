import { unixUninstall } from './unix';
import { windowsUninstall } from './windows';

export default function uninstall(name: string): void {
  switch (process.platform) {
    case 'linux': // TODO check if other unix like systems are supported by the current unix implementation
      unixUninstall(name);
      break;
    case 'win32':
      windowsUninstall(name);
      break;
    default:
      throw new Error(`${process.platform} OS is not supported`);
  }
}
