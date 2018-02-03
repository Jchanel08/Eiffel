const webpack = require('webpack');
const path = require('path');
const ExtractTextPlugin = require('extract-text-webpack-plugin');

module.exports = {
  context: path.resolve(__dirname),
  entry: {
    app: './source/assets/app.js'
  },
  module: {
    loaders: [
      {
        test: /\.pcss$/,
        use: ExtractTextPlugin.extract({
          use: [
            {
              loader: 'css-loader',
              options: { importLoaders: 1 }
            },
            'postcss-loader'
          ]
        })
      },
      {
          test: /\.js$/,
          exclude: /(node_modules|bower_components)/,
          loader: 'babel-loader',
          query: {
              presets: ["babel-preset-env"].map(require.resolve)
          }
      },
      {
        test: /\.(ttf|eot|woff|woff2)$/,
        loader: 'file-loader',
        options: {
          name: '../fonts/[name].[ext]',
        },
      }
    ]
  },
  output: {
    path: __dirname + '/.tmp/dist',
    filename: 'assets/js/[name].js'
  },
  stats: {
      colors: true
  },
  devtool: 'source-map',
  plugins: [
    new ExtractTextPlugin('assets/css/[name].css')
  ]
};