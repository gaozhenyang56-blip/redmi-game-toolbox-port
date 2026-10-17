package com.gzy.qinglian;
import android.content.Context;
import org.json.JSONObject;
import java.net.*;
import java.io.*;
import java.nio.charset.StandardCharsets;
import java.util.concurrent.*;

public final class QuotaMonitor {
 public static volatile QuotaInfo current;
 public static volatile String status="未接入服务端配额";
 public static volatile long updatedAt=0;
 private static final ExecutorService executor=Executors.newSingleThreadExecutor();
 private static volatile boolean busy=false;
 private static long attempted=0;
 public static synchronized void refresh(Context context,boolean force){
  if(busy||(!force&&System.currentTimeMillis()-attempted<60000))return;
  attempted=System.currentTimeMillis();busy=true;Context app=context.getApplicationContext();
  executor.execute(()->{
   HttpURLConnection c=null;
   try{
    String url;
    try(InputStream in=app.getAssets().open("quota.json")){url=new JSONObject(Io.readUtf8(in)).getString("subscriptionUrl");}
    URL parsed=new URL(url);if(!parsed.getProtocol().equals("https")&&!parsed.getProtocol().equals("http"))throw new IllegalArgumentException("无效的配额接口");
    c=(HttpURLConnection)parsed.openConnection(Proxy.NO_PROXY);c.setConnectTimeout(8000);c.setReadTimeout(8000);c.setInstanceFollowRedirects(false);c.setUseCaches(false);c.setRequestProperty("User-Agent","Qinglian/1.0");
    c.setRequestMethod("GET");if(c.getResponseCode()!=200)throw new IOException();
    QuotaInfo q=QuotaInfo.parse(c.getHeaderField("Subscription-Userinfo"));current=q;updatedAt=System.currentTimeMillis();status="服务端配额已更新";
    // Do not parse or import subscription nodes. Only the response header is used.
   }catch(FileNotFoundException e){status="待接入 · 需要该节点的订阅链接";}
   catch(Exception e){status=current==null?"配额更新失败 · 暂无可用数据":"配额更新失败 · 当前显示上次数据";}
   finally{if(c!=null)c.disconnect();busy=false;}
  });
 }
}
