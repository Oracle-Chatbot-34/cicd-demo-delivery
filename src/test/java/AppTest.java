import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.assertEquals;

public class AppTest {
    
    @Test
    public void testGetMessage() {
        assertEquals("Hello World!", App.getMessage(), "Should return hello world message");
    }
}
