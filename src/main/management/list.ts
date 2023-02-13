import fs from 'fs-extra';
import { TOOLCHAIN_HOME as WINDOWS_TOOLCHAIN_HOME } from './windows';
import { TOOLCHAIN_HOME as UNIX_TOOLCHAIN_HOME } from './unix';
import { handlePlatforms } from './utils';

export async function list(): Promise<void> {
  (await getInstalledToolchains()).forEach((dirName) => console.log(dirName));
}

export async function getInstalledToolchains(): Promise<string[]> {
  const climatHome = handlePlatforms(
    () => UNIX_TOOLCHAIN_HOME,
    () => WINDOWS_TOOLCHAIN_HOME,
  );

  return (await fs.readdir(climatHome, { withFileTypes: true }))
    .filter((dirEnt) => dirEnt.isDirectory())
    .map((dirEnt) => dirEnt.name);
}
