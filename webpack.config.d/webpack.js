const webpack = require('webpack');

const CopyPlugin = require("copy-webpack-plugin");
const BannerPlugin = webpack.BannerPlugin

config.target = 'node'

config.plugins.push(
    new CopyPlugin({
        patterns: ["package.json", "LICENSE.md", "README.md"]
    }),

    new BannerPlugin({
        banner: "#!/usr/bin/env -S node --no-warnings",
        raw: true
    })
)