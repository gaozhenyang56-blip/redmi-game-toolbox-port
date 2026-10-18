package com.gzy.qinglian;
import android.content.Context;
import org.json.*;
import java.util.*;

/** Strict data-only hotfix schema. Never accepts code, endpoints, permissions or routing. */
final class UiTuning {
 static final String PREFS="ui_updates";
 final long revision;final int navHeight,navIcon,navText,navGap,glassMargin;final boolean glassEnabled;
 UiTuning(long revision,int height,int icon,int text,int gap,int margin,boolean glass){this.revision=revision;navHeight=height;navIcon=icon;navText=text;navGap=gap;glassMargin=margin;glassEnabled=glass;}
 static UiTuning defaults(){return new UiTuning(0,80,24,12,2,12,true);}
 static int integer(JSONObject json,String key,int min,int max)throws Exception{long n=ApiEndpoint.nonnegativeLong(json,key);if(n<min||n>max)throw new JSONException("界面配置范围无效");return (int)n;}
 static UiTuning parse(long revision,JSONObject json)throws Exception{
  if(revision<0)throw new JSONException("版本无效");
  Set<String> fields=new HashSet<>(Arrays.asList("navHeight","navIcon","navText","navGap","glassMargin","glassEnabled"));
  for(Iterator<String> it=json.keys();it.hasNext();)if(!fields.remove(it.next()))throw new JSONException("不支持的界面字段");
  if(!fields.isEmpty()||!(json.get("glassEnabled") instanceof Boolean))throw new JSONException("界面字段缺失");
  return new UiTuning(revision,integer(json,"navHeight",64,96),integer(json,"navIcon",18,30),integer(json,"navText",10,16),integer(json,"navGap",0,10),integer(json,"glassMargin",0,16),json.getBoolean("glassEnabled"));
 }
 JSONObject json()throws JSONException{return new JSONObject().put("navHeight",navHeight).put("navIcon",navIcon).put("navText",navText).put("navGap",navGap).put("glassMargin",glassMargin).put("glassEnabled",glassEnabled);}
 static UiTuning get(Context context){try{
  JSONObject cached=new JSONObject(context.getSharedPreferences(PREFS,0).getString("active","{}"));return parse(ApiEndpoint.nonnegativeLong(cached,"revision"),cached.getJSONObject("ui"));
 }catch(Exception invalid){return defaults();}}
 static boolean rejected(Context context,long revision){return revision<=context.getSharedPreferences(PREFS,0).getLong("rejected",-1);}
 static boolean save(Context context,UiTuning next)throws Exception{
  parse(next.revision,next.json());
  if(next.revision<=get(context).revision||rejected(context,next.revision))return false;
  String data=new JSONObject().put("revision",next.revision).put("ui",next.json()).toString();return context.getSharedPreferences(PREFS,0).edit().putString("previous",context.getSharedPreferences(PREFS,0).getString("active","{}" )).putString("active",data).commit();
 }
 static void beginRender(Context context){
  android.content.SharedPreferences prefs=context.getSharedPreferences(PREFS,0);UiTuning current=get(context);
  if(current.revision>0&&prefs.getLong("rendering",-1)==current.revision){
   prefs.edit().putString("active",prefs.getString("previous","{}")).putLong("rejected",current.revision).remove("rendering").commit();
  }
  prefs.edit().putLong("rendering",get(context).revision).commit();
 }
 static void stable(Context context){context.getSharedPreferences(PREFS,0).edit().remove("rendering").apply();}
 static void reset(Context context){
  android.content.SharedPreferences prefs=context.getSharedPreferences(PREFS,0);long revision=get(context).revision;
  prefs.edit().remove("active").remove("rendering").putLong("rejected",Math.max(revision,prefs.getLong("rejected",-1))).commit();
 }

}
