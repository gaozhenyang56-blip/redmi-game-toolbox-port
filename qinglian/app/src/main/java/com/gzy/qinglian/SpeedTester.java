package com.gzy.qinglian;
import java.net.*;
import java.io.*;
import java.util.*;
import java.util.concurrent.*;
import java.util.concurrent.atomic.AtomicInteger;

/** Every request explicitly uses the local core. Never falls back to DIRECT. */
public final class SpeedTester {
 interface DelayProbe {long measure()throws Exception;}
 public interface Listener {void update(double mbps,long bytes,double fraction);void done(String text);void failed(String text);}
 private final AtomicInteger generation=new AtomicInteger();
 private final String delayUrl,downloadUrl;private final Proxy proxy;private final DelayProbe delayProbe;
 public SpeedTester(){this("https://www.gstatic.com/generate_204","https://speed.cloudflare.com/__down?bytes=33554432",new Proxy(Proxy.Type.HTTP,new InetSocketAddress("127.0.0.1",10809)),TunnelService::measureDelay);}
 SpeedTester(String delay,String down,Proxy proxy){this(delay,down,proxy,null);}
 SpeedTester(String delay,String down,Proxy proxy,DelayProbe probe){this.delayUrl=delay;this.downloadUrl=down;this.proxy=proxy;this.delayProbe=probe;}
 private boolean cancelled(int run){return generation.get()!=run||Thread.currentThread().isInterrupted();}
 private volatile HttpURLConnection active;
 private volatile Future<?> job;
 private final ExecutorService executor=Executors.newSingleThreadExecutor();
 public boolean running(){return job!=null&&!job.isDone();}
 private HttpURLConnection open(String url,int run)throws IOException{
  if(cancelled(run))throw new InterruptedIOException();
  HttpURLConnection c=(HttpURLConnection)new URL(url).openConnection(proxy);
  if(cancelled(run)){c.disconnect();throw new InterruptedIOException();}active=c;c.setConnectTimeout(8000);c.setReadTimeout(4000);c.setUseCaches(false);c.setInstanceFollowRedirects(false);
  c.setRequestProperty("Connection","close");c.setRequestProperty("User-Agent","Qinglian/1.0 Android");c.setRequestProperty("Cache-Control","no-cache");c.setRequestProperty("Accept-Encoding","identity");return c;
 }
 public synchronized void latency(Listener l){
  if(running())return;final int run=generation.incrementAndGet();
  job=executor.submit(()->{try{
   if(delayProbe!=null){
    long value=delayProbe.measure();if(value<0)throw new IOException();
    if(!cancelled(run)){l.update(value,1,1);l.done(value+" ms");}return;
   }
   long[] values=new long[3];
   for(int i=0;i<3;i++){
    if(cancelled(run))return;
    HttpURLConnection c=open(delayUrl+(delayUrl.contains("?")?"&":"?")+"q="+System.nanoTime(),run);
    long start=System.nanoTime();try{int code=c.getResponseCode();if(code!=204)throw new IOException();values[i]=Math.max(1,(System.nanoTime()-start)/1000000L);}finally{c.disconnect();}
    if(!cancelled(run))l.update(values[i],i+1,(i+1)/3.0);
   }
   Arrays.sort(values);if(!cancelled(run))l.done(values[1]+" ms");
  }catch(Exception e){if(!cancelled(run))l.failed("延迟测试失败，请检查节点与网络");}finally{if(generation.get()==run)active=null;}});
 }
 public synchronized void download(Listener l){
  if(running())return;final int run=generation.incrementAndGet();
  job=executor.submit(()->{long total=0;long start=0;
   try{
    HttpURLConnection c=open(downloadUrl+(downloadUrl.contains("?")?"&":"?")+"nonce="+System.nanoTime(),run);
    try{if(c.getResponseCode()!=200)throw new IOException();String type=c.getContentType();if(type!=null&&(type.contains("text/html")||type.contains("application/json")))throw new IOException();
     try(InputStream in=c.getInputStream()){
      byte[] buffer=new byte[32768];start=System.nanoTime();long tick=start,segment=0;
      while(!cancelled(run)&&total<33554432L&&(System.nanoTime()-start)<12000000000L){
       int n=in.read(buffer);if(n<0)break;total+=n;segment+=n;long now=System.nanoTime();
       if(now-tick>=250000000L){l.update(segment*8000.0/(now-tick),total,Math.min(1,(now-start)/12000000000.0));tick=now;segment=0;}
      }
     }
    }finally{c.disconnect();}
    if(total==0)throw new IOException();
    if(!cancelled(run))l.done(String.format(Locale.CHINA,"平均 %.2f Mbps · %.1f MB",mbps(total,System.nanoTime()-start),total/1048576.0));
   }catch(Exception e){if(!cancelled(run))l.failed("下载测试失败，请检查节点或稍后重试");}finally{if(generation.get()==run)active=null;}
  });
 }
 public static double mbps(long bytes,long nanos){return nanos<=0?0:bytes*8000.0/nanos;}
 public synchronized void stop(){generation.incrementAndGet();HttpURLConnection c=active;if(c!=null)c.disconnect();if(job!=null)job.cancel(true);}
 public void close(){stop();executor.shutdownNow();}
}
