package com.gzy.qinglian;
import android.content.Context;
import androidx.appcompat.app.AppCompatDelegate;

final class AppAppearance {
 static int mode(Context context){
  int value=context.getSharedPreferences("appearance",Context.MODE_PRIVATE).getInt("nightMode",AppCompatDelegate.MODE_NIGHT_NO);
  return value==AppCompatDelegate.MODE_NIGHT_YES||value==AppCompatDelegate.MODE_NIGHT_FOLLOW_SYSTEM?value:AppCompatDelegate.MODE_NIGHT_NO;
 }
 static void apply(Context context){AppCompatDelegate.setDefaultNightMode(mode(context));}
 static boolean select(Context context,int mode){
  if(!context.getSharedPreferences("appearance",Context.MODE_PRIVATE).edit().putInt("nightMode",mode).commit())return false;
  AppCompatDelegate.setDefaultNightMode(mode);return true;
 }
}
