package com.gzy.qinglian;
import android.content.Context;
import java.io.*;
import java.net.*;
import java.util.function.BooleanSupplier;
/** Bounded, metered traffic through this app's core and the original authenticated CA. */
final class ConnectionProbe {
 private static final java.util.concurrent.ScheduledExecutorService watchdog=java.util.concurrent.Executors.newSingleThreadScheduledExecutor(r->{Thread t=new Thread(r,"qinglian-probe-cancel");t.setDaemon(true);return t;});
 static long measure(Context context,long bytes,BooleanSupplier cancelled)throws Exception{return measure(context,bytes,cancelled,false);}
 static long measure(Context context,long bytes,BooleanSupplier cancelled,boolean coldHy2)throws Exception{
  Proxy proxy=new Proxy(Proxy.Type.HTTP,new InetSocketAddress("127.0.0.1",10809));
  HttpURLConnection connection=ApiEndpoint.serverSpeed(context,proxy,bytes);
  return transfer(connection,bytes,cancelled,coldHy2);
 }
 static long transfer(HttpURLConnection connection,long bytes,BooleanSupplier cancelled,boolean coldHy2)throws Exception{
  connection.setConnectTimeout(3000);connection.setReadTimeout(coldHy2?12000:3000);connection.setUseCaches(false);connection.setInstanceFollowRedirects(false);
  connection.setRequestProperty("Accept-Encoding","identity");connection.setRequestProperty("Cache-Control","no-cache");
  long start=System.nanoTime(),budget=coldHy2?15000000000L:8000000000L;Thread caller=Thread.currentThread();
  java.util.concurrent.atomic.AtomicBoolean cancelledByWatchdog=new java.util.concurrent.atomic.AtomicBoolean(),expired=new java.util.concurrent.atomic.AtomicBoolean();
  java.util.concurrent.ScheduledFuture<?> guard=watchdog.scheduleWithFixedDelay(()->{
   boolean stop=caller.isInterrupted()||cancelled.getAsBoolean(),timeout=System.nanoTime()-start>budget;
   if(stop||timeout){cancelledByWatchdog.set(stop);expired.set(timeout);connection.disconnect();}
  },100,100,java.util.concurrent.TimeUnit.MILLISECONDS);
  try{
   if(cancelled.getAsBoolean())throw new InterruptedIOException();
   int code=connection.getResponseCode();if(code!=200)throw new ApiEndpoint.HttpFailure(code);
   if(!"server-v1".equals(connection.getHeaderField("X-Qinglian-Speed"))||connection.getContentLengthLong()!=bytes)throw new IOException("链路验证响应无效");
   try(InputStream in=connection.getInputStream()){
    byte[] buffer=new byte[16384];long received=0;
    while(received<bytes){if(cancelled.getAsBoolean())throw new InterruptedIOException();if(System.nanoTime()-start>budget)throw new SocketTimeoutException("链路验证总等待超时");int n=in.read(buffer,0,(int)Math.min(buffer.length,bytes-received));if(n<0)throw new EOFException();received+=n;}
    if(in.read()!=-1)throw new IOException("链路验证长度无效");
   }
   return Math.max(1,System.nanoTime()-start);
  }catch(IOException error){
   if(cancelledByWatchdog.get()||cancelled.getAsBoolean()||caller.isInterrupted())throw new InterruptedIOException("连接验证已取消");
   if(expired.get()){SocketTimeoutException timeout=new SocketTimeoutException("连接验证等待超时");timeout.initCause(error);throw timeout;}
   throw error;
  }finally{guard.cancel(false);connection.disconnect();}
 }
}
