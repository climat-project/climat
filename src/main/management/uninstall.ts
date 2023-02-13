import { unixUninstall } from './unix';
import { windowsUninstall } from './windows';
import { handlePlatforms } from './utils';

export default async function uninstall(name: string): Promise<void> {
  await handlePlatforms(
    () => unixUninstall(name),
    () => windowsUninstall(name),
  );
}
