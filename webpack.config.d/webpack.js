const webpack = require('webpack');

const CopyPlugin = require("copy-webpack-plugin");
const BannerPlugin = webpack.BannerPlugin

config.target = 'node'

config.plugins.push(
    new CopyPlugin({
        patterns: [{
            from: "package.json",
            to: "."
        }],
    }),

    new BannerPlugin({
        banner: "#!/usr/bin/env node",
        raw: true
    })
)