import { run, runClimat } from '../utils';

describe('management', () => {
  it('installs', () => {
    runClimat('install src/test/management/example.cli');
    expect(() => run('example')).not.toThrowError();
    expect(run('example random --arg1 abc --arg2 bcd')).toEqual(
      'Hello! I was executed with arg1 = abc and arg2 = bcd',
    );
  });

  it('list', () => {
    expect(runClimat('list')).toEqual('example');
  });

  it('uninstalls', () => {
    runClimat('uninstall example');
    expect(() => run('example')).toThrowError();
  });
});
