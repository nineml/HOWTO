package example;

import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;

public class SampleApp {
    public static void main(String[] args) throws URISyntaxException, IOException {
        if (args.length == 0) {
            System.err.println("Usage: SampleApp grammar input");
        }

        String baseURI = "file://" + System.getProperty("user.dir").replaceAll("\\\\", "/") + "/";
        URI grammar = new URI(baseURI).resolve(args[0]);

        StringBuilder sb = new StringBuilder();
        for (int pos = 1; pos < args.length; pos++) {
            sb.append(args[pos]).append(" ");
        }

        String input = sb.toString().trim();

        Transformer transformer = new Transformer();
        String result = transformer.ixml(grammar, input);

        if (result == null) {
            System.err.println("Parse failed.");
            System.exit(1);
        } else {
            System.out.println(result);
        }
    }
}
