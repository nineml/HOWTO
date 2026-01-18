# From within a Gradle build script

The `build.gradle` file in this directory shows how to run the
[CoffeePot](https://coffeepot.nineml.org) application from Gradle.
Similar techniques should work with other build tools. The nicest
part of the build tools is that they manage the classpath for you.

```
./gradlew dateToXml
```

will create `build/date.xml`:

```
<date>
   <day>20</day>
   <month>February</month>
   <year>2022</year>
</date>
```
