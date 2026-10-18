package com.gzy.qinglian;
import org.junit.Test;import org.junit.runner.RunWith;import static org.junit.Assert.*;import org.robolectric.*;import org.robolectric.annotation.*;import java.io.*;import java.security.*;import org.json.*;
@RunWith(RobolectricTestRunner.class) @Config(sdk=35)
public class GeoAssetsTest {
 @Test public void routingDataIsPinnedAndCorruptedCopyIsReplaced()throws Exception{
  android.content.Context c=RuntimeEnvironment.getApplication();GeoAssets.prepare(c);for(int i=0;i<GeoAssets.NAMES.length;i++){File path=new File(c.getFilesDir(),GeoAssets.NAMES[i]);assertEquals(GeoAssets.HASHES[i],ApiEndpoint.hex(MessageDigest.getInstance("SHA-256").digest(java.nio.file.Files.readAllBytes(path.toPath()))));}
  java.nio.file.Files.write(new File(c.getFilesDir(),GeoAssets.NAMES[0]).toPath(),new byte[]{1,2});GeoAssets.prepare(c);assertTrue(new File(c.getFilesDir(),GeoAssets.NAMES[0]).length()>200000);
 }
 @Test public void globalHasNoDirectAndCountryModeUsesSplitDnsAndDataRules()throws Exception{
  String n="{\"protocol\":\"vmess\",\"add\":\"192.0.2.1\",\"port\":443,\"id\":\"11111111-1111-4111-8111-111111111111\"}";
  JSONObject global=new JSONObject(NodeConfig.build(n));assertFalse(global.toString().contains("freedom"));JSONObject rules=new JSONObject(NodeConfig.build(n,true));assertTrue(rules.toString().contains("geoip:cn"));assertTrue(rules.toString().contains("geosite:cn"));assertEquals("IPIfNonMatch",rules.getJSONObject("routing").getString("domainStrategy"));assertEquals("223.5.5.5",rules.getJSONObject("dns").getJSONArray("servers").getJSONObject(0).getString("address"));
 }
}
