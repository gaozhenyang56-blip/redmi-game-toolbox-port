package com.gzy.qinglian;
import java.net.SocketTimeoutException;

/** Stable, credential-free user diagnostics. Never include exception text. */
final class ConnectionFailure {
 static String message(String stage,boolean hy2,String nativeCode,Throwable error){
  if(stage.equals("permission"))return "请先允许系统 VPN 权限（S-PERMISSION）";
  if(stage.equals("routing"))return "应用分流配置不可用，请检查名单（S-ROUTING）";
  if(stage.equals("profile")){
   if(error instanceof ApiEndpoint.HttpFailure){int code=((ApiEndpoint.HttpFailure)error).code;
    if(code==401)return "账号会话已失效，请重新登录（P401）";
    if(code==403)return "账号权限或配额不足（P403）";
    if(code==429)return "节点资源繁忙，请稍后重试（P429）";
    return "节点配置获取失败（P"+code+"）";
   }return "节点配置获取或解析失败，请重试（P-NODE）";
  }
  if(stage.equals("core"))return hy2?"加速核心启动失败，请确认Android 10及以上（H-CORE）":"兼容核心启动失败（C-CORE）";
  if(stage.equals("verify")){
   if(error instanceof ApiEndpoint.HttpFailure)return "服务器拒绝链路验证（"+(hy2?"H":"C")+((ApiEndpoint.HttpFailure)error).code+"）";
   if(ConnectionProbe.securityFailure(error))return (hy2?"加速":"兼容")+"证书校验失败，请检查手机时间（"+(hy2?"H":"C")+"-TLS）";
   if(hy2){
    if(nativeCode.equals("TLS_CERTIFICATE"))return "加速证书校验失败，请检查手机时间（H-TLS）";
    if(nativeCode.equals("AUTH_REJECTED"))return "加速认证失败，请重新连接刷新节点（H-AUTH）";
    if(nativeCode.equals("UDP_NETWORK"))return "加速UDP连接失败，可先使用兼容通道（H-UDP）";
    if(nativeCode.equals("QUIC_TIMEOUT")||hasTimeout(error))return "加速握手等待超时，可先使用兼容通道（H-TIMEOUT）";
    return "加速链路验证失败，可先使用兼容通道（H-VERIFY"+detail(error)+"）";
   }return hasTimeout(error)?"兼容链路验证超时（C-TIMEOUT）":"兼容链路验证失败（C-VERIFY"+detail(error)+"）";
  }
  if(stage.equals("network"))return "系统网络监听失败，请重启轻连（S-NETWORK）";
  if(stage.equals("vpn"))return "系统VPN接口建立失败，请关闭其他VPN后重试（S-VPN）";
  if(stage.equals("relay"))return "本地转发启动失败，请重新连接（S-RELAY）";
  return "连接未完成，请重新连接（S-UNKNOWN）";
 }
 private static String detail(Throwable error){
  int proxy=ConnectionProbe.proxyStatus(error);if(proxy!=0)return "/PROXY"+proxy;
  for(int i=0;error!=null&&i<8;i++,error=error.getCause()){
   if(error instanceof java.io.EOFException)return "/EOF";
   if(error instanceof java.net.SocketException)return "/SOCKET";
   if(error instanceof javax.net.ssl.SSLException)return "/TLS";
  }return "";
 }
 private static boolean hasTimeout(Throwable error){for(int i=0;error!=null&&i<8;i++,error=error.getCause())if(error instanceof SocketTimeoutException)return true;return false;}
}
