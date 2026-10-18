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
 private final Set<HttpURLConnection> connections=ConcurrentHashMap.newKeySet();
 private void release(HttpURLConnection c){connections.remove(c);c.disconnect();}
 private volatile Future<?> job;
 private final ExecutorService executor=Executors.newSingleThreadExecutor();
 public boolean running(){return job!=null&&!job.isDone();}
 private HttpURLConnection open(String url,int run)throws IOException{
  if(cancelled(run))throw new InterruptedIOException();
  HttpURLConnection c=(HttpURLConnection)new URL(url).openConnection(proxy);
  if(cancelled(run)){c.disconnect();throw new InterruptedIOException();}active=c;connections.add(c);if(cancelled(run)){release(c);throw new InterruptedIOException();}c.setConnectTimeout(8000);c.setReadTimeout(4000);c.setUseCaches(false);c.setInstanceFollowRedirects(false);
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
    long start=System.nanoTime();try{int code=c.getResponseCode();if(code!=204)throw new IOException();values[i]=Math.max(1,(System.nanoTime()-start)/1000000L);}finally{release(c);}
    if(!cancelled(run))l.update(values[i],i+1,(i+1)/3.0);
   }
   Arrays.sort(values);if(!cancelled(run))l.done(values[1]+" ms");
  }catch(Exception e){if(!cancelled(run))l.failed("延迟测试失败，请检查节点与网络");}finally{if(generation.get()==run)active=null;}});
 }
 public void download(Listener l){download(l,32);}
 public void download(Listener l,int sizeMiB){download(l,sizeMiB,1,false);}
 public synchronized void download(Listener l,int sizeMiB,int streams,boolean raw){
  if(streams!=1&&streams!=4)throw new IllegalArgumentException("测速连接数须为1或4");
  if(sizeMiB<1||sizeMiB>2048)throw new IllegalArgumentException("测速大小须为1..2048 MB");
  final long requested=sizeMiB*1048576L;
  if(running())return;final int run=generation.incrementAndGet();
  if(streams==4){job=executor.submit(()->parallel(l,requested,run,raw));return;}
  job=executor.submit(()->{long total=0;long start=System.nanoTime();
   try{
    byte[] buffer=new byte[32768];long tick=start,rawBytes=0;ArrayDeque<long[]> samples=new ArrayDeque<>();samples.add(new long[]{start,0});
    while(!cancelled(run)&&total<requested&&(start==0||System.nanoTime()-start<180000000000L)){
     long chunk=Math.min(33554432L,requested-total),end=total+chunk,before=total;
     String target=downloadUrl.replaceAll("([?&])bytes=[0-9]+", "$1bytes="+chunk);
     HttpURLConnection c=open(target+(target.contains("?")?"&":"?")+"nonce="+System.nanoTime(),run);
     try{if(c.getResponseCode()!=200)throw new IOException();String type=c.getContentType();if(type!=null&&(type.contains("text/html")||type.contains("application/json")))throw new IOException();
      try(InputStream in=c.getInputStream()){
       while(!cancelled(run)&&total<end&&System.nanoTime()-start<180000000000L){
        int n=in.read(buffer,0,(int)Math.min(buffer.length,end-total));if(n<0)break;total+=n;long now=System.nanoTime();
        if(now-tick>=250000000L){samples.add(new long[]{now,total});while(samples.size()>2&&now-samples.peekFirst()[0]>1000000000L)samples.removeFirst();long[] first=raw?new long[]{tick,rawBytes}:samples.peekFirst();l.update(mbps(total-first[1],now-first[0]),total,Math.min(1,total/(double)requested));tick=now;rawBytes=total;}
       }
      }
     }finally{release(c);}
     if(total-before<chunk)break;
    }
    if(total==0)throw new IOException();
    if(!cancelled(run))l.update(mbps(total,System.nanoTime()-start),total,total/(double)requested);
    if(!cancelled(run))l.done(String.format(Locale.CHINA,"平均 %.2f Mbps · %.1f MB%s",mbps(total,System.nanoTime()-start),total/1048576.0,total<requested?"（未完成所选大小）":""));
   }catch(Exception e){if(!cancelled(run))l.failed("下载测试失败，请检查节点或稍后重试");}finally{if(generation.get()==run)active=null;}
  });
 }
 private void parallel(Listener l,long requested,int run,boolean raw){
  ExecutorService pool=Executors.newFixedThreadPool(4);java.util.concurrent.atomic.AtomicLong total=new java.util.concurrent.atomic.AtomicLong();long start=System.nanoTime(),tick=start,last=0;ArrayDeque<long[]> samples=new ArrayDeque<>();samples.add(new long[]{start,0});List<Future<?>> tasks=new ArrayList<>();
  try{
   for(int lane=0;lane<4;lane++){final long quota=requested/4+(lane<requested%4?1:0);tasks.add(pool.submit(()->{long received=0;byte[] buffer=new byte[32768];
    try{while(received<quota&&!cancelled(run)&&System.nanoTime()-start<180000000000L){long chunk=Math.min(33554432L,quota-received),part=0;String url=downloadUrl.replaceAll("([?&])bytes=[0-9]+","$1bytes="+chunk);HttpURLConnection c=open(url+(url.contains("?")?"&":"?")+"nonce="+System.nanoTime(),run);
     try{if(c.getResponseCode()!=200)throw new IOException();String type=c.getContentType();if(type!=null&&(type.contains("text/html")||type.contains("application/json")))throw new IOException();try(InputStream in=c.getInputStream()){
      while(part<chunk&&!cancelled(run)&&System.nanoTime()-start<180000000000L){int n=in.read(buffer,0,(int)Math.min(buffer.length,chunk-part));if(n<0)break;part+=n;received+=n;total.addAndGet(n);}
     }}finally{release(c);}if(part<chunk)break;
    }}catch(IOException e){throw new java.io.UncheckedIOException(e);}
   }));}
   while(!cancelled(run)){
    boolean done=true;for(Future<?> f:tasks){if(f.isDone())f.get();else done=false;}
    long now=System.nanoTime(),bytes=total.get();if(now-tick>=250000000L||done){samples.add(new long[]{now,bytes});while(samples.size()>2&&now-samples.peekFirst()[0]>1000000000L)samples.removeFirst();long[] first=raw?new long[]{tick,last}:samples.peekFirst();l.update(mbps(bytes-first[1],now-first[0]),bytes,bytes/(double)requested);tick=now;last=bytes;}
    if(done)break;Thread.sleep(50);
   }
   long bytes=total.get();if(!cancelled(run)){if(bytes==0)throw new IOException();l.update(mbps(bytes,System.nanoTime()-start),bytes,bytes/(double)requested);l.done(String.format(Locale.CHINA,"平均 %.2f Mbps · %.1f MB · 4路并行%s",mbps(bytes,System.nanoTime()-start),bytes/1048576.0,bytes<requested?"（未完成所选大小）":""));}
  }catch(Exception e){if(!cancelled(run))l.failed("并行下载测试失败，请检查节点或稍后重试");}
  finally{for(Future<?> f:tasks)f.cancel(true);pool.shutdownNow();for(HttpURLConnection c:connections)release(c);}
 }
 public static double mbps(long bytes,long nanos){return nanos<=0?0:bytes*8000.0/nanos;}
 public synchronized void stop(){generation.incrementAndGet();for(HttpURLConnection c:connections)release(c);if(job!=null)job.cancel(true);}
 public void close(){stop();executor.shutdownNow();}
}
