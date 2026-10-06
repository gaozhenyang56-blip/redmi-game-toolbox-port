package com.gzy.redmiport;
import android.content.Context;
import android.os.*;
import java.io.*;
import java.lang.reflect.*;
import java.util.concurrent.*;
import com.gzy.redmidiag.CrashReporter;
/** Shell foreground detection; dispatches to the original local game listener. */
public final class ForegroundMonitor {
 public interface Listener {
  void onForegroundPackage(String packageName,int uid);
  void onUnavailable(String reason);
 }
 private static final ScheduledExecutorService worker=Executors.newSingleThreadScheduledExecutor();
 private static final Handler main=new Handler(Looper.getMainLooper());
 private static final ConcurrentHashMap<Object,ScheduledFuture<?>> subscriptions=new ConcurrentHashMap<>();
 private static volatile Object current;
 public static Object current(){return current;}
 public static synchronized void start(final Object callback){
  if(callback==null||subscriptions.containsKey(callback))return;
  subscriptions.put(callback,worker.scheduleWithFixedDelay(new Runnable(){String last="";
   public void run(){try{
    InputStream stream=PortRuntime.open("dumpsys activity activities; dumpsys window windows"); if(stream==null){unavailable(callback,"前台监测未连接，请检查 Shizuku");return;}
    StringBuilder out=new StringBuilder();try(BufferedReader r=new BufferedReader(new InputStreamReader(stream,"UTF-8"))){String s;while((s=r.readLine())!=null)out.append(s).append('\n');}
    final String pkg=ForegroundSnapshot.packageName(out.toString());if(pkg.isEmpty()){unavailable(callback,"系统未返回前台应用");return;}
    Class<?> app=Class.forName("com.miui.common.e");Context context=(Context)app.getMethod("d").invoke(null);
    final int uid;try{uid=context.getPackageManager().getApplicationInfo(pkg,0).uid;}catch(Exception e){unavailable(callback,"无法识别前台应用："+pkg);return;}
    if(callback instanceof Listener){main.post(new Runnable(){public void run(){if(subscriptions.containsKey(callback))((Listener)callback).onForegroundPackage(pkg,uid);}});return;}
    if(pkg.equals(last))return;
    Class<?> type=Class.forName("com.gzy.redmiport.compat.process.ForegroundInfo");final Object info=type.newInstance();
    type.getField("mForegroundPackageName").set(info,pkg);type.getField("mLastForegroundPackageName").set(info,last);
    type.getField("mForegroundUid").setInt(info,uid);if(!last.isEmpty())try{type.getField("mLastForegroundUid").setInt(info,context.getPackageManager().getApplicationInfo(last,0).uid);}catch(Exception ignored){}
    last=pkg;current=info;
    main.post(new Runnable(){public void run(){if(!subscriptions.containsKey(callback))return;try{
     Method method=callback.getClass().getMethod("onForegroundInfoChanged",info.getClass());method.setAccessible(true);method.invoke(callback,info);
    }catch(Throwable e){CrashReporter.record("Original foreground listener",e);}}});
   }catch(Throwable e){unavailable(callback,"前台监测失败："+e.getClass().getSimpleName());CrashReporter.record("Shell foreground monitor",e);}}
  },500,1000,TimeUnit.MILLISECONDS));
 }
 public static synchronized void stop(Object callback){ScheduledFuture<?> f=subscriptions.remove(callback);if(f!=null)f.cancel(false);}
 private static void unavailable(final Object callback,final String reason){if(callback instanceof Listener)main.post(new Runnable(){public void run(){if(subscriptions.containsKey(callback))((Listener)callback).onUnavailable(reason);}});}
}
