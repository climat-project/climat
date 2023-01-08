const path = require('path');
const ShebangPlugin = require('webpack-shebang-plugin');
const { config } = require('process');

module.exports = {
  entry: './src/main/index.ts',
  devtool: 'inline-source-map',
  module: {
    rules: [
      {
        test: /\.ts?$/,
        use: 'ts-loader',
        exclude: /node_modules/,
      },
    ],
  },
  target: 'node',
  plugins: [new ShebangPlugin()],
  resolve: {
    extensions: ['.tsx', '.ts', '.js'],
    fallback: {
      fs: false,
      child_process: false,
    },
  },
  output: {
    filename: 'main.js',
    path: path.resolve(__dirname, 'build'),
  },
};
