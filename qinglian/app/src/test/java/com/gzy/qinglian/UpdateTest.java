package com.gzy.qinglian;
import android.content.Context;
import android.content.pm.*;
import org.json.*;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.*;
import org.robolectric.annotation.Config;
import org.robolectric.util.ReflectionHelpers;
import java.io.*;
import java.security.MessageDigest;
import static org.junit.Assert.*;

@RunWith(RobolectricTestRunner.class) @Config(sdk=35)
public class UpdateTest {
 private Context context(){Context c=RuntimeEnvironment.getApplication();c.getSharedPreferences(UiTuning.PREFS,0).edit().clear().commit();return c;}
 @Test public void rejectsCodeFieldsBadTypesAndOutOfRangeUI()throws Exception{
  JSONObject ui=UiTuning.defaults().json();assertEquals(80,UiTuning.parse(1,ui).navHeight);
  ui.put("script","evil");assertThrows(Exception.class,()->UiTuning.parse(1,ui));ui.remove("script");ui.put("navIcon",300);assertThrows(Exception.class,()->UiTuning.parse(1,ui));
  ui.put("navIcon",24.5);assertThrows(Exception.class,()->UiTuning.parse(1,ui));ui.put("navIcon",24);ui.put("glassEnabled","true");assertThrows(Exception.class,()->UiTuning.parse(1,ui));
 }
 @Test public void storesMonotonicallyAndRecoversFailedRenderWithoutRetryLoop()throws Exception{
  Context c=context();assertTrue(UiTuning.save(c,UiTuning.parse(1,UiTuning.defaults().json())));UiTuning.beginRender(c);UiTuning.stable(c);
  assertTrue(UiTuning.save(c,UiTuning.parse(2,UiTuning.defaults().json().put("navGap",8))));UiTuning.beginRender(c);UiTuning.beginRender(c);
  assertEquals(1,UiTuning.get(c).revision);assertEquals(2,UiTuning.get(c).navGap);assertFalse(UiTuning.save(c,UiTuning.parse(2,UiTuning.defaults().json())));
  assertTrue(UiTuning.save(c,UiTuning.parse(3,UiTuning.defaults().json())));UiTuning.reset(c);assertEquals(0,UiTuning.get(c).revision);assertFalse(UiTuning.save(c,UiTuning.parse(3,UiTuning.defaults().json())));
 }
 @Test public void acceptsAtomicManifestButRejectsReplayAndUntrustedDownloadFields()throws Exception{
  Context c=context();JSONObject manifest=new JSONObject().put("schema",1).put("revision",5).put("ui",UiTuning.defaults().json()).put("apk",JSONObject.NULL);
  UpdateMonitor.accept(c,manifest);assertEquals(5,UiTuning.get(c).revision);assertNull(UpdateMonitor.available);
  manifest.put("revision",4);assertThrows(Exception.class,()->UpdateMonitor.accept(c,manifest));
  JSONObject apk=new JSONObject().put("versionCode",8).put("versionName","fixture").put("sha256","0".repeat(64)).put("size",100).put("notes","");assertEquals(8,UpdateMonitor.parseAPK(apk).versionCode);
  apk.put("url","https://untrusted.invalid/app.apk");assertThrows(Exception.class,()->UpdateMonitor.parseAPK(apk));apk.remove("url");apk.put("size",67108865);assertThrows(Exception.class,()->UpdateMonitor.parseAPK(apk));
 }
 @Test public void originalCertificatePackageVersionAndHashMustAllMatch()throws Exception{
  Context c=context();File file=new File(c.getCacheDir(),"archive-fixture.apk");byte[] data="framework archive fixture".getBytes(java.nio.charset.StandardCharsets.UTF_8);try(FileOutputStream out=new FileOutputStream(file)){out.write(data);}
  String hash=ApiEndpoint.hex(MessageDigest.getInstance("SHA-256").digest(data));UpdateMonitor.APK apk=new UpdateMonitor.APK(8,data.length,"fixture",hash,"");
  PackageInfo info=new PackageInfo();info.packageName=c.getPackageName();info.setLongVersionCode(8);info.applicationInfo=new ApplicationInfo();info.applicationInfo.minSdkVersion=26;
  info.signingInfo=ReflectionHelpers.callConstructor(SigningInfo.class);byte[] cert;try(InputStream in=getClass().getResourceAsStream("/original-release-cert.der")){cert=in.readAllBytes();}
  Shadows.shadowOf(info.signingInfo).setSignatures(new android.content.pm.Signature[]{new android.content.pm.Signature(cert)});Shadows.shadowOf(c.getPackageManager()).setPackageArchiveInfo(file.getPath(),info);
  UpdateMonitor.verify(c,file,apk);info.packageName="example.wrong";assertThrows(Exception.class,()->UpdateMonitor.verify(c,file,apk));info.packageName=c.getPackageName();info.setLongVersionCode(9);assertThrows(Exception.class,()->UpdateMonitor.verify(c,file,apk));info.setLongVersionCode(8);
  Shadows.shadowOf(info.signingInfo).setSignatures(new android.content.pm.Signature[]{new android.content.pm.Signature(new byte[]{1,2,3})});assertThrows(Exception.class,()->UpdateMonitor.verify(c,file,apk));
  try(FileOutputStream out=new FileOutputStream(file)){out.write(new byte[data.length]);}assertThrows(Exception.class,()->UpdateMonitor.verify(c,file,apk));
 }
}
