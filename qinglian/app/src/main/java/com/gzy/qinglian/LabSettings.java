package com.gzy.qinglian;
import android.content.Context;
import org.json.JSONObject;
/** Optional, device-local experiments. They never alter shared server defaults. */
final class LabSettings {
 static boolean enabled(Context c,String key){return c.getSharedPreferences("labs",0).getBoolean(key,false);}
 static void set(Context c,String key,boolean value){c.getSharedPreferences("labs",0).edit().putBoolean(key,value).apply();}
 static JSONObject profileOptions(Context c)throws Exception{return new JSONObject().put("labHy2",enabled(c,"hy2")&&ProfileMonitor.accelerated(c));}
 static JSONObject quic(JSONObject quic)throws Exception{return quic.put("initStreamReceiveWindow",8*1024*1024).put("maxStreamReceiveWindow",32*1024*1024).put("initConnReceiveWindow",16*1024*1024).put("maxConnReceiveWindow",64*1024*1024);}
}
