package com.gzy.qinglian;
import android.content.Context;
/** Device-local visual preferences; not executable panel configuration. */
final class GlassStyle {
 static int transparency(Context c){return Math.max(20,Math.min(100,c.getSharedPreferences("glass-style",0).getInt("transparency",88)));}
 static int radius(Context c){return Math.max(16,Math.min(48,c.getSharedPreferences("glass-style",0).getInt("radius",32)));}
 static boolean live(Context c){return c.getSharedPreferences("glass-style",0).getBoolean("live",true);}
 static boolean save(Context c,int transparency,int radius,boolean live){return c.getSharedPreferences("glass-style",0).edit().putInt("transparency",Math.max(20,Math.min(100,transparency))).putInt("radius",Math.max(16,Math.min(48,radius))).putBoolean("live",live).commit();}
}
