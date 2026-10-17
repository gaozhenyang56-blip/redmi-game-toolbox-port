package com.gzy.qinglian;

import android.content.Context;
import java.io.*;
import java.net.*;
import java.nio.charset.StandardCharsets;
import org.json.*;

/** Fixed build-time API configuration. Never redirects a bearer token. */
final class ApiEndpoint {
 private final URL url;
 private final String token;
 ApiEndpoint(URL url,String token){this.url=url;this.token=token;}
 static ApiEndpoint load(Context context,String asset)throws Exception{
  JSONObject config;
  try(InputStream in=context.getAssets().open(asset)){config=new JSONObject(Io.readUtf8(in));}
  return parse(config);
 }
 static ApiEndpoint parse(JSONObject config)throws Exception{
  URL url=new URL(config.getString("url"));
  String token=config.getString("clientToken");
  if(!"https".equals(url.getProtocol())||url.getHost().isEmpty()||url.getUserInfo()!=null||url.getRef()!=null
    ||token.trim().isEmpty()||token.contains("\r")||token.contains("\n"))throw new IOException("无效的服务端接口配置");
  return new ApiEndpoint(url,token);
 }
 JSONObject request(JSONObject body)throws Exception{
  HttpURLConnection c=(HttpURLConnection)url.openConnection(Proxy.NO_PROXY);
  try{
   c.setConnectTimeout(3000);c.setReadTimeout(3000);c.setUseCaches(false);c.setInstanceFollowRedirects(false);
   c.setRequestProperty("Authorization","Bearer "+token);c.setRequestProperty("Accept","application/json");
   if(body!=null){
    byte[] bytes=body.toString().getBytes(StandardCharsets.UTF_8);
    c.setRequestMethod("POST");c.setDoOutput(true);c.setRequestProperty("Content-Type","application/json; charset=utf-8");c.setFixedLengthStreamingMode(bytes.length);
    try(OutputStream out=c.getOutputStream()){out.write(bytes);}
   }else c.setRequestMethod("GET");
   if(c.getResponseCode()!=200)throw new IOException("服务端接口暂不可用");
   byte[] bytes=new byte[8193];int total=0,n;
   try(InputStream in=c.getInputStream()){while(total<bytes.length&&(n=in.read(bytes,total,bytes.length-total))!=-1)total+=n;}
   if(total==bytes.length)throw new IOException("接口响应过大");
   return new JSONObject(new String(bytes,0,total,StandardCharsets.UTF_8));
  }finally{c.disconnect();}
 }
 static long nonnegativeLong(JSONObject json,String key)throws JSONException{
  Object value=json.get(key);
  if(!(value instanceof Integer)&&!(value instanceof Long))throw new JSONException("配额或计数字段必须为整数");
  long number=((Number)value).longValue();if(number<0)throw new JSONException("字段不得为负数");return number;
 }
}
