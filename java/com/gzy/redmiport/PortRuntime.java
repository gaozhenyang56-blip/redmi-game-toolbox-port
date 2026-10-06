package com.gzy.redmiport;

import android.app.Activity;
import android.app.Application;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.SystemClock;
import android.widget.Toast;
import com.gzy.redmidiag.CrashReporter;
import rikka.shizuku.Shizuku;
import rikka.shizuku.ShizukuProvider;
import java.io.*;
import java.lang.reflect.Method;
import java.util.concurrent.*;
import java.util.concurrent.atomic.AtomicBoolean;

public final class PortRuntime {
    public static Throwable bootstrapFailure;
    private static Activity foreground;
    private static boolean initialized, permissionRequested;
    private static final ExecutorService worker = Executors.newFixedThreadPool(2);
    private static final ExecutorService errors = Executors.newCachedThreadPool();
    private static final ScheduledExecutorService timer = Executors.newSingleThreadScheduledExecutor();
    private static final AtomicBoolean sampling = new AtomicBoolean();
    private static volatile long fps = -1, sampledAt, attemptedAt;
    private static volatile int epoch;
    private static volatile String fpsState = "等待游戏帧数据";
    private static String previousLayer;
    private static volatile long previousTimestamp;
    private static String samplingGame="";
    private static int scanOffset;

