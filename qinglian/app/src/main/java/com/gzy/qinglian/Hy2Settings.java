package com.gzy.qinglian;
import android.content.Context;
import java.io.IOException;
import org.json.JSONObject;
/** Production HY2 defaults. The existing private wire key is retained for older servers. */
final class Hy2Settings {
 static final class Selection {
  final boolean accelerated,performance,automatic,multipath,reuse;final String tcpProtocol;
  Selection(boolean accelerated,boolean performance){this(accelerated,performance,false,false,false,"");}
  Selection(boolean accelerated,boolean performance,boolean automatic,boolean multipath,boolean reuse,String tcpProtocol){this.accelerated=accelerated;this.performance=performance;this.automatic=automatic;this.multipath=multipath;this.reuse=reuse;this.tcpProtocol=tcpProtocol;}
  Selection withChannel(boolean hy2){return new Selection(hy2,performance,automatic,multipath,reuse,tcpProtocol);}
  JSONObject options()throws Exception{return new JSONObject().put("labHy2",(accelerated||automatic)&&performance).put("tcpProtocol",tcpProtocol);}
  int lanes(){return accelerated&&multipath?2:1;}

 }
 static boolean performance(Context c){return !c.getSharedPreferences("transport",0).getBoolean("hy2Conservative",false);}
 static boolean savePerformance(Context c,boolean performance){return c.getSharedPreferences("transport",0).edit().putBoolean("hy2Conservative",!performance).commit();}
 static Selection saved(Context c){android.content.SharedPreferences p=c.getSharedPreferences("transport",0);String protocol=p.getString("tcpProtocol","");if(!protocol.equals("vless")&&!protocol.equals("trojan"))protocol="";return new Selection(ProfileMonitor.accelerated(c),performance(c),p.getBoolean("automatic",false),LabSettings.enabled(c,"multiHy2"),p.getBoolean("tcpReuse",false),protocol);}
 static Selection effective(Context c){Selection active=TunnelService.profileSelection();return active==null?saved(c):active;}
 static void confirm(Selection selected,JSONObject response)throws Exception{
  if(!selected.tcpProtocol.isEmpty()&&(!selected.tcpProtocol.equals(response.optString("tcpProtocol"))||!selected.tcpProtocol.equals(response.getJSONObject("node").optString("protocol"))))throw new IOException("面板尚未支持所选TCP通道，请更新面板或选面板默认");
  if(!selected.accelerated)return;
  JSONObject acceleration=response.optJSONObject("acceleration");JSONObject node=acceleration==null?null:acceleration.optJSONObject("node");boolean high=node!=null&&"aggressive-v1".equals(node.optString("hy2Performance"));
  if(selected.performance&&(!response.optBoolean("labHy2")||!high))throw new IOException("服务器未确认高性能HY2，请切换保守配置或联系管理员");
  if(!selected.performance&&high)throw new IOException("服务器返回的HY2配置与保守设置不一致");
 }
 static JSONObject quic(JSONObject quic)throws Exception{return quic.put("initStreamReceiveWindow",8*1024*1024).put("maxStreamReceiveWindow",32*1024*1024).put("initConnReceiveWindow",16*1024*1024).put("maxConnReceiveWindow",64*1024*1024);}
}
