package com.gzy.qinglian;
import android.content.Context;
import java.io.IOException;
import org.robolectric.annotation.Implementation;
import org.robolectric.annotation.Implements;

/** UI fixtures never contact a live panel or initialize host JSSE from Android's
 * simulated Conscrypt provider. ApiTlsTest and ApiCdnTest remain ordinary JVM
 * tests and exercise the real transport/trust code. Not part of the release. */
@Implements(value=ApiEndpoint.class,isInAndroidSdk=false)
public class OfflineApiShadow {
 @Implementation protected static ApiEndpoint load(Context context,String asset)throws Exception {
  throw new IOException("Offline UI test fixture");
 }
}
