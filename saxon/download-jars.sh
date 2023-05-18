#!/bin/bash

# This script attempts to download the NineML libraries and a recent
# version of Saxon. It requires bash and has only been very lightly
# tested. YMMV.

mkdir -p lib

download() {
    proj=$1
    lcproj=`echo $proj | tr '[:upper:'] '[:lower:]'`
    uri="https://github.com/nineml/$lcproj/releases/latest"
    ver=`curl -sI $uri | grep -i location: | sed "s#^.*/tag/##" | tr -d '\n\r'`
    if [ ! -f "lib/$proj-$ver.jar" ]; then
        echo "Downloading $proj ..."
        rm -f lib/$proj-*.jar
        uri="https://github.com/nineml/$lcproj/releases/download/$ver/$lcproj-$ver.zip"
        curl -s -L -o lib/$lcproj-$ver.zip $uri
        cd lib
        unzip -q -j $lcproj-$ver.zip "*.jar"
        rm $lcproj-$ver.zip
        cd ..
    fi
}

download CoffeeGrinder
download CoffeeFilter
download CoffeeSacks

if [ ! -f saxon-he-12.2.jar ]; then
    echo "Downloading Saxon 12.2 ..."
    curl -s -o SaxonHE12-2J.zip https://www.saxonica.com/download/SaxonHE12-2J.zip
    unzip -q -o SaxonHE12-2J.zip "*.jar"
    rm -f SaxonHE12-2J.zip saxon-he-test*.jar saxon-he-xqj*.jar
fi
