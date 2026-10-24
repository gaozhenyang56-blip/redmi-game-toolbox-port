package com.gzy.qinglian.remote;

import android.app.*;
import android.content.*;
import android.os.*;
import org.json.JSONObject;
import java.io.*;
import java.net.*;
import java.security.KeyStore;
import java.security.cert.CertificateFactory;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.net.ssl.*;
import rikka.shizuku.Shizuku;

public final class AgentService extends Service {
    private volatile IShell shell;
    private volatile boolean running;
    private volatile HttpsURLConnection active;
    private String endpoint, token;
    private Thread worker;
    private PowerManager.WakeLock wake;
    private SSLSocketFactory tls;
    private final AtomicBoolean started=new AtomicBoolean();
    private Shizuku.UserServiceArgs shellArgs;
    private final ServiceConnection connection = new ServiceConnection() {
        public void onServiceConnected(ComponentName name, IBinder binder) {shell=IShell.Stub.asInterface(binder);}
        public void onServiceDisconnected(ComponentName name) {shell=null;}
    };
    private void notice(String text) {
        Notification.Builder builder=new Notification.Builder(this,"remote")
            .setContentTitle("轻连手机远控").setContentText(text).setSmallIcon(android.R.drawable.ic_menu_view).setOngoing(true)
            .setContentIntent(PendingIntent.getActivity(this,0,new Intent(this,MainActivity.class),PendingIntent.FLAG_IMMUTABLE))
            .addAction(new Notification.Action.Builder(null,"停止控制",PendingIntent.getService(this,1,new Intent(this,AgentService.class).setAction("stop"),PendingIntent.FLAG_IMMUTABLE)).build());
        startForeground(1,builder.build());
    }
    @Override public int onStartCommand(Intent intent,int flags,int id) {
        if(intent==null || "stop".equals(intent.getAction())) {stopSelf(); return START_NOT_STICKY;}
        if(!started.compareAndSet(false,true)) return START_NOT_STICKY;
        getSystemService(NotificationManager.class).createNotificationChannel(new NotificationChannel("remote","远程控制状态",NotificationManager.IMPORTANCE_LOW));
        notice("正在连接；可随时停止远程控制");
        endpoint=intent.getStringExtra("endpoint"); token=intent.getStringExtra("token");
        try {
            URI uri=new URI(endpoint);
            if(!"https".equals(uri.getScheme()) || uri.getHost()==null || uri.getUserInfo()!=null || uri.getQuery()!=null || uri.getFragment()!=null) throw new IOException();
            endpoint=endpoint.replaceAll("/+$","");
            if(token==null || token.length()<32) throw new IOException();
            File certificate=new File(getFilesDir(),"server-ca.pem");
            {
                KeyStore store=KeyStore.getInstance(KeyStore.getDefaultType()); store.load(null);
                try(InputStream in=certificate.exists() ? new FileInputStream(certificate) : getAssets().open("server-ca.pem")) {store.setCertificateEntry("remote",CertificateFactory.getInstance("X.509").generateCertificate(in));}
                TrustManagerFactory trust=TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm()); trust.init(store);
                SSLContext context=SSLContext.getInstance("TLS"); context.init(null,trust.getTrustManagers(),null); tls=context.getSocketFactory();
            }
            shellArgs=new Shizuku.UserServiceArgs(new ComponentName(this,ShellService.class)).daemon(false).processNameSuffix("remote_shell").debuggable(false).version(1);
            if(AdbReceiver.shell!=null) shell=AdbReceiver.shell;
            else Shizuku.bindUserService(shellArgs,connection);
            wake=((PowerManager)getSystemService(POWER_SERVICE)).newWakeLock(PowerManager.PARTIAL_WAKE_LOCK,"qinglian:remote-agent");
            running=true;
            worker=new Thread(this::loop,"phone-relay"); worker.start();
        } catch(Exception e) {notice("无法启动，请检查地址、证书与 Shizuku 授权"); stopSelf();}
        return START_NOT_STICKY;
    }
    private JSONObject post(String path,JSONObject body) throws Exception {
        HttpsURLConnection conn=(HttpsURLConnection)new URL(endpoint+path).openConnection(); active=conn;
        conn.setConnectTimeout(15000); conn.setReadTimeout(20000); conn.setInstanceFollowRedirects(false);
        if(tls!=null) conn.setSSLSocketFactory(tls);
        conn.setRequestMethod("POST"); conn.setDoOutput(true);
        conn.setRequestProperty("Authorization","Bearer "+token); conn.setRequestProperty("Content-Type","application/json");
        byte[] data=body.toString().getBytes(java.nio.charset.StandardCharsets.UTF_8); conn.setFixedLengthStreamingMode(data.length);
        try {
            try(OutputStream output=conn.getOutputStream()) {output.write(data);}
            int code=conn.getResponseCode();
            if(code==401) throw new SecurityException("Device token rejected");
            if(code!=200) throw new IOException("Server refused request");
            try(InputStream input=conn.getInputStream()) {return new JSONObject(read(input,65536));}
        } finally {conn.disconnect(); active=null;}
    }
    private String read(InputStream input,int limit) throws Exception {
        ByteArrayOutputStream output=new ByteArrayOutputStream(); byte[] buffer=new byte[32768]; int n;
        while((n=input.read(buffer))!=-1) {if(output.size()+n>limit) throw new IOException("Result too large"); output.write(buffer,0,n);}
        return output.toString("UTF-8");
    }
    private JSONObject execute(String action,JSONObject data) throws Exception {
        IShell current=shell; if(current==null) throw new IOException("Shizuku unavailable");
        try(ParcelFileDescriptor descriptor=current.execute(action,data.toString()); InputStream input=new ParcelFileDescriptor.AutoCloseInputStream(descriptor)) {
            return new JSONObject(read(input,23*1024*1024));
        }
    }
    private JSONObject offline() throws Exception {return new JSONObject().put("connected",false).put("screen","unknown").put("locked",JSONObject.NULL).put("width",JSONObject.NULL).put("height",JSONObject.NULL);}
    private void loop() {
        int delay=1;
        try {
            while(running) {
                try {
                    if(!wake.isHeld()) wake.acquire(60000);
                    JSONObject state;
                    try {state=execute("state",new JSONObject()).getJSONObject("state");} catch(Exception e) {state=offline();}
                    JSONObject envelope=post("/agent/poll",new JSONObject().put("state",state));
                    notice(state.optBoolean("connected") ? "已连接服务器，允许远程控制":"已连接服务器，但 Shizuku / ADB 控制权限不可用");
                    delay=1;
                    if(!envelope.isNull("command")) {
                        JSONObject command=envelope.getJSONObject("command"), result;
                        // Expired operations are never automatically replayed on reconnect.
                        if(command.getDouble("expiresAt")*1000<System.currentTimeMillis()) result=new JSONObject().put("error","Operation expired");
                        else {
                            try {result=execute(command.getString("action"),command.getJSONObject("data"));}
                            catch(Exception e) {result=new JSONObject().put("error","手机执行失败");}
                        }
                        result.put("id",command.getString("id"));
                        post("/agent/result",result);
                    }
                } catch(SecurityException e) {notice("设备密钥无效，请停止后重新连接"); break;}
                catch(Exception e) {
                    if(!running) break;
                    notice("连接中断，自动重试；检查网络、证书及服务器");
                    try {Thread.sleep(delay*1000L);} catch(InterruptedException interrupted) {break;}
                    delay=Math.min(30,delay*2);
                }
            }
        } finally {if(wake!=null && wake.isHeld()) wake.release(); stopSelf();}
    }
    @Override public void onDestroy() {
        running=false; token=null;
        if(active!=null) active.disconnect(); if(worker!=null) worker.interrupt();
        if(shellArgs!=null) try {Shizuku.unbindUserService(shellArgs,connection,true);} catch(Exception ignored) {}
        if(wake!=null && wake.isHeld()) wake.release();
        stopForeground(STOP_FOREGROUND_REMOVE); super.onDestroy();
    }
    @Override public IBinder onBind(Intent intent) {return null;}
}
