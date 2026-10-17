package com.gzy.qinglian;
import org.json.*;
import java.util.UUID;

/** Fixed VMess TCP/HTTP profile; never logs credentials. */
public final class NodeConfig {
 public static String build(String node) throws Exception {
  JSONObject n=new JSONObject(node);
  UUID.fromString(n.getString("id"));
  int port=n.getInt("port");
  if(port<1||port>65535||n.getString("add").trim().isEmpty()) throw new IllegalArgumentException("节点地址无效");
  if(!n.getString("net").equals("tcp")||!n.getString("type").equals("http")) throw new IllegalArgumentException("不支持的传输方式");
  JSONObject user=new JSONObject().put("id",n.getString("id")).put("alterId",n.optInt("aid",0)).put("security","auto");
  JSONObject server=new JSONObject().put("address",n.getString("add")).put("port",port).put("users",new JSONArray().put(user));
  JSONObject request=new JSONObject().put("method","GET").put("path",new JSONArray().put(n.optString("path","/").isEmpty()?"/":n.optString("path","/")));
  if(!n.optString("host").isEmpty()) request.put("headers",new JSONObject().put("Host",new JSONArray().put(n.getString("host"))));
  JSONObject stream=new JSONObject().put("network","tcp").put("security","none").put("tcpSettings",new JSONObject().put("header",new JSONObject().put("type","http").put("request",request)));
  String tls=n.optString("tls","none");if(!tls.isEmpty()&&!tls.equals("none"))throw new IllegalArgumentException("配置与固定传输不匹配");
  JSONObject outbound=new JSONObject().put("tag","proxy").put("protocol","vmess").put("settings",new JSONObject().put("vnext",new JSONArray().put(server))).put("streamSettings",stream);
  JSONArray ins=new JSONArray()
   .put(new JSONObject().put("tag","socks").put("listen","127.0.0.1").put("port",10808).put("protocol","socks").put("settings",new JSONObject().put("auth","noauth").put("udp",true)))
   .put(new JSONObject().put("tag","http").put("listen","127.0.0.1").put("port",10809).put("protocol","http").put("settings",new JSONObject()));
  return new JSONObject().put("log",new JSONObject().put("loglevel","none"))
   .put("inbounds",ins).put("outbounds",new JSONArray().put(outbound)).put("stats",new JSONObject())
   .put("policy",new JSONObject().put("system",new JSONObject().put("statsOutboundUplink",true).put("statsOutboundDownlink",true))).toString();
 }
}
