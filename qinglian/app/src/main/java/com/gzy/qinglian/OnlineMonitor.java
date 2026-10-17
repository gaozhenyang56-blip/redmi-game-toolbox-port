package com.gzy.qinglian;
import android.content.Context;
import org.json.JSONObject;
import java.net.*;import java.io.*;
import java.util.concurrent.*;
/** Read-only count endpoint; does not expose device details or x-ui admin credentials. */
public final class OnlineMonitor {
 public static volatile Integer count=null;
 public static volatile long updatedAt=0;
 public static volatile String status="待接入在线统计接口";
 private static final ExecutorService worker=Executors.newSingleThreadExecutor();
 private static boolean busy=false;
 private static long attempted=0;
 public static synchronized void refresh(Context context,boolean force){
  if(busy||(!force&&System.currentTimeMillis()-attempted<5000))return;
  busy=true;attempted=System.currentTimeMillis();Context app=context.getApplicationContext();
  worker.execute(()->{HttpURLConnection c=null;try{
   JSONObject config;try(InputStream in=app.getAssets().open("online.json")){config=new JSONObject(Io.readUtf8(in));}
   URL url=new URL(config.getString("url"));if(!url.getProtocol().equals("https")&&!url.getProtocol().equals("http"))throw new IOException();
   c=(HttpURLConnection)url.openConnection(Proxy.NO_PROXY);c.setConnectTimeout(3000);c.setReadTimeout(3000);c.setUseCaches(false);c.setInstanceFollowRedirects(false);c.setRequestProperty("Authorization","Bearer "+config.getString("clientToken"));
   if(c.getResponseCode()!=200)throw new IOException();
   byte[] buf=new byte[8193];int total=0,n;try(InputStream in=c.getInputStream()){while(total<buf.length&&(n=in.read(buf,total,buf.length-total))!=-1)total+=n;}
   if(total>=buf.length)throw new IOException();JSONObject response=new JSONObject(new String(buf,0,total,java.nio.charset.StandardCharsets.UTF_8));Object v=response.get("online");
   if(!(v instanceof Number)||((Number)v).doubleValue()!=((Number)v).intValue()||((Number)v).intValue()<0)throw new IOException();
   count=((Number)v).intValue();updatedAt=System.currentTimeMillis();status="在线设备统计 · 每 5 秒刷新";
  }catch(FileNotFoundException e){status="待接入在线统计接口";}
   catch(Exception e){status=count==null?"在线统计暂不可用":"更新失败 · 当前显示上次数据";}
   finally{if(c!=null)c.disconnect();synchronized(OnlineMonitor.class){busy=false;}}
  });
 }
}
