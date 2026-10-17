package com.gzy.qinglian;

import android.app.*;
import android.content.*;
import android.content.pm.ServiceInfo;
import android.net.*;
import android.os.*;
import java.io.*;
import java.net.*;
import java.nio.charset.StandardCharsets;
import java.util.concurrent.*;
import libv2ray.*;

public class TunnelService extends VpnService {
 public static volatile String state="disconnected", message="轻触连接，开启专属通道";
 public static volatile long connectedAt=0;
 public static volatile boolean verified=false;
 public static volatile long uploadBytes=0,downloadBytes=0;
 public static volatile double uploadRate=0,downloadRate=0;
 private long statsTick=0;
 private ScheduledExecutorService statsWorker;
 private final ExecutorService worker=Executors.newSingleThreadExecutor();
 private volatile boolean cancelled=false;
 private ParcelFileDescriptor tun;
 private java.lang.Process relay;
 private CoreController core;
 private ConnectivityManager cm;
 private ConnectivityManager.NetworkCallback callback;
 private final Handler main=new Handler(Looper.getMainLooper());
 private void status(String s,String m){state=s;message=m;}
 @Override public int onStartCommand(Intent i,int flags,int id){
  if(i!=null&&"STOP".equals(i.getAction())) {cancelled=true;status("stopping","正在断开连接");worker.execute(()->{cleanup();stopSelf();});return START_NOT_STICKY;}
  if(!state.equals("disconnected")&&!state.equals("error"))return START_NOT_STICKY;
  cancelled=false;verified=false;status("connecting","正在启动专属通道");
  NotificationManager nm=getSystemService(NotificationManager.class);
  nm.createNotificationChannel(new NotificationChannel("vpn","VPN 连接状态",NotificationManager.IMPORTANCE_LOW));
  if(Build.VERSION.SDK_INT>=34)startForeground(1,notification("正在连接"),ServiceInfo.FOREGROUND_SERVICE_TYPE_SPECIAL_USE);
  else startForeground(1,notification("正在连接"));
  worker.execute(this::connect);return START_NOT_STICKY;
 }
 public static String size(double n){String[] u={"B","KB","MB","GB"};int i=0;while(n>=1024&&i<3){n/=1024;i++;}return String.format(java.util.Locale.CHINA,i==0?"%.0f %s":"%.1f %s",n,u[i]);}
 private Notification notification(String text){
  PendingIntent open=PendingIntent.getActivity(this,0,new Intent(this,MainActivity.class),PendingIntent.FLAG_IMMUTABLE|PendingIntent.FLAG_UPDATE_CURRENT);
  PendingIntent stop=PendingIntent.getService(this,1,new Intent(this,TunnelService.class).setAction("STOP"),PendingIntent.FLAG_IMMUTABLE|PendingIntent.FLAG_UPDATE_CURRENT);
  String up="↑ 上传  "+size(uploadRate)+"/s   ·   已用 "+size(uploadBytes);
  String down="↓ 下载  "+size(downloadRate)+"/s   ·   已用 "+size(downloadBytes);
  boolean online=state.equals("connected");
  return new Notification.Builder(this,"vpn").setStyle(new Notification.BigTextStyle().bigText(online?up+"\n"+down:text)).setSubText(online?"本次连接流量":"VMess")
   .setOnlyAlertOnce(true).setShowWhen(false).setContentTitle("轻连 · 专属节点").setContentText(online?"↑ "+size(uploadRate)+"/s   ↓ "+size(downloadRate)+"/s · 用量 "+size(uploadBytes+downloadBytes):text).setSmallIcon(R.drawable.ic_vpn)
   .setContentIntent(open).setOngoing(true).setCategory(Notification.CATEGORY_SERVICE)
   .addAction(new Notification.Action.Builder(null,"断开",stop).build()).build();
 }
 private void connect(){
  try {
   if(prepare(this)!=null)throw new IOException("请先允许系统 VPN 权限");
   go.Seq.setContext(getApplicationContext());
   Libv2ray.initCoreEnv(getFilesDir().getAbsolutePath(),"");
   String node;
   try(InputStream in=getAssets().open("node.json")){node=Io.readUtf8(in);}
   String config=NodeConfig.build(node);
   core=Libv2ray.newCoreController(new CoreCallbackHandler(){public long startup(){return 0;}public long shutdown(){return 0;}public long onEmitStatus(long n,String s){return 0;}});
   core.startLoop(config);
   if(!core.getIsRunning())throw new IOException("核心启动失败");
   if(cancelled){cleanup();return;}
   cm=getSystemService(ConnectivityManager.class);
   callback=new ConnectivityManager.NetworkCallback(){
    @Override public void onAvailable(Network n){try{setUnderlyingNetworks(new Network[]{n});}catch(Exception ignored){}}
    @Override public void onLost(Network n){try{setUnderlyingNetworks(null);}catch(Exception ignored){}}
   };
   cm.registerNetworkCallback(new NetworkRequest.Builder().addCapability(NetworkCapabilities.NET_CAPABILITY_INTERNET).addCapability(NetworkCapabilities.NET_CAPABILITY_NOT_VPN).build(),callback);
   Builder b=new Builder().setSession("轻连 · 专属节点").setMtu(1500)
    .addAddress("10.10.14.1",30).addRoute("0.0.0.0",0).addDnsServer("1.1.1.1").addDnsServer("8.8.8.8")
    .addAddress("fdfe:dcba:9876::1",126).addRoute("::",0).addDisallowedApplication(getPackageName());
   b.setConfigureIntent(PendingIntent.getActivity(this,0,new Intent(this,MainActivity.class),PendingIntent.FLAG_IMMUTABLE));
   if(Build.VERSION.SDK_INT>=29)b.setMetered(false);
   tun=b.establish();if(tun==null)throw new IOException("系统未建立 VPN 接口");
   File sock=new File(getFilesDir(),"relay.sock");sock.delete();
   relay=new ProcessBuilder(new File(getApplicationInfo().nativeLibraryDir,"libtun2socks.so").getAbsolutePath(),
    "--netif-ipaddr","10.10.14.2","--netif-netmask","255.255.255.252","--netif-ip6addr","fdfe:dcba:9876::2",
    "--socks-server-addr","127.0.0.1:10808","--tunmtu","1500","--sock-path","relay.sock","--enable-udprelay","--loglevel","error")
    .directory(getFilesDir()).redirectErrorStream(true).start();
   final java.lang.Process started=relay;
   Thread drain=new Thread(()->{try(InputStream in=started.getInputStream()){byte[] buf=new byte[1024];while(in.read(buf)!=-1){} }catch(Exception ignored){}});drain.setDaemon(true);drain.start();
   boolean sent=false;
   for(int attempt=0;attempt<7&&!cancelled;attempt++){
    try(LocalSocket socket=new LocalSocket()){
     socket.connect(new LocalSocketAddress(sock.getAbsolutePath(),LocalSocketAddress.Namespace.FILESYSTEM));
     socket.setFileDescriptorsForSend(new FileDescriptor[]{tun.getFileDescriptor()});socket.getOutputStream().write(42);sent=true;break;
    }catch(IOException e){Thread.sleep(50L<<attempt);}
   }
   if(cancelled){cleanup();return;}
   if(!sent||!relay.isAlive())throw new IOException("转发通道启动失败");
   uploadBytes=0;downloadBytes=0;uploadRate=0;downloadRate=0;statsTick=SystemClock.elapsedRealtime();
   connectedAt=SystemClock.elapsedRealtime();status("connected","通道已建立 · 请测速确认网络可用");
   getSystemService(NotificationManager.class).notify(1,notification("已连接 · VMess"));
   statsWorker=Executors.newSingleThreadScheduledExecutor();
   statsWorker.scheduleWithFixedDelay(()->{
    try{
     if(cancelled||core==null||!state.equals("connected"))return;
     long now=SystemClock.elapsedRealtime(),dt=Math.max(1,now-statsTick);statsTick=now;
     long up=Math.max(0,core.queryStats("proxy","uplink")),down=Math.max(0,core.queryStats("proxy","downlink"));
     uploadBytes+=up;downloadBytes+=down;uploadRate=up*1000.0/dt;downloadRate=down*1000.0/dt;
     getSystemService(NotificationManager.class).notify(1,notification("已连接"));
    }catch(Exception ignored){}
   },1,1,TimeUnit.SECONDS);
   Thread monitor=new Thread(()->{try{started.waitFor();if(!cancelled){worker.execute(()->fail("转发通道已停止，请重新连接"));}}catch(Exception ignored){}});monitor.setDaemon(true);monitor.start();
  }catch(Throwable e){fail(e.getMessage()!=null&&e.getMessage().startsWith("请先")?e.getMessage():"连接失败，请检查网络或重新连接");}
 }
 private void fail(String reason){cancelled=true;cleanup();status("error",reason);stopSelf();}
 private void cleanup(){
  cancelled=true;verified=false;connectedAt=0;uploadRate=0;downloadRate=0;
  if(statsWorker!=null){statsWorker.shutdownNow();statsWorker=null;}
  if(relay!=null){relay.destroy();relay=null;}
  if(core!=null){try{core.stopLoop();}catch(Exception ignored){} core=null;}
  if(tun!=null){try{tun.close();}catch(Exception ignored){}tun=null;}
  if(callback!=null&&cm!=null){try{cm.unregisterNetworkCallback(callback);}catch(Exception ignored){}callback=null;}
  new File(getFilesDir(),"relay.sock").delete();
  if(!state.equals("error"))status("disconnected","轻触连接，开启专属通道");
  main.post(()->stopForeground(STOP_FOREGROUND_REMOVE));
 }
 @Override public void onRevoke(){cancelled=true;worker.execute(()->{cleanup();stopSelf();});}
 @Override public void onDestroy(){cancelled=true;worker.execute(this::cleanup);worker.shutdown();super.onDestroy();}
}
