package com.gzy.redmiport;
import android.app.Activity;
import android.content.*;
import android.os.*;
import android.widget.Toast;
import com.gzy.redmidiag.CrashReporter;
public final class GameLaunch {
 public static void start(final Context context, Intent intent, Bundle options){
  try{
   if(intent==null)throw new IllegalArgumentException("No launch activity");
   SidebarRuntime.start(context);
   if(!(context instanceof Activity))intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
   context.startActivity(intent,options);
  }catch(final Throwable failure){CrashReporter.record("Public game launch",failure);
   new Handler(Looper.getMainLooper()).post(new Runnable(){public void run(){Toast.makeText(context,"无法启动此应用，请查看日志",Toast.LENGTH_SHORT).show();}});
  }
 }
 public static void launchPackage(Context context,String pkg){start(context,context.getPackageManager().getLaunchIntentForPackage(pkg),null);}
}
