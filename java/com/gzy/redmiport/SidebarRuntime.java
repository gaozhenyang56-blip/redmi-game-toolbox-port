package com.gzy.redmiport;

import android.app.*;
import android.content.*;
import android.graphics.Rect;
import android.os.*;
import android.provider.Settings;
import android.view.*;
import com.gzy.redmidiag.CrashReporter;
import java.lang.reflect.*;

/** Public service lifecycle and foreground backend for the unchanged original sidebar. */
public final class SidebarRuntime implements ForegroundMonitor.Listener {
    private static final String SERVICE="com.miui.gamebooster.service.DockWindowManagerService";
    private static final String STATUS="port_sidebar_status";
    private static SidebarRuntime active;
    private final Service service;
    private Object controller,mode;
    private String shown="",layout="",lastStatus="";
    private long lastGood;
    private boolean closed;
    private final Handler main=new Handler(Looper.getMainLooper());
    private final Runnable watchdog=new Runnable(){public void run(){
        if(closed)return;
        try { if(lastGood!=0&&SystemClock.elapsedRealtime()-lastGood>5000) hide("前台监测已过期，白条已隐藏"); }
        catch(Throwable failure){failure("Sidebar watchdog",failure);}
        main.postDelayed(this,1000);
    }};

    private SidebarRuntime(Service service){this.service=service;}
    public static boolean enabled(){return PortPreferences.bool("pref_open_game_booster",true)
        &&PortPreferences.bool("pref_gamebox_turbo",true)&&PortPreferences.bool("pref_gamebooster_slip_status",true);}
    public static void start(Context context){
        try {
            if(!enabled()||!GameStore.hasGames(context))return;
            if(!Settings.canDrawOverlays(context)){PortPreferences.put(STATUS,"请允许悬浮窗权限");return;}
            Intent intent=new Intent().setClassName(context.getPackageName(),SERVICE).setAction("com.gzy.redmiport.START_SIDEBAR");
            context.startForegroundService(intent);
        }catch(Throwable failure){CrashReporter.record("Start original sidebar service",failure);
            try{PortPreferences.put(STATUS,"侧栏服务启动失败："+failure.getClass().getSimpleName());}catch(Exception ignored){}
        }
    }
    public static void create(Service service){
        SidebarRuntime runtime=new SidebarRuntime(service);active=runtime;
        try {
            NotificationManager notifications=(NotificationManager)service.getSystemService(Context.NOTIFICATION_SERVICE);
            notifications.createNotificationChannel(new NotificationChannel("redmi-sidebar","游戏工具箱",NotificationManager.IMPORTANCE_LOW));
            Intent settings=new Intent(service,ShizukuSettingsActivity.class);
            PendingIntent pending=PendingIntent.getActivity(service,0,settings,PendingIntent.FLAG_UPDATE_CURRENT|PendingIntent.FLAG_IMMUTABLE);
            service.startForeground(1501,new Notification.Builder(service,"redmi-sidebar")
                .setSmallIcon(android.R.drawable.ic_menu_manage).setContentTitle("游戏工具箱")
                .setContentText("监测已添加的游戏，点击查看侧栏状态").setContentIntent(pending).setOngoing(true).build());
            runtime.mode=Class.forName("o7.a").newInstance();
            set(service,"f",runtime.mode);
            set(service,"e",runtime.main);
            Class<?> binder=Class.forName(SERVICE+"$GameBoosterWindowBinder");
            set(service,"a",binder.getConstructor(service.getClass()).newInstance(service));
            set(service,"m",service.getResources().getDisplayMetrics().densityDpi);
            runtime.controller=Class.forName("s8.h").getConstructor(service.getClass(),Handler.class).newInstance(service,new Handler(Looper.getMainLooper()));
            set(service,"b",runtime.controller);
            runtime.status("侧栏服务运行中，等待前台游戏");
            ForegroundMonitor.start(runtime);
            runtime.main.postDelayed(runtime.watchdog,1000);
        }catch(Throwable failure){runtime.failure("Initialize original sidebar",failure);service.stopSelf();}
    }
    public static void destroy(Service service){
        SidebarRuntime runtime=active;
        if(runtime==null||runtime.service!=service)return;
        runtime.closed=true;ForegroundMonitor.stop(runtime);runtime.main.removeCallbacks(runtime.watchdog);
        try{runtime.hide("侧栏服务已停止");}catch(Throwable failure){runtime.failure("Stop original sidebar",failure);}
        service.stopForeground(true);active=null;
    }
    public static void enter(Service service,String pkg,int uid){
        if(active!=null&&active.service==service)active.onForegroundPackage(pkg,uid);
    }
    public static void configurationChanged(Service service){
        if(active==null||active.service!=service)return;
        try{active.hide("屏幕配置变化，等待重新创建白条");}
        catch(Throwable failure){active.failure("Sidebar configuration",failure);}
    }
    public void onForegroundPackage(String pkg,int uid){
        if(closed)return;
        lastGood=SystemClock.elapsedRealtime();
        try {
            boolean selected=GameStore.selected(service,pkg,uid);
            KeyguardManager keyguard=(KeyguardManager)service.getSystemService(Context.KEYGUARD_SERVICE);
            if(!enabled()||!Settings.canDrawOverlays(service)||keyguard.isKeyguardLocked()||!selected){
                hide(!enabled()?"原设置已关闭游戏工具箱或滑动入口":!Settings.canDrawOverlays(service)?"悬浮窗权限未允许":keyguard.isKeyguardLocked()?"锁屏时隐藏白条":"前台应用未添加到游戏空间："+pkg);
                return;
            }
            String nextLayout=PortPreferences.number("port_sidebar_side",0)+":"+PortPreferences.number("port_sidebar_inset",24)+":"+PortPreferences.number("port_sidebar_height",25);
            if(pkg.equals(shown)&&layout.equals(nextLayout)&&Boolean.TRUE.equals(get(controller,"o"))){status("白条已创建："+pkg+"；可从白条向屏幕内滑动");return;}
            hide("");
            set(service,"h",pkg);set(service,"i",uid);set(service,"c",true);set(service,"d",true);
            call(mode,"a",new Class<?>[]{int.class},1);
            call(controller,"x1",new Class<?>[0]);
            // Initialize the original game-panel model without Xiaomi game services.
            Object panel=Class.forName("s8.x").getMethod("h",Context.class).invoke(null,service.getApplicationContext());
            call(panel,"i",new Class<?>[]{int.class},0x7f0e020d);
            PortRuntime.resetFps();
            call(controller,"i1",new Class<?>[0]);
            if(!Boolean.TRUE.equals(get(controller,"o")))throw new IllegalStateException("Original sidebar declined window creation");
            Object wrapper=get(controller,"d");
            View white=(View)call(wrapper,"w",new Class<?>[0]);
            white.setVisibility(View.VISIBLE);white.setAlpha(1f);
            shown=pkg;layout=nextLayout;
            status("白条已创建："+pkg+"；可从白条向屏幕内滑动");
        }catch(Throwable failure){
            try{hide("");}catch(Throwable cleanup){CrashReporter.record("Sidebar partial-window cleanup",cleanup);}
            failure("Show original sidebar",failure);
        }
    }
    public void onUnavailable(String reason){
        if(closed)return;
        try { hide(reason);lastGood=0; }catch(Throwable failure){failure("Hide unavailable sidebar",failure);}
    }
    private void hide(String reason)throws Exception{
        if(controller!=null){
            call(controller,"z",new Class<?>[0]);
            ((Handler)get(controller,"n")).removeCallbacksAndMessages(null);
            call(controller,"O0",new Class<?>[0]);call(controller,"M0",new Class<?>[0]);
            // Clean up partial additions too; original flag is set only after all four windows attach.
            WindowManager windows=(WindowManager)call(controller,"Z",new Class<?>[0]);
            for(String field:new String[]{"d","e"}){
                Object wrapper=get(controller,field);if(wrapper==null)continue;
                try {
                    call(wrapper,"S",new Class<?>[0]);
                    Object panel=call(wrapper,"A",new Class<?>[0]);
                    if(panel!=null)call(panel,"o",new Class<?>[0]);
                    call(wrapper,"T",new Class<?>[]{boolean.class},false);
                }catch(Exception cleanup){CrashReporter.record("Sidebar panel cleanup",cleanup);}
                for(String getter:new String[]{"u","z"}){
                    View view=(View)call(wrapper,getter,new Class<?>[0]);
                    if(view!=null&&view.isAttachedToWindow())windows.removeViewImmediate(view);
                }
            }
            set(controller,"o",false);set(controller,"d",null);set(controller,"e",null);
            set(controller,"k",null);set(controller,"l",null);set(controller,"m",false);
        }
        if(mode!=null)call(mode,"a",new Class<?>[]{int.class},0);
        set(service,"c",false);shown="";layout="";
        if(!reason.isEmpty())status(reason);
    }
    private void failure(String where,Throwable failure){
        while(failure instanceof InvocationTargetException&&failure.getCause()!=null)failure=failure.getCause();
        CrashReporter.record(where,failure);
        status("侧栏失败："+failure.getClass().getSimpleName()+"；请查看崩溃日志");
    }
    private void status(String text){
        if(text.equals(lastStatus))return;
        try{PortPreferences.put(STATUS,text);lastStatus=text;}
        catch(Exception failure){CrashReporter.record("Save sidebar status",failure);}
    }
    public static String status(){
        try{return PortPreferences.text(STATUS,"侧栏服务尚未启动；从游戏空间启动已添加游戏");}
        catch(Exception failure){return "侧栏状态暂不可读取";}
    }
    public static boolean isLeft(Context context,boolean main){
        boolean left=PortPreferences.number("port_sidebar_side",0)==0;return main?left:!left;
    }
    public static int y(Context context){
        WindowManager windows=(WindowManager)context.getSystemService(Context.WINDOW_SERVICE);
        Rect bounds=windows.getCurrentWindowMetrics().getBounds();
        int height=context.getResources().getDimensionPixelOffset(0x7f071a83);
        return SidebarGeometry.y(bounds.height(),height,PortPreferences.number("port_sidebar_height",25));
    }
    public static void handleLayout(Context context,WindowManager.LayoutParams params){
        params.type=WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY;
        params.flags&=~WindowManager.LayoutParams.FLAG_NOT_TOUCHABLE;
        params.flags|=WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE|WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL;
        params.x=inset(context);params.y=y(context);
        params.width=Math.max(params.width,Math.round(24*context.getResources().getDisplayMetrics().density));
    }
    public static void panelLayout(Context context,WindowManager.LayoutParams params){params.x=inset(context);params.y=y(context);}
    private static int inset(Context context){return SidebarGeometry.inset(PortPreferences.number("port_sidebar_inset",24),context.getResources().getDisplayMetrics().density);}
    private static Object get(Object object,String name)throws Exception{Field f=object.getClass().getDeclaredField(name);f.setAccessible(true);return f.get(object);}
    private static void set(Object object,String name,Object value)throws Exception{Field f=object.getClass().getDeclaredField(name);f.setAccessible(true);f.set(object,value);}
    private static Object call(Object object,String name,Class<?>[] types,Object... args)throws Exception{return object.getClass().getMethod(name,types).invoke(object,args);}
}
