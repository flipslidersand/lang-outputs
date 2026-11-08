import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Wordfreq {
    public static void main(String[] args) throws IOException {
        String text = new String(System.in.readAllBytes()).toLowerCase();
        Map<String, Integer> counts = new HashMap<>();
        Matcher m = Pattern.compile("[a-z]+").matcher(text);
        while (m.find()) counts.merge(m.group(), 1, Integer::sum);
        counts.entrySet().stream()
            .sorted(Map.Entry.<String, Integer>comparingByValue().reversed().thenComparing(Map.Entry.comparingByKey()))
            .limit(3)
            .forEach(e -> System.out.println(e.getKey() + " " + e.getValue()));
    }
}
