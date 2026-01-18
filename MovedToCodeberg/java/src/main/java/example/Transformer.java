package example;

import org.nineml.coffeefilter.InvisibleXml;
import org.nineml.coffeefilter.InvisibleXmlDocument;
import org.nineml.coffeefilter.InvisibleXmlParser;

import java.io.IOException;
import java.net.URI;

public class Transformer {
    public String ixml(URI grammar, String input) throws IOException  {
        InvisibleXml ixml = new InvisibleXml();
        InvisibleXmlParser parser = ixml.getParser(grammar);
        InvisibleXmlDocument doc = parser.parse(input);
        if (doc.succeeded()) {
            return doc.getTree();
        } else {
            return null;
        }
    }
}
