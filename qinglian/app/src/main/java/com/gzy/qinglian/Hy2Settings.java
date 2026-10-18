package com.gzy.qinglian;
import android.content.Context;
import java.io.IOException;
import org.json.JSONObject;
/** Production HY2 defaults. The existing private wire key is retained for older servers. */
final class Hy2Settings {
 static final class Selection {
  final boolean accelerated,performance;
  Selection(boolean accelerated,boolean performance){this.accelerated=accelerated;this.performance=performance;}
  JSONObject options()throws Exception{return new JSONObject().put("labHy2",accelerated&&performance);}
 }
 static boolean performance(Context c){return !c.getSharedPreferences("transport",0).getBoolean("hy2Conservative",false);}
 static boolean savePerformance(Context c,boolean performance){return c.getSharedPreferences("transport",0).edit().putBoolean("hy2Conservative",!performance).commit();}
 static Selection saved(Context c){return new Selection(ProfileMonitor.accelerated(c),performance(c));}
 static Selection effective(Context c){Selection active=TunnelService.profileSelection();return active==null?saved(c):active;}
 static void confirm(Selection selected,JSONObject response)throws Exception{
  if(!selected.accelerated)return;
  JSONObject acceleration=response.optJSONObject("acceleration");JSONObject node=acceleration==null?null:acceleration.optJSONObject("node");boolean high=node!=null&&"aggressive-v1".equals(node.optString("hy2Performance"));
  if(selected.performance&&(!response.optBoolean("labHy2")||!high))throw new IOException("服务器未确认高性能HY2，请切换保守配置或联系管理员");
  if(!selected.performance&&high)throw new IOException("服务器返回的HY2配置与保守设置不一致");
 }
 static JSONObject quic(JSONObject quic)throws Exception{return quic.put("initStreamReceiveWindow",8*1024*1024).put("maxStreamReceiveWindow",32*1024*1024).put("initConnReceiveWindow",16*1024*1024).put("maxConnReceiveWindow",64*1024*1024);}
}
