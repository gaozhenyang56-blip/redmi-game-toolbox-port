package com.gzy.qinglian;
import org.junit.Test;
import static org.junit.Assert.*;
import org.json.*;
import java.io.*;
import java.net.*;
import java.nio.charset.StandardCharsets;

public class ApiEndpointTest {
 private static class Fixture extends HttpURLConnection {
  String response="{\"online\":2}";int code=200;boolean disconnected;ByteArrayOutputStream sent=new ByteArrayOutputStream();
  Fixture()throws Exception{super(new URL("https://fixture.invalid/api"));}
  @Override public int getResponseCode(){return code;}
  @Override public InputStream getInputStream(){return new ByteArrayInputStream(response.getBytes(StandardCharsets.UTF_8));}
  @Override public OutputStream getOutputStream(){return sent;}
  @Override public void disconnect(){disconnected=true;}
  @Override public boolean usingProxy(){return false;}
  @Override public void connect(){}
 }
 private ApiEndpoint endpoint(Fixture fixture)throws Exception{
  URL url=new URL(null,"https://fixture.invalid/api",new URLStreamHandler(){
   @Override protected URLConnection openConnection(URL u){return fixture;}
   @Override protected URLConnection openConnection(URL u,Proxy proxy){assertEquals(Proxy.NO_PROXY,proxy);return fixture;}
  });return new ApiEndpoint(url,"fixture-token");
 }
 @Test public void authenticatesWithoutRedirecting()throws Exception{
  Fixture c=new Fixture();assertEquals(2,endpoint(c).request(null).getInt("online"));
  assertEquals("Bearer fixture-token",c.getRequestProperty("Authorization"));assertFalse(c.getInstanceFollowRedirects());assertFalse(c.getUseCaches());assertTrue(c.disconnected);
 }
 @Test public void postsJson()throws Exception{
  Fixture c=new Fixture();c.response="{\"ok\":true}";endpoint(c).request(new JSONObject().put("online",false));
  assertEquals("POST",c.getRequestMethod());assertFalse(new JSONObject(c.sent.toString("UTF-8")).getBoolean("online"));assertTrue(c.disconnected);
 }
 @Test public void rejectsRedirectUnauthorizedAndOversizedBody()throws Exception{
  for(int status:new int[]{302,401,503,200}){
   Fixture c=new Fixture();c.code=status;if(status==200)c.response=" ".repeat(8193);
   assertThrows(IOException.class,()->endpoint(c).request(null));assertTrue(c.disconnected);
  }
 }
 @Test public void requiresHttpsAndNonemptyToken()throws Exception{
  for(String address:new String[]{"http://fixture.invalid/api","https://user:password@fixture.invalid/api","https://fixture.invalid/api#fragment"})
   assertThrows(Exception.class,()->ApiEndpoint.parse(new JSONObject().put("url",address).put("clientToken","token")));
  assertThrows(Exception.class,()->ApiEndpoint.parse(new JSONObject().put("url","https://fixture.invalid/api").put("clientToken","")));
 }
 @Test public void parsesQuotaWithoutSubscriptionAndRejectsMissingOrLossyCounters()throws Exception{
  QuotaInfo quota=QuotaInfo.fromJson(new JSONObject("{\"upload\":100,\"download\":200,\"total\":1000,\"expire\":100}"));
  assertEquals(700,quota.remaining());assertTrue(quota.expired(100000));assertFalse(quota.expired(99999));
  for(String value:new String[]{"null","true","-1","1.5","\"100\"","9223372036854775808"}){
   JSONObject bad=new JSONObject("{\"upload\":"+value+",\"download\":0,\"total\":0,\"expire\":0}");
   assertThrows(Exception.class,()->QuotaInfo.fromJson(bad));
  }
  assertThrows(Exception.class,()->QuotaInfo.fromJson(new JSONObject("{\"upload\":0,\"download\":0,\"total\":0}")));
  assertThrows(Exception.class,()->QuotaInfo.fromJson(new JSONObject("{\"upload\":9223372036854775807,\"download\":1,\"total\":0,\"expire\":0}")));
 }
}
