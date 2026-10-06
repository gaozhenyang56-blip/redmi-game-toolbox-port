package com.gzy.redmiport;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ShortcutInfo;
import android.content.pm.ShortcutManager;
import android.graphics.drawable.Icon;
import android.widget.Toast;
import java.util.Collections;
import com.gzy.redmidiag.CrashReporter;

/** Launcher-owned pinning through Android public APIs, without Xiaomi launcher broadcasts. */
public final class GameShortcut {
    private static final String ID="redmi-game-space";
    public static boolean supported(Context context){
        try{return context.getSystemService(ShortcutManager.class).isRequestPinShortcutSupported();}
        catch(Exception failure){return false;}
    }
    public static boolean pinned(Context context){
        try{for(ShortcutInfo shortcut:context.getSystemService(ShortcutManager.class).getPinnedShortcuts())
            if(ID.equals(shortcut.getId())&&shortcut.isEnabled())return true;}
        catch(Exception failure){CrashReporter.record("Read game shortcut",failure);}
        return false;
    }
    public static boolean change(Context context,boolean enabled){
        try{
            ShortcutManager manager=context.getSystemService(ShortcutManager.class);
            if(!enabled){
                manager.disableShortcuts(Collections.singletonList(ID),"游戏空间快捷方式已关闭");
                Toast.makeText(context,"快捷方式已停用，桌面图标可手动移除",Toast.LENGTH_LONG).show();
                return true;
            }
            manager.enableShortcuts(Collections.singletonList(ID));
            Intent launch=new Intent(Intent.ACTION_VIEW).setClassName(context.getPackageName(),"com.miui.gamebooster.ui.GameBoosterRealMainActivity");
            int icon=context.getResources().getIdentifier("game_booster_icon","drawable",context.getPackageName());
            ShortcutInfo.Builder builder=new ShortcutInfo.Builder(context,ID).setShortLabel("游戏空间").setIntent(launch);
            if(icon!=0)builder.setIcon(Icon.createWithResource(context,icon));
            boolean requested=manager.requestPinShortcut(builder.build(),null);
            if(!requested)Toast.makeText(context,"当前桌面不支持添加快捷方式",Toast.LENGTH_LONG).show();
            // Request acceptance is not confirmation: re-read the launcher when settings resumes.
            return pinned(context);
        }catch(Exception failure){CrashReporter.record("Game shortcut",failure);return false;}
    }
}
