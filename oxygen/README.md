# iXML processing in Oxygen

I am by no means an Oxygen expert these days. I was asked if it was
possible to run an Invisible XML grammar in Oxygen. I thought “that
shouldn’t be too hard.” It was a little harder than I thought.

Oxygen experts, feel free to chime in with pull requests to improve
this configuration.

## Configure the transformation

I decided to do this by integrating [CoffeeSacks](https://coffeesacks.nineml.org) as
a transformation scenario. Oxygen doesn’t seem to want to do transformation scenarios
for `.txt` files in the main toolbar, but I eventually managed to get one in the sidebar.

![Oxygen editing example.txt with a Transformation sidebar](https://github.com/ndw/HOWTO/blob/main/oxygen/images/oxygen-input.png)

In the edit scenaro dialog, specify `transform.xsl` as the stylesheet.

![Oxygen edit scenario dialog](https://github.com/ndw/HOWTO/blob/main/oxygen/images/edit-scenario.png)

Click the transformation options gear to the right of the
`Transformer:` dropdown to reveal the transformation options dialog. 
Add `main` as the initial template and `org.nineml.coffeesacks.RegisterCoffeeSacks` as
the initializer.

![Oxygen transform options dialog](https://github.com/ndw/HOWTO/blob/main/oxygen/images/transform-options.png)

Click the `Parameters` button on the edit scenario dialog to reveal the
parameters dialog. Specify values for the `grammar` and `input`
parameters. Both should be URIs. The `grammar` parameter identifies
the input iXML grammar, the `input` parameter identifies the input.

As shown, the dialog asks for the grammar and treats the currently
edited file as the input. You may want an alternative transform that
asks for the input and treats the currently edited file as the grammar
when you’re editing the grammar.

![Oxygen parameters dialog](https://github.com/ndw/HOWTO/blob/main/oxygen/images/parameters.png)

Click the `Extensions` button on the edit scenario dialog to reveal the
libraries dialog. Add the
[CoffeeSacks](https://coffeesacks.nineml.org),
[CoffeeFilter](https://coffeefilter.nineml.org), and
[CoffeeGrinder](https://coffeegrinder.nineml.org) jar files.

![Oxygen extensions dialog](https://github.com/ndw/HOWTO/blob/main/oxygen/images/extensions.png)

Finally, run the transformation to get the results:

![Oxygen results](https://github.com/ndw/HOWTO/blob/main/oxygen/images/oxygen-results.png)

I’m sure that can be improved, and an editing mode for iXML files would be nice to have.
