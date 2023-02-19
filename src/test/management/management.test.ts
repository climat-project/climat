import { run, runClimat } from '../utils';

describe('management', () => {
  it('installs', () => {
    runClimat('install src/test/management/example.cli');
    expect(() => run('example')).not.toThrowError();
  });

  it('list', () => {
    expect(runClimat('list').trim()).toEqual('example');
  });

  it('uninstalls', () => {
    runClimat('uninstall example');
    expect(() => run('example')).toThrowError();
  });
});
