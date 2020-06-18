#!/bin/sh

if [ -z "$1" ]; then
    echo "Usage: $0 <strings_xml>"
    exit -1
fi

INPUT_XML=$1

if ! xmllint $INPUT_XML > /dev/null; then
    echo "Invalid $INPUT_XML XML format"
    exit -1
fi

xsltproc -o $INPUT_XML sort.xslt $INPUT_XML
