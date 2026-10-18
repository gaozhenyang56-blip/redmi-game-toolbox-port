package com.gzy.qinglian;
import android.content.Context;
import android.provider.Settings;
import java.io.*;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.util.*;
import java.util.zip.*;
import org.json.*;
final class ExportClient {
 static String device(Context context)throws Exception{String id=Settings.Secure.getString(context.getContentResolver(),Settings.Secure.ANDROID_ID);if(id==null||id.trim().isEmpty())throw new IOException("设备标识不可用");return ApiEndpoint.hex(MessageDigest.getInstance("SHA-256").digest(("qinglian-export:"+id).getBytes(StandardCharsets.UTF_8)));}
 static String token(Context c){return c.getSharedPreferences("export-api",0).getString("token","");}
 static JSONObject request(Context c,String path,JSONObject body,String token)throws Exception{return ApiEndpoint.userExport(c,path,token).request(body,device(c));}
 static JSONObject create(Context c,String protocol,int sizeMiB,String remark)throws Exception{
  android.content.SharedPreferences prefs=c.getSharedPreferences("export-api",0);JSONObject pending;
  try{pending=new JSONObject(prefs.getString("pending","{}"));if(!pending.getString("protocol").equals(protocol)||pending.getInt("sizeMiB")!=sizeMiB||!pending.optString("remark").equals(remark))throw new JSONException("changed");}
  catch(Exception changed){pending=new JSONObject().put("requestId",UUID.randomUUID().toString()).put("protocol",protocol).put("sizeMiB",sizeMiB).put("remark",remark);if(!prefs.edit().putString("pending",pending.toString()).commit())throw new IOException("保存失败");}
  JSONObject response=request(c,"nodes",pending,token(c));prefs.edit().remove("pending").apply();return response;
 }
 static String archiveName(JSONObject profile){String label=profile.optString("remark","Qinglian-node").trim();StringBuilder safe=new StringBuilder();for(int i=0;i<label.length()&&safe.length()<64;i++){char ch=label.charAt(i);safe.append(Character.isISOControl(ch)||"/\\:*?\"<>|".indexOf(ch)>=0?'_':ch);}if(safe.length()==0)safe.append("Qinglian-node");return safe+".zip";}
 static void archive(JSONObject profile,OutputStream output)throws Exception{
  // Contains only this user's node and public CA; never a server/signing private key.
  try(ZipOutputStream zip=new ZipOutputStream(output)){
   Map<String,String> files=new LinkedHashMap<>();files.put("node.json",profile.getJSONObject("node").toString(2));files.put("share-uri.txt",profile.getString("uri"));files.put("qinglian-ca.pem",profile.getString("caPem"));files.put("client-config.json",profile.getJSONObject("clientConfig").toString(2));files.put("README.txt","节点创建后7天过期，流量耗尽提前停用。TLS协议须使用附带公开CA并保留证书验证；Hysteria2配置中ca指向qinglian-ca.pem。其他协议配置为V2Ray兼容配置，SOCKS监听127.0.0.1:1080。节点凭据请妥善保管。");
   for(Map.Entry<String,String> entry:files.entrySet()){zip.putNextEntry(new ZipEntry(entry.getKey()));zip.write(entry.getValue().getBytes(StandardCharsets.UTF_8));zip.closeEntry();}
  }
 }
}
