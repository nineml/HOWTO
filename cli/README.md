# As a command line application

[CoffeePot](https://coffeepot.nineml.org) is a command-line application
for Invisible XML processing.

1. Download the [latest release](https://github.com/nineml/coffeepot/releases).
2. Unzip the archive.
3. Run `java -jar coffeepot-x.y.z.jar --help`

More complete [documentation](https://coffeepot.nineml.org) is available.

If you download [version 2.2.1](https://github.com/nineml/coffeepot/releases/tag/2.2.1)
of CoffeePot into the `cli` directory of this repository,
you can try the following example command:

```
java -jar coffeepot-2.2.1/coffeepot-2.2.1.jar --grammar:grammars/dates.ixml --format:json 22 February 2021
```

That should print the result:

```
{"date":{"day":22,"month":"February","year":2021}}
```

Version 2.2.1 was the latest version at the time of this writing. You can always
get [the latest release](https://github.com/nineml/coffeepot/releases/latest)
from the [CoffeePot GitHub project](https://github.com/nineml/coffeepot). Just change
the version number in the command line invocation to the version you downloaded.
