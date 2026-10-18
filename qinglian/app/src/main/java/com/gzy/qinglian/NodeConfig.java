package com.gzy.qinglian;
import org.json.*;
import java.util.*;

/** Panel-owned protocol conversion. Never accepts executable config or insecure TLS. */
public final class NodeConfig {
 public static String protocol(JSONObject n)throws Exception{
  String p=n.optString("protocol","vmess").toLowerCase(Locale.ROOT);
  if(!Arrays.asList("vmess","vless","trojan","shadowsocks","hysteria2").contains(p))throw new IllegalArgumentException("不支持的协议");return p;
 }
 static String required(JSONObject n,String key,int max)throws Exception{String s=n.getString(key);if(s.trim().isEmpty()||s.length()>max||s.matches("(?s).*\\p{Cntrl}.*"))throw new IllegalArgumentException("节点字段无效");return s;}
 static void validate(JSONObject n)throws Exception{
  String host=required(n,"add",253);if(host.contains("/")||host.contains("@")||host.contains(" "))throw new IllegalArgumentException("节点地址无效");
  int port=n.getInt("port");if(port<1||port>65535)throw new IllegalArgumentException("无效端口");String p=protocol(n);
  if(n.optBoolean("insecure",false))throw new IllegalArgumentException("不允许跳过证书验证");
  if(p.equals("vmess")||p.equals("vless")){UUID.fromString(required(n,"id",36));if(n.optInt("aid",0)!=0||!n.optString("flow").isEmpty())throw new IllegalArgumentException("不支持旧认证或XTLS流控");}
  else if(p.equals("hysteria2")){required(n,"auth",8192);return;}
  else required(n,"password",8192);
  if(p.equals("shadowsocks")&&!Arrays.asList("aes-128-gcm","aes-256-gcm","chacha20-poly1305","chacha20-ietf-poly1305").contains(n.optString("method")))throw new IllegalArgumentException("不支持的加密方法");
  String net=n.optString("net","tcp"),tls=n.optString("tls","none");
  if(!net.equals("tcp")&&!net.equals("ws"))throw new IllegalArgumentException("不支持的传输方式");
  if(!tls.equals("none")&&!tls.equals("")&&!tls.equals("tls"))throw new IllegalArgumentException("不支持的TLS配置");
  if(p.equals("trojan")&&!tls.equals("tls"))throw new IllegalArgumentException("Trojan需要TLS");
 }
 public static String build(String node)throws Exception{
  JSONObject n=new JSONObject(node);validate(n);String p=protocol(n);JSONObject outbound;
  if(p.equals("hysteria2")){
   outbound=new JSONObject().put("protocol","socks").put("settings",new JSONObject().put("servers",new JSONArray().put(new JSONObject().put("address","127.0.0.1").put("port",10810))));
  }else{
   JSONObject server=new JSONObject().put("address",n.getString("add")).put("port",n.getInt("port"));
   if(p.equals("vmess")||p.equals("vless")){
    JSONObject user=new JSONObject().put("id",n.getString("id"));
    if(p.equals("vmess"))user.put("alterId",0).put("security","auto");else user.put("encryption","none");
    server.put("users",new JSONArray().put(user));
   }else{server.put("password",n.getString("password"));if(p.equals("shadowsocks"))server.put("method",n.getString("method"));}
   JSONObject settings=new JSONObject().put(p.equals("vmess")||p.equals("vless")?"vnext":"servers",new JSONArray().put(server));
   String net=n.optString("net","tcp"),tls=n.optString("tls","none");if(tls.isEmpty())tls="none";
   JSONObject stream=new JSONObject().put("network",net).put("security",tls);
   if(net.equals("tcp")){
    String type=n.optString("type","none");if(!type.equals("none")&&!type.equals("http"))throw new IllegalArgumentException("不支持的TCP伪装");
    JSONObject header=new JSONObject().put("type",type);
    if(type.equals("http")){
     JSONObject request=new JSONObject().put("method","GET").put("path",new JSONArray().put(n.optString("path","/").isEmpty()?"/":n.optString("path","/")));
     if(!n.optString("host").isEmpty())request.put("headers",new JSONObject().put("Host",new JSONArray().put(n.getString("host"))));header.put("request",request);
    }stream.put("tcpSettings",new JSONObject().put("header",header));
   }else{
    JSONObject ws=new JSONObject().put("path",n.optString("path","/"));if(!n.optString("host").isEmpty())ws.put("headers",new JSONObject().put("Host",n.getString("host")));stream.put("wsSettings",ws);
   }
   if(tls.equals("tls"))stream.put("tlsSettings",new JSONObject().put("serverName",n.optString("sni",n.getString("add"))).put("allowInsecure",false));
   outbound=new JSONObject().put("protocol",p).put("settings",settings).put("streamSettings",stream);
  }
  outbound.put("tag","proxy");
  JSONArray ins=new JSONArray().put(new JSONObject().put("tag","socks").put("listen","127.0.0.1").put("port",10808).put("protocol","socks").put("settings",new JSONObject().put("auth","noauth").put("udp",true)))
   .put(new JSONObject().put("tag","http").put("listen","127.0.0.1").put("port",10809).put("protocol","http").put("settings",new JSONObject()));
  JSONObject dns=new JSONObject().put("queryStrategy","UseIPv4").put("tag","dns-internal").put("servers",new JSONArray().put("tcp://1.1.1.1").put("tcp://8.8.8.8"));
  JSONObject dnsOutbound=new JSONObject().put("tag","dns-out").put("protocol","dns").put("settings",new JSONObject());
  JSONObject dnsRule=new JSONObject().put("type","field").put("inboundTag",new JSONArray().put("socks").put("http")).put("port","53").put("network","tcp,udp").put("outboundTag","dns-out");
  JSONArray rules=new JSONArray().put(dnsRule),outbounds=new JSONArray().put(outbound).put(dnsOutbound);
  if(p.equals("hysteria2")&&n.has("compatibility")){
   JSONObject fallback=n.getJSONObject("compatibility");if(protocol(fallback).equals("hysteria2"))throw new IllegalArgumentException("兼容节点不能递归指向加速通道");
   JSONObject compatibility=new JSONObject(build(fallback.toString())).getJSONArray("outbounds").getJSONObject(0);compatibility.put("tag","compatibility");outbounds.put(compatibility);
   rules.put(new JSONObject().put("type","field").put("network","udp").put("port","443").put("outboundTag","compatibility"));
   JSONArray domains=new JSONArray();for(String domain:new String[]{"googleusercontent.com","ggpht.com","githubusercontent.com","github.com","githubassets.com","chatgpt.com","openai.com","oaistatic.com","oaiusercontent.com"})domains.put("domain:"+domain);domains.put("full:ssl.gstatic.com");
   rules.put(new JSONObject().put("type","field").put("domain",domains).put("outboundTag","compatibility"));
   for(int i=0;i<ins.length();i++)ins.getJSONObject(i).put("sniffing",new JSONObject().put("enabled",true).put("destOverride",new JSONArray().put("http").put("tls")));
  }
  return new JSONObject().put("dns",dns).put("routing",new JSONObject().put("domainStrategy","AsIs").put("rules",rules)).put("log",new JSONObject().put("loglevel","none"))
   .put("inbounds",ins).put("outbounds",outbounds).put("stats",new JSONObject()).put("policy",new JSONObject().put("system",new JSONObject().put("statsOutboundUplink",true).put("statsOutboundDownlink",true))).toString();
 }
}
