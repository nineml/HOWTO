# With Saxon extension functions

[CoffeeSacks](https://coffeesacks.nineml.org) is a set of Saxon extension functions.
These functions work with Saxon 10.x and 11.x.

## From the command line

1. Download the latest Saxon release.
2. Download the latest releases of
   [CoffeeGrinder](https://github.com/nineml/coffeegrinder/releases),
   [CoffeeFilter](https://github.com/nineml/coffeefilter/releases), and
   [CoffeeSacks](https://github.com/nineml/coffeesacks/releases).
3. Setup the Java classpath so that all of the relevant jars are available.
4. Run `net.sf.saxon.Transform` with the `-init:org.nineml.coffeesacks.RegisterCoffeeSacks`
   option to initialize the extension functions.

More complete [documentation](https://coffeesacks.nineml.org) is available.

The `run-saxon.sh` shell script will run an example Saxon transformation if you unpack
all of the relevant jar files in the `saxon` directory.

```
sh ./run-saxon.sh
```

That should print the result:

```
<?xml version="1.0" encoding="utf-8"?><doc><date><day>15</day><month>February</month><year>2022</year></date></doc>
```
