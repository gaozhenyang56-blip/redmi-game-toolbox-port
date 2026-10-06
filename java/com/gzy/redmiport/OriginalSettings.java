package com.gzy.redmiport;

import android.content.Context;
import com.gzy.redmidiag.CrashReporter;
import java.lang.reflect.*;

/** Keep the original preference tree; unsupported device capabilities stay visible and disabled. */
public final class OriginalSettings {
    private static String storageKey(String key){
        if("pref_game_shortcut".equals(key))return "pref_open_game_booster";
        if("pref_game_box".equals(key))return "pref_gamebox_turbo";
        if("pref_slip".equals(key))return "pref_gamebooster_slip_status";
        if("pref_content_setting".equals(key))return "gb_game_content";
        return key;
    }
    public static void apply(Object fragment){
        try{
            Object screen=fragment.getClass().getMethod("getPreferenceScreen").invoke(fragment);
            Context context=(Context)fragment.getClass().getMethod("getContext").invoke(fragment);
            if(screen==null||context==null)return;
            walk(screen,context);
            SidebarRuntime.start(context);
        }catch(Throwable failure){CrashReporter.record("Original settings compatibility",failure);}
    }
    private static void walk(Object preference,final Context context)throws Exception{
        Class<?> type=preference.getClass();
        type.getMethod("setVisible",boolean.class).invoke(preference,true);
        try {
            Method count=type.getMethod("getPreferenceCount");
            int size=(Integer)count.invoke(preference);
            type.getMethod("setEnabled",boolean.class).invoke(preference,true);
            for(int i=0;i<size;i++){
                Object child=type.getMethod("getPreference",int.class).invoke(preference,i);
                try{walk(child,context);}
                catch(Throwable failure){CrashReporter.record("Original settings item compatibility",failure);}
            }
            return;
        }catch(NoSuchMethodException leaf){}
        final String key=(String)type.getMethod("getKey").invoke(preference);
        boolean primary="pref_game_shortcut".equals(key)||"pref_game_box".equals(key)||"pref_slip".equals(key)
            ||"pref_content_setting".equals(key);
        boolean position=key!=null&&key.startsWith("port_sidebar_");
        final boolean shortcut="pref_shortcut".equals(key);
        boolean supported=primary||position||"pref_shizuku".equals(key)||(shortcut&&GameShortcut.supported(context));
        type.getMethod("setEnabled",boolean.class).invoke(preference,supported);
        if(!supported){
            CharSequence summary=(CharSequence)type.getMethod("getSummary").invoke(preference);
            String text=summary==null?"":summary.toString();
            if(!text.contains("当前设备暂不支持"))type.getMethod("setSummary",CharSequence.class).invoke(preference,text+(text.isEmpty()?"":"\n")+"当前设备暂不支持");
            return;
        }
        if(primary){
            type.getMethod("setPersistent",boolean.class).invoke(preference,false);
            type.getMethod("setChecked",boolean.class).invoke(preference,PortPreferences.bool(storageKey(key),true));
        }
        if(shortcut){
            type.getMethod("setPersistent",boolean.class).invoke(preference,false);
            type.getMethod("setChecked",boolean.class).invoke(preference,GameShortcut.pinned(context));
            type.getMethod("setSummary",CharSequence.class).invoke(preference,"开启时由桌面确认添加；关闭时停用，图标可手动移除");
        }
        if(position){
            int fallback="port_sidebar_side".equals(key)?0:"port_sidebar_inset".equals(key)?24:25;
            type.getMethod("w",String.class).invoke(preference,String.valueOf(PortPreferences.number(key,fallback)));
            // The bundled ListPreference formats literal summaries; use its entry provider
            // so height labels containing '%' render without String.format exceptions.
            Class<?> provider=Class.forName("androidx.preference.Preference$f");
            Object entries=Class.forName("androidx.preference.ListPreference$a").getMethod("b").invoke(null);
            type.getMethod("setSummaryProvider",provider).invoke(preference,entries);
        }
        if(primary||position||shortcut){
            Class<?> listener=Class.forName("androidx.preference.Preference$c");
            Object proxy=Proxy.newProxyInstance(listener.getClassLoader(),new Class<?>[]{listener},new InvocationHandler(){
                public Object invoke(Object proxy,Method method,Object[] args)throws Throwable{
                    if(method.getDeclaringClass()==Object.class){
                        if("hashCode".equals(method.getName()))return System.identityHashCode(proxy);
                        if("equals".equals(method.getName()))return proxy==args[0];
                        return "OriginalSettingsListener";
                    }
                    try{
                        if(shortcut)return GameShortcut.change(context,(Boolean)args[1]);
                        if(args[1] instanceof Boolean)PortPreferences.put(storageKey(key),(Boolean)args[1]);
                        else PortPreferences.put(key,Integer.parseInt(args[1].toString()));
                        if(key.startsWith("port_sidebar_")){
                            Object changed=args[0];
                            changed.getClass().getMethod("w",String.class).invoke(changed,args[1].toString());
                        }
                        SidebarRuntime.start(context);
                        return true;
                    }catch(Throwable failure){CrashReporter.record("Original settings save",failure);return false;}
                }
            });
            type.getMethod("setOnPreferenceChangeListener",listener).invoke(preference,proxy);
        }
    }
}
