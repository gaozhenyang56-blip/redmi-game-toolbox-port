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
 private static volatile TunnelService activeService;
 @Override public void onCreate(){super.onCreate();activeService=this;}
 public static volatile String state="disconnected", message="轻触连接，开启专属通道";
 public static volatile long connectedAt=0;
 public static volatile boolean verified=false;
 public static volatile long uploadBytes=0,downloadBytes=0;
 public static volatile double uploadRate=0,downloadRate=0;
 private long statsTick=0;
 private ScheduledExecutorService statsWorker;
 private DeviceReporter reporter;
 public static volatile String reportingStatus="设备上报未接入";
 public static volatile String activeProfileRevision="",activeProfileLabel="专属通道";
 public static volatile String routingStatus="全局模式";
 private final ExecutorService worker=Executors.newSingleThreadExecutor();
 private volatile boolean cancelled=false;
 private volatile Hy2Settings.Selection selectedProfile;
 static Hy2Settings.Selection profileSelection(){TunnelService service=activeService;return service==null||service.cancelled?null:service.selectedProfile;}
 private ParcelFileDescriptor tun;
 private volatile java.lang.Process relay;
 private volatile CoreController core;
 private final Object coreLock=new Object();
 private final java.util.concurrent.atomic.AtomicBoolean recovering=new java.util.concurrent.atomic.AtomicBoolean();
 private final RecoveryBudget recoveryBudget=new RecoveryBudget();
 private String runningConfig,runningNode;
 private Hy2Client hy2;
 private boolean serviceCompatibility;
 public static volatile String activeProtocol="VMess";
 private volatile Network underlying;
 private volatile long connectionEpoch;
 private ConnectivityManager cm;
 private ConnectivityManager.NetworkCallback callback;
 private final Handler main=new Handler(Looper.getMainLooper());
 private void status(String s,String m){state=s;message=m;}
 @Override public int onStartCommand(Intent i,int flags,int id){
  if(i!=null&&"STOP".equals(i.getAction())) {cancelled=true;status("stopping","正在断开连接");worker.execute(()->{cleanup();stopSelf();});return START_NOT_STICKY;}
  if(!state.equals("disconnected")&&!state.equals("error"))return START_NOT_STICKY;
  if(ExportClient.token(this).isEmpty())GuestClient.begin(this);
  cancelled=false;selectedProfile=Hy2Settings.saved(this);verified=false;connectionEpoch++;recoveryBudget.reset();status("connecting","正在启动专属通道");
  NotificationManager nm=getSystemService(NotificationManager.class);
  nm.createNotificationChannel(new NotificationChannel("vpn","VPN 连接状态",NotificationManager.IMPORTANCE_LOW));
  if(Build.VERSION.SDK_INT>=34)startForeground(1,notification("正在连接"),ServiceInfo.FOREGROUND_SERVICE_TYPE_SPECIAL_USE);
  else startForeground(1,notification("正在连接"));
  worker.execute(this::connect);return START_NOT_STICKY;
 }
 public static void guestExhausted(){TunnelService service=activeService;if(service!=null&&!service.cancelled){service.cancelled=true;service.worker.execute(()->service.fail("本次访客64GB已用完，请重新连接"));}}
 public static String size(double n){String[] u={"B","KB","MB","GB"};int i=0;while(n>=1024&&i<3){n/=1024;i++;}return String.format(java.util.Locale.CHINA,i==0?"%.0f %s":"%.1f %s",n,u[i]);}
 private Notification notification(String text){
  PendingIntent open=PendingIntent.getActivity(this,0,new Intent(this,MainActivity.class),PendingIntent.FLAG_IMMUTABLE|PendingIntent.FLAG_UPDATE_CURRENT);
  PendingIntent stop=PendingIntent.getService(this,1,new Intent(this,TunnelService.class).setAction("STOP"),PendingIntent.FLAG_IMMUTABLE|PendingIntent.FLAG_UPDATE_CURRENT);
  String up="↑ 上传  "+size(uploadRate)+"/s   ·   已用 "+size(uploadBytes);
  String down="↓ 下载  "+size(downloadRate)+"/s   ·   已用 "+size(downloadBytes);
  boolean online=state.equals("connected");
  return new Notification.Builder(this,"vpn").setStyle(new Notification.BigTextStyle().bigText(online?up+"\n"+down:text)).setSubText(online?"本次连接流量":activeProtocol)
   .setOnlyAlertOnce(true).setShowWhen(false).setContentTitle("轻连 · 专属节点").setContentText(online?"↑ "+size(uploadRate)+"/s   ↓ "+size(downloadRate)+"/s · 用量 "+size(uploadBytes+downloadBytes):text).setSmallIcon(R.drawable.ic_vpn)
   .setContentIntent(open).setOngoing(true).setCategory(Notification.CATEGORY_SERVICE)
   .addAction(new Notification.Action.Builder(null,"断开",stop).build()).build();
 }
 private void connect(){
  try {
   if(prepare(this)!=null)throw new IOException("请先允许系统 VPN 权限");
   AppRouting routing=AppRouting.load(this);routing.plan(this);
   go.Seq.setContext(getApplicationContext());
   if(routing.bypassChina())GeoAssets.prepare(this);
   Libv2ray.initCoreEnv(getFilesDir().getAbsolutePath(),"");
   ProfileMonitor.Profile profile=ProfileMonitor.forConnection(this);String node=profile.node;activeProfileRevision=profile.revision;activeProfileLabel=profile.label;
   String config=NodeConfig.build(node,routing.bypassChina());
   runningConfig=config;runningNode=node;serviceCompatibility=new org.json.JSONObject(node).has("compatibility");activeProtocol=NodeConfig.protocol(new org.json.JSONObject(node)).toUpperCase(java.util.Locale.ROOT);startCore();
   if(cancelled){cleanup();return;}
   trackNetwork();
   Builder b=new Builder().setSession("轻连 · 专属节点").setMtu(1500)
    .addAddress("10.10.14.1",30).addRoute("0.0.0.0",0).addDnsServer("1.1.1.1").addDnsServer("8.8.8.8")
    .addAddress("fdfe:dcba:9876::1",126).addRoute("::",0);
   routing.apply(this,b);routingStatus=routing.title();
   b.setConfigureIntent(PendingIntent.getActivity(this,0,new Intent(this,MainActivity.class),PendingIntent.FLAG_IMMUTABLE));
   if(Build.VERSION.SDK_INT>=29)b.setMetered(false);
   tun=b.establish();if(tun==null)throw new IOException("系统未建立 VPN 接口");
   startRelay();
   if(cancelled){cleanup();return;}
   uploadBytes=0;downloadBytes=0;uploadRate=0;downloadRate=0;statsTick=SystemClock.elapsedRealtime();
   connectedAt=SystemClock.elapsedRealtime();status("connected","通道已建立 · 请测速确认网络可用");
   getSystemService(NotificationManager.class).notify(1,notification("已连接 · "+activeProtocol));
   try{
    reporter=DeviceReporter.create(this,()->new DeviceReporter.Sample(uploadBytes,downloadBytes,uploadRate,downloadRate));
    if(reporter!=null){reporter.start();reportingStatus="设备上报准备中";}else reportingStatus="设备上报未接入";
   }catch(Exception reportingError){reportingStatus="设备上报配置不可用";}
   statsWorker=Executors.newSingleThreadScheduledExecutor();
   statsWorker.scheduleWithFixedDelay(()->{
    try{
     if(cancelled||core==null||!state.equals("connected"))return;
     long now=SystemClock.elapsedRealtime(),dt=Math.max(1,now-statsTick);statsTick=now;
     synchronized(coreLock){
      if(core==null)return;
      if(!core.getIsRunning()||(hy2!=null&&!hy2.alive())||relay==null||!relay.isAlive()){requestRecovery();return;}
      long up=Math.max(0,core.queryStats("proxy","uplink")),down=Math.max(0,core.queryStats("proxy","downlink"));
      if(serviceCompatibility){up+=Math.max(0,core.queryStats("compatibility","uplink"));down+=Math.max(0,core.queryStats("compatibility","downlink"));}
      uploadBytes+=up;downloadBytes+=down;uploadRate=up*1000.0/dt;downloadRate=down*1000.0/dt;
     }
     if(reporter!=null)reportingStatus=reporter.status;ProfileMonitor.refresh(this,false);
     getSystemService(NotificationManager.class).notify(1,notification("已连接"));
    }catch(Exception ignored){}
   },1,1,TimeUnit.SECONDS);
  }catch(Throwable e){fail(e.getMessage()!=null&&e.getMessage().startsWith("请先")?e.getMessage():"连接失败，请检查网络或重新连接");}
 }
 void trackNetwork(){
   cm=getSystemService(ConnectivityManager.class);
   final long epoch=connectionEpoch;
   callback=new ConnectivityManager.NetworkCallback(){
    private void select(Network n){if(cancelled||connectionEpoch!=epoch)return;underlying=n;try{setUnderlyingNetworks(new Network[]{n});}catch(Exception ignored){}}
    @Override public void onAvailable(Network n){select(n);}
    @Override public void onCapabilitiesChanged(Network n,NetworkCapabilities caps){select(n);}
    @Override public void onLost(Network n){if(cancelled||connectionEpoch!=epoch||!n.equals(underlying))return;underlying=null;try{setUnderlyingNetworks(null);}catch(Exception ignored){}}
   };
   // REQUEST chooses one best non-VPN network. LISTEN reports every matching
   // network and can replace Wi-Fi with idle cellular, including late onLost.
   cm.requestNetwork(new NetworkRequest.Builder().addCapability(NetworkCapabilities.NET_CAPABILITY_INTERNET)
    .addCapability(NetworkCapabilities.NET_CAPABILITY_NOT_VPN).addCapability(NetworkCapabilities.NET_CAPABILITY_NOT_RESTRICTED).build(),callback);
 }
 boolean coreHealthy(){synchronized(coreLock){return core!=null&&core.getIsRunning()&&(hy2==null||hy2.alive());}}
 void startCore()throws Exception{
  synchronized(coreLock){
   if(NodeConfig.protocol(new org.json.JSONObject(runningNode)).equals("hysteria2")){hy2=new Hy2Client(this);hy2.start(runningNode);}
   core=Libv2ray.newCoreController(new CoreCallbackHandler(){public long startup(){return 0;}public long shutdown(){return 0;}public long onEmitStatus(long n,String s){return 0;}});
   core.startLoop(runningConfig);if(!core.getIsRunning())throw new IOException("核心启动失败");
  }
 }
 void stopCore(){synchronized(coreLock){
  if(core!=null){try{core.stopLoop();}catch(Exception ignored){}core=null;}
  if(hy2!=null){hy2.close();hy2=null;}
 }}
 void startRelay()throws Exception{
  File sock=new File(getFilesDir(),"relay.sock");sock.delete();
  final java.lang.Process started=new ProcessBuilder(new File(getApplicationInfo().nativeLibraryDir,"libtun2socks.so").getAbsolutePath(),
   "--netif-ipaddr","10.10.14.2","--netif-netmask","255.255.255.252","--netif-ip6addr","fdfe:dcba:9876::2",
   "--socks-server-addr","127.0.0.1:10808","--tunmtu","1500","--sock-path","relay.sock","--enable-udprelay","--loglevel","error")
   .directory(getFilesDir()).redirectErrorStream(true).start();
  relay=started;
  Thread drain=new Thread(()->{try(InputStream in=started.getInputStream()){byte[] buf=new byte[1024];while(in.read(buf)!=-1){} }catch(Exception ignored){}});drain.setDaemon(true);drain.start();
  boolean sent=false;
  for(int attempt=0;attempt<7&&!cancelled;attempt++){
   if(!started.isAlive())break;
   try(LocalSocket socket=new LocalSocket()){
    socket.connect(new LocalSocketAddress(sock.getAbsolutePath(),LocalSocketAddress.Namespace.FILESYSTEM));
    socket.setFileDescriptorsForSend(new FileDescriptor[]{tun.getFileDescriptor()});socket.getOutputStream().write(42);sent=true;break;
   }catch(IOException e){Thread.sleep(50L<<attempt);}
  }
  if(cancelled)return;
  if(!sent||!started.isAlive())throw new IOException("转发通道启动失败");
  Thread monitor=new Thread(()->{try{started.waitFor();if(!cancelled&&relay==started)requestRecovery();}catch(InterruptedException ignored){Thread.currentThread().interrupt();}});
  monitor.setDaemon(true);monitor.start();
 }
 void stopRelay(){
  java.lang.Process previous=relay;relay=null;
  if(previous!=null){previous.destroy();try{if(!previous.waitFor(500,TimeUnit.MILLISECONDS)){previous.destroyForcibly();previous.waitFor(500,TimeUnit.MILLISECONDS);}}catch(InterruptedException e){Thread.currentThread().interrupt();}}
 }
 void requestRecovery(){
  if(cancelled||!recovering.compareAndSet(false,true))return;
  final long epoch=connectionEpoch;
  try{worker.execute(()->{try{
   while(!cancelled&&epoch==connectionEpoch){
    long delay=recoveryBudget.nextDelay(SystemClock.elapsedRealtime());
    if(delay<0){fail("通道反复异常，已停止重试，请重新连接");return;}
    verified=false;uploadRate=downloadRate=0;status("reconnecting","通道异常，正在自动恢复");
    getSystemService(NotificationManager.class).notify(1,notification(message));
    try{
     Thread.sleep(delay);if(cancelled||epoch!=connectionEpoch)return;
     stopRelay();if(!coreHealthy()){stopCore();startCore();}if(cancelled)return;startRelay();if(cancelled)return;
     statsTick=SystemClock.elapsedRealtime();status("connected","通道已恢复 · 请继续使用");
     getSystemService(NotificationManager.class).notify(1,notification(message));return;
    }catch(Exception retry){if(cancelled)return;}
   }
  }finally{recovering.set(false);}});}catch(RejectedExecutionException stopped){recovering.set(false);}
 }
 static long measureDelay()throws Exception{
  TunnelService service=activeService;
  if(service==null||!state.equals("connected")||service.cancelled)throw new IOException("通道未连接");
  CoreController controller=service.core;long epoch=service.connectionEpoch;
  if(controller==null)throw new IOException("核心不可用");
  // Same API and primary/backup URLs as v2rayNG 1.9.46. The native core
  // performs two requests with keep-alive and returns their minimum duration.
  long result=-1;
  for(String url:new String[]{"https://www.gstatic.com/generate_204","https://www.google.com/generate_204"}){
   if(Thread.currentThread().isInterrupted()||service.cancelled||epoch!=service.connectionEpoch||controller!=service.core)throw new InterruptedIOException();
   try{result=controller.measureDelay(url);if(result>=0)break;}catch(Exception unavailable){result=-1;}
  }
  if(result<0||service.cancelled||epoch!=service.connectionEpoch||controller!=service.core||!state.equals("connected"))throw new IOException("延迟测试失败");
  return result;
 }
 private void fail(String reason){cancelled=true;cleanup();status("error",reason);stopSelf();}
 private void cleanup(){
  if(reporter!=null){reporter.close();reporter=null;}reportingStatus="已断开 · 离线状态以服务端为准";
  cancelled=true;connectionEpoch++;underlying=null;verified=false;connectedAt=0;uploadRate=0;downloadRate=0;
  if(statsWorker!=null){statsWorker.shutdownNow();statsWorker=null;}
  stopRelay();stopCore();
  if(tun!=null){try{tun.close();}catch(Exception ignored){}tun=null;}
  if(callback!=null&&cm!=null){try{cm.unregisterNetworkCallback(callback);}catch(Exception ignored){}callback=null;}
  new File(getFilesDir(),"relay.sock").delete();
  if(!state.equals("error"))status("disconnected","轻触连接，开启专属通道");
  main.post(()->stopForeground(STOP_FOREGROUND_REMOVE));
 }
 @Override public void onRevoke(){cancelled=true;worker.execute(()->{cleanup();stopSelf();});}
 @Override public void onDestroy(){if(activeService==this){activeService=null;GuestClient.end(this);}cancelled=true;worker.execute(this::cleanup);worker.shutdown();super.onDestroy();}
}
