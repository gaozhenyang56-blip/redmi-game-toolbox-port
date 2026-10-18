package com.gzy.qinglian;
import android.content.Context;
import android.os.Build;
import java.io.*;
import java.net.*;
import org.json.*;

/** Native pinned Hysteria client, confined to this app UID and private files. */
final class Hy2Client implements AutoCloseable {
 private Process process;private final File config,ca;private final Context context;
 Hy2Client(Context c){context=c;config=new File(c.getFilesDir(),"hy2-client.json");ca=new File(c.getFilesDir(),"hy2-ca.pem");}
 static JSONObject configuration(JSONObject n,String caPath)throws Exception{
  NodeConfig.validate(n);if(!NodeConfig.protocol(n).equals("hysteria2"))throw new IOException("协议无效");
  String host=n.getString("add");if(host.contains(":"))host="["+host+"]";
  JSONObject tls=new JSONObject().put("sni",n.optString("sni",n.getString("add"))).put("insecure",false);
  if(!n.optString("caPem").isEmpty())tls.put("ca",caPath);
  return new JSONObject().put("server",host+":"+n.getInt("port")).put("auth",n.getString("auth")).put("tls",tls).put("lazy",true).put("congestion",new JSONObject().put("type","bbr").put("bbrProfile","conservative")).put("quic",new JSONObject().put("disablePathMTUDiscovery",true).put("keepAlivePeriod","10s").put("maxIdleTimeout","30s"))
   .put("socks5",new JSONObject().put("listen","127.0.0.1:10810").put("disableUDP",false));
 }
 void start(String node)throws Exception{
  close();if(Build.VERSION.SDK_INT<29)throw new IOException("加速通道需要Android 10或更高版本");JSONObject n=new JSONObject(node);
  if(!n.optString("caPem").isEmpty()){
   byte[] bytes=n.getString("caPem").getBytes(java.nio.charset.StandardCharsets.US_ASCII);if(bytes.length>16384)throw new IOException("证书无效");
   ApiEndpoint.trustCa(new ByteArrayInputStream(bytes));write(ca,bytes);
  }
  write(config,configuration(n,ca.getAbsolutePath()).toString().getBytes(java.nio.charset.StandardCharsets.UTF_8));
  try{
   process=new ProcessBuilder(new File(context.getApplicationInfo().nativeLibraryDir,"libhysteria.so").getAbsolutePath(),"client","--config",config.getAbsolutePath(),"--log-level","error","--disable-update-check").redirectErrorStream(true).start();
   Process started=process;Thread drain=new Thread(()->{try(InputStream in=started.getInputStream()){byte[] buffer=new byte[1024];while(in.read(buffer)!=-1){} }catch(IOException ignored){}});drain.setDaemon(true);drain.start();
   for(int i=0;i<50;i++){
    if(Thread.currentThread().isInterrupted()||!started.isAlive())throw new IOException("加速通道启动失败");
    try(Socket socket=new Socket()){socket.connect(new InetSocketAddress("127.0.0.1",10810),100);return;}catch(IOException wait){Thread.sleep(50);}
   }throw new IOException("加速通道启动超时");
  }catch(Exception failure){close();throw failure;}
 }
 private static void write(File file,byte[] data)throws IOException{try(FileOutputStream out=new FileOutputStream(file)){out.write(data);}file.setReadable(false,false);file.setWritable(false,false);file.setReadable(true,true);file.setWritable(true,true);}
 boolean alive(){return process!=null&&process.isAlive();}
 public void close(){if(process!=null){process.destroy();try{if(!process.waitFor(500,java.util.concurrent.TimeUnit.MILLISECONDS))process.destroyForcibly();}catch(InterruptedException ignored){Thread.currentThread().interrupt();}process=null;}config.delete();ca.delete();}
}
