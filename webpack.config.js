const path = require('path');
const ShebangPlugin = require('webpack-shebang-plugin');

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
      {
        test: /\.cli$/i,
        use: {
          loader: 'raw-loader',
          options: {
            esModule: false,
          },
        },
      },
    ],
  },
  target: 'node',
  plugins: [new ShebangPlugin()],
  resolve: {
    extensions: ['.tsx', '.ts', '.js'],
  },
  output: {
    filename: 'main.js',
    path: path.resolve(__dirname, 'build'),
  },
};
