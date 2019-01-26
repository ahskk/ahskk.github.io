import com.hsk.util.Utils;
import org.junit.Test;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;

public class q {
    @Test
    public void a() throws UnsupportedEncodingException, NoSuchAlgorithmException {
        String a="password7";
        System.out.println(Utils.EncoderByMd5(a));
    }
}
