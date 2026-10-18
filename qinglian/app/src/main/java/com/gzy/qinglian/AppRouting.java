package com.gzy.qinglian;

import android.content.*;
import android.content.pm.*;
import android.net.VpnService;
import java.util.*;
import java.util.function.Predicate;

/** Android per-application VPN rules. Never mixes allow and deny lists. */
final class AppRouting {
 enum Mode {BLACKLIST,WHITELIST}
 static final String PREFS="app-routing";
 final boolean global,enabled;
 final Mode mode;
 final Set<String> selected;
 AppRouting(boolean global,Mode mode,Set<String> selected){this(global,true,mode,selected);}
 AppRouting(boolean global,boolean enabled,Mode mode,Set<String> selected){this.global=global;this.enabled=enabled;this.mode=mode;this.selected=Collections.unmodifiableSet(new TreeSet<>(selected));}
 static AppRouting load(Context context){
  android.content.SharedPreferences prefs=context.getSharedPreferences(PREFS,Context.MODE_PRIVATE);
  Mode mode;
  try{mode=Mode.valueOf(prefs.getString("mode",Mode.BLACKLIST.name()));}catch(Exception invalid){throw new IllegalArgumentException("分流规则无效，请重新保存");}
  return forMode(context,prefs.getBoolean("global",true),mode);
 }
 static AppRouting forMode(Context context,boolean global,Mode mode){return new AppRouting(global,context.getSharedPreferences(PREFS,0).getBoolean("enabled",false),mode,context.getSharedPreferences(PREFS,Context.MODE_PRIVATE).getStringSet("packages."+mode.name(),Collections.emptySet()));}
 AppRouting withGlobal(boolean global){return new AppRouting(global,enabled,mode,selected);}
 AppRouting withEnabled(boolean enabled){return new AppRouting(global,enabled,mode,selected);}
 boolean bypassChina(){return !global&&!enabled;}
 boolean save(Context context){
  return context.getSharedPreferences(PREFS,Context.MODE_PRIVATE).edit().putBoolean("global",global).putBoolean("enabled",enabled).putString("mode",mode.name()).putStringSet("packages."+mode.name(),new HashSet<>(selected)).commit();
 }
 static final class Plan {
  final boolean allowList;final Set<String> packages;
  Plan(boolean allowList,Set<String> packages){this.allowList=allowList;this.packages=Collections.unmodifiableSet(packages);}
 }
 Plan plan(String ownPackage,Predicate<String> installed){
  Set<String> packages=new TreeSet<>();
  if(!global&&enabled)for(String name:selected)if(!name.equals(ownPackage)&&installed.test(name))packages.add(name);
  if(!global&&enabled&&mode==Mode.WHITELIST){
   if(packages.isEmpty())throw new IllegalArgumentException("请先在应用分流中选择至少一个已安装且启用的应用");
   return new Plan(true,packages);
  }
  packages.add(ownPackage); // Core sockets, API calls and explicit proxy tests stay outside the TUN.
  return new Plan(false,packages);
 }
 Plan plan(Context context){
  return plan(context.getPackageName(),name->{try{return context.getPackageManager().getApplicationInfo(name,0).enabled;}catch(PackageManager.NameNotFoundException removed){return false;}});
 }
 void apply(Context context,VpnService.Builder builder)throws PackageManager.NameNotFoundException{
  Plan plan=plan(context);
  for(String name:plan.packages){if(plan.allowList)builder.addAllowedApplication(name);else builder.addDisallowedApplication(name);}
 }
 String title(){return global?"全局模式":!enabled?"规则模式 · 绕过大陆与局域网":"规则模式 · 应用分流 · "+(mode==Mode.WHITELIST?"白名单":"黑名单");}
 // Exact package IDs only: never infer proxy requirements from an application's label.
 static final Set<String> PROXY_PRESET=Collections.unmodifiableSet(new HashSet<>(Arrays.asList(
  "com.openai.chatgpt","com.anthropic.claude","com.google.android.apps.bard",
  "com.google.android.youtube","com.google.android.apps.youtube.music","com.google.android.gm",
  "com.google.android.apps.maps","com.google.android.apps.photos","com.android.vending",
  "com.google.android.apps.docs","com.google.android.apps.translate","com.google.android.apps.chromecast.app",
  "com.github.android","org.telegram.messenger","org.thunderdog.challegram",
  "com.twitter.android","com.instagram.android","com.facebook.katana","com.facebook.orca",
  "com.whatsapp","com.discord","com.reddit.frontpage","com.spotify.music","com.netflix.mediaclient",
  "com.pinterest","com.tumblr","com.medium.reader","org.wikipedia"
 )));
 static Set<String> presetPackages(Collection<App> apps,java.util.function.Predicate<String> enabled){
  Set<String> result=new TreeSet<>();for(App app:apps)if(PROXY_PRESET.contains(app.packageName)&&enabled.test(app.packageName))result.add(app.packageName);return result;
 }
 static final class App {
  final String packageName,label;
  App(String packageName,String label){this.packageName=packageName;this.label=label;}
 }
 static List<App> apps(Context context,Set<String> saved){
  PackageManager pm=context.getPackageManager();Map<String,App> apps=new HashMap<>();
  Intent launcher=new Intent(Intent.ACTION_MAIN).addCategory(Intent.CATEGORY_LAUNCHER);
  for(ResolveInfo result:pm.queryIntentActivities(launcher,0)){
   ApplicationInfo info=result.activityInfo.applicationInfo;
   if(!info.packageName.equals(context.getPackageName()))apps.put(info.packageName,new App(info.packageName,info.loadLabel(pm).toString()));
  }
  for(String name:saved)if(!apps.containsKey(name)&&!name.equals(context.getPackageName())){
   try{ApplicationInfo info=pm.getApplicationInfo(name,0);apps.put(name,new App(name,info.loadLabel(pm).toString()));}
   catch(PackageManager.NameNotFoundException removed){apps.put(name,new App(name,"已卸载 · "+name));}
  }
  List<App> result=new ArrayList<>(apps.values());java.text.Collator collator=java.text.Collator.getInstance(Locale.CHINA);
  result.sort((a,b)->{int order=collator.compare(a.label,b.label);return order==0?a.packageName.compareTo(b.packageName):order;});return result;
 }
}
