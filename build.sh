#!/bin/sh

set -eu

if [ -e "foaf.xml" ]; then
    rm "foaf.xml"
fi
if [ -e "build" ] && [ -d "build" ]; then
    rm -r "build"
fi

mkdir -p ./build

cat foaf.template.xml \
    | sed \
        "s/<dcterms:modified rdf:datatype=\"xs:dateTime\">/&$(date -Isecond)/"
        > foaf.xml

xsltproc -o ./build/index.html html.xsl foaf.xml
cp -r ./assets ./build
cp -r foaf.xml ./build
