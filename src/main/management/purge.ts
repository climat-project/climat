import readline from 'readline';
import { EOL } from 'os';
import { getInstalledToolchains } from './list';
import yesno from 'yesno';
import { handlePlatforms } from './utils';
import { unixPurge } from './unix';
import { windowsPurge } from './windows';

export async function purge(): Promise<void> {
  const ok = await yesno({
    question: `Are you sure you want to delete these toolchains? (y/n)${EOL}${(
      await getInstalledToolchains()
    ).join(EOL)}${EOL}>`,
    defaultValue: null,
  });
  if (ok) {
    await handlePlatforms(
      () => unixPurge(),
      () => windowsPurge(),
    );
  }
}
