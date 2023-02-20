import { execSync } from 'child_process';

export function runClimat(args: string): string {
  return run(`climat ${args}`);
}

export function run(args: string): string {
  return execSync(args).toString().trim();
}
