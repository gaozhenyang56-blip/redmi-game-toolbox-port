package com.gzy.qinglian;
import org.junit.Test;
import static org.junit.Assert.*;
import org.json.JSONObject;
import java.io.*;
import java.net.*;
import java.nio.charset.StandardCharsets;
import java.security.cert.Certificate;
import java.util.*;
import javax.net.ssl.*;

public class ApiCdnTest {
 static final class Connection extends HttpsURLConnection {
  int code=200,connects,writes;boolean fail;ByteArrayOutputStream sent=new ByteArrayOutputStream();
  Connection(URL url){super(url);}
  public void connect()throws IOException{connects++;if(fail)throw new SocketTimeoutException();}
  public boolean usingProxy(){return false;}public void disconnect(){}
  public String getCipherSuite(){return "fixture";}
  public Certificate[] getLocalCertificates(){return null;}public Certificate[] getServerCertificates(){return new Certificate[0];}
  public int getResponseCode(){return code;}
  public InputStream getInputStream(){return new ByteArrayInputStream("{\"ok\":true}".getBytes(StandardCharsets.UTF_8));}
  public OutputStream getOutputStream(){writes++;return sent;}
 }
 static final class Fixture extends URLStreamHandler {
  final Map<String,Connection> opened=new HashMap<>();String failHost;int cdnStatus=200;
  protected URLConnection openConnection(URL url)throws IOException{return openConnection(url,Proxy.NO_PROXY);}
  protected URLConnection openConnection(URL url,Proxy proxy){Connection c=new Connection(url);c.fail=url.getHost().equals(failHost);if(url.getHost().startsWith("cdn."))c.code=cdnStatus;opened.put(url.getHost(),c);return c;}
 }
 private SSLSocketFactory privateCa()throws Exception{try(InputStream in=getClass().getResourceAsStream("/tls-ca.pem")){return ApiEndpoint.trustCa(in);}}
 @Test public void cdnUsesPlatformTrustAndSpeedKeepsPrivateOrigin()throws Exception{
  Fixture fixture=new Fixture();URL origin=new URL(null,"https://origin.cdn-test.invalid:11452/api/v1/profile",fixture);URL cdn=new URL(null,"https://cdn.cdn-test.invalid/api/v1/profile",fixture);SSLSocketFactory ca=privateCa();
  ApiEndpoint endpoint=new ApiEndpoint(origin,"fixture-token",ca,cdn);
  assertTrue(endpoint.request(null).getBoolean("ok"));Connection c=fixture.opened.get(cdn.getHost());
  assertSame(HttpsURLConnection.getDefaultSSLSocketFactory(),c.getSSLSocketFactory());assertFalse(fixture.opened.containsKey(origin.getHost()));assertEquals("Bearer fixture-token",c.getRequestProperty("Authorization"));
  HttpsURLConnection speed=(HttpsURLConnection)endpoint.speedConnection(Proxy.NO_PROXY,1,"a".repeat(64));
  assertEquals(origin.getHost(),speed.getURL().getHost());assertSame(ca,speed.getSSLSocketFactory());
 }
 @Test public void preSendCdnFailureCanUseOriginalCaAndPostIsNotReplayedAfterGatewayFailure()throws Exception{
  Fixture fixture=new Fixture();URL origin=new URL(null,"https://origin.fallback-cdn.invalid:11452/api/v1/profile",fixture);URL cdn=new URL(null,"https://cdn.fallback-cdn.invalid/api/v1/profile",fixture);SSLSocketFactory ca=privateCa();
  fixture.failHost=cdn.getHost();ApiEndpoint endpoint=new ApiEndpoint(origin,"fixture-token",ca,cdn);
  assertTrue(endpoint.request(new JSONObject()).getBoolean("ok"));Connection original=fixture.opened.get(origin.getHost());assertEquals(1,original.writes);assertSame(ca,original.getSSLSocketFactory());assertEquals(0,fixture.opened.get(cdn.getHost()).writes);
  Fixture blocked=new Fixture();blocked.cdnStatus=521;URL newOrigin=new URL(null,"https://origin.post-cdn.invalid:11452/api/v1/profile",blocked);URL newCdn=new URL(null,"https://cdn.post-cdn.invalid/api/v1/profile",blocked);
  assertThrows(ApiEndpoint.HttpFailure.class,()->new ApiEndpoint(newOrigin,"fixture-token",ca,newCdn).request(new JSONObject()));assertFalse(blocked.opened.containsKey(newOrigin.getHost()));
 }
 @Test public void validatesBuildTimeCdnSchemeAuthorityAndPath()throws Exception{
  for(String cdn:new String[]{"http://cdn.fixture.invalid/api/v1/profile","https://user@cdn.fixture.invalid/api/v1/profile","https://cdn.fixture.invalid:8443/api/v1/profile","https://cdn.fixture.invalid/api/v1/other","https://cdn.fixture.invalid/api/v1/profile?next=elsewhere","https://203.0.113.1/api/v1/profile"}){
   JSONObject config=new JSONObject().put("url","https://203.0.113.1:11452/api/v1/profile").put("clientToken","fixture").put("cdnUrl",cdn);
   assertThrows(Exception.class,()->ApiEndpoint.parse(config));
  }
  ApiEndpoint valid=ApiEndpoint.parse(new JSONObject().put("url","https://203.0.113.1:11452/api/v1/profile").put("clientToken","fixture").put("cdnUrl","https://gaozy.tech/api/v1/profile"));
  assertEquals("gaozy.tech",valid.controlRoutes()[0].getHost());
 }
}
