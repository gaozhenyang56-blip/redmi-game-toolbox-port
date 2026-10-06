package com.gzy.redmiport;
import android.content.*;
import android.content.pm.ApplicationInfo;
import android.database.Cursor;
import android.net.Uri;
import android.widget.Toast;
import com.gzy.redmidiag.CrashReporter;

public final class GameStore {
    private static final Uri TABLE=Uri.parse("content://com.miui.securitycenter.gamebooster/gamebooster");
    private static final String SELECTION="package_name=? AND package_uid=? AND flag_white=? AND pop_game IS NULL";
    private static boolean contains(ContentResolver resolver, String[] args) {
        try (Cursor cursor=resolver.query(TABLE,new String[]{"_id"},SELECTION,args,null)) {
            if (cursor==null) throw new IllegalStateException("Game provider returned no cursor");
            return cursor.moveToFirst();
        }
    }
    public static synchronized boolean save(Context context, ApplicationInfo info, boolean selected) {
        try {
            if (info==null || info.packageName==null) throw new IllegalArgumentException("Missing game package");
            ContentResolver resolver=context.getContentResolver();
            String[] args={info.packageName,String.valueOf(info.uid/100000),"0"};
            if (selected) {
                if (!contains(resolver,args)) {
                    CharSequence label=info.loadLabel(context.getPackageManager());
                    ContentValues values=new ContentValues();
                    values.put("package_name",info.packageName);
                    values.put("app_name",label==null?info.packageName:label.toString());
                    values.put("package_uid",info.uid/100000);
                    values.put("flag_white",0);
                    values.put("is_del",0);
                    values.putNull("pop_game");
                    String[] settings={"settings_gs","settings_ts","settings_edge","settings_hdr","settings_follow",
                        "settings_hot_area","settings_finger","settings_shake","settings_sensitivity","settings_op_stability","settings_touch_mode"};
                    for (String key:settings) values.put(key,-1);
                    values.put("settings_4d",0);
                    if (resolver.insert(TABLE,values)==null) throw new IllegalStateException("Game insert returned null");
                }
            } else resolver.delete(TABLE,SELECTION,args);
            if (contains(resolver,args)!=selected) throw new IllegalStateException("Game write/readback mismatch");
            context.getSharedPreferences("redmi-port-status",0).edit()
                .putString("last_save",info.packageName+(selected?"：已添加":"：已移除")).commit();
            return true;
        } catch (Throwable failure) {
            CrashReporter.record("Game selection write/readback",failure);
            Toast.makeText(context,"游戏列表保存失败，请查看崩溃日志",Toast.LENGTH_LONG).show();
            return false;
        }
    }
    public static String status(Context context) {
        try (Cursor c=context.getContentResolver().query(TABLE,new String[]{"_id"},"flag_white=0 AND pop_game IS NULL",null,null)) {
            if (c==null) return "游戏数据库暂不可读取";
            return "已保存游戏："+c.getCount()+"\n"+context.getSharedPreferences("redmi-port-status",0).getString("last_save","");
        } catch (Throwable failure) { return "游戏数据库读取失败："+failure.getClass().getSimpleName(); }
    }
}
