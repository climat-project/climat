import { run, runClimat } from '../utils';

describe('smoke', () => {
  describe('management', () => {
    it('installs', () => {
      runClimat('install src/test/smoke/test-toolchain.cli');
      expect(() => run('test-toolchain')).not.toThrowError();

      expect(run('test-toolchain child --arg1 abc --arg2 bcd')).toEqual(
        'Hello! I was executed with arg1 = abc and arg2 = bcd',
      );

      expect(
        run('test-toolchain child --arg1 value1 --arg2 value2 grandchild1'),
      ).toEqual('Hello from the other side value1 value2');

      expect(
        run('test-toolchain child --arg1 val1 --arg2 val2 grandchild2 val3'),
      ).toEqual('Hello from JS! val3 val1 val2');

      expect(run('test-toolchain child --arg1 "val 1" --arg2 "val 2"')).toEqual(
        'Hello! I was executed with arg1 = val 1 and arg2 = val 2',
      );
    });

    it('lists', () => {
      expect(runClimat('list')).toContain('test-toolchain');
    });

    it('uninstalls', () => {
      runClimat('uninstall test-toolchain');
      expect(() => run('test-toolchain')).toThrowError();
    });
  });
});