    public static void init(Application app) {
        if (CrashReporter.diagnosticProcess() || initialized) return;
        initialized = true;
        try {
            ShizukuProvider.enableMultiProcessSupport(app.getPackageName().equals(Application.getProcessName()));
            Shizuku.addBinderReceivedListenerSticky(new Shizuku.OnBinderReceivedListener() {
                public void onBinderReceived() { requestPermission(); }
            });
            Shizuku.addBinderDeadListener(new Shizuku.OnBinderDeadListener() {
                public void onBinderDead() { fps = -1; sampledAt = 0; epoch++; state("Shizuku 连接已断开"); permissionRequested = false; }
            });
            Shizuku.addRequestPermissionResultListener(new Shizuku.OnRequestPermissionResultListener() {
                public void onRequestPermissionResult(int code, int result) {
                    if (code != 1201) return;
                    Activity activity = foreground;
                    if (activity != null) Toast.makeText(activity,
                        result == PackageManager.PERMISSION_GRANTED ? "Shizuku 已授权" : "未授权 Shizuku，FPS 暂不可用",
                        Toast.LENGTH_SHORT).show();
                }
            });
            app.registerActivityLifecycleCallbacks(new Application.ActivityLifecycleCallbacks() {
                public void onActivityResumed(Activity activity) {
                    foreground = activity;
                    requestPermission();
                    if (activity.getClass().getName().startsWith("com.miui.gamebooster.")) SidebarRuntime.start(activity);
                }
                public void onActivityPaused(Activity activity) { if (foreground == activity) foreground = null; }
                public void onActivityCreated(Activity a, Bundle b) {}
                public void onActivityStarted(Activity a) {}
                public void onActivityStopped(Activity a) {}
                public void onActivitySaveInstanceState(Activity a, Bundle b) {}
                public void onActivityDestroyed(Activity a) { if (foreground == a) foreground = null; }
            });
        } catch (Throwable failure) { CrashReporter.record("Shizuku initialization", failure); }
    }
    private static void requestPermission() {
        if (foreground == null || permissionRequested) return;
        try {
            if (!Shizuku.pingBinder() || Shizuku.isPreV11()) return;
            if (Shizuku.checkSelfPermission() == PackageManager.PERMISSION_GRANTED) return;
            if (Shizuku.shouldShowRequestPermissionRationale()) return;
            permissionRequested = true;
            Shizuku.requestPermission(1201);
        } catch (Throwable failure) { CrashReporter.record("Shizuku authorization", failure); }
    }
    public static void connect(final Application app) {
        if (CrashReporter.diagnosticProcess() || app.getPackageName().equals(Application.getProcessName())) return;
        worker.execute(new Runnable() {
            public void run() {
                try { ShizukuProvider.requestBinderForNonProviderProcess(app); }
                catch (Throwable failure) { CrashReporter.record("Shizuku remote-process binder", failure); }
            }
        });
    }
    public static InputStream open(String command) {
        return open(command,3);
    }
    private static InputStream open(String command,int timeoutSeconds) {
        try {
            if (!Shizuku.pingBinder() || Shizuku.checkSelfPermission() != PackageManager.PERMISSION_GRANTED) return null;
            Method method = Shizuku.class.getDeclaredMethod("newProcess", String[].class, String[].class, String.class);
            method.setAccessible(true);
            final Process process = (Process) method.invoke(null, new String[]{"sh", "-c", command}, null, null);
            final ScheduledFuture<?> timeout = timer.schedule(new Runnable() {
                public void run() { try { process.destroy(); } catch (Throwable ignored) {} }
            }, timeoutSeconds, TimeUnit.SECONDS);
            // Drain stderr so a full error pipe cannot block the process.
            errors.execute(new Runnable() {
                public void run() {
                    try (InputStream errors = process.getErrorStream()) {
                        byte[] data = new byte[1024]; while (errors.read(data) != -1) {}
                    } catch (Exception ignored) {}
                }
            });
            return new FilterInputStream(process.getInputStream()) {
                public void close() throws IOException {
                    try { super.close(); } finally {
                        timeout.cancel(false);
                        try { process.destroy(); } catch (Throwable ignored) {}
                    }
                }
            };
        } catch (Throwable failure) { CrashReporter.record("Shizuku shell channel", failure); return null; }
    }
    public static void resetFps() { epoch++; fps=-1; sampledAt=0; attemptedAt=0; previousLayer=null; previousTimestamp=0; scanOffset=0; state("等待游戏帧数据"); }
    private static void state(String message){
        fpsState=message;
        try{PortPreferences.put("port_fps_status",message);}catch(Exception ignored){}
    }
    private static String activeGame(){try{return PortPreferences.text("port_active_game","");}catch(Exception ignored){return "";}}
    public static int fpsEpoch(){return epoch;}
    public static String fpsStatus() { return fpsState; }
    public static long sampleFps() {
        final String game=activeGame();
        if(!game.equals(samplingGame)){samplingGame=game;resetFps();}
        if(game.isEmpty()){state("等待已添加的前台游戏");return -1;}
        long now = SystemClock.elapsedRealtime();
        if (now - attemptedAt >= 800 && sampling.compareAndSet(false, true)) {
            attemptedAt = now;
            final int session = epoch;
            final String candidate=previousLayer;
            final int offset=scanOffset;
            worker.execute(new Runnable() {
                public void run() {
                    try {
                        InputStream stream = open(FpsShellCommand.forGame(game,candidate,offset),6);
                        if (stream == null) {
                            if (session == epoch) { fps=-1;sampledAt=0;state("请启动 Shizuku 并授权"); }
                            return;
                        }
                        StringBuilder raw = new StringBuilder();
                        try (BufferedReader input = new BufferedReader(new InputStreamReader(stream,"UTF-8"))) {
                            String line;while((line=input.readLine())!=null) { raw.append(line).append('\n');if(raw.length()>512000)break; }
                        }
                        FrameSampleParser.Result result=FrameSampleParser.parse(raw.toString(),System.nanoTime());
                        if (session!=epoch||!game.equals(activeGame())) return;
                        if (!result.available()) {
                            previousLayer=null;previousTimestamp=0;
                            int count=FpsShellCommand.layerCount(raw.toString());
                            scanOffset=candidate==null&&offset+2<count?offset+2:0;
                            fps=-1;sampledAt=0;state(result.reason+"；扫描图层 "+(offset+1)+"–"+(offset+2)+" / "+count+"；正在重新查找");return;
                        }
                        fps=result.fps;
                        previousLayer=result.layer;previousTimestamp=result.last;
                        sampledAt=SystemClock.elapsedRealtime();
                        state("FPS："+fps+"；有效帧："+result.count+"；最近帧："+Math.max(0,(System.nanoTime()-result.last)/1000000L)+"ms\n图层："+result.layer);
                    } catch (Throwable failure) {
                        if(session==epoch){fps=-1;sampledAt=0;state("帧率读取失败");}
                        CrashReporter.record("SurfaceFlinger FPS sample",failure);
                    } finally { sampling.set(false); }
                }
            });
        }
        return FpsFreshness.value(fps,previousTimestamp,System.nanoTime());
    }
}
