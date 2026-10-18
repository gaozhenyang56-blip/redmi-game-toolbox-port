package com.gzy.qinglian;
import android.content.Context;
import java.io.IOException;
import java.security.SecureRandom;
import java.util.UUID;
import java.util.concurrent.*;
import org.json.*;
/** A manual connection owns one server-metered quota. Recovery never creates a new session. */
final class GuestClient {
 static final long LIMIT=64L*1024*1024*1024;
 private static final ExecutorService closer=Executors.newSingleThreadExecutor();
 static final class Session {final String request=UUID.randomUUID().toString(),key;volatile boolean started;volatile long used=-1,remaining=-1;Session(){byte[] random=new byte[32];new SecureRandom().nextBytes(random);key=ApiEndpoint.hex(random);}}
 private static volatile Session current;
 static void begin(Context c){end(c);current=new Session();}
 static String identity(){Session s=current;return s==null?"":s.key;}
 private static JSONObject request(Context c,Session s,String path,JSONObject body)throws Exception{return ApiEndpoint.guest(c,path,path.equals("start")?null:s.key).request(body,ExportClient.device(c));}
 static JSONObject profile(Context c)throws Exception{
  Session s=current;if(s==null)throw new IOException("访客会话已结束");
  if(!s.started){request(c,s,"start",new JSONObject().put("requestId",s.request).put("sessionKey",s.key));s.started=true;if(current!=s){stop(c,s);throw new IOException("连接已取消");}}
  JSONObject response=request(c,s,"profile",LabSettings.profileOptions(c));if(current!=s)throw new IOException("连接已取消");accept(c,s,response.optJSONObject("quota"));return response;
 }
 static ApiEndpoint speedEndpoint(Context c)throws Exception{Session s=current;if(s==null||!s.started)throw new IOException("访客会话已结束");return ApiEndpoint.guest(c,"speed",s.key);}
 static void quota(Context c)throws Exception{Session s=current;if(s!=null&&s.started)accept(c,s,request(c,s,"quota",null));}
 private static void accept(Context c,Session s,JSONObject q)throws Exception{if(q==null||current!=s)return;s.used=q.getLong("usedBytes");s.remaining=q.getLong("remainingBytes");if(s.remaining<=0){TunnelService.guestExhausted();throw new IOException("本次访客64GB已用完，请重新连接");}}
 private static void stop(Context c,Session s){Context app=c.getApplicationContext();closer.execute(()->{try{request(app,s,"stop",new JSONObject());}catch(Exception ignored){}});}
 static void end(Context c){Session s=current;current=null;if(s!=null&&s.started)stop(c,s);}
 static String display(){Session s=current;if(s==null)return "免登录可直接连接VPN · 单次上限64GB";return s.remaining<0?"访客连接 · 单次64GB · 正在读取服务端用量":"访客本次已用 "+TunnelService.size(s.used)+"\n剩余 "+TunnelService.size(s.remaining)+" / 64GB（兼容与加速合并）";}
}
