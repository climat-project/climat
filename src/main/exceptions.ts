export interface ErrnoException extends Error {
  errno?: number | undefined;
  code?: string | undefined;
  path?: string | undefined;
  syscall?: string | undefined;
}

export function isError(err: unknown): err is ErrnoException {
  return err instanceof Error;
}
