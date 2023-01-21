import { error } from './theme';

export function prettifyAsync(
  fn: (js: string) => Promise<void>,
): (js: string) => Promise<void> {
  return async (js: string) => {
    try {
      await fn(js);
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
