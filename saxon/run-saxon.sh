#!/bin/bash

CLASSPATH=.
for f in *.jar; do
    CLASSPATH=$CLASSPATH:$f
done

if [ -d lib -a -f "lib/*.jar" ]; then
    # For Saxon 11.x and later, dependent library jars are in
    # the lib directory.
    for f in `ls -1 lib/*.jar`; do
        CLASSPATH=$CLASSPATH:$f
    done
fi

java -cp $CLASSPATH net.sf.saxon.Transform -init:org.nineml.coffeesacks.RegisterCoffeeSacks \
     -it -xsl:style/dates.xsl
