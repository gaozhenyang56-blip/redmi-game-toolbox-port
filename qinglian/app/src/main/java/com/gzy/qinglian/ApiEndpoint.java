package com.gzy.qinglian;

import android.content.Context;
import java.io.*;
import java.net.*;
import java.nio.charset.StandardCharsets;
import org.json.*;
import javax.net.ssl.*;
import java.security.*;
import java.security.cert.*;

/** Fixed build-time API configuration. Never redirects a bearer token. */
final class ApiEndpoint {
 static final class HttpFailure extends IOException {final int code;HttpFailure(int code){super("服务端接口暂不可用");this.code=code;}}
 private final URL url;
 private final String token;
 private final SSLSocketFactory tlsFactory;
 private static final java.util.concurrent.ConcurrentHashMap<String,Integer> workingPorts=new java.util.concurrent.ConcurrentHashMap<>();
 // Fixed same-host ports only; never consume a redirect or a server-supplied URL.
 static URL[] routes(URL url)throws MalformedURLException{
  if(url.getPort()!=11452)return new URL[]{url};
  URL standard=new URL(url,"https://"+url.getAuthority().replaceFirst(":11452$",":443")+url.getFile());
  return Integer.valueOf(11452).equals(workingPorts.get(url.getHost()))?new URL[]{url,standard}:new URL[]{standard,url};
 }
 private URL preferred()throws MalformedURLException{return routes(url)[0];}
 private static boolean certificateFailure(Exception error){
  for(Throwable cause=error;cause!=null;cause=cause.getCause())if(cause instanceof java.security.cert.CertificateException||cause instanceof SSLPeerUnverifiedException||cause instanceof SSLHandshakeException)return true;
  return false;
 }
 ApiEndpoint(URL url,String token){this(url,token,null);}
 ApiEndpoint(URL url,String token,SSLSocketFactory tlsFactory){this.url=url;this.token=token;this.tlsFactory=tlsFactory;}
 static ApiEndpoint load(Context context,String asset)throws Exception{
  JSONObject config;
  try(InputStream in=context.getAssets().open(asset)){config=new JSONObject(Io.readUtf8(in));}
  ApiEndpoint endpoint=parse(config);
  if(config.has("caAsset")){
   String name=config.getString("caAsset");if(!name.matches("[A-Za-z0-9_-]+\\.pem"))throw new IOException("无效的接口证书资产");
   try(InputStream in=context.getAssets().open(name)){return new ApiEndpoint(endpoint.url,endpoint.token,trustCa(in));}
  }
  return endpoint;
 }
 static SSLSocketFactory trustCa(InputStream in)throws Exception{
  java.util.Collection<? extends java.security.cert.Certificate> certificates=CertificateFactory.getInstance("X.509").generateCertificates(in);
  if(certificates.isEmpty())throw new CertificateException("接口证书为空");
  KeyStore store=KeyStore.getInstance(KeyStore.getDefaultType());store.load(null,null);int index=0;
  for(java.security.cert.Certificate certificate:certificates){
   X509Certificate ca=(X509Certificate)certificate;ca.checkValidity();if(ca.getBasicConstraints()<0)throw new CertificateException("需要接口CA证书");
   store.setCertificateEntry("api-ca-"+(index++),ca);
  }
  TrustManagerFactory trust=TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());trust.init(store);
  SSLContext tls=SSLContext.getInstance("TLS");tls.init(null,trust.getTrustManagers(),null);return tls.getSocketFactory();
 }
 static ApiEndpoint parse(JSONObject config)throws Exception{
  URL url=new URL(config.getString("url"));
  String token=config.getString("clientToken");
  if(!"https".equals(url.getProtocol())||url.getHost().isEmpty()||url.getUserInfo()!=null||url.getRef()!=null
    ||token.trim().isEmpty()||token.contains("\r")||token.contains("\n"))throw new IOException("无效的服务端接口配置");
  return new ApiEndpoint(url,token);
 }
 static ApiEndpoint guest(Context c,String path,String token)throws Exception{if(!path.matches("start|profile|quota|stop|speed"))throw new IOException("无效访客操作");ApiEndpoint base=load(c,"profile.json");return new ApiEndpoint(new URL(base.url,"guest/"+path),token==null?base.token:token,base.tlsFactory);}
 static ApiEndpoint userExport(Context context,String path,String token)throws Exception{
  if(!token.matches("[0-9a-f]{64}")||!path.matches("(?:bind|register|login|logout|history|quota|profile|speed|nodes|nodes/[0-9a-f]{32}/revoke)"))throw new IOException("无效API凭据或操作");
  ApiEndpoint base=load(context,"profile.json");URL target=new URL(base.url,"exports/"+path);return new ApiEndpoint(target,token,base.tlsFactory);
 }
 JSONObject request(JSONObject body)throws Exception{return request(body,null);}
 JSONObject request(JSONObject body,String device)throws Exception{
  URL[] candidates=routes(url);
  for(int index=0;index<candidates.length;index++){
   if(Thread.currentThread().isInterrupted())throw new InterruptedIOException("接口请求已取消");
   HttpURLConnection c=(HttpURLConnection)candidates[index].openConnection(Proxy.NO_PROXY);
   boolean sent=false;
   try{
    if(tlsFactory!=null){if(!(c instanceof HttpsURLConnection))throw new IOException("接口必须使用TLS");((HttpsURLConnection)c).setSSLSocketFactory(tlsFactory);}
    c.setConnectTimeout(4000);c.setReadTimeout(10000);c.setUseCaches(false);c.setInstanceFollowRedirects(false);
    c.setRequestProperty("Authorization","Bearer "+token);c.setRequestProperty("Accept","application/json");if(device!=null){if(!device.matches("[0-9a-f]{64}"))throw new IOException("设备标识无效");c.setRequestProperty("X-Qinglian-Device",device);}
    byte[] payload=body==null?null:body.toString().getBytes(StandardCharsets.UTF_8);
    if(payload!=null){c.setRequestMethod("POST");c.setDoOutput(true);c.setRequestProperty("Content-Type","application/json; charset=utf-8");c.setFixedLengthStreamingMode(payload.length);}else c.setRequestMethod("GET");
    // connect() completes TCP and TLS before any application body is sent.
    // A POST may switch ports here, but never after sending may have started.
    c.connect();sent=true;
    if(payload!=null)try(OutputStream out=c.getOutputStream()){out.write(payload);}
    int code=c.getResponseCode();if(code!=200&&!(device!=null&&(code==201||code==202)))throw new HttpFailure(code);
    workingPorts.put(url.getHost(),candidates[index].getPort());
    byte[] bytes=new byte[device==null?8193:524289];int total=0,n;
    try(InputStream in=c.getInputStream()){while(total<bytes.length&&(n=in.read(bytes,total,bytes.length-total))!=-1)total+=n;}
    if(total==bytes.length)throw new IOException("接口响应过大");
    return new JSONObject(new String(bytes,0,total,StandardCharsets.UTF_8));
   }catch(IOException error){
    if(error instanceof HttpFailure||certificateFailure(error)||sent&&body!=null||index+1==candidates.length||Thread.currentThread().isInterrupted())throw error;
   }finally{c.disconnect();}
  }
  throw new IOException("面板两个HTTPS入口均无法连接，请检查网络；未回退到直连节点");
 }

 HttpURLConnection speedConnection(java.net.Proxy proxy,long bytes,String device)throws Exception{
  if(bytes<1||bytes>33554432L)throw new IOException("无效测速大小");
  URL target=new URL(preferred().toString()+"?bytes="+bytes+"&nonce="+System.nanoTime());HttpURLConnection c=(HttpURLConnection)target.openConnection(proxy);
  if(tlsFactory!=null){if(!(c instanceof HttpsURLConnection))throw new IOException("测速必须使用TLS");((HttpsURLConnection)c).setSSLSocketFactory(tlsFactory);}
  c.setRequestProperty("Authorization","Bearer "+token);c.setRequestProperty("X-Qinglian-Device",device);return c;
 }
 static HttpURLConnection serverSpeed(Context c,java.net.Proxy proxy,long bytes)throws Exception{
  String account=ExportClient.token(c);ApiEndpoint endpoint=account.isEmpty()?GuestClient.speedEndpoint(c):userExport(c,"speed",account);return endpoint.speedConnection(proxy,bytes,ExportClient.device(c));
 }
 void downloadAPK(String digest,long expected,File output)throws Exception{
  if(!digest.matches("[0-9a-f]{64}")||expected<1||expected>64L*1024*1024)throw new IOException("无效安装包信息");
  URL source=preferred();URL target=new URL(source,"apk/"+digest);
  if(!target.getProtocol().equals(source.getProtocol())||!target.getHost().equals(source.getHost())||target.getPort()!=source.getPort())throw new IOException("不允许跨主机下载");
  HttpsURLConnection connection=(HttpsURLConnection)target.openConnection(Proxy.NO_PROXY);
  File partial=new File(output.getPath()+".part");
  try{
   if(tlsFactory!=null)connection.setSSLSocketFactory(tlsFactory);connection.setConnectTimeout(15000);connection.setReadTimeout(20000);connection.setUseCaches(false);connection.setInstanceFollowRedirects(false);
   connection.setRequestProperty("Authorization","Bearer "+token);connection.setRequestProperty("Accept-Encoding","identity");
   if(connection.getResponseCode()!=200)throw new IOException("安装包暂不可用");
   long length=connection.getContentLengthLong();if(length!=-1&&length!=expected)throw new IOException("安装包长度不符");
   MessageDigest hash=MessageDigest.getInstance("SHA-256");long total=0,start=System.nanoTime();
   try(InputStream in=connection.getInputStream();FileOutputStream out=new FileOutputStream(partial)){
    byte[] buffer=new byte[65536];int n;while((n=in.read(buffer))!=-1){
     total+=n;if(total>expected||Thread.currentThread().isInterrupted()||System.nanoTime()-start>300000000000L)throw new IOException("安装包下载中止");hash.update(buffer,0,n);out.write(buffer,0,n);
    }out.getFD().sync();
   }
   if(total!=expected||!hex(hash.digest()).equals(digest))throw new IOException("安装包校验失败");
   if(!partial.renameTo(output))throw new IOException("无法保存安装包");
  }finally{connection.disconnect();partial.delete();}
 }
 static String hex(byte[] bytes){StringBuilder result=new StringBuilder();for(byte b:bytes)result.append(String.format(java.util.Locale.ROOT,"%02x",b&255));return result.toString();}
 static long nonnegativeLong(JSONObject json,String key)throws JSONException{
  Object value=json.get(key);
  if(!(value instanceof Integer)&&!(value instanceof Long))throw new JSONException("配额或计数字段必须为整数");
  long number=((Number)value).longValue();if(number<0)throw new JSONException("字段不得为负数");return number;
 }
}
