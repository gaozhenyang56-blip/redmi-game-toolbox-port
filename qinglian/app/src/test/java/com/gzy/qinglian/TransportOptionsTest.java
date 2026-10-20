package com.gzy.qinglian;
import android.content.Context;import android.view.*;import android.widget.TextView;
import org.json.*;import org.junit.*;import static org.junit.Assert.*;import org.junit.runner.RunWith;import org.robolectric.*;import org.robolectric.annotation.Config;
@RunWith(RobolectricTestRunner.class) @Config(sdk=35)
public class TransportOptionsTest {
 Context c(){return RuntimeEnvironment.getApplication();}
 @After public void clear(){c().getSharedPreferences("transport",0).edit().clear().commit();c().getSharedPreferences("labs",0).edit().clear().commit();TunnelService.state="disconnected";}
 JSONObject tcp(String protocol)throws Exception{return new JSONObject().put("protocol",protocol).put("add","127.0.0.1").put("port",443).put("id","11111111-1111-4111-8111-111111111111").put("password","public-fixture").put("tls","tls");}
 @Test public void automaticAndExperimentAreOptInAndSelectionIsFrozen()throws Exception{
  Hy2Settings.Selection old=Hy2Settings.saved(c());assertFalse(old.automatic);assertFalse(old.multipath);assertFalse(old.reuse);assertEquals("",old.tcpProtocol);
  c().getSharedPreferences("transport",0).edit().putBoolean("automatic",true).putBoolean("tcpReuse",true).putString("tcpProtocol","trojan").commit();LabSettings.set(c(),"multiHy2",true);
  Hy2Settings.Selection next=Hy2Settings.saved(c());assertTrue(next.automatic);assertTrue(next.multipath);assertTrue(next.reuse);assertEquals("trojan",next.options().getString("tcpProtocol"));
  assertFalse(old.automatic);assertFalse(old.multipath);assertEquals("",old.tcpProtocol);
  assertTrue(next.withChannel(false).options().getBoolean("labHy2"));assertEquals(2,next.withChannel(true).lanes());assertEquals(1,next.withChannel(false).lanes());
 }
 @Test public void tcpProtocolRequiresExplicitServerAcknowledgment()throws Exception{
  Hy2Settings.Selection selected=new Hy2Settings.Selection(false,true,false,false,false,"trojan");JSONObject response=new JSONObject().put("node",tcp("trojan"));assertThrows(Exception.class,()->Hy2Settings.confirm(selected,response));response.put("tcpProtocol","trojan");Hy2Settings.confirm(selected,response);response.getJSONObject("node").put("protocol","vless");assertThrows(Exception.class,()->Hy2Settings.confirm(selected,response));
 }
 @Test public void multiplexingBoundedAndOnlyOnSupportedTcpProtocols()throws Exception{
  JSONObject vless=new JSONObject(NodeConfig.build(tcp("vless").toString(),false,1,true)).getJSONArray("outbounds").getJSONObject(0);assertEquals(4,vless.getJSONObject("mux").getInt("concurrency"));assertEquals(60,vless.getJSONObject("streamSettings").getJSONObject("sockopt").getInt("tcpKeepAliveIdle"));
  assertFalse(new JSONObject(NodeConfig.build(tcp("trojan").toString(),false,1,true)).getJSONArray("outbounds").getJSONObject(0).has("mux"));
  assertFalse(new JSONObject(NodeConfig.build(tcp("vless").toString(),false,1,false)).getJSONArray("outbounds").getJSONObject(0).has("mux"));
 }
 @Test public void twoHy2LanesKeepDnsAndSensitiveServicesAndMainlandRules()throws Exception{
  JSONObject node=new JSONObject().put("protocol","hysteria2").put("add","127.0.0.1").put("port",443).put("auth","fixture").put("compatibility",tcp("vless"));JSONObject config=new JSONObject(NodeConfig.build(node.toString(),true,2,true));
  JSONArray rules=config.getJSONObject("routing").getJSONArray("rules");assertEquals("dns-out",rules.getJSONObject(0).getString("outboundTag"));assertEquals("compatibility",rules.getJSONObject(1).getString("outboundTag"));assertEquals("hy2-pool",rules.getJSONObject(rules.length()-1).getString("balancerTag"));assertEquals("hy2-lane-1",config.getJSONArray("outbounds").getJSONObject(config.getJSONArray("outbounds").length()-1).getString("tag"));assertEquals("127.0.0.1:10811",Hy2Client.configuration(node,"ca.pem",1).getJSONObject("socks5").getString("listen"));
  assertThrows(Exception.class,()->NodeConfig.build(node.toString(),false,3,false));assertThrows(Exception.class,()->Hy2Client.configuration(node,"ca.pem",2));
 }
 @Test public void productionPageExposesControlsOutsideLaboratory(){try(var activity=Robolectric.buildActivity(MainActivity.class).setup()){View root=activity.get().getWindow().getDecorView();assertTrue(find(root,"TCP 对照协议"));assertTrue(find(root,"TCP 连接复用"));assertTrue(find(root,"自动选择兼容 / HY2"));}}
 boolean find(View v,String value){if(v instanceof TextView&&value.equals(((TextView)v).getText().toString()))return true;if(v instanceof ViewGroup){ViewGroup g=(ViewGroup)v;for(int i=0;i<g.getChildCount();i++)if(find(g.getChildAt(i),value))return true;}return false;}
}
