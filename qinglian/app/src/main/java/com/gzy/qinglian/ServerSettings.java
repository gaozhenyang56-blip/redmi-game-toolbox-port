package com.gzy.qinglian;
import android.content.*;
import android.util.AtomicFile;
import java.io.*;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import org.json.*;
/** A panel bootstrap, never a third-party proxy node. Switching requires a process restart. */
final class ServerSettings {
 static final int MAX=65536;
 private static File file(Context c){return new File(c.getFilesDir(),"panel-server.json");}
 static boolean selected(Context c){return file(c).isFile();}
 static JSONObject validate(String data)throws Exception{
  if(data.getBytes(StandardCharsets.UTF_8).length>MAX)throw new IOException("服务器配置过大");
  JSONObject root=new JSONObject(data);
  if(root.getInt("schema")!=1||!"qinglian-server".equals(root.getString("kind")))throw new IOException("请选择轻连面板服务器配置");
  String name=root.getString("name");if(name.isEmpty()||name.length()>80||name.matches("(?s).*\\p{Cntrl}.*"))throw new IOException("服务器名称无效");
  JSONObject p=root.getJSONObject("profile");ApiEndpoint.parse(p);
  if(!p.getString("clientToken").matches("[0-9a-f]{64}"))throw new IOException("客户端接入码无效");
  for(java.util.Iterator<String> i=root.keys();i.hasNext();)if(!java.util.Arrays.asList("schema","kind","name","profile").contains(i.next()))throw new IOException("未知配置字段");
  for(java.util.Iterator<String> i=p.keys();i.hasNext();)if(!java.util.Arrays.asList("url","clientToken","caPem","cdnUrl").contains(i.next()))throw new IOException("未知接口字段");
  URL u=new URL(p.getString("url"));if(!u.getPath().endsWith("/api/v1/profile")||u.getQuery()!=null||p.getString("url").matches("(?s).*\\s.*"))throw new IOException("需要轻连API地址");
  if(p.has("caPem")){String ca=p.getString("caPem");if(ca.length()>32768||ca.contains("PRIVATE KEY"))throw new IOException("仅允许公开CA证书");ApiEndpoint.trustCa(new ByteArrayInputStream(ca.getBytes(StandardCharsets.US_ASCII)));}
  return root;
 }
 private static String cachedRaw;private static JSONObject cachedConfig;
 private static synchronized JSONObject read(Context c)throws Exception{try(InputStream in=new AtomicFile(file(c)).openRead()){String raw=Io.readUtf8(in);if(!raw.equals(cachedRaw)){JSONObject checked=validate(raw);cachedConfig=checked;cachedRaw=raw;}return cachedConfig;}}
 static synchronized JSONObject configuration(Context c,String asset)throws Exception{
  if(!selected(c))return null;
  String part;switch(asset){case "profile.json":part="profile";break;case "online.json":part="online";break;case "quota.json":part="quota";break;case "telemetry.json":part="heartbeat";break;case "updates.json":part="updates";break;default:throw new IOException("无效服务器接口");}
  JSONObject p=new JSONObject(read(c).getJSONObject("profile").toString());
  p.put("url",new URL(new URL(p.getString("url")),part).toString());
  if(p.has("cdnUrl"))p.put("cdnUrl",new URL(new URL(p.getString("cdnUrl")),part).toString());return p;
 }
 static synchronized String prefName(Context c,String name){
  if(!selected(c))return name;
  try{JSONObject p=read(c).getJSONObject("profile");String identity=p.getString("url")+"\n"+p.getString("clientToken")+"\n"+p.optString("caPem")+"\n"+p.optString("cdnUrl");return name+"-"+ApiEndpoint.hex(MessageDigest.getInstance("SHA-256").digest(identity.getBytes(StandardCharsets.UTF_8)));}
  catch(Exception invalid){return name+"-invalid-server";}
 }
 static String display(Context c){try{JSONObject p=selected(c)?read(c):null;return p==null?"安装包内置服务器":p.getString("name")+"\n"+p.getJSONObject("profile").getString("url");}catch(Exception invalid){return "服务器配置不可用";}}
 static synchronized void saveAndExit(android.app.Activity a,JSONObject root)throws Exception{
  if(!TunnelService.state.equals("disconnected")&&!TunnelService.state.equals("error"))throw new IOException("请先断开VPN");
  AtomicFile target=new AtomicFile(file(a));
  if(root==null)target.delete();else{byte[] bytes=validate(root.toString()).toString().getBytes(StandardCharsets.UTF_8);FileOutputStream out=null;try{out=target.startWrite();out.write(bytes);target.finishWrite(out);}catch(Exception error){if(out!=null)target.failWrite(out);throw error;}}
  a.finishAffinity();android.os.Process.killProcess(android.os.Process.myPid());System.exit(0);
 }
}
