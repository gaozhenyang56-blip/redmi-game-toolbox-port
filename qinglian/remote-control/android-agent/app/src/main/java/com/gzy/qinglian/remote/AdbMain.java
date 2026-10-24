package com.gzy.qinglian.remote;
import android.content.*;
import android.os.*;
/** Started explicitly by the owner using adb shell app_process; not a root exploit. */
public final class AdbMain {
    public static void main(String[] args) throws Exception {
        if(android.os.Process.myUid()!=2000 && android.os.Process.myUid()!=0) throw new SecurityException("Requires adb shell");
        Looper.prepareMainLooper();
        Class<?> thread=Class.forName("android.app.ActivityThread");
        Object activityThread=thread.getMethod("systemMain").invoke(null);
        Context system=(Context)thread.getMethod("getSystemContext").invoke(activityThread);
        Context context=system.createPackageContext("com.android.shell",Context.CONTEXT_IGNORE_SECURITY);
        Intent intent=new Intent("com.gzy.qinglian.remote.ADB_READY");
        intent.setComponent(new ComponentName("com.gzy.qinglian.remote","com.gzy.qinglian.remote.AdbReceiver"));
        intent.addFlags(Intent.FLAG_INCLUDE_STOPPED_PACKAGES);
        Bundle data=new Bundle(); data.putBinder("shell",new ShellService()); intent.putExtras(data);
        context.sendBroadcast(intent);
        Looper.loop();
    }
}
