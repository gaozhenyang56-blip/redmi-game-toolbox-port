package com.gzy.qinglian.remote;
import android.content.*;
import android.os.IBinder;
/** The manifest requires DUMP permission, held by adb shell but not ordinary apps. */
public final class AdbReceiver extends BroadcastReceiver {
    static volatile IShell shell;
    @Override public void onReceive(Context context, Intent intent) {
        IBinder binder=intent.getExtras()==null?null:intent.getExtras().getBinder("shell");
        if(binder!=null) {shell=IShell.Stub.asInterface(binder); try {binder.linkToDeath(()->shell=null,0);} catch(Exception e) {shell=null;}}
    }
}
