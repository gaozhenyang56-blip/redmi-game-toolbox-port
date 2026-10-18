package com.gzy.qinglian;
import org.junit.Test;
import static org.junit.Assert.*;
import org.json.*;
public class ConfigTest {
 private String fixture(){return "{\"id\":\"11111111-1111-4111-8111-111111111111\",\"add\":\"192.0.2.1\",\"port\":443,\"aid\":0,\"net\":\"tcp\",\"type\":\"http\",\"host\":\"\",\"path\":\"/\",\"tls\":\"none\"}";}
 @Test public void preservesHttpCamouflageAndOneProxy()throws Exception{
  JSONObject c=new JSONObject(NodeConfig.build(fixture()));JSONArray out=c.getJSONArray("outbounds");assertEquals(2,out.length());assertEquals("vmess",out.getJSONObject(0).getString("protocol"));
  JSONObject stream=out.getJSONObject(0).getJSONObject("streamSettings");assertEquals("none",stream.getString("security"));assertEquals("http",stream.getJSONObject("tcpSettings").getJSONObject("header").getString("type"));
  assertEquals("/",stream.getJSONObject("tcpSettings").getJSONObject("header").getJSONObject("request").getJSONArray("path").getString(0));
  assertEquals(2,c.getJSONArray("inbounds").length());for(int i=0;i<c.getJSONArray("inbounds").length();i++){assertEquals("127.0.0.1",c.getJSONArray("inbounds").getJSONObject(i).getString("listen"));}
  assertTrue(c.getJSONObject("policy").getJSONObject("system").getBoolean("statsOutboundUplink"));assertTrue(c.getJSONObject("policy").getJSONObject("system").getBoolean("statsOutboundDownlink"));
 }
 @Test(expected=Exception.class)public void rejectsInvalidPort()throws Exception{NodeConfig.build(fixture().replace("443","70000"));}
 @Test(expected=Exception.class)public void rejectsUnsupportedTransport()throws Exception{NodeConfig.build(fixture().replace("tcp","grpc"));}
 @Test(expected=Exception.class)public void rejectsMalformedId()throws Exception{NodeConfig.build(fixture().replace("11111111-1111-4111-8111-111111111111","bad"));}
 @Test public void accountTLSUsesOnlyProvidedPublicCAAndPreservesHostnameChecks()throws Exception{
  String ca;try(java.io.InputStream in=getClass().getResourceAsStream("/tls-ca.pem")){ca=new String(in.readAllBytes(),java.nio.charset.StandardCharsets.US_ASCII);}
  JSONObject n=new JSONObject(fixture()).put("tls","tls").put("caPem",ca).put("sni","fixture.example");
  JSONObject tls=new JSONObject(NodeConfig.build(n.toString())).getJSONArray("outbounds").getJSONObject(0).getJSONObject("streamSettings").getJSONObject("tlsSettings");assertFalse(tls.getBoolean("allowInsecure"));assertEquals("fixture.example",tls.getString("serverName"));assertEquals("verify",tls.getJSONArray("certificates").getJSONObject(0).getString("usage"));
  n.put("caPem","bad certificate");try{NodeConfig.build(n.toString());fail("invalid CA accepted");}catch(java.security.cert.CertificateException expected){}
 }
 @Test public void convertsBytesPerSecondToMegabits(){assertEquals(8,SpeedTester.mbps(1000000,1000000000L),.0001);assertEquals(0,SpeedTester.mbps(1,0),0);}
}
