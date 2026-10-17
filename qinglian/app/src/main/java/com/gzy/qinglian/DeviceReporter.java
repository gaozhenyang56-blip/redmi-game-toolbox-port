package com.gzy.qinglian;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import java.io.*;
import java.util.UUID;
import java.util.concurrent.*;
import org.json.JSONObject;

/** One VPN session. All requests, including the final offline event, are serialized. */
final class DeviceReporter implements AutoCloseable {
 interface Transport {void send(JSONObject body)throws Exception;}
 interface Counters {Sample read();}
 static final class Sample {
  final long up,down;final double upRate,downRate;
  Sample(long up,long down,double upRate,double downRate){this.up=up;this.down=down;this.upRate=upRate;this.downRate=downRate;}
 }
 static final String PREFS="device-reporting",CONSENT="disclosure-v1";
 private final Transport transport;
 private final Counters counters;
 private final JSONObject metadata;
 private final ScheduledExecutorService worker;
 private ScheduledFuture<?> heartbeat;
 private volatile boolean closed=false;
 private boolean started=false;
 private long sequence=0;
 volatile String status="设备上报准备中";

 static boolean consented(Context context){return context.getSharedPreferences(PREFS,Context.MODE_PRIVATE).getBoolean(CONSENT,false);}
 static DeviceReporter create(Context context,Counters counters)throws Exception{
  if(!consented(context))return null;
  ApiEndpoint endpoint;
  try{endpoint=ApiEndpoint.load(context,"telemetry.json");}catch(FileNotFoundException missing){return null;}
  JSONObject metadata=new JSONObject();
  SharedPreferences prefs=context.getSharedPreferences(PREFS,Context.MODE_PRIVATE);
  synchronized(DeviceReporter.class){
   String id=prefs.getString("installationId",null);if(id==null)id=UUID.randomUUID().toString();
   long generation=Math.addExact(prefs.getLong("generation",0),1);
   if(!prefs.edit().putString("installationId",id).putLong("generation",generation).commit())throw new IOException("设备会话无法保存");
   metadata.put("deviceId",id).put("generation",generation);
  }
  metadata.put("sessionId",UUID.randomUUID().toString()).put("deviceName",Build.MANUFACTURER+" "+Build.MODEL)
   .put("brand",Build.BRAND).put("model",Build.MODEL).put("androidVersion",Build.VERSION.RELEASE)
   .put("appVersion",context.getPackageManager().getPackageInfo(context.getPackageName(),0).versionName);
  return new DeviceReporter(body->{JSONObject response=endpoint.request(body);if(!Boolean.TRUE.equals(response.get("ok")))throw new IOException();},counters,metadata,Executors.newSingleThreadScheduledExecutor());
 }
 DeviceReporter(Transport transport,Counters counters,JSONObject metadata,ScheduledExecutorService worker){
  this.transport=transport;this.counters=counters;this.metadata=metadata;this.worker=worker;
 }
 synchronized void start(){
  if(started||closed)return;started=true;
  heartbeat=worker.scheduleWithFixedDelay(()->{if(!closed)send(true,counters.read());},0,10,TimeUnit.SECONDS);
 }
 private void send(boolean online,Sample sample){
  try{
   JSONObject body=new JSONObject(metadata.toString());
   body.put("sequence",++sequence).put("online",online).put("uploadBytes",sample.up).put("downloadBytes",sample.down)
    .put("uploadRate",online?sample.upRate:0).put("downloadRate",online?sample.downRate:0);
   transport.send(body);status=online?"设备在线状态已更新":"已发送离线状态";
  }catch(Exception failure){status="设备上报暂不可用 · 服务端将按超时判断离线";}
 }
 @Override public synchronized void close(){
  if(closed)return;closed=true;
  if(heartbeat!=null)heartbeat.cancel(false);
  Sample last=counters.read();
  if(started)worker.execute(()->send(false,last));
  worker.shutdown(); // Do not interrupt an in-flight online event ahead of the final offline event.
 }
}
