#!/bin/bash

CLASSPATH=.
for f in *.jar; do
    CLASSPATH=$CLASSPATH:$f
done

if [ -d lib ]; then
    for f in `ls -1 lib/*.jar`; do
        CLASSPATH=$CLASSPATH:$f
    done
fi

java -cp $CLASSPATH net.sf.saxon.Transform -init:org.nineml.coffeesacks.RegisterCoffeeSacks \
     -it -xsl:style/dates.xsl
