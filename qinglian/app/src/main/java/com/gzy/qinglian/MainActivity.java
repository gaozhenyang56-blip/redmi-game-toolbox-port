package com.gzy.qinglian;

import android.Manifest;
import android.content.*;
import android.content.pm.PackageManager;
import android.graphics.*;
import android.net.VpnService;
import android.os.*;
import android.view.*;
import android.widget.*;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.view.*;
import com.google.android.material.color.DynamicColors;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import com.google.android.material.progressindicator.LinearProgressIndicator;
import java.util.*;

public class MainActivity extends AppCompatActivity {
 private LinearLayout root,body;
 private com.google.android.material.bottomnavigation.BottomNavigationView nav;
 static final int NAV_CONNECT=R.id.nav_connect,NAV_SPEED=R.id.nav_speed,NAV_ROUTING=R.id.nav_routing,NAV_ABOUT=R.id.nav_about;
 private static final int[] NAV_ITEMS={NAV_CONNECT,NAV_SPEED,NAV_ROUTING,NAV_ABOUT};
 private TextView quotaValue,quotaDetail,onlineValue,onlineDetail,reportDetail,profileDetail;
 private TextView status,caption,clock,up,down,upTotal,downTotal,latencyValue,downloadValue,testDetail;
 private MaterialButton power,delayButton,downloadButton,stopButton;
 private LinearProgressIndicator progress;
 private Graph graph;
 private final SpeedTester tester=new SpeedTester();
 private final Handler main=new Handler(Looper.getMainLooper());
 private int tab=0;
 private String lastState="",latency="—",download="—",detail="测速数据通过专属节点获取";
 private int testKind=0;private int testSession=0;
 private boolean testing=false;
 private final Runnable ticker=new Runnable(){public void run(){ProfileMonitor.refresh(MainActivity.this,false);QuotaMonitor.refresh(MainActivity.this,false);OnlineMonitor.refresh(MainActivity.this,false);refresh();main.postDelayed(this,500);}};
 @Override public void onCreate(Bundle b){
  AppAppearance.apply(this);DynamicColors.applyToActivityIfAvailable(this);super.onCreate(b);
  WindowCompat.setDecorFitsSystemWindows(getWindow(),false);
  if(b!=null){latency=b.getString("latency","—");download=b.getString("download","—");tab=b.getInt("tab",0);}
  root=new LinearLayout(this);root.setOrientation(LinearLayout.VERTICAL);root.setBackgroundColor(color(com.google.android.material.R.attr.colorSurface));
  ViewCompat.setOnApplyWindowInsetsListener(root,(v,insets)->{androidx.core.graphics.Insets s=insets.getInsets(WindowInsetsCompat.Type.systemBars());v.setPadding(s.left,s.top,s.right,s.bottom);return insets;});
  setContentView(root);
  boolean night=(getResources().getConfiguration().uiMode & android.content.res.Configuration.UI_MODE_NIGHT_MASK)==android.content.res.Configuration.UI_MODE_NIGHT_YES;
  new WindowInsetsControllerCompat(getWindow(),root).setAppearanceLightStatusBars(!night);
  new WindowInsetsControllerCompat(getWindow(),root).setAppearanceLightNavigationBars(!night);
  com.google.android.material.appbar.MaterialToolbar toolbar=new com.google.android.material.appbar.MaterialToolbar(this);
  toolbar.setTitle("轻连");
  toolbar.getMenu().add(Menu.NONE,R.id.menu_appearance,0,"外观").setIcon(R.drawable.ic_theme).setShowAsAction(MenuItem.SHOW_AS_ACTION_ALWAYS);
  toolbar.setOnMenuItemClickListener(item->{if(item.getItemId()==R.id.menu_appearance){appearance();return true;}return false;});toolbar.setBackgroundColor(color(com.google.android.material.R.attr.colorSurface));root.addView(toolbar,new LinearLayout.LayoutParams(-1,dp(64)));
  ScrollView scroll=new ScrollView(this);scroll.setFillViewport(true);scroll.setClipToPadding(false);
  body=new LinearLayout(this);body.setOrientation(LinearLayout.VERTICAL);body.setPadding(dp(16),dp(12),dp(16),dp(16));scroll.addView(body);root.addView(scroll,new LinearLayout.LayoutParams(-1,0,1));
  nav=new com.google.android.material.bottomnavigation.BottomNavigationView(this);
  nav.setLabelVisibilityMode(com.google.android.material.navigation.NavigationBarView.LABEL_VISIBILITY_LABELED);
  root.addView(nav,new LinearLayout.LayoutParams(-1,-2));
  nav.setOnItemSelectedListener(item->{int next=item.getItemId()==NAV_CONNECT?0:item.getItemId()==NAV_SPEED?1:item.getItemId()==NAV_ROUTING?2:3;if(next!=tab){tab=next;build();}return true;});build();
 }
 @Override protected void onResume(){super.onResume();main.post(ticker);}
 @Override protected void onPause(){main.removeCallbacks(ticker);super.onPause();}
 @Override protected void onDestroy(){tester.close();main.removeCallbacksAndMessages(null);super.onDestroy();}
 @Override protected void onSaveInstanceState(Bundle out){out.putString("latency",testing&&testKind==1?"已停止":latency);out.putString("download",testing&&testKind==2?"已停止":download);out.putInt("tab",tab);super.onSaveInstanceState(out);}
 private int dp(float n){return (int)(getResources().getDisplayMetrics().density*n+.5f);}
 private int color(int attr){android.util.TypedValue v=new android.util.TypedValue();getTheme().resolveAttribute(attr,v,true);return v.data;}
 private TextView text(String t,int sp,boolean bold){TextView v=new TextView(this);v.setText(t);v.setTextSize(sp);v.setTextColor(color(com.google.android.material.R.attr.colorOnSurface));if(bold)v.setTypeface(android.graphics.Typeface.DEFAULT,android.graphics.Typeface.BOLD);v.setFontFeatureSettings("tnum");return v;}
 private TextView note(String t){TextView v=text(t,13,false);v.setTextColor(color(com.google.android.material.R.attr.colorOnSurfaceVariant));v.setLineSpacing(dp(3),1);return v;}
 private void space(LinearLayout box,int h){View v=new View(this);box.addView(v,new LinearLayout.LayoutParams(1,dp(h)));}
 private LinearLayout card(int tint){MaterialCardView c=new MaterialCardView(this);c.setRadius(dp(12));c.setCardElevation(0);c.setStrokeWidth(0);c.setCardBackgroundColor(color(tint));LinearLayout p=new LinearLayout(this);p.setOrientation(LinearLayout.VERTICAL);p.setPadding(dp(16),dp(16),dp(16),dp(16));c.addView(p);LinearLayout.LayoutParams lp=new LinearLayout.LayoutParams(-1,-2);lp.bottomMargin=dp(12);body.addView(c,lp);return p;}
 private MaterialButton button(String title){MaterialButton b=new MaterialButton(this);b.setText(title);b.setTextSize(15);b.setCornerRadius(dp(20));b.setMinHeight(dp(48));return b;}
 private void build(){
  body.removeAllViews();nav.getMenu().clear();String[] names={"连接","测速","分流","关于"};
  int[] icons={R.drawable.ic_nav_connect,R.drawable.ic_nav_speed,R.drawable.ic_nav_routing,R.drawable.ic_nav_info};
  for(int i=0;i<names.length;i++)nav.getMenu().add(Menu.NONE,NAV_ITEMS[i],i,names[i]).setIcon(icons[i]);
  nav.setSelectedItemId(NAV_ITEMS[tab]);
  quotaValue=quotaDetail=onlineValue=onlineDetail=reportDetail=profileDetail=null;status=caption=clock=up=down=upTotal=downTotal=latencyValue=downloadValue=testDetail=null;power=delayButton=downloadButton=stopButton=null;progress=null;graph=null;
  if(tab==0)home();else if(tab==1)speed();else if(tab==2)routing();else about();refresh();
 }
 private void home(){
  LinearLayout hero=card(com.google.android.material.R.attr.colorPrimaryContainer);hero.setGravity(Gravity.CENTER_HORIZONTAL);
  TextView label=text("专属连接",14,true);label.setGravity(Gravity.CENTER);label.setTextColor(color(com.google.android.material.R.attr.colorOnPrimaryContainer));hero.addView(label);space(hero,16);
  PowerGlyph glyph=new PowerGlyph(this);hero.addView(glyph,new LinearLayout.LayoutParams(dp(56),dp(56)));space(hero,14);
  status=text("未连接",24,true);status.setGravity(Gravity.CENTER);status.setTextColor(color(com.google.android.material.R.attr.colorOnPrimaryContainer));hero.addView(status);space(hero,8);caption=note("");caption.setGravity(Gravity.CENTER);caption.setTextColor(color(com.google.android.material.R.attr.colorOnPrimaryContainer));hero.addView(caption);space(hero,16);
  power=button("连接");hero.addView(power,new LinearLayout.LayoutParams(-1,dp(48)));power.setOnClickListener(v->toggle());space(hero,8);
  clock=note("00:00:00");clock.setGravity(Gravity.CENTER);clock.setTextColor(color(com.google.android.material.R.attr.colorOnPrimaryContainer));hero.addView(clock);
  connectionModes();
  LinearLayout summary=card(com.google.android.material.R.attr.colorSurfaceContainer);summary.addView(text("连接概览",18,true));space(summary,18);
  LinearLayout row=new LinearLayout(this);LinearLayout online=new LinearLayout(this),quota=new LinearLayout(this);online.setOrientation(LinearLayout.VERTICAL);quota.setOrientation(LinearLayout.VERTICAL);row.addView(online,new LinearLayout.LayoutParams(0,-2,1));row.addView(quota,new LinearLayout.LayoutParams(0,-2,1));summary.addView(row);
  online.addView(note("实时在线设备"));space(online,8);onlineValue=text("待接入",26,true);online.addView(onlineValue);space(online,6);onlineDetail=note("按在线设备统计");online.addView(onlineDetail);
  quota.addView(note("服务端剩余流量"));space(quota,8);quotaValue=text("待接入",26,true);quota.addView(quotaValue);space(quota,6);quotaDetail=note("待接入服务端配额接口");quota.addView(quotaDetail);
  space(summary,12);MaterialButton update=button("刷新连接数据");update.setOnClickListener(v->{ProfileMonitor.refresh(this,true);QuotaMonitor.refresh(this,true);OnlineMonitor.refresh(this,true);});summary.addView(update);
  LinearLayout node=card(com.google.android.material.R.attr.colorSurfaceContainer);node.addView(text("面板指定节点",18,true));space(node,6);profileDetail=note("正在同步面板配置");node.addView(profileDetail);

  LinearLayout stats=card(com.google.android.material.R.attr.colorSurfaceContainer);stats.addView(text("实时流量",18,true));space(stats,16);
  LinearLayout cols=new LinearLayout(this);stats.addView(cols);
  LinearLayout a=new LinearLayout(this),b=new LinearLayout(this);a.setOrientation(LinearLayout.VERTICAL);b.setOrientation(LinearLayout.VERTICAL);cols.addView(a,new LinearLayout.LayoutParams(0,-2,1));cols.addView(b,new LinearLayout.LayoutParams(0,-2,1));
  a.addView(note("↑ 上传速度"));up=text("0 B/s",21,true);a.addView(up);space(a,5);upTotal=note("已用 0 B");a.addView(upTotal);
  b.addView(note("↓ 下载速度"));down=text("0 B/s",21,true);b.addView(down);space(b,5);downTotal=note("已用 0 B");b.addView(downTotal);
  space(stats,14);stats.addView(note("用量按本次连接统计，通知栏每秒刷新。"));
  reportDetail=note(TunnelService.reportingStatus);stats.addView(reportDetail);
  MaterialButton go=button("前往网络测速");go.setOnClickListener(v->{tab=1;build();});body.addView(go);
 }
 private void speed(){
  body.addView(text("网络测速",24,true));space(body,8);body.addView(note("所有测试都通过唯一节点进行"));space(body,20);
  LinearLayout c=card(com.google.android.material.R.attr.colorSurfaceContainer);c.addView(note("连接延迟 / 三次中位数"));space(c,8);latencyValue=text(latency,32,true);c.addView(latencyValue);space(c,8);c.addView(note("包含代理连接与 HTTPS 握手时间"));space(c,12);
  delayButton=button("测试延迟");delayButton.setOnClickListener(v->runDelay());c.addView(delayButton);
  LinearLayout d=card(com.google.android.material.R.attr.colorSecondaryContainer);d.addView(note("下载速度"));space(d,8);downloadValue=text(download,32,true);downloadValue.setTextColor(color(com.google.android.material.R.attr.colorOnSecondaryContainer));d.addView(downloadValue);space(d,12);
  graph=new Graph(this);d.addView(graph,new LinearLayout.LayoutParams(-1,dp(100)));space(d,12);
  progress=new LinearProgressIndicator(this);progress.setMax(100);progress.setTrackThickness(dp(6));progress.setTrackCornerRadius(dp(3));d.addView(progress,new LinearLayout.LayoutParams(-1,dp(8)));space(d,12);
  testDetail=note(detail);testDetail.setTextColor(color(com.google.android.material.R.attr.colorOnSecondaryContainer));d.addView(testDetail);space(d,12);downloadButton=button("开始下载测速");downloadButton.setOnClickListener(v->new MaterialAlertDialogBuilder(this).setTitle("开始下载测速？").setMessage("通过当前节点下载测试数据，接收约 32 MB 或持续约 12 秒。网络等待可能增加耗时，随时可以停止。").setPositiveButton("开始",(dialog,which)->runDownload()).setNegativeButton("取消",null).show());d.addView(downloadButton);
  stopButton=button("停止测试");stopButton.setOnClickListener(v->{testSession++;tester.stop();testing=false;testKind=0;detail="测试已停止";refresh();});d.addView(stopButton);
  body.addView(note("测速结果受服务器、线路和测试站点影响。Mbps 为兆比特/秒，8 Mbps 约等于 1 MB/s。"));
 }
 private void appearance(){
  int mode=AppAppearance.mode(this),selected=mode==androidx.appcompat.app.AppCompatDelegate.MODE_NIGHT_YES?1:mode==androidx.appcompat.app.AppCompatDelegate.MODE_NIGHT_FOLLOW_SYSTEM?2:0;
  new MaterialAlertDialogBuilder(this).setTitle("外观").setSingleChoiceItems(new String[]{"亮色","暗色","跟随系统"},selected,(dialog,which)->{
   int next=which==1?androidx.appcompat.app.AppCompatDelegate.MODE_NIGHT_YES:which==2?androidx.appcompat.app.AppCompatDelegate.MODE_NIGHT_FOLLOW_SYSTEM:androidx.appcompat.app.AppCompatDelegate.MODE_NIGHT_NO;
   if(AppAppearance.select(this,next))dialog.dismiss();else toast("保存失败，请重试");
  }).setNegativeButton("取消",null).show();
 }
 private MaterialButton modeButton(String title){
  MaterialButton button=new MaterialButton(this,null,com.google.android.material.R.attr.materialButtonOutlinedStyle);button.setText(title);button.setCornerRadius(dp(20));
  int[][] states={new int[]{android.R.attr.state_checked},new int[]{}};
  button.setBackgroundTintList(new android.content.res.ColorStateList(states,new int[]{color(com.google.android.material.R.attr.colorSecondaryContainer),color(com.google.android.material.R.attr.colorSurfaceContainer)}));
  button.setTextColor(new android.content.res.ColorStateList(states,new int[]{color(com.google.android.material.R.attr.colorOnSecondaryContainer),color(com.google.android.material.R.attr.colorOnSurface)}));
  button.setStrokeColor(android.content.res.ColorStateList.valueOf(color(com.google.android.material.R.attr.colorOutline)));return button;
 }
 private void connectionModes(){
  AppRouting rules;try{rules=AppRouting.load(this);}catch(Exception invalid){return;}
  LinearLayout card=card(com.google.android.material.R.attr.colorSurfaceContainer);card.addView(text("连接模式",18,true));space(card,10);
  com.google.android.material.button.MaterialButtonToggleGroup group=new com.google.android.material.button.MaterialButtonToggleGroup(this);group.setSingleSelection(true);group.setSelectionRequired(true);
  MaterialButton rule=modeButton("规则"),global=modeButton("全局");rule.setId(View.generateViewId());global.setId(View.generateViewId());
  group.addView(rule,new LinearLayout.LayoutParams(0,dp(52),1));group.addView(global,new LinearLayout.LayoutParams(0,dp(52),1));card.addView(group);group.check(rules.global?global.getId():rule.getId());
  group.addOnButtonCheckedListener((buttons,id,checked)->{if(!checked)return;
   AppRouting next=AppRouting.load(this).withGlobal(id==global.getId());
   if(!next.save(this)){toast("保存失败，请重试");build();return;}
   toast(TunnelService.state.equals("connected")?"模式已保存，断开重连后生效":"连接模式已保存");build();
  });
  space(card,8);card.addView(note(rules.global?"全局：所有应用走 VPN，轻连自身除外。":"规则："+(rules.mode==AppRouting.Mode.WHITELIST?"白名单中的应用走 VPN，其余直连。":"黑名单中的应用直连，其余走 VPN。")));
  if(TunnelService.state.equals("connected")){space(card,6);card.addView(note("当前连接："+TunnelService.routingStatus+" · 修改后需重连"));}
 }
 private void routing(){
  AppRouting rules;
  try{rules=AppRouting.load(this);}catch(Exception invalid){rules=new AppRouting(true,AppRouting.Mode.BLACKLIST,Collections.emptySet());body.addView(note("已保存的分流规则无效，请重新选择模式并保存。"));}
  final AppRouting saved=rules;
  body.addView(text("应用分流",24,true));space(body,8);body.addView(note("黑名单应用直连；白名单应用走 VPN。连接页选择规则模式时生效，全局模式忽略名单。"));space(body,20);
  LinearLayout mode=card(com.google.android.material.R.attr.colorPrimaryContainer);mode.addView(text(saved.mode==AppRouting.Mode.WHITELIST?"白名单模式":"黑名单模式",21,true));space(mode,10);
  mode.addView(note(saved.mode==AppRouting.Mode.WHITELIST?"名单内的应用走 VPN，其余应用直连。":"名单内的应用直连，其余应用走 VPN。"));space(mode,12);
  MaterialButton change=button("黑白名单模式");mode.addView(change);
  change.setOnClickListener(v->{String[] titles={"黑名单 · 所选应用直连","白名单 · 仅所选应用走 VPN"};
   new MaterialAlertDialogBuilder(this).setTitle("分流模式").setSingleChoiceItems(titles,saved.mode.ordinal(),(dialog,which)->{
    AppRouting next=AppRouting.forMode(this,saved.global,AppRouting.Mode.values()[which]);
    if(next.save(this)){dialog.dismiss();build();toast("已保存，下次连接生效");}else toast("保存失败，请重试");
   }).setNegativeButton("取消",null).show();
  });
  LinearLayout apps=card(com.google.android.material.R.attr.colorSurfaceContainer);apps.addView(text("已选择 "+saved.selected.size()+" 个应用",19,true));space(apps,10);
  apps.addView(note("可选择有启动图标的应用。已保存但卸载的应用会保留标记，可在列表中取消。轻连自身保持直连。"));space(apps,12);
  MaterialButton select=button("选择应用");apps.addView(select);select.setOnClickListener(v->chooseApps(saved));
  if(saved.mode==AppRouting.Mode.WHITELIST&&saved.selected.isEmpty()){space(apps,10);apps.addView(note("规则模式使用白名单时，请至少选择一个应用。"));}
  body.addView(note(TunnelService.state.equals("connected")?"当前连接："+TunnelService.routingStatus+"。修改后需断开并重新连接。":"分流使用 Android 系统 VPN 规则，不需要额外权限。"));
 }
 private void chooseApps(AppRouting saved){
  List<AppRouting.App> all=AppRouting.apps(this,saved.selected),visible=new ArrayList<>();Set<String> selected=new HashSet<>(saved.selected);
  LinearLayout content=new LinearLayout(this);content.setOrientation(LinearLayout.VERTICAL);content.setPadding(dp(20),0,dp(20),0);
  EditText search=new EditText(this);search.setSingleLine(true);search.setHint("搜索应用名称或包名");search.setContentDescription("搜索应用");content.addView(search);
  TextView count=note("");content.addView(count);
  ListView list=new ListView(this);list.setChoiceMode(ListView.CHOICE_MODE_MULTIPLE);content.addView(list,new LinearLayout.LayoutParams(-1,dp(330)));
  ArrayAdapter<String> adapter=new ArrayAdapter<>(this,android.R.layout.simple_list_item_multiple_choice,new ArrayList<>());list.setAdapter(adapter);
  Runnable filter=()->{
   String query=search.getText().toString().trim().toLowerCase(Locale.ROOT);visible.clear();adapter.clear();list.clearChoices();
   for(AppRouting.App app:all)if(app.label.toLowerCase(Locale.ROOT).contains(query)||app.packageName.toLowerCase(Locale.ROOT).contains(query)){visible.add(app);adapter.add(app.label+"\n"+app.packageName);}
   for(int i=0;i<visible.size();i++)list.setItemChecked(i,selected.contains(visible.get(i).packageName));
   count.setText("已选择 "+selected.size()+" 个 · 匹配 "+visible.size()+" 个应用");
  };
  list.setOnItemClickListener((parent,view,position,id)->{String name=visible.get(position).packageName;if(list.isItemChecked(position))selected.add(name);else selected.remove(name);count.setText("已选择 "+selected.size()+" 个 · 匹配 "+visible.size()+" 个应用");});
  search.addTextChangedListener(new android.text.TextWatcher(){public void beforeTextChanged(CharSequence s,int start,int count,int after){}public void onTextChanged(CharSequence s,int start,int before,int count){filter.run();}public void afterTextChanged(android.text.Editable s){}});filter.run();
  androidx.appcompat.app.AlertDialog dialog=new MaterialAlertDialogBuilder(this).setTitle("选择分流应用").setView(content).setPositiveButton("保存",null).setNegativeButton("取消",null).create();
  dialog.setOnShowListener(ignored->dialog.getButton(android.content.DialogInterface.BUTTON_POSITIVE).setOnClickListener(v->{
   if(saved.mode==AppRouting.Mode.WHITELIST&&selected.isEmpty()){toast("请至少选择一个应用");return;}
   if(new AppRouting(saved.global,saved.mode,selected).save(this)){dialog.dismiss();build();toast("已保存，下次连接生效");}else toast("保存失败，请重试");
  }));dialog.show();
 }
 private void about(){
  LinearLayout c=card(com.google.android.material.R.attr.colorPrimaryContainer);c.addView(text("轻连",28,true));space(c,10);c.addView(note("一个节点，专注连接。\n1.0.3 · Preview\nARM64 · Android 8.0 及以上"));
  LinearLayout d=card(com.google.android.material.R.attr.colorSurfaceContainer);d.addView(text("连接与隐私",19,true));space(d,12);d.addView(note("使用 V2Ray / v2fly 核心。\n连接时会请求 Android 系统 VPN 授权；关闭界面后仍可后台运行。\n通知栏显示本次上传、下载流量与实时速度，可直接断开。\n连接时每 10 秒向服务端上报随机安装标识、设备型号、系统与应用版本、本次速度和用量，供原面板显示在线设备。服务端可见来源 IP；断开后停止，30 秒无心跳即离线。不会读取 IMEI、通讯录、文件或浏览内容。\n不接入广告与统计 SDK。节点由面板统一指定并自动同步，App 不提供手动添加、编辑或导出入口。\n测速请求会访问 Google 204 测试地址与 Cloudflare 下载站点。"));
  LinearLayout l=card(com.google.android.material.R.attr.colorSurfaceContainer);l.addView(text("开源许可",19,true));space(l,10);l.addView(note("本应用按 GPL-3.0 提供源码。\nV2Ray / v2fly：MIT\nAndroidLibV2rayLite：LGPL-3.0\nBadVPN tun2socks / v2rayNG：见随附第三方许可。"));
  MaterialButton license=button("查看第三方许可");license.setOnClickListener(v->{try(java.io.InputStream in=getAssets().open("THIRD_PARTY.txt")){new MaterialAlertDialogBuilder(this).setTitle("开源许可").setMessage(Io.readUtf8(in)).setPositiveButton("关闭",null).show();}catch(Exception e){toast("许可文件不可用");}});l.addView(license);
 }
 private boolean ready(){if(!TunnelService.state.equals("connected")){toast("请先连接 VPN");return false;}if(testing){toast("已有测试正在进行");return false;}return true;}
 private void runDelay(){if(!ready())return;testSession++;testing=true;testKind=1;latency="测试中…";detail="延迟测试 0 / 3";refresh();tester.latency(listener(false));}
 private void runDownload(){if(!ready())return;testSession++;testing=true;testKind=2;download="准备中…";detail="正在连接测速站点…";if(graph!=null)graph.clear();refresh();tester.download(listener(true));}
 private SpeedTester.Listener listener(boolean dl){final int session=testSession;return new SpeedTester.Listener(){
  public void update(double value,long bytes,double frac){main.post(()->{if(!testing||isDestroyed()||session!=testSession)return;if(dl){download=String.format(Locale.CHINA,"%.2f Mbps",value);detail="已接收 "+TunnelService.size(bytes);if(graph!=null)graph.add((float)value);}else{latency=String.format(Locale.CHINA,"%.0f ms",value);detail="延迟测试 "+bytes+" / 3";}if(progress!=null)progress.setProgressCompat((int)(frac*100),true);refresh();});}
  public void done(String result){main.post(()->{if(!testing||isDestroyed()||session!=testSession)return;testing=false;testKind=0;TunnelService.verified=true;if(dl){detail=result;download=result.split(" · ")[0].replace("平均 ","");}else{latency=result;detail="延迟测试完成 · 采用三次测试的中位数";}if(progress!=null)progress.setProgressCompat(100,true);refresh();});}
  public void failed(String error){main.post(()->{if(!testing||isDestroyed()||session!=testSession)return;testing=false;testKind=0;if(dl)download="失败";else latency="失败";detail=error;refresh();});}
 };}
 private void toggle(){String s=TunnelService.state;if(s.equals("connected")||s.equals("connecting")){testSession++;tester.stop();testing=false;testKind=0;startService(new Intent(this,TunnelService.class).setAction("STOP"));return;}
  try{AppRouting.load(this).plan(this);}catch(Exception invalid){toast(invalid.getMessage());tab=2;build();return;}
  if(!DeviceReporter.consented(this)){
   new MaterialAlertDialogBuilder(this).setTitle("连接与设备上报").setMessage("连接期间每 10 秒向服务端发送随机安装标识、设备型号、Android 与应用版本、本次速度和用量，用于现有面板的在线设备列表。服务端会记录来源 IP；断开后停止，30 秒无心跳即离线。不读取 IMEI、通讯录、文件或浏览内容。")
    .setPositiveButton("同意并连接",(dialog,which)->{
     if(getSharedPreferences(DeviceReporter.PREFS,MODE_PRIVATE).edit().putBoolean(DeviceReporter.CONSENT,true).commit())requestVpn();
     else toast("无法保存上报说明确认，请重试");
    }).setNegativeButton("取消",null).show();return;
  }
  requestVpn();
 }
 private void requestVpn(){Intent ask=VpnService.prepare(this);if(ask!=null)startActivityForResult(ask,77);else startTunnel();}
 private void startTunnel(){if(Build.VERSION.SDK_INT>=33&&checkSelfPermission(Manifest.permission.POST_NOTIFICATIONS)!=PackageManager.PERMISSION_GRANTED){requestPermissions(new String[]{Manifest.permission.POST_NOTIFICATIONS},78);return;}startForegroundService(new Intent(this,TunnelService.class));}
 @Override public void onRequestPermissionsResult(int r,String[] p,int[] g){super.onRequestPermissionsResult(r,p,g);if(r==78){if(g.length>0&&g[0]!=PackageManager.PERMISSION_GRANTED)toast("通知权限未允许，可能无法在通知栏查看流量");startForegroundService(new Intent(this,TunnelService.class));}}
 @Override protected void onActivityResult(int r,int code,Intent data){super.onActivityResult(r,code,data);if(r==77){if(code==RESULT_OK)startTunnel();else toast("未获得 VPN 授权");}}
 private void refresh(){
  if(profileDetail!=null){ProfileMonitor.Profile profile=ProfileMonitor.current;String value=profile==null?ProfileMonitor.status:profile.label+" · VMess / TCP\n"+ProfileMonitor.status;if(profile!=null&&TunnelService.state.equals("connected")&&!profile.revision.equals(TunnelService.activeProfileRevision))value+="\n面板已更新配置，断开重连后使用新节点";profileDetail.setText(value);}
  if(onlineValue!=null){onlineValue.setText(OnlineMonitor.count==null?(OnlineMonitor.status.startsWith("待接入")?"待接入":"不可用"):OnlineMonitor.fresh()?OnlineMonitor.count+" 台":"不可用");onlineDetail.setText((OnlineMonitor.count!=null&&!OnlineMonitor.fresh()?"上次 "+OnlineMonitor.count+" 台 · ":"")+OnlineMonitor.status+((OnlineMonitor.updatedAt>0)?"\n"+new java.text.SimpleDateFormat("HH:mm:ss",Locale.CHINA).format(new java.util.Date(OnlineMonitor.updatedAt)):""));}
  if(quotaValue!=null){QuotaInfo q=QuotaMonitor.current;if(q==null){quotaValue.setText(QuotaMonitor.status.startsWith("待接入")?"待接入":"不可用");quotaDetail.setText(QuotaMonitor.status);}else{quotaValue.setText(!QuotaMonitor.fresh()?"不可用":q.expired(System.currentTimeMillis())?"已过期":q.total!=0&&q.remaining()==0?"已用尽":q.total==0?"不限量":TunnelService.size(q.remaining()));String exp=q.expire==0?"无到期限制":new java.text.SimpleDateFormat("yyyy-MM-dd",Locale.CHINA).format(new java.util.Date(q.expire*1000));String stamp=new java.text.SimpleDateFormat("HH:mm:ss",Locale.CHINA).format(new java.util.Date(QuotaMonitor.updatedAt));quotaDetail.setText((QuotaMonitor.fresh()?"":"上次数据 · ")+"已用 "+TunnelService.size(q.used())+" / "+(q.total==0?"不限量":TunnelService.size(q.total))+"\n到期："+exp+"\n"+QuotaMonitor.status+" · "+stamp);}}
  if(reportDetail!=null)reportDetail.setText(TunnelService.reportingStatus);
  String s=TunnelService.state;boolean on=s.equals("connected"),busy=s.equals("connecting")||s.equals("stopping");
  if(!s.equals(lastState)){if(!on&&testing){testSession++;tester.stop();testing=false;testKind=0;detail="连接已断开，测试停止";}lastState=s;}
  if(status!=null){status.setText(on?"已连接":s.equals("connecting")?"连接中":s.equals("stopping")?"断开中":s.equals("error")?"连接失败":"未连接");caption.setText(on&&TunnelService.verified?"网络验证成功 · 专属通道运行中":TunnelService.message);power.setText(on?"断开连接":s.equals("connecting")?"取消连接":"连接");power.setEnabled(!s.equals("stopping"));long sec=on?(SystemClock.elapsedRealtime()-TunnelService.connectedAt)/1000:0;clock.setText(String.format(Locale.CHINA,"%02d:%02d:%02d",sec/3600,sec/60%60,sec%60));up.setText(TunnelService.size(TunnelService.uploadRate)+"/s");down.setText(TunnelService.size(TunnelService.downloadRate)+"/s");upTotal.setText("已用 "+TunnelService.size(TunnelService.uploadBytes));downTotal.setText("已用 "+TunnelService.size(TunnelService.downloadBytes));}
  if(latencyValue!=null){latencyValue.setText(latency);downloadValue.setText(download);testDetail.setText(detail);delayButton.setEnabled(on&&!testing);downloadButton.setEnabled(on&&!testing);stopButton.setVisibility(testing?View.VISIBLE:View.GONE);}
 }
 private void toast(String t){Toast.makeText(this,t,Toast.LENGTH_SHORT).show();}
 private class PowerGlyph extends View {
  Paint p=new Paint(3);PowerGlyph(Context c){super(c);setContentDescription("连接状态图标");}
  @Override protected void onDraw(Canvas c){float w=getWidth(),h=getHeight();p.setColor(color(androidx.appcompat.R.attr.colorPrimary));p.setStyle(Paint.Style.FILL);c.drawCircle(w/2,h/2,w*.49f,p);p.setColor(color(com.google.android.material.R.attr.colorOnPrimary));p.setStyle(Paint.Style.STROKE);p.setStrokeWidth(dp(5));p.setStrokeCap(Paint.Cap.ROUND);c.drawArc(w*.27f,h*.27f,w*.73f,h*.73f,-48,276,false,p);c.drawLine(w*.5f,h*.22f,w*.5f,h*.49f,p);}
 }
 private class Graph extends View {
  ArrayList<Float> values=new ArrayList<>();Paint p=new Paint(3);Path path=new Path();
  Graph(Context c){super(c);setContentDescription("下载速度趋势");}void clear(){values.clear();invalidate();}void add(float n){values.add(n);if(values.size()>48)values.remove(0);invalidate();}
  @Override protected void onDraw(Canvas c){float w=getWidth(),h=getHeight();p.setColor(color(com.google.android.material.R.attr.colorOnSecondaryContainer));p.setAlpha(25);p.setStrokeWidth(dp(1));for(int i=1;i<=3;i++)c.drawLine(0,h*i/4,w,h*i/4,p);if(values.size()<2)return;float max=1;for(float v:values)max=Math.max(max,v);path.reset();for(int i=0;i<values.size();i++){float x=i*w/47,y=h-dp(6)-values.get(i)/max*(h-dp(18));if(i==0)path.moveTo(x,y);else path.lineTo(x,y);}p.setAlpha(255);p.setStyle(Paint.Style.STROKE);p.setStrokeWidth(dp(3));p.setStrokeJoin(Paint.Join.ROUND);p.setStrokeCap(Paint.Cap.ROUND);c.drawPath(path,p);p.setStyle(Paint.Style.FILL);}
 }
}
