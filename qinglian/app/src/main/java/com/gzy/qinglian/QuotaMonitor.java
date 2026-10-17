package com.gzy.qinglian;
import android.content.Context;
import android.os.SystemClock;
import java.io.FileNotFoundException;
import java.util.concurrent.*;

public final class QuotaMonitor {
 public static volatile QuotaInfo current;
 public static volatile String status="待接入服务端配额接口";
 public static volatile long updatedAt=0;
 private static volatile long updatedTick=0;
 private static volatile boolean available=false;
 private static final ExecutorService executor=Executors.newSingleThreadExecutor();
 private static boolean busy=false;
 private static long attempted=0;
 public static boolean fresh(){return available&&SystemClock.elapsedRealtime()-updatedTick<120000;}
 public static synchronized void refresh(Context context,boolean force){
  long now=SystemClock.elapsedRealtime();
  if(busy||(!force&&attempted!=0&&now-attempted<60000))return;
  attempted=now;busy=true;Context app=context.getApplicationContext();
  executor.execute(()->{
   try{
    QuotaInfo q=QuotaInfo.fromJson(ApiEndpoint.load(app,"quota.json").request(null));
    current=q;updatedAt=System.currentTimeMillis();updatedTick=SystemClock.elapsedRealtime();available=true;status="服务端配额已更新";
   }catch(FileNotFoundException e){available=false;status="待接入服务端配额接口";}
   catch(Exception e){available=false;status=current==null?"配额暂不可用":"更新失败 · 上次数据仅供参考";}
   finally{synchronized(QuotaMonitor.class){busy=false;}}
  });
 }
}
