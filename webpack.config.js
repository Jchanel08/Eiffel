var path = require('path');
var webpack = require('webpack');
var ExtractTextPlugin = require("extract-text-webpack-plugin");

var extractSass = new ExtractTextPlugin({
    filename: "app.css",
    disable: process.env.NODE_ENV === "development"
});

var config = {
    entry: {
        "vendor": ["./js/scripts.js"],
    },

    output: {
        path: "./css",
        filename: "js/[name].js",
    },

    module: {
        loaders: [
            {
                test: /\.scss$/,
                loader: extractSass.extract({
                    loader: [{
                        loader: "css-loader"
                    }, {
                        loader: "sass-loader"
                    }]
                })
            }
        ]
    },

    plugins: [
        new ExtractTextPlugin("css/[name].css"),

        extractSass
    ]
}

module.exports = config;