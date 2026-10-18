package com.gzy.qinglian;
import android.content.Context;
import android.os.SystemClock;
import java.io.*;
import java.util.concurrent.*;
import org.json.*;

/** The panel selects one profile; no profile editor or subscription URL is exposed in the App. */
final class ProfileMonitor {
 static final class Profile {
  final String node,label,revision;
  Profile(String node,String label,String revision){this.node=node;this.label=label;this.revision=revision;}
 }
 static volatile Profile current;
 static volatile String status="正在同步面板配置";
 private static final ExecutorService worker=Executors.newSingleThreadExecutor();
 private static boolean busy;private static long attempted;
 static boolean configured(Context context)throws IOException{
  try(InputStream in=context.getAssets().open("profile.json")){return true;}catch(FileNotFoundException missing){return false;}
 }
 static boolean accelerated(Context context){return context.getSharedPreferences("transport",0).getBoolean("accelerated",false);}
 static Profile parse(JSONObject json)throws Exception{return parse(json,false);}
 static Profile parse(JSONObject json,boolean accelerated)throws Exception{
  if(accelerated){if(!json.has("acceleration")||json.isNull("acceleration"))throw new IOException("面板未启用加速通道");json=json.getJSONObject("acceleration");}
  JSONObject node=json.getJSONObject("node");NodeConfig.build(node.toString());
  String revision=json.getString("revision");if(!revision.matches("[0-9a-f]{64}"))throw new IOException("无效的面板配置版本");
  String label=json.getString("label").replaceAll("\\p{Cntrl}"," ");if(label.length()>128)label=label.substring(0,128);
  if(label.trim().isEmpty())label="专属节点";
  return new Profile(node.toString(),label,revision);
 }
 private static Profile fetch(Context context)throws Exception{
  Profile profile=parse(ApiEndpoint.load(context,"profile.json").request(null),accelerated(context));current=profile;status="已同步面板 · "+NodeConfig.protocol(new JSONObject(profile.node)).toUpperCase(java.util.Locale.ROOT);return profile;
 }
 static Profile forConnection(Context context)throws Exception{
  if(configured(context))return fetch(context); // A configured endpoint failure never falls back to an obsolete embedded UUID.
  String node;try(InputStream in=context.getAssets().open("node.json")){node=Io.readUtf8(in);}NodeConfig.build(node);
  return new Profile(node,"专属通道","");
 }
 static synchronized void refresh(Context context,boolean force){
  long now=SystemClock.elapsedRealtime();if(busy||(!force&&attempted!=0&&now-attempted<15000))return;busy=true;attempted=now;
  Context app=context.getApplicationContext();worker.execute(()->{try{
   if(configured(app))fetch(app);else status="固定内置节点";
  }catch(Exception failed){status=current==null?"面板配置暂不可用":"同步失败 · 当前为上次配置";}
  finally{synchronized(ProfileMonitor.class){busy=false;}}});
 }
}
