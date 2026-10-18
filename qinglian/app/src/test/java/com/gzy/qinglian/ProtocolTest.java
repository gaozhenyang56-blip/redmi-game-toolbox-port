package com.gzy.qinglian;
import org.json.*;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.*;
import org.robolectric.annotation.Config;
import static org.junit.Assert.*;
@RunWith(RobolectricTestRunner.class) @Config(sdk=35)
public class ProtocolTest {
 private JSONObject node(String protocol)throws Exception{return new JSONObject().put("protocol",protocol).put("add","192.0.2.1").put("port",443).put("id","11111111-1111-4111-8111-111111111111").put("password","fixture").put("auth","fixture").put("method","aes-128-gcm").put("net","tcp").put("type","none").put("tls",protocol.equals("trojan")?"tls":"none");}
 @Test public void convertsFourCoreProtocolsAndVerifiedWebsocketTLS()throws Exception{
  for(String protocol:new String[]{"vmess","vless","trojan","shadowsocks"}){
   JSONObject n=node(protocol);JSONObject out=new JSONObject(NodeConfig.build(n.toString())).getJSONArray("outbounds").getJSONObject(0);assertEquals(protocol,out.getString("protocol"));
   if(protocol.equals("vless"))assertEquals("none",out.getJSONObject("settings").getJSONArray("vnext").getJSONObject(0).getJSONArray("users").getJSONObject(0).getString("encryption"));
  }
  JSONObject n=node("vless").put("net","ws").put("path","/fixture").put("tls","tls").put("sni","example.com");JSONObject stream=new JSONObject(NodeConfig.build(n.toString())).getJSONArray("outbounds").getJSONObject(0).getJSONObject("streamSettings");
  assertEquals("/fixture",stream.getJSONObject("wsSettings").getString("path"));assertFalse(stream.getJSONObject("tlsSettings").getBoolean("allowInsecure"));assertEquals("example.com",stream.getJSONObject("tlsSettings").getString("serverName"));
 }
 @Test public void rejectsUnsupportedProtocolTransportCipherAndInsecureTLS()throws Exception{
  for(JSONObject n:new JSONObject[]{node("unknown"),node("vless").put("tls","reality"),node("vless").put("flow","xtls-rprx-vision"),node("vmess").put("aid",1),node("trojan").put("tls","none"),node("shadowsocks").put("method","none"),node("vmess").put("insecure",true)})assertThrows(Exception.class,()->NodeConfig.build(n.toString()));
 }
 @Test public void accelerationUsesOnlyLocalSocksAndVerifiedRemoteCA()throws Exception{
  JSONObject n=node("hysteria2").put("caPem","fixture public CA");JSONObject core=new JSONObject(NodeConfig.build(n.toString()));JSONObject out=core.getJSONArray("outbounds").getJSONObject(0);assertEquals("socks",out.getString("protocol"));assertEquals("127.0.0.1",out.getJSONObject("settings").getJSONArray("servers").getJSONObject(0).getString("address"));
  JSONObject client=Hy2Client.configuration(n,"/private/ca.pem");assertFalse(client.getJSONObject("tls").getBoolean("insecure"));assertEquals("/private/ca.pem",client.getJSONObject("tls").getString("ca"));assertEquals("127.0.0.1:10810",client.getJSONObject("socks5").getString("listen"));
 }
 @Test public void acceleratedSelectionNeverSilentlyFallsBackToLegacyNode()throws Exception{
  JSONObject base=new JSONObject().put("node",node("vmess")).put("label","fixture").put("revision","a".repeat(64));assertThrows(Exception.class,()->ProfileMonitor.parse(base,true));
  base.put("acceleration",new JSONObject().put("node",node("hysteria2")).put("label","accelerated").put("revision","b".repeat(64)));
  assertEquals("vmess",NodeConfig.protocol(new JSONObject(ProfileMonitor.parse(base,false).node)));assertEquals("hysteria2",NodeConfig.protocol(new JSONObject(ProfileMonitor.parse(base,true).node)));
 }
}
