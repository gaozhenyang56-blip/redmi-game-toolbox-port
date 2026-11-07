package com.gzy.qinglian;
import static org.junit.Assert.*;
import org.junit.*;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.json.*;
import android.content.Context;
import java.io.*;
@RunWith(RobolectricTestRunner.class)
public class ServerSettingsTest {
 private Context c;private File f;
 @Before public void setup(){c=RuntimeEnvironment.getApplication();f=new File(c.getFilesDir(),"panel-server.json");f.delete();}
 @After public void clean(){f.delete();}
 private JSONObject fixture(String token)throws Exception{return new JSONObject().put("schema",1).put("kind","qinglian-server").put("name","Fixture").put("profile",new JSONObject().put("url","https://203.0.113.10:11452/custom/api/v1/profile").put("cdnUrl","https://panel.example/custom/api/v1/profile").put("clientToken",token));}
 private void select(JSONObject v)throws Exception{try(FileOutputStream out=new FileOutputStream(f)){out.write(v.toString().getBytes(java.nio.charset.StandardCharsets.UTF_8));}}
 @Test public void allServicesFollowSelectedPanelAndAccountsAreIsolated()throws Exception{
  c.getSharedPreferences("export-api",0).edit().putString("token","embedded").commit();
  select(fixture("a".repeat(64)));assertTrue(ProfileMonitor.configured(c));assertEquals("",ExportClient.token(c));
  String first=ServerSettings.prefName(c,"export-api");c.getSharedPreferences(first,0).edit().putString("token","server-a").commit();
  assertEquals("/custom/api/v1/heartbeat",ApiEndpoint.parse(ServerSettings.configuration(c,"telemetry.json")).controlRoutes()[0].getPath());
  assertEquals("panel.example",ApiEndpoint.parse(ServerSettings.configuration(c,"profile.json")).controlRoutes()[0].getHost());
  select(fixture("b".repeat(64)));assertEquals("",ExportClient.token(c));assertNotEquals(first,ServerSettings.prefName(c,"export-api"));
  select(fixture("a".repeat(64)));assertEquals("server-a",ExportClient.token(c));f.delete();assertEquals("embedded",ExportClient.token(c));
 }
 @Test public void rejectThirdPartyAndUnsafeBootstrap()throws Exception{
  assertThrows(Exception.class,()->ServerSettings.validate("{\"protocol\":\"vmess\"}"));
  JSONObject v=fixture("a".repeat(64));v.getJSONObject("profile").put("url","http://panel.example/api/v1/profile");assertThrows(Exception.class,()->ServerSettings.validate(v.toString()));
  JSONObject secret=fixture("a".repeat(64));secret.put("privateKey","secret");assertThrows(Exception.class,()->ServerSettings.validate(secret.toString()));
  assertThrows(Exception.class,()->ServerSettings.validate("x".repeat(65537)));
 }
}
