package com.gzy.qinglian;
import android.content.Context;
/** Optional, device-local experiments. They never alter shared server defaults. */
final class LabSettings {
 static boolean enabled(Context c,String key){return c.getSharedPreferences("labs",0).getBoolean(key,false);}
 static void set(Context c,String key,boolean value){c.getSharedPreferences("labs",0).edit().putBoolean(key,value).apply();}
}
