# As a command line application

[CoffeePot](https://coffeepot.nineml.org) is a command-line application
for Invisible XML processing.

1. Download the [latest release](https://github.com/nineml/coffeepot/releases).
2. Unzip the archive.
3. Run `java -jar coffeepot-x.y.z.jar --help`

More complete [documentation](https://coffeepot.nineml.org) is available.

If you download CoffeePot verision 0.3.1 into the `cli` directory of this repository,
you can try the following example command:

```
java -jar coffeepot-0.3.1/coffeepot-0.3.1.jar --grammar:grammars/dates.ixml --format:json 22 February 2021
```

That should print the result:

```
{"date":{"day":22,"month":"February","year":2021}}
```
