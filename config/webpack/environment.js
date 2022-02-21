const { config, environment } = require('@rails/webpacker')

const webpack = require('webpack');
environment.plugins.append('Provide', new webpack.ProvidePlugin({
  $: 'jquery',
  jQuery: 'jquery'
}));

const WebpackerPwa = require('webpacker-pwa');
new WebpackerPwa(config, environment);

module.exports = environment
