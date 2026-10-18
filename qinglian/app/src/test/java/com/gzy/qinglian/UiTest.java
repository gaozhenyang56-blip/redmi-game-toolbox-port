package com.gzy.qinglian;
import org.junit.Test;import org.junit.runner.RunWith;import static org.junit.Assert.*;
import org.robolectric.*;import org.robolectric.annotation.*;
import android.view.*;import android.widget.*;import android.graphics.*;import java.io.*;
@RunWith(RobolectricTestRunner.class) @Config(sdk=35,qualifiers="w360dp-h780dp-xxhdpi") @GraphicsMode(GraphicsMode.Mode.NATIVE)
public class UiTest {
 private TextView find(View v,String text){if(v instanceof TextView&&((TextView)v).getText().toString().equals(text))return (TextView)v;if(v instanceof ViewGroup)for(int i=0;i<((ViewGroup)v).getChildCount();i++){TextView r=find(((ViewGroup)v).getChildAt(i),text);if(r!=null)return r;}return null;}
 @Test public void opensAndNavigatesAllPages()throws Exception{
  try(var ctrl=Robolectric.buildActivity(MainActivity.class).setup()){
   MainActivity a=ctrl.get();View v=a.getWindow().getDecorView();assertNotNull(find(v,"面板指定节点"));assertNotNull(find(v,"服务端剩余流量"));assertNotNull(find(v,"实时流量"));
   v.measure(View.MeasureSpec.makeMeasureSpec(1080,View.MeasureSpec.EXACTLY),View.MeasureSpec.makeMeasureSpec(2340,View.MeasureSpec.EXACTLY));v.layout(0,0,1080,2340);Bitmap image=Bitmap.createBitmap(1080,2340,Bitmap.Config.ARGB_8888);v.draw(new Canvas(image));File out=new File(System.getProperty("user.dir"),"build/ui-home.png");out.getParentFile().mkdirs();try(FileOutputStream f=new FileOutputStream(out)){image.compress(Bitmap.CompressFormat.PNG,100,f);}
   a.findViewById(MainActivity.NAV_SPEED).performClick();assertNotNull(find(v,"网络测速"));assertFalse(find(v,"测试延迟").isEnabled());assertFalse(find(v,"开始下载测速").isEnabled());
   a.findViewById(MainActivity.NAV_ROUTING).performClick();assertNotNull(find(v,"黑白名单模式"));assertNotNull(find(v,"选择应用"));
   a.findViewById(MainActivity.NAV_ABOUT).performClick();assertNotNull(find(v,"开源许可"));a.findViewById(MainActivity.NAV_CONNECT).performClick();assertNotNull(find(v,"面板指定节点"));assertNotNull(find(v,"规则"));assertNotNull(find(v,"全局"));
  }
 }
 @Test public void firstConnectionExplainsReportingAndCancelDoesNotConsent()throws Exception{
  try(var ctrl=Robolectric.buildActivity(MainActivity.class).setup()){
   MainActivity a=ctrl.get();a.getSharedPreferences(DeviceReporter.PREFS,0).edit().clear().commit();
   assertFalse(DeviceReporter.consented(a));find(a.getWindow().getDecorView(),"连接").performClick();
   android.app.Dialog dialog=org.robolectric.shadows.ShadowDialog.getLatestDialog();
   assertNotNull(dialog);assertTrue(dialog.isShowing());
   assertNotNull(find(dialog.getWindow().getDecorView(),"连接与设备上报"));
   find(dialog.getWindow().getDecorView(),"取消").performClick();assertFalse(DeviceReporter.consented(a));
   assertNull(DeviceReporter.create(a,()->new DeviceReporter.Sample(0,0,0,0)));
  }
 }
 @Test public void cachedCountsAreNeverDisplayedAsLiveValues()throws Exception{
  OnlineMonitor.count=2;OnlineMonitor.status="更新失败 · 上次数据仅供参考";
  QuotaMonitor.current=new QuotaInfo(100,200,1000,0);QuotaMonitor.status="更新失败 · 上次数据仅供参考";
  try(var ctrl=Robolectric.buildActivity(MainActivity.class).setup()){
   View v=ctrl.get().getWindow().getDecorView();assertNotNull(find(v,"不可用"));assertNull(find(v,"2 台"));assertNull(find(v,"700 B"));
  }finally{OnlineMonitor.count=null;QuotaMonitor.current=null;OnlineMonitor.status="待接入在线统计接口";QuotaMonitor.status="待接入服务端配额接口";}
 }
 @Test public void routingListsAndGlobalModePersistIndependently()throws Exception{
  android.content.Context context=org.robolectric.RuntimeEnvironment.getApplication();
  context.getSharedPreferences(AppRouting.PREFS,0).edit().clear().commit();
  assertTrue(AppRouting.load(context).global);
  assertTrue(new AppRouting(false,AppRouting.Mode.BLACKLIST,java.util.Set.of("example.direct")).save(context));
  assertTrue(new AppRouting(false,AppRouting.Mode.WHITELIST,java.util.Set.of("example.proxy")).save(context));
  assertEquals(java.util.Set.of("example.direct"),AppRouting.forMode(context,false,AppRouting.Mode.BLACKLIST).selected);
  assertTrue(AppRouting.load(context).withGlobal(true).save(context));
  AppRouting global=AppRouting.load(context);assertTrue(global.global);assertEquals(AppRouting.Mode.WHITELIST,global.mode);
  assertEquals(java.util.Set.of("example.proxy"),global.selected);assertFalse(global.plan("self",name->true).allowList);
  assertTrue(global.withGlobal(false).save(context));assertTrue(AppRouting.load(context).plan("self",name->true).allowList);
 }
 @Test public void optionalPresetRequiresSaveAndPreservesBlackListAndGlobalMode()throws Exception{
  try(var ctrl=Robolectric.buildActivity(MainActivity.class).setup()){
   MainActivity a=ctrl.get();a.getSharedPreferences(AppRouting.PREFS,0).edit().clear().commit();
   new AppRouting(true,AppRouting.Mode.WHITELIST,java.util.Set.of("example.proxy")).save(a);
   new AppRouting(true,AppRouting.Mode.BLACKLIST,java.util.Set.of("example.direct")).save(a);
   a.findViewById(MainActivity.NAV_ROUTING).performClick();
   find(a.getWindow().getDecorView(),"常用代理应用预设（可选）").performClick();
   android.app.Dialog dialog=org.robolectric.shadows.ShadowDialog.getLatestDialog();
   assertEquals(AppRouting.Mode.BLACKLIST,AppRouting.load(a).mode);find(dialog.getWindow().getDecorView(),"取消").performClick();
   assertEquals(AppRouting.Mode.BLACKLIST,AppRouting.load(a).mode);
   find(a.getWindow().getDecorView(),"常用代理应用预设（可选）").performClick();dialog=org.robolectric.shadows.ShadowDialog.getLatestDialog();
   find(dialog.getWindow().getDecorView(),"保存").performClick();
   assertEquals(AppRouting.Mode.WHITELIST,AppRouting.load(a).mode);assertTrue(AppRouting.load(a).global);
   assertTrue(AppRouting.load(a).selected.contains("example.proxy"));
   assertEquals(java.util.Set.of("example.direct"),AppRouting.forMode(a,true,AppRouting.Mode.BLACKLIST).selected);
  }
 }
}
