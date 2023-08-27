#!/bin/bash

CLASSPATH=.
for f in xmlcalabash*/*.jar xmlcalabash*/lib/*.jar; do
    CLASSPATH=$CLASSPATH:$f
done

if [ -d lib ]; then
    for f in `ls -1 lib/*.jar`; do
        CLASSPATH=$CLASSPATH:$f
    done
fi

java -cp $CLASSPATH com.xmlcalabash.drivers.Main pipeline.xpl
