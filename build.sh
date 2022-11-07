#!/bin/sh

set -euo

mkdir -p ./build
cat foaf.template.xml \
    | sed \
        "s/<dcterms:modified rdf:datatype=\"xs:dateTime\">/&$(date -Isecond)/"
        > foaf.xml

xsltproc -o ./build/index.html html.xsl foaf.xml
cp -r ./assets ./build
cp -r foaf.xml ./build
