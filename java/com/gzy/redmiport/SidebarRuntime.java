package com.gzy.redmiport;

import android.app.*;
import android.content.*;
import android.graphics.Rect;
import android.os.*;
import android.provider.Settings;
import android.view.*;
import com.gzy.redmidiag.CrashReporter;
import java.lang.reflect.*;
import java.util.WeakHashMap;

/** Public service lifecycle and foreground backend for the unchanged original sidebar. */
public final class SidebarRuntime implements ForegroundMonitor.Listener {
    private static final String SERVICE="com.miui.gamebooster.service.DockWindowManagerService";
    private static final String STATUS="port_sidebar_status";
    private static SidebarRuntime active;
    private static final WeakHashMap<Object,HandleTap> taps=new WeakHashMap<Object,HandleTap>();
    private final Service service;
    private Object controller,mode;
    private String shown="",layout="",lastStatus="";
    private long lastGood;
    private boolean closed;
    private final Handler main=new Handler(Looper.getMainLooper());
    private final Runnable watchdog=new Runnable(){public void run(){
        if(closed)return;
        try { if(lastGood!=0&&SystemClock.elapsedRealtime()-lastGood>12000) hide("前台监测已过期，白条已隐藏");
            else if(!shown.isEmpty()){
                KeyguardManager keyguard=(KeyguardManager)service.getSystemService(Context.KEYGUARD_SERVICE);
                if(keyguard.isKeyguardLocked()||!enabled()||!Settings.canDrawOverlays(service))hide("锁屏或入口权限已关闭");
                else {keepVisible(get(controller,"d"));PortRuntime.sampleFps();}
            } }
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
            PortPreferences.put("port_active_game","");
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
            String nextLayout=PortPreferences.number("port_sidebar_side",0)+":"+PortPreferences.number("port_sidebar_inset",0)+":"+PortPreferences.number("port_sidebar_height",25);
            if(pkg.equals(shown)&&layout.equals(nextLayout)&&Boolean.TRUE.equals(get(controller,"o"))){
                keepVisible(get(controller,"d"));
                status("白条常驻："+pkg+"；轻点或向内滑动展开");return;
            }
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
            keepVisible(wrapper);
            shown=pkg;layout=nextLayout;
            PortPreferences.put("port_active_game",pkg);
            status("白条常驻："+pkg+"；轻点或向内滑动展开");
        }catch(Throwable failure){
            try{hide("");}catch(Throwable cleanup){CrashReporter.record("Sidebar partial-window cleanup",cleanup);}
            failure("Show original sidebar",failure);
        }
    }
    public void onUnavailable(String reason){
        if(closed)return;
        try {
            if(!shown.isEmpty()&&lastGood!=0&&SystemClock.elapsedRealtime()-lastGood<=12000
                &&!reason.contains("未连接")){status(reason+"；短暂失败，保留当前白条");return;}
            hide(reason);lastGood=0;
        }catch(Throwable failure){failure("Hide unavailable sidebar",failure);}
    }
    private void hide(String reason)throws Exception{
        if(controller!=null){
            cleanup(controller,"z");
            ((Handler)get(controller,"n")).removeCallbacksAndMessages(null);
            cleanup(controller,"O0");cleanup(controller,"M0");cleanup(controller,"I");
            Object popup=get(controller,"f");if(popup!=null)cleanup(popup,"dismiss");
            // Clean up partial additions too; original flag is set only after all four windows attach.
            WindowManager windows=(WindowManager)call(controller,"Z",new Class<?>[0]);
            for(String field:new String[]{"d","e"}){
                Object wrapper=get(controller,field);if(wrapper==null)continue;
                taps.remove(wrapper);
                cancelLineAnimation(wrapper);
                try {
                    call(wrapper,"S",new Class<?>[0]);
                    Object panel=call(wrapper,"A",new Class<?>[0]);
                    if(panel!=null){cancelViewAnimation((View)panel);call(panel,"o",new Class<?>[0]);}
                    call(wrapper,"T",new Class<?>[]{boolean.class},false);
                }catch(Exception cleanup){CrashReporter.record("Sidebar panel cleanup",cleanup);}
                for(String getter:new String[]{"q","u","z"}){
                    View view=(View)call(wrapper,getter,new Class<?>[0]);
                    remove(windows,view);
                }
            }
            for(String field:new String[]{"l","s"})remove(windows,(View)get(controller,field));
            set(controller,"o",false);set(controller,"d",null);set(controller,"e",null);
            set(controller,"k",null);set(controller,"l",null);set(controller,"m",false);
            set(controller,"f",null);set(controller,"s",null);
        }
        if(mode!=null)call(mode,"a",new Class<?>[]{int.class},0);
        set(service,"c",false);
        if(!shown.isEmpty()){PortPreferences.put("port_active_game","");PortRuntime.resetFps();}
        shown="";layout="";
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
    public static int anchorX(Context context,int animatedX){return SidebarGeometry.anchor(animatedX,inset(context));}
    public static void preserveHandle(View view,WindowManager.LayoutParams params){
        if(!"com.miui.dock.sidebar.b".equals(view.getClass().getName()))return;
        params.flags&=~WindowManager.LayoutParams.FLAG_NOT_TOUCHABLE;
        params.flags|=WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE|WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL;
        params.width=Math.max(params.width,Math.round(24*view.getResources().getDisplayMetrics().density));
        params.x=anchorX(view.getContext(),params.x);
    }
    private static void cleanup(Object object,String method){
        try{call(object,method,new Class<?>[0]);}catch(Exception failure){CrashReporter.record("Sidebar cleanup "+method,failure);}
    }
    private static void remove(WindowManager windows,View view){
        try{if(view!=null&&view.isAttachedToWindow())windows.removeViewImmediate(view);}
        catch(Exception failure){CrashReporter.record("Remove sidebar window",failure);}
    }
    private static void cancelLineAnimation(Object wrapper){
        try{Object style=get(wrapper,"o");Class.forName("miuix.animation.ICancelableStyle").getMethod("cancel").invoke(style);}
        catch(Exception failure){CrashReporter.record("Cancel sidebar animation",failure);}
    }
    private static void cancelViewAnimation(View view){
        try{
            view.animate().cancel();
            Object folme=Class.forName("miuix.animation.Folme").getMethod("useAt",View[].class).invoke(null,(Object)new View[]{view});
            Object style=Class.forName("miuix.animation.IFolme").getMethod("state").invoke(folme);
            Class.forName("miuix.animation.ICancelableStyle").getMethod("cancel").invoke(style);
        }catch(Exception failure){CrashReporter.record("Cancel game panel animation",failure);}
    }
    public static void closePanel(Object wrapper){
        try{
            Object controller=call(wrapper,"o",new Class<?>[0]);
            cleanup(controller,"z");cancelLineAnimation(wrapper);
            cleanup(wrapper,"S");cleanup(wrapper,"Q");
            ViewGroup panel=(ViewGroup)call(wrapper,"A",new Class<?>[0]);
            cancelViewAnimation(panel);
            panel.setAlpha(0);cleanup(panel,"o");panel.removeAllViews();
            call(wrapper,"T",new Class<?>[]{boolean.class},false);
            View frame=(View)call(wrapper,"z",new Class<?>[0]);
            WindowManager.LayoutParams params=(WindowManager.LayoutParams)frame.getLayoutParams();
            params.width=WindowManager.LayoutParams.WRAP_CONTENT;params.height=WindowManager.LayoutParams.WRAP_CONTENT;
            params.flags|=WindowManager.LayoutParams.FLAG_NOT_TOUCHABLE;
            panelLayout(frame.getContext(),params);
            if(frame.isAttachedToWindow())((WindowManager)call(controller,"Z",new Class<?>[0])).updateViewLayout(frame,params);
            WindowManager windows=(WindowManager)call(controller,"Z",new Class<?>[0]);
            remove(windows,(View)call(wrapper,"q",new Class<?>[0]));set(wrapper,"d",null);
            remove(windows,(View)get(controller,"l"));set(controller,"l",null);
            set(controller,"k",null);set(controller,"m",false);
            call(controller,"U0",new Class<?>[]{int.class},0);
            cleanup(controller,"O0");cleanup(controller,"M0");cleanup(controller,"I");
            Object popup=get(controller,"f");if(popup!=null)cleanup(popup,"dismiss");
            View white=(View)call(wrapper,"w",new Class<?>[0]);white.setVisibility(View.VISIBLE);
            cleanup(wrapper,"O");cleanup(wrapper,"C");keepVisible(wrapper);
        }catch(Exception failure){CrashReporter.record("Close original game panel",failure);}
    }
    public static boolean handleTouch(Object wrapper,MotionEvent event){
        try{
            View white=(View)call(wrapper,"w",new Class<?>[0]);
            HandleTap tap=taps.get(wrapper);
            if(tap==null){tap=new HandleTap();taps.put(wrapper,tap);}
            boolean clicked=tap.update(event.getActionMasked(),event.getEventTime(),event.getRawX(),event.getRawY(),
                ViewConfiguration.get(white.getContext()).getScaledTouchSlop(),event.getPointerCount());
            if(event.getActionMasked()==MotionEvent.ACTION_DOWN){
                white.setVisibility(View.VISIBLE);
                call(wrapper,"C",new Class<?>[0]);
            }
            // The transparent cover owns the hit region even when the visible line is hidden.
            boolean handled=((View.OnTouchListener)get(wrapper,"s")).onTouch(white,event);
            if(clicked){
                Object controller=call(wrapper,"o",new Class<?>[0]);
                cleanup(wrapper,"Q");cancelLineAnimation(wrapper);
                call(controller,"U0",new Class<?>[]{int.class},1);
                call(wrapper,"P",new Class<?>[0]);
                call(controller,"Y0",new Class<?>[]{wrapper.getClass(),Runnable.class},wrapper,null);
                cleanup(wrapper,"S");
                return true;
            }
            return handled;
        }catch(Exception failure){CrashReporter.record("Original sidebar touch rearm",failure);return false;}
    }
    private static void keepVisible(Object wrapper)throws Exception{
        if(wrapper==null||Boolean.TRUE.equals(call(wrapper,"F",new Class<?>[0])))return;
        cleanup(wrapper,"S");
        View white=(View)call(wrapper,"w",new Class<?>[0]);
        View cover=(View)call(wrapper,"u",new Class<?>[0]);
        View frame=(View)call(wrapper,"z",new Class<?>[0]);
        // Original d0(false) hides/disables the cover too. Restoring only the ImageView is insufficient.
        restoreView(white);restoreView(cover);restoreView(frame);
        WindowManager windows=(WindowManager)call(call(wrapper,"o",new Class<?>[0]),"Z",new Class<?>[0]);
        if(cover.isAttachedToWindow()){
            WindowManager.LayoutParams params=(WindowManager.LayoutParams)cover.getLayoutParams();
            handleLayout(cover.getContext(),params);params.windowAnimations=0;
            windows.updateViewLayout(cover,params);
        }
        if(frame.isAttachedToWindow()){
            WindowManager.LayoutParams params=(WindowManager.LayoutParams)frame.getLayoutParams();
            params.width=WindowManager.LayoutParams.WRAP_CONTENT;params.height=WindowManager.LayoutParams.WRAP_CONTENT;
            params.flags|=WindowManager.LayoutParams.FLAG_NOT_TOUCHABLE|WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE;
            panelLayout(frame.getContext(),params);params.windowAnimations=0;
            windows.updateViewLayout(frame,params);
        }
    }
    private static void restoreView(View view){
        if(view.getAlpha()!=1f||view.getTranslationX()!=0||view.getTranslationY()!=0)cancelViewAnimation(view);
        view.setVisibility(View.VISIBLE);view.setEnabled(true);view.setAlpha(1f);
        view.setTranslationX(0);view.setTranslationY(0);
    }

    private static int inset(Context context){return SidebarGeometry.inset(PortPreferences.number("port_sidebar_inset",0),context.getResources().getDisplayMetrics().density);}
    private static Object get(Object object,String name)throws Exception{Field f=object.getClass().getDeclaredField(name);f.setAccessible(true);return f.get(object);}
    private static void set(Object object,String name,Object value)throws Exception{Field f=object.getClass().getDeclaredField(name);f.setAccessible(true);f.set(object,value);}
    private static Object call(Object object,String name,Class<?>[] types,Object... args)throws Exception{return object.getClass().getMethod(name,types).invoke(object,args);}
}
