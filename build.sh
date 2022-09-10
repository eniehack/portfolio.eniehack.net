#!/bin/sh

set -euo

mkdir -p ./build
xsltproc -o ./build/index.html html.xsl foaf.xml
cp -r ./assets ./build
cp -r foaf.xml ./build
