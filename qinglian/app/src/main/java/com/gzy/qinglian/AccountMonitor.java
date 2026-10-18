package com.gzy.qinglian;
import android.content.Context;
import android.os.SystemClock;
import java.util.concurrent.*;
import org.json.JSONObject;
final class AccountMonitor {
 private static final ExecutorService worker=Executors.newSingleThreadExecutor();private static long attempted;private static boolean busy;private static volatile String owner="",usage="正在读取累计用量";
 static synchronized void refresh(Context c){String token=ExportClient.token(c);if(token.isEmpty())token=GuestClient.identity();if(token.isEmpty())return;final String credential=token;boolean guest=ExportClient.token(c).isEmpty();long now=SystemClock.elapsedRealtime();if(busy||token.equals(owner)&&now-attempted<15000)return;busy=true;attempted=now;Context app=c.getApplicationContext();worker.execute(()->{try{if(guest){GuestClient.quota(app);owner=credential;return;}JSONObject q=ExportClient.request(app,"quota",null,credential);usage="累计 "+TunnelService.size(q.getLong("cumulativeTotalBytes"))+" · 上传 "+TunnelService.size(q.getLong("cumulativeUploadBytes"))+" / 下载 "+TunnelService.size(q.getLong("cumulativeDownloadBytes"));owner=credential;}catch(Exception e){usage="累计用量暂不可用";owner=credential;}finally{synchronized(AccountMonitor.class){busy=false;}}});}
 static String display(Context c){String token=ExportClient.token(c);if(token.isEmpty())return GuestClient.display();return c.getSharedPreferences("export-api",0).getString("username","")+"\n"+(token.equals(owner)?usage:"正在读取累计用量");}
}
