#!/bin/sh

set -euo

mkdir -p ./build
bundler exec ruby main.rb > build/index.html
cp -r ./assets ./build
