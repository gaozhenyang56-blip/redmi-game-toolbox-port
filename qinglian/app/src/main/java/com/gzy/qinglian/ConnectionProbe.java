package com.gzy.qinglian;
import android.content.Context;
import java.io.*;
import java.net.*;
import java.util.function.BooleanSupplier;
/** Bounded, metered traffic through this app's core and the original authenticated CA. */
final class ConnectionProbe {
 static long measure(Context context,long bytes,BooleanSupplier cancelled)throws Exception{
  Proxy proxy=new Proxy(Proxy.Type.HTTP,new InetSocketAddress("127.0.0.1",10809));
  HttpURLConnection connection=ApiEndpoint.serverSpeed(context,proxy,bytes);
  connection.setConnectTimeout(3000);connection.setReadTimeout(3000);connection.setUseCaches(false);connection.setInstanceFollowRedirects(false);
  connection.setRequestProperty("Accept-Encoding","identity");connection.setRequestProperty("Cache-Control","no-cache");
  long start=System.nanoTime();
  try{
   if(cancelled.getAsBoolean())throw new InterruptedIOException();
   int code=connection.getResponseCode();if(code!=200)throw new ApiEndpoint.HttpFailure(code);
   if(!"server-v1".equals(connection.getHeaderField("X-Qinglian-Speed"))||connection.getContentLengthLong()!=bytes)throw new IOException("链路验证响应无效");
   try(InputStream in=connection.getInputStream()){
    byte[] buffer=new byte[16384];long received=0;
    while(received<bytes){if(cancelled.getAsBoolean()||System.nanoTime()-start>8000000000L)throw new InterruptedIOException();int n=in.read(buffer,0,(int)Math.min(buffer.length,bytes-received));if(n<0)throw new EOFException();received+=n;}
    if(in.read()!=-1)throw new IOException("链路验证长度无效");
   }
   return Math.max(1,System.nanoTime()-start);
  }finally{connection.disconnect();}
 }
}
