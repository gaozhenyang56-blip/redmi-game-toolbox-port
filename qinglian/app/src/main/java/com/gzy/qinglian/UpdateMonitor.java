package com.gzy.qinglian;
import android.app.Activity;
import android.content.*;
import android.content.pm.*;
import android.net.Uri;
import android.os.*;
import androidx.core.content.FileProvider;
import java.io.*;
import java.security.MessageDigest;
import java.util.concurrent.*;
import org.json.*;

/** Panel-published data hotfixes and explicit, original-signature package upgrades. */
final class UpdateMonitor {
 static final String CERT="2e90d97183fbe26c05a8bd67454b0a5d0f5c01633609a335fdff693a4774a870";
 static final class APK {
  final int versionCode;final long size;final String name,sha,notes;
  APK(int code,long size,String name,String sha,String notes){versionCode=code;this.size=size;this.name=name;this.sha=sha;this.notes=notes;}
 }
 static volatile APK available;static volatile String status="正在检查面板更新";
 private static final ExecutorService worker=Executors.newSingleThreadExecutor();
 private static long attempted;private static boolean busy,downloading;
 static APK parseAPK(JSONObject value)throws Exception{
  java.util.Set<String> allowed=new java.util.HashSet<>(java.util.Arrays.asList("versionCode","versionName","sha256","size","notes"));for(java.util.Iterator<String> keys=value.keys();keys.hasNext();)if(!allowed.remove(keys.next()))throw new IOException("未知安装包字段");if(!allowed.isEmpty())throw new IOException("安装包字段缺失");
  int code=UiTuning.integer(value,"versionCode",1,Integer.MAX_VALUE);long size=ApiEndpoint.nonnegativeLong(value,"size");String sha=value.getString("sha256"),name=value.getString("versionName"),notes=value.getString("notes");
  if(size<1||size>64L*1024*1024||!sha.matches("[0-9a-f]{64}")||name.isEmpty()||name.length()>64||notes.length()>1000)throw new IOException("无效安装包信息");
  return new APK(code,size,name,sha,notes);
 }
 static void accept(Context context,JSONObject value)throws Exception{
  if(UiTuning.integer(value,"schema",1,1)!=1)throw new IOException();
  long revision=ApiEndpoint.nonnegativeLong(value,"revision");UiTuning ui=UiTuning.parse(revision,value.getJSONObject("ui"));
  APK apk=value.isNull("apk")?null:parseAPK(value.getJSONObject("apk"));
  UiTuning current=UiTuning.get(context);if(revision<current.revision)throw new IOException("旧发布已忽略");
  if(revision>current.revision&&!UiTuning.save(context,ui))throw new IOException("保存修复失败");
  available=apk!=null&&apk.versionCode>BuildConfig.VERSION_CODE?apk:null;status="已同步面板 · 修复序号 "+revision+(available==null?" · 无新版本":" · 可更新 "+available.name);
 }
 static synchronized void refresh(Context context,boolean force){
  long now=SystemClock.elapsedRealtime();if(busy||(!force&&attempted!=0&&now-attempted<30000))return;busy=true;attempted=now;Context app=context.getApplicationContext();
  worker.execute(()->{try{accept(app,ApiEndpoint.load(app,"updates.json").request(null));}catch(Exception unavailable){status="面板更新暂不可用 · 保留已验证配置";}finally{synchronized(UpdateMonitor.class){busy=false;}}});
 }
 static File file(Context context,APK apk){File directory=new File(context.getCacheDir(),"updates");directory.mkdirs();return new File(directory,"app-"+apk.sha+".apk");}
 static void verify(Context context,File file,APK apk)throws Exception{
  if(file.length()!=apk.size)throw new IOException("安装包长度不符");MessageDigest digest=MessageDigest.getInstance("SHA-256");try(InputStream in=new FileInputStream(file)){byte[] buffer=new byte[65536];int n;while((n=in.read(buffer))!=-1)digest.update(buffer,0,n);}
  if(!ApiEndpoint.hex(digest.digest()).equals(apk.sha))throw new IOException("安装包SHA256不符");
  PackageInfo info=context.getPackageManager().getPackageArchiveInfo(file.getPath(),Build.VERSION.SDK_INT>=28?PackageManager.GET_SIGNING_CERTIFICATES:PackageManager.GET_SIGNATURES);
  if(info==null||!context.getPackageName().equals(info.packageName)||info.applicationInfo==null||info.applicationInfo.minSdkVersion>Build.VERSION.SDK_INT)throw new IOException("安装包不兼容");
  long code=Build.VERSION.SDK_INT>=28?info.getLongVersionCode():info.versionCode;
  if(code!=apk.versionCode||code<=BuildConfig.VERSION_CODE)throw new IOException("安装包版本不符");
  android.content.pm.Signature[] signatures=Build.VERSION.SDK_INT>=28?(info.signingInfo==null?null:info.signingInfo.getApkContentsSigners()):info.signatures;
  if(signatures==null||signatures.length!=1||!ApiEndpoint.hex(MessageDigest.getInstance("SHA-256").digest(signatures[0].toByteArray())).equals(CERT))throw new IOException("安装包不是原发布签名");
 }
 interface Result {void done(File apk);void failed();}
 static synchronized void download(Context context,APK apk,Result result){
  if(downloading)return;downloading=true;Context app=context.getApplicationContext();status="正在下载更新安装包…";
  worker.execute(()->{File output=file(app,apk);try{
   if(!output.isFile())ApiEndpoint.load(app,"updates.json").downloadAPK(apk.sha,apk.size,output);verify(app,output,apk);status="安装包已校验，等待系统确认安装";result.done(output);
  }catch(Exception rejected){output.delete();status="更新下载或原签名校验失败，请重试";result.failed();}finally{synchronized(UpdateMonitor.class){downloading=false;}}});
 }
 static boolean needsPrompt(Context context){APK apk=available;return apk!=null&&context.getSharedPreferences("app_updates",0).getInt("prompted",0)!=apk.versionCode;}
 static void prompted(Context context,APK apk){context.getSharedPreferences("app_updates",0).edit().putInt("prompted",apk.versionCode).apply();}
 static void install(Activity activity,File file)throws Exception{
  if(Build.VERSION.SDK_INT>=26&&!activity.getPackageManager().canRequestPackageInstalls()){
   activity.startActivity(new Intent(android.provider.Settings.ACTION_MANAGE_UNKNOWN_APP_SOURCES,Uri.parse("package:"+activity.getPackageName())));return;
  }
  Uri uri=FileProvider.getUriForFile(activity,activity.getPackageName()+".updates",file);
  activity.startActivity(new Intent(Intent.ACTION_VIEW).setDataAndType(uri,"application/vnd.android.package-archive").addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION));
 }
}
