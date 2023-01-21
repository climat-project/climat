import { error } from './theme';

export function prettifyAsync<T extends unknown[]>(
  fn: (...args: T) => Promise<void>,
): (...args: T) => Promise<void> {
  return async (...args: T) => {
    try {
      await fn(...args);
    } catch (e: unknown) {
      console.error(error('Fatal:'));
      if (e instanceof Error) {
        console.error(error(e.message));
      } else {
        console.error(error(String(e)));
      }
    }
  };
}
