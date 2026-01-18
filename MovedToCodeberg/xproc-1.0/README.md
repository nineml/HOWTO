# With XProc extension steps

CoffeePress is an XML Calabash extension step. It’s available for
(XML Calabash 1.x)[https://github.com/ndw/xmlcalabash1-coffeepress]
and (XML Calabash 3.x)[https://github.com/ndw/coffeepress]. This page
documents the *XML Calabash 1.x* extension step.

## From the command line

1. Download the latest XML Calabash 1.x release.
2. Download the latest releases of
   [CoffeeGrinder](https://github.com/nineml/coffeegrinder/releases),
   [CoffeeFilter](https://github.com/nineml/coffeefilter/releases), and
   [CoffeeSacks](https://github.com/nineml/coffeesacks/releases).
3. Setup the Java classpath so that all of the relevant jars are available.
4. Run the pipeline.

## Demo

The `download-jars.sh` shell script will attempt to download all of the libraries.

```
sh ./download-jars.sh
```

The `run-xproc.sh` shell script will run an example XProc pipeline.

```
sh ./run-xproc.sh
```

Should print the result:

```
<doc>
  <date>
    <day>15</day>
    <month>February</month>
    <year>2022</year>
  </date>
</doc>
```
