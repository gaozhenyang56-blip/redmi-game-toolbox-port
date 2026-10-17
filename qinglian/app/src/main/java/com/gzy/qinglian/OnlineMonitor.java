package com.gzy.qinglian;
import android.content.Context;
import android.os.SystemClock;
import java.io.FileNotFoundException;
import java.util.concurrent.*;
/** Read-only device count; no device details or panel administrator credentials. */
public final class OnlineMonitor {
 public static volatile Integer count=null;
 public static volatile long updatedAt=0;
 public static volatile String status="待接入在线统计接口";
 private static volatile long updatedTick=0;
 private static volatile boolean available=false;
 private static final ExecutorService worker=Executors.newSingleThreadExecutor();
 private static boolean busy=false;
 private static long attempted=0;
 public static boolean fresh(){return available&&SystemClock.elapsedRealtime()-updatedTick<15000;}
 public static synchronized void refresh(Context context,boolean force){
  long now=SystemClock.elapsedRealtime();
  if(busy||(!force&&attempted!=0&&now-attempted<5000))return;
  busy=true;attempted=now;Context app=context.getApplicationContext();
  worker.execute(()->{try{
   long value=ApiEndpoint.nonnegativeLong(ApiEndpoint.load(app,"online.json").request(null),"online");
   if(value>Integer.MAX_VALUE)throw new IllegalArgumentException();
   count=(int)value;updatedAt=System.currentTimeMillis();updatedTick=SystemClock.elapsedRealtime();available=true;status="在线设备统计 · 每 5 秒刷新";
  }catch(FileNotFoundException e){available=false;status="待接入在线统计接口";}
   catch(Exception e){available=false;status=count==null?"在线统计暂不可用":"更新失败 · 上次数据仅供参考";}
   finally{synchronized(OnlineMonitor.class){busy=false;}}
  });
 }
}
