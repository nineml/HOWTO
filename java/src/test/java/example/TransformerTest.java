package example;

import org.junit.Assert;
import org.junit.Test;

import java.net.URI;

import static junit.framework.TestCase.fail;

public class TransformerTest {
    @Test
    public void testSuccess() {
        try {
            Transformer transformer = new Transformer();

            String baseURI = "file://" + System.getProperty("user.dir").replaceAll("\\\\", "/") + "/";
            URI grammar = new URI(baseURI).resolve("src/test/resources/dates.ixml");

            String result = transformer.ixml(grammar, "10 January 1984");
            Assert.assertEquals("<date><day>10</day><month>January</month><year>1984</year></date>", result);
        } catch (Exception ex) {
            ex.printStackTrace();
            fail();
        }
    }

    @Test
    public void testFail() {
        try {
            Transformer transformer = new Transformer();

            String baseURI = "file://" + System.getProperty("user.dir").replaceAll("\\\\", "/") + "/";
            URI grammar = new URI(baseURI).resolve("src/test/resources/dates.ixml");

            String result = transformer.ixml(grammar, "10 Spoon! 1984");
            Assert.assertNull(result);
        } catch (Exception ex) {
            ex.printStackTrace();
            fail();
        }
    }


}
