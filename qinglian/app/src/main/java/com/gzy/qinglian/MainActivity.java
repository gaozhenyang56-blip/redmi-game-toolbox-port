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
import org.json.JSONObject;

public class MainActivity extends AppCompatActivity {
 private FrameLayout root;
 private LinearLayout body;
 private FrostedBar topGlass,bottomGlass;
 private GlassSegments nav;
 static final int NAV_CONNECT=R.id.nav_connect,NAV_SPEED=R.id.nav_speed,NAV_ROUTING=R.id.nav_routing,NAV_ABOUT=R.id.nav_about;
 private static final int[] NAV_ITEMS={NAV_CONNECT,NAV_SPEED,NAV_ROUTING,NAV_ABOUT};
 private long uiRevision;private TextView updateDetail;
 private TextView accountUsage;
 private TextView quotaValue,quotaDetail,onlineValue,onlineDetail,reportDetail,profileDetail;
 private TextView status,caption,clock,up,down,upTotal,downTotal,latencyValue,downloadValue,testDetail;
 private MaterialButton power,delayButton,downloadButton,stopButton;
 private LinearProgressIndicator progress;
 private JSONObject pendingExport;
 private Graph graph;private PowerGlyph connectionGlyph;private long successAnimatedAt;
 private final SpeedTester tester=new SpeedTester();
 private final Handler main=new Handler(Looper.getMainLooper());
 private int tab=0;
 private String lastState="",latency="—",download="—",detail="测速数据通过专属节点获取";
 private int testKind=0;private int testSession=0;
 private boolean testing=false;
 private final Runnable ticker=new Runnable(){public void run(){UpdateMonitor.refresh(MainActivity.this,false);if(UiTuning.get(MainActivity.this).revision!=uiRevision&&!testing){recreate();return;}ProfileMonitor.refresh(MainActivity.this,false);QuotaMonitor.refresh(MainActivity.this,false);OnlineMonitor.refresh(MainActivity.this,false);refresh();if(UpdateMonitor.needsPrompt(MainActivity.this))showUpdate();main.postDelayed(this,500);}};
 @Override public void onCreate(Bundle b){
  UiTuning.beginRender(this);uiRevision=UiTuning.get(this).revision;AppAppearance.apply(this);DynamicColors.applyToActivityIfAvailable(this);super.onCreate(b);
  WindowCompat.setDecorFitsSystemWindows(getWindow(),false);
  if(b!=null){latency=b.getString("latency","—");download=b.getString("download","—");tab=b.getInt("tab",0);try{pendingExport=new JSONObject(b.getString("pendingExport",""));}catch(Exception ignored){}}
  root=new FrameLayout(this);root.setBackgroundColor(color(com.google.android.material.R.attr.colorSurface));
  ViewCompat.setOnApplyWindowInsetsListener(root,(v,insets)->{androidx.core.graphics.Insets s=insets.getInsets(WindowInsetsCompat.Type.systemBars());v.setPadding(s.left,s.top,s.right,s.bottom);return WindowInsetsCompat.CONSUMED;});
  setContentView(root);
  boolean night=(getResources().getConfiguration().uiMode & android.content.res.Configuration.UI_MODE_NIGHT_MASK)==android.content.res.Configuration.UI_MODE_NIGHT_YES;
  new WindowInsetsControllerCompat(getWindow(),root).setAppearanceLightStatusBars(!night);
  new WindowInsetsControllerCompat(getWindow(),root).setAppearanceLightNavigationBars(!night);
  com.google.android.material.appbar.MaterialToolbar toolbar=new com.google.android.material.appbar.MaterialToolbar(this);
  toolbar.setTitle("轻连");
  toolbar.getMenu().add(Menu.NONE,R.id.menu_appearance,0,"外观").setIcon(R.drawable.ic_theme).setShowAsAction(MenuItem.SHOW_AS_ACTION_ALWAYS);
  toolbar.setOnMenuItemClickListener(item->{if(item.getItemId()==R.id.menu_appearance){appearance();return true;}return false;});toolbar.setBackgroundColor(Color.TRANSPARENT);
  ScrollView scroll=new ScrollView(this);scroll.setFillViewport(true);scroll.setClipToPadding(false);scroll.setPadding(0,dp(80),0,dp(96));
  body=new LinearLayout(this);body.setOrientation(LinearLayout.VERTICAL);body.setPadding(dp(16),dp(12),dp(16),dp(16));scroll.addView(body);root.addView(scroll,new FrameLayout.LayoutParams(-1,-1));
  topGlass=new FrostedBar(this,color(com.google.android.material.R.attr.colorSurface),night,28);topGlass.addView(toolbar,new FrameLayout.LayoutParams(-1,-1));topGlass.setSource(scroll);
  FrameLayout.LayoutParams topGlassLayout=new FrameLayout.LayoutParams(-1,dp(64),Gravity.TOP);topGlassLayout.setMargins(dp(UiTuning.get(this).glassMargin),dp(8),dp(UiTuning.get(this).glassMargin),0);root.addView(topGlass,topGlassLayout);
  nav=new GlassSegments(this,new String[]{"连接","测速","分流","关于"},NAV_ITEMS,new int[]{R.drawable.ic_nav_connect,R.drawable.ic_nav_speed,R.drawable.ic_nav_routing,R.drawable.ic_nav_info},true);
  bottomGlass=new FrostedBar(this,color(com.google.android.material.R.attr.colorSurfaceContainer),night,36);bottomGlass.addView(nav,new FrameLayout.LayoutParams(-1,-2));bottomGlass.setSource(scroll);
  FrameLayout.LayoutParams bottomGlassLayout=new FrameLayout.LayoutParams(-1,-2,Gravity.BOTTOM);bottomGlassLayout.setMargins(dp(UiTuning.get(this).glassMargin),0,dp(UiTuning.get(this).glassMargin),dp(8));root.addView(bottomGlass,bottomGlassLayout);
  bottomGlass.addOnLayoutChangeListener((v,l,t,r,bottom,ol,ot,or,ob)->{if(scroll.getPaddingBottom()!=bottom-t+dp(16))scroll.setPadding(0,dp(80),0,bottom-t+dp(16));});
  scroll.setOnScrollChangeListener((v,x,y,oldX,oldY)->{topGlass.requestBackdrop();bottomGlass.requestBackdrop();});
  body.addOnLayoutChangeListener((v,l,t,r,bottom,ol,ot,or,ob)->{topGlass.requestBackdrop();bottomGlass.requestBackdrop();});
  nav.setListener(next->{if(next!=tab){tab=next;build(true);}});build();
 }
 @Override protected void onResume(){super.onResume();topGlass.setActive(true);bottomGlass.setActive(true);main.postDelayed(()->UiTuning.stable(this),1000);main.post(ticker);}
 @Override protected void onPause(){UiTuning.stable(this);main.removeCallbacks(ticker);topGlass.setActive(false);bottomGlass.setActive(false);finishPageMotion();super.onPause();}
 @Override protected void onDestroy(){tester.close();main.removeCallbacksAndMessages(null);super.onDestroy();}
 @Override protected void onSaveInstanceState(Bundle out){out.putString("latency",testing&&testKind==1?"已停止":latency);out.putString("download",testing&&testKind==2?"已停止":download);out.putInt("tab",tab);if(pendingExport!=null)out.putString("pendingExport",pendingExport.toString());super.onSaveInstanceState(out);}
 private int dp(float n){return (int)(getResources().getDisplayMetrics().density*n+.5f);}
 private int color(int attr){android.util.TypedValue v=new android.util.TypedValue();getTheme().resolveAttribute(attr,v,true);return v.data;}
 private TextView text(String t,int sp,boolean bold){TextView v=new TextView(this);v.setText(t);v.setTextSize(sp);v.setTextColor(color(com.google.android.material.R.attr.colorOnSurface));if(bold)v.setTypeface(android.graphics.Typeface.DEFAULT,android.graphics.Typeface.BOLD);v.setFontFeatureSettings("tnum");return v;}
 private TextView note(String t){TextView v=text(t,13,false);v.setTextColor(color(com.google.android.material.R.attr.colorOnSurfaceVariant));v.setLineSpacing(dp(3),1);return v;}
 private void space(LinearLayout box,int h){View v=new View(this);box.addView(v,new LinearLayout.LayoutParams(1,dp(h)));}
 private LinearLayout card(int tint){MaterialCardView c=new MaterialCardView(this);c.setRadius(dp(12));c.setCardElevation(0);c.setStrokeWidth(0);c.setCardBackgroundColor(color(tint));LinearLayout p=new LinearLayout(this);p.setOrientation(LinearLayout.VERTICAL);p.setPadding(dp(16),dp(16),dp(16),dp(16));c.addView(p);LinearLayout.LayoutParams lp=new LinearLayout.LayoutParams(-1,-2);lp.bottomMargin=dp(12);body.addView(c,lp);return p;}
 private MaterialButton button(String title){MaterialButton b=new MaterialButton(this);b.setText(title);b.setTextSize(15);b.setCornerRadius(dp(20));b.setMinHeight(dp(48));return b;}
 private void finishPageMotion(){android.transition.TransitionManager.endTransitions(body);body.animate().cancel();body.setTranslationY(0);}
 private void build(){build(false);}
 private void build(boolean animate){
  finishPageMotion();boolean motion=animate&&android.animation.ValueAnimator.areAnimatorsEnabled()&&body.isLaidOut();
  if(motion){android.transition.TransitionSet fade=new android.transition.TransitionSet().setOrdering(android.transition.TransitionSet.ORDERING_SEQUENTIAL);
   fade.addTransition(new android.transition.Fade(android.transition.Fade.OUT)).addTransition(new android.transition.Fade(android.transition.Fade.IN));fade.setDuration(100);
   android.transition.TransitionManager.beginDelayedTransition(body,fade);
  }
  body.removeAllViews();nav.setSelected(tab,false);
  updateDetail=null;quotaValue=quotaDetail=onlineValue=onlineDetail=reportDetail=profileDetail=null;status=caption=clock=up=down=upTotal=downTotal=latencyValue=downloadValue=testDetail=null;power=delayButton=downloadButton=stopButton=null;progress=null;graph=null;
  if(tab==0)home();else if(tab==1)speed();else if(tab==2)routing();else about();refresh();
  if(motion){body.setTranslationY(dp(6));body.animate().translationY(0).setDuration(220).setInterpolator(new android.view.animation.PathInterpolator(.2f,0,0,1)).start();}
 }
 private void home(){
  LinearLayout hero=card(com.google.android.material.R.attr.colorPrimaryContainer);hero.setGravity(Gravity.CENTER_HORIZONTAL);
  TextView label=text("专属连接",14,true);label.setGravity(Gravity.CENTER);label.setTextColor(color(com.google.android.material.R.attr.colorOnPrimaryContainer));hero.addView(label);space(hero,16);
  PowerGlyph glyph=new PowerGlyph(this);connectionGlyph=glyph;hero.addView(glyph,new LinearLayout.LayoutParams(dp(56),dp(56)));space(hero,14);
  status=text("未连接",24,true);status.setGravity(Gravity.CENTER);status.setTextColor(color(com.google.android.material.R.attr.colorOnPrimaryContainer));hero.addView(status);space(hero,8);caption=note("");caption.setGravity(Gravity.CENTER);caption.setTextColor(color(com.google.android.material.R.attr.colorOnPrimaryContainer));hero.addView(caption);space(hero,16);
  power=button("连接");hero.addView(power,new LinearLayout.LayoutParams(-1,dp(48)));power.setOnClickListener(v->toggle());space(hero,8);
  clock=note("00:00:00");clock.setGravity(Gravity.CENTER);clock.setTextColor(color(com.google.android.material.R.attr.colorOnPrimaryContainer));hero.addView(clock);
  connectionModes();transportModes();
  LinearLayout summary=card(com.google.android.material.R.attr.colorSurfaceContainer);summary.addView(text("连接概览",18,true));space(summary,18);
  LinearLayout row=new LinearLayout(this);LinearLayout online=new LinearLayout(this),quota=new LinearLayout(this);online.setOrientation(LinearLayout.VERTICAL);quota.setOrientation(LinearLayout.VERTICAL);row.addView(online,new LinearLayout.LayoutParams(0,-2,1));row.addView(quota,new LinearLayout.LayoutParams(0,-2,1));summary.addView(row);
  online.addView(note("实时在线设备"));space(online,8);onlineValue=text("待接入",26,true);online.addView(onlineValue);space(online,6);onlineDetail=note("按在线设备统计");online.addView(onlineDetail);
  quota.addView(note("服务端剩余流量"));space(quota,8);quotaValue=text("待接入",26,true);quota.addView(quotaValue);space(quota,6);quotaDetail=note("待接入服务端配额接口");quota.addView(quotaDetail);
  space(summary,12);MaterialButton update=button("刷新连接数据");update.setOnClickListener(v->{ProfileMonitor.refresh(this,true);QuotaMonitor.refresh(this,true);OnlineMonitor.refresh(this,true);});summary.addView(update);
  LinearLayout account=card(com.google.android.material.R.attr.colorSurfaceContainer);account.addView(text("我的账号",18,true));accountUsage=note("登录后显示累计用量");account.addView(accountUsage);MaterialButton manageAccount=button("账号 / 节点导出");account.addView(manageAccount);manageAccount.setOnClickListener(v->openAccount());
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
  body.addView(text("网络测速",24,true));space(body,8);body.addView(note("测速通过当前连接通道进行"));space(body,20);
  LinearLayout c=card(com.google.android.material.R.attr.colorSurfaceContainer);c.addView(note("核心延迟 / 连接复用"));space(c,8);latencyValue=text(latency,32,true);c.addView(latencyValue);space(c,8);c.addView(note("通过当前通道测试 HTTPS；两次请求取较小值"));space(c,12);
  delayButton=button("测试延迟");delayButton.setOnClickListener(v->runDelay());c.addView(delayButton);
  LinearLayout d=card(com.google.android.material.R.attr.colorSecondaryContainer);d.addView(note((getSharedPreferences("speed-test",0).getBoolean("cloudflare",false)?"Cloudflare外网":"服务器链路")+" · "+(LabSettings.enabled(this,"parallel")?"4路并行合计":"单路")+" · "+(LabSettings.enabled(this,"raw")?"原始曲线":"近1秒曲线")));space(d,8);downloadValue=text(download,32,true);downloadValue.setTextColor(color(com.google.android.material.R.attr.colorOnSecondaryContainer));d.addView(downloadValue);space(d,12);
  graph=new Graph(this);d.addView(graph,new LinearLayout.LayoutParams(-1,dp(100)));space(d,12);
  progress=new LinearProgressIndicator(this);progress.setMax(100);progress.setTrackThickness(dp(6));progress.setTrackCornerRadius(dp(3));d.addView(progress,new LinearLayout.LayoutParams(-1,dp(8)));space(d,12);
  testDetail=note(detail);testDetail.setTextColor(color(com.google.android.material.R.attr.colorOnSecondaryContainer));d.addView(testDetail);space(d,12);downloadButton=button("开始下载测速");downloadButton.setOnClickListener(v->downloadOptions());d.addView(downloadButton);
  stopButton=button("停止测试");stopButton.setOnClickListener(v->{testSession++;tester.stop();testing=false;testKind=0;detail="测试已停止";refresh();});d.addView(stopButton);
  body.addView(note("图表默认近1秒速度，实验室可改原始采样或四路并行；全程平均包含等待。测速结果受Wi‑Fi、线路、服务器和测试站点影响。Mbps 为兆比特/秒，8 Mbps 约等于 1 MB/s。"));
 }
 private void appearance(){
  int mode=AppAppearance.mode(this),selected=mode==androidx.appcompat.app.AppCompatDelegate.MODE_NIGHT_YES?1:mode==androidx.appcompat.app.AppCompatDelegate.MODE_NIGHT_FOLLOW_SYSTEM?2:0;
  new MaterialAlertDialogBuilder(this).setTitle("外观").setSingleChoiceItems(new String[]{"亮色","暗色","跟随系统"},selected,(dialog,which)->{
   int next=which==1?androidx.appcompat.app.AppCompatDelegate.MODE_NIGHT_YES:which==2?androidx.appcompat.app.AppCompatDelegate.MODE_NIGHT_FOLLOW_SYSTEM:androidx.appcompat.app.AppCompatDelegate.MODE_NIGHT_NO;
   if(AppAppearance.select(this,next))dialog.dismiss();else toast("保存失败，请重试");
  }).setNeutralButton("毛玻璃设置",(d,w)->glassSettings()).setNegativeButton("取消",null).show();
 }
 private void glassSettings(){
  LinearLayout box=new LinearLayout(this);box.setOrientation(LinearLayout.VERTICAL);box.setPadding(dp(24),dp(12),dp(24),0);
  TextView opacity=note("");box.addView(opacity);SeekBar transparency=new SeekBar(this);transparency.setMax(80);transparency.setProgress(GlassStyle.transparency(this)-20);box.addView(transparency);
  TextView strength=note("");box.addView(strength);SeekBar radius=new SeekBar(this);radius.setMax(32);radius.setProgress(GlassStyle.radius(this)-16);box.addView(radius);
  androidx.appcompat.widget.SwitchCompat live=new androidx.appcompat.widget.SwitchCompat(this);live.setText("前台持续实时刷新");live.setChecked(GlassStyle.live(this));box.addView(live);box.addView(note("持续刷新最多约20次/秒；后台停止。关闭后仍跟随页面重绘，降低耗电。"));
  Runnable label=()->{opacity.setText("透明度："+(transparency.getProgress()+20)+"%");strength.setText("模糊强度："+(radius.getProgress()+16));};label.run();
  SeekBar.OnSeekBarChangeListener changes=new SeekBar.OnSeekBarChangeListener(){public void onProgressChanged(SeekBar b,int p,boolean user){label.run();}public void onStartTrackingTouch(SeekBar b){}public void onStopTrackingTouch(SeekBar b){}};transparency.setOnSeekBarChangeListener(changes);radius.setOnSeekBarChangeListener(changes);
  new MaterialAlertDialogBuilder(this).setTitle("毛玻璃设置").setView(box).setPositiveButton("保存",(d,w)->{if(GlassStyle.save(this,transparency.getProgress()+20,radius.getProgress()+16,live.isChecked()))recreate();else toast("保存失败，请重试");}).setNegativeButton("取消",null).show();
 }
 private String ruleDescription(AppRouting rules){return rules.global?"全局：所有应用走 VPN，轻连自身除外。":!rules.enabled?"规则：自动绕过中国大陆域名、IP与局域网，其余走代理。":"应用分流："+(rules.mode==AppRouting.Mode.WHITELIST?"白名单中的应用走 VPN，其余直连。":"黑名单中的应用直连，其余走 VPN。");}
 private void connectionModes(){
  AppRouting rules;try{rules=AppRouting.load(this);}catch(Exception invalid){return;}
  LinearLayout card=card(com.google.android.material.R.attr.colorSurfaceContainer);card.addView(text("连接模式",18,true));space(card,10);
  GlassSegments group=new GlassSegments(this,new String[]{"规则","全局"},null,null,false);group.setSelected(rules.global?1:0,false);card.addView(group,new LinearLayout.LayoutParams(-1,dp(52)));
  space(card,8);TextView description=note(ruleDescription(rules));card.addView(description);
  group.setListener(index->{
   AppRouting next=AppRouting.load(this).withGlobal(index==1);
   if(!next.save(this)){toast("保存失败，请重试");group.setSelected(AppRouting.load(this).global?1:0,true);return;}
   description.setText(ruleDescription(next));toast(TunnelService.state.equals("connected")?"模式已保存，断开重连后生效":"连接模式已保存");
  });
  if(TunnelService.state.equals("connected")){space(card,6);card.addView(note("当前连接："+TunnelService.routingStatus+" · 修改后需重连"));}
 }
 private void transportModes(){
  LinearLayout card=card(com.google.android.material.R.attr.colorSurfaceContainer);card.addView(text("传输通道",18,true));space(card,10);
  GlassSegments group=new GlassSegments(this,new String[]{"兼容","加速"},null,null,false);group.setSelected(ProfileMonitor.accelerated(this)?1:0,false);card.addView(group,new LinearLayout.LayoutParams(-1,dp(52)));
  space(card,8);card.addView(note("兼容：面板指定的 VMess / VLESS / Trojan / Shadowsocks。加速：Hysteria2，需面板启用，Android 10+。头像、ChatGPT/Codex与HTTP/3使用兼容节点，其余使用加速通道。修改后重连生效。"));
  if(TunnelService.state.equals("connected"))card.addView(note("当前协议："+TunnelService.activeProtocol));
  space(card,12);card.addView(text("HY2 配置",16,true));space(card,8);
  GlassSegments performance=new GlassSegments(this,new String[]{"高性能","保守"},null,null,false);performance.setSelected(Hy2Settings.performance(this)?0:1,false);card.addView(performance,new LinearLayout.LayoutParams(-1,dp(52)));space(card,8);card.addView(note("加速通道默认使用高性能配置；保守配置可按需切换。仅对本设备生效，修改后重连。兼容通道不受影响。"));
  performance.setListener(index->{if(!Hy2Settings.savePerformance(this,index==0)){performance.setSelected(Hy2Settings.performance(this)?0:1,true);toast("保存失败，请重试");return;}toast("HY2配置已保存，重连后生效");});
  group.setListener(index->{if(index==1&&android.os.Build.VERSION.SDK_INT<29){toast("加速通道需要Android 10或更高版本");group.setSelected(0,true);return;}
   if(!getSharedPreferences("transport",0).edit().putBoolean("accelerated",index==1).commit()){toast("保存失败，请重试");group.setSelected(ProfileMonitor.accelerated(this)?1:0,true);return;}
   ProfileMonitor.refresh(this,true);toast("通道已保存，重连后生效");});
 }
 private void routing(){
  AppRouting rules;
  try{rules=AppRouting.load(this);}catch(Exception invalid){rules=new AppRouting(true,AppRouting.Mode.BLACKLIST,Collections.emptySet());body.addView(note("已保存的分流规则无效，请重新选择模式并保存。"));}
  final AppRouting saved=rules;
  body.addView(text("应用分流",24,true));space(body,8);body.addView(note("黑名单应用直连；白名单应用走 VPN。打开应用分流并选择规则模式时生效；关闭后使用域名/IP规则自动绕过大陆和局域网。全局模式忽略两类规则。"));space(body,20);
  LinearLayout optional=card(com.google.android.material.R.attr.colorSurfaceContainer);androidx.appcompat.widget.SwitchCompat enabled=new androidx.appcompat.widget.SwitchCompat(this);enabled.setText("启用应用分流");enabled.setChecked(saved.enabled);optional.addView(enabled);optional.addView(note("关闭：规则模式自动绕过大陆与局域网。打开：使用下方黑白名单。名单会保留，修改后需重连。"));enabled.setOnCheckedChangeListener((v,on)->{AppRouting current=AppRouting.load(this);if(on&&current.mode==AppRouting.Mode.WHITELIST&&current.selected.isEmpty()){toast("请先选择白名单应用");v.setChecked(false);return;}if(!current.withEnabled(on).save(this)){v.setChecked(!on);toast("保存失败，请重试");return;}toast("已保存，重连后生效");});
  LinearLayout mode=card(com.google.android.material.R.attr.colorPrimaryContainer);TextView modeTitle=text(saved.mode==AppRouting.Mode.WHITELIST?"白名单模式":"黑名单模式",21,true);mode.addView(modeTitle);space(mode,10);
  TextView modeDescription=note("");mode.addView(modeDescription);space(mode,12);mode.addView(note("黑白名单模式"));space(mode,6);
  GlassSegments modes=new GlassSegments(this,new String[]{"黑名单","白名单"},null,null,false);modes.setSelected(saved.mode.ordinal(),false);mode.addView(modes,new LinearLayout.LayoutParams(-1,dp(52)));
  LinearLayout apps=card(com.google.android.material.R.attr.colorSurfaceContainer);TextView appCount=text("",19,true);apps.addView(appCount);space(apps,10);
  apps.addView(note("可选择有启动图标的应用。已保存但卸载的应用会保留标记，可在列表中取消。轻连自身保持直连。"));space(apps,12);
  MaterialButton select=button("选择应用");apps.addView(select);select.setOnClickListener(v->chooseApps(AppRouting.load(this)));
  MaterialButton preset=button("常用代理应用预设（可选）");apps.addView(preset);
  apps.addView(note("预选已安装的 ChatGPT、Google、YouTube、GitHub、Telegram 等应用，可增删。保存后使用白名单；规则模式、重连后生效。"));
  preset.setOnClickListener(v->{AppRouting current=AppRouting.load(this);chooseApps(AppRouting.forMode(this,current.global,AppRouting.Mode.WHITELIST),true);});
  TextView warning=note("规则模式使用白名单时，请至少选择一个应用。");apps.addView(warning);
  Runnable update=()->{AppRouting latest=AppRouting.load(this);boolean white=latest.mode==AppRouting.Mode.WHITELIST;
   modeTitle.setText(white?"白名单模式":"黑名单模式");modeDescription.setText(white?"名单内的应用走 VPN，其余应用直连。":"名单内的应用直连，其余应用走 VPN。");
   appCount.setText("已选择 "+latest.selected.size()+" 个应用");warning.setVisibility(white&&latest.selected.isEmpty()?View.VISIBLE:View.GONE);
  };update.run();
  modes.setListener(index->{AppRouting current=AppRouting.load(this);AppRouting next=AppRouting.forMode(this,current.global,AppRouting.Mode.values()[index]);
   if(!next.save(this)){toast("保存失败，请重试");modes.setSelected(current.mode.ordinal(),true);return;}update.run();toast("已保存，下次连接生效");
  });
  body.addView(note(TunnelService.state.equals("connected")?"当前连接："+TunnelService.routingStatus+"。修改后需断开并重新连接。":"分流使用 Android 系统 VPN 规则，不需要额外权限。"));
 }
 private void chooseApps(AppRouting saved){chooseApps(saved,false);}
 private void chooseApps(AppRouting saved,boolean preset){
  List<AppRouting.App> all=AppRouting.apps(this,saved.selected),visible=new ArrayList<>();Set<String> selected=new HashSet<>(saved.selected);
  if(preset)selected.addAll(AppRouting.presetPackages(all,name->{try{return getPackageManager().getApplicationInfo(name,0).enabled;}catch(android.content.pm.PackageManager.NameNotFoundException missing){return false;}}));
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
  androidx.appcompat.app.AlertDialog dialog=new MaterialAlertDialogBuilder(this).setTitle(preset?"常用代理预设 · 白名单":"选择分流应用").setView(content).setPositiveButton("保存",null).setNegativeButton("取消",null).create();
  dialog.setOnShowListener(ignored->dialog.getButton(android.content.DialogInterface.BUTTON_POSITIVE).setOnClickListener(v->{
   if(saved.enabled&&saved.mode==AppRouting.Mode.WHITELIST&&selected.isEmpty()){toast("请至少选择一个应用");return;}
   if(new AppRouting(saved.global,saved.enabled,saved.mode,selected).save(this)){dialog.dismiss();build();toast("已保存，下次连接生效");}else toast("保存失败，请重试");
  }));dialog.show();
 }
 private void about(){
  LinearLayout c=card(com.google.android.material.R.attr.colorPrimaryContainer);c.addView(text("轻连",28,true));space(c,10);c.addView(note("一个节点，专注连接。\n1.1.7 · Preview\nARM64 · Android 8.0 及以上"));
  LinearLayout labs=card(com.google.android.material.R.attr.colorSurfaceContainer);labs.addView(text("速度实验室",19,true));labs.addView(note("四路并行测速与原始速度曲线，默认关闭。HY2高性能配置已加入连接页。"));MaterialButton openLabs=button("进入实验室");labs.addView(openLabs);openLabs.setOnClickListener(v->startActivity(new Intent(this,LabsActivity.class)));
  LinearLayout d=card(com.google.android.material.R.attr.colorSurfaceContainer);d.addView(text("连接与隐私",19,true));space(d,12);d.addView(note("使用 V2Ray / v2fly 与 Hysteria2 核心。\n连接时会请求 Android 系统 VPN 授权；关闭界面后仍可后台运行。\n通知栏显示本次上传、下载流量与实时速度，可直接断开。\n连接时每 10 秒向服务端上报随机安装标识、设备型号、系统与应用版本、本次速度和用量，供原面板显示在线设备。服务端可见来源 IP；断开后停止，30 秒无心跳即离线。不会读取 IMEI、通讯录、文件或浏览内容。\n不接入广告与统计 SDK。节点由面板统一指定并自动同步，主连接不提供手动添加或编辑节点；独立节点可通过账号导出。国内直连仅在规则模式且应用分流关闭时启用。账号域名记录须登录时明确同意，永久保存在服务器，仅覆盖代理连接，不包括直连请求。\n测速请求会访问 Google 204 测试地址与 Cloudflare 下载站点或本服务器链路测速接口。"));
  LinearLayout exports=card(com.google.android.material.R.attr.colorSurfaceContainer);exports.addView(text("独立节点导出",19,true));exports.addView(note("绑定设备后，每周可导出合计256GB，节点有效期7天。"));MaterialButton openExports=button("节点导出 / 查看额度");exports.addView(openExports);openExports.setOnClickListener(v->openAccount());
  LinearLayout l=card(com.google.android.material.R.attr.colorSurfaceContainer);l.addView(text("开源许可",19,true));space(l,10);l.addView(note("本应用按 GPL-3.0 提供源码。\nV2Ray / v2fly：MIT\nHysteria2：MIT\nAndroidLibV2rayLite：LGPL-3.0\nBadVPN tun2socks / v2rayNG：见随附第三方许可。"));
  LinearLayout updates=card(com.google.android.material.R.attr.colorSurfaceContainer);updates.addView(text("面板更新",19,true));space(updates,8);updateDetail=note(UpdateMonitor.status);updates.addView(updateDetail);
  MaterialButton check=button("检查更新 / 安装新版");updates.addView(check);check.setOnClickListener(v->{if(UpdateMonitor.available!=null)showUpdate();else{UpdateMonitor.refresh(this,true);toast("正在检查面板发布");}});
  MaterialButton reset=button("恢复默认界面");updates.addView(reset);reset.setOnClickListener(v->{UiTuning.reset(this);recreate();});
  MaterialButton license=button("查看第三方许可");license.setOnClickListener(v->{try(java.io.InputStream in=getAssets().open("THIRD_PARTY.txt")){new MaterialAlertDialogBuilder(this).setTitle("开源许可").setMessage(Io.readUtf8(in)).setPositiveButton("关闭",null).show();}catch(Exception e){toast("许可文件不可用");}});l.addView(license);
 }
 private void openAccount(){startActivity(new Intent(this,AccountActivity.class));}
 private boolean ready(){if(!TunnelService.state.equals("connected")){toast("请先连接 VPN");return false;}if(testing){toast("已有测试正在进行");return false;}return true;}
 private void runDelay(){if(!ready())return;testSession++;testing=true;testKind=1;latency="测试中…";detail="延迟测试 0 / 3";refresh();tester.latency(listener(false));}
 private int downloadMiB=32;
 private void downloadOptions(){
  LinearLayout box=new LinearLayout(this);box.setOrientation(LinearLayout.VERTICAL);box.setPadding(dp(24),dp(12),dp(24),0);box.addView(note("通过当前节点下载，计入节点用量。最多持续3分钟，可随时停止；MB按1024²字节计算。"));
  android.widget.RadioGroup sources=new android.widget.RadioGroup(this);android.widget.RadioButton own=new android.widget.RadioButton(this),cloud=new android.widget.RadioButton(this);own.setId(View.generateViewId());cloud.setId(View.generateViewId());own.setText("服务器链路测速（默认）");cloud.setText("Cloudflare外网测速");sources.addView(own);sources.addView(cloud);sources.check(getSharedPreferences("speed-test",0).getBoolean("cloudflare",false)?cloud.getId():own.getId());box.addView(sources);box.addView(note("服务器源测手机↔服务器链路；Cloudflare还受服务器到该站点的线路与站点限制影响。连接数及流量均为合计。"));
  EditText size=new EditText(this);size.setInputType(android.text.InputType.TYPE_CLASS_NUMBER);size.setHint("大小：1..2048 MB");size.setText(String.valueOf(getSharedPreferences("speed-test",0).getInt("sizeMiB",32)));box.addView(size);
  androidx.appcompat.app.AlertDialog dialog=new MaterialAlertDialogBuilder(this).setTitle("自定义下载测速大小").setView(box).setPositiveButton("开始",null).setNegativeButton("取消",null).create();
  dialog.setOnShowListener(x->dialog.getButton(android.content.DialogInterface.BUTTON_POSITIVE).setOnClickListener(v->{try{int mb=Integer.parseInt(size.getText().toString());if(mb<1||mb>2048)throw new IllegalArgumentException();downloadMiB=mb;getSharedPreferences("speed-test",0).edit().putInt("sizeMiB",mb).putBoolean("cloudflare",sources.getCheckedRadioButtonId()==cloud.getId()).apply();dialog.dismiss();runDownload();}catch(Exception invalid){size.setError("请输入1..2048之间的整数");}}));dialog.show();
 }
 private void runDownload(){if(!ready())return;testSession++;testing=true;testKind=2;download="准备中…";detail="正在连接测速站点…";if(graph!=null)graph.clear();refresh();boolean cloud=getSharedPreferences("speed-test",0).getBoolean("cloudflare",false);detail=(cloud?"Cloudflare外网":"服务器链路")+"测速 · "+(LabSettings.enabled(this,"parallel")?"4路合计":"单路");tester.download(listener(true),downloadMiB,LabSettings.enabled(this,"parallel")?4:1,LabSettings.enabled(this,"raw"),cloud?null:(proxy,bytes)->ApiEndpoint.serverSpeed(getApplicationContext(),proxy,bytes));}
 private SpeedTester.Listener listener(boolean dl){final int session=testSession;return new SpeedTester.Listener(){
  public void update(double value,long bytes,double frac){main.post(()->{if(!testing||isDestroyed()||session!=testSession)return;if(dl){download=String.format(Locale.CHINA,"%.2f Mbps",value);detail="已接收 "+TunnelService.size(bytes);if(graph!=null)graph.add((float)value);}else{latency=String.format(Locale.CHINA,"%.0f ms",value);detail="核心延迟测量完成";}if(progress!=null)progress.setProgressCompat((int)(frac*100),true);refresh();});}
  public void done(String result){main.post(()->{if(!testing||isDestroyed()||session!=testSession)return;testing=false;testKind=0;TunnelService.verified=true;if(dl){detail=result;download=result.split(" · ")[0].replace("平均 ","");}else{latency=result;detail="延迟测试完成 · 核心两次请求取较小值（可复用连接）";}if(progress!=null&&(!dl||!result.contains("未完成")))progress.setProgressCompat(100,true);refresh();});}
  public void failed(String error){main.post(()->{if(!testing||isDestroyed()||session!=testSession)return;testing=false;testKind=0;if(dl)download="失败";else latency="失败";detail=error;refresh();});}
 };}
 private void toggle(){String s=TunnelService.state;if(s.equals("connected")||s.equals("connecting")||s.equals("reconnecting")){testSession++;tester.stop();testing=false;testKind=0;startService(new Intent(this,TunnelService.class).setAction("STOP"));return;}
  try{AppRouting.load(this).plan(this);}catch(Exception invalid){toast(invalid.getMessage());tab=2;build();return;}
  if(!DeviceReporter.consented(this)||(ExportClient.token(this).isEmpty()&&!getSharedPreferences("guest-info",0).getBoolean("consent",false))){
   new MaterialAlertDialogBuilder(this).setTitle("连接与设备上报").setMessage("连接期间每 10 秒向服务端发送随机安装标识、设备型号、Android 与应用版本、本次速度和用量，用于现有面板的在线设备列表。访客还会提交本应用范围Android ID摘要用于会话绑定；无需账号，每次手动连接共64GB，自动重连不重置，访客不记录连接域名。服务端会记录来源 IP；断开后停止，30 秒无心跳即离线。不读取 IMEI、通讯录或文件。账号登录时会另行告知服务器永久记录连接域名和时间，不含HTTPS完整路径或内容。")
    .setPositiveButton("同意并连接",(dialog,which)->{
     if(getSharedPreferences(DeviceReporter.PREFS,MODE_PRIVATE).edit().putBoolean(DeviceReporter.CONSENT,true).commit()&&getSharedPreferences("guest-info",0).edit().putBoolean("consent",true).commit())requestVpn();
     else toast("无法保存上报说明确认，请重试");
    }).setNegativeButton("取消",null).show();return;
  }
  requestVpn();
 }
 private void requestVpn(){Intent ask=VpnService.prepare(this);if(ask!=null)startActivityForResult(ask,77);else startTunnel();}
 private void startTunnel(){if(Build.VERSION.SDK_INT>=33&&checkSelfPermission(Manifest.permission.POST_NOTIFICATIONS)!=PackageManager.PERMISSION_GRANTED){requestPermissions(new String[]{Manifest.permission.POST_NOTIFICATIONS},78);return;}startForegroundService(new Intent(this,TunnelService.class));}
 @Override public void onRequestPermissionsResult(int r,String[] p,int[] g){super.onRequestPermissionsResult(r,p,g);if(r==78){if(g.length>0&&g[0]!=PackageManager.PERMISSION_GRANTED)toast("通知权限未允许，可能无法在通知栏查看流量");startForegroundService(new Intent(this,TunnelService.class));}}
 @Override protected void onActivityResult(int r,int code,Intent data){super.onActivityResult(r,code,data);if(r==77){if(code==RESULT_OK)startTunnel();else toast("未获得 VPN 授权");}else if(r==88&&code==RESULT_OK&&data!=null&&data.getData()!=null&&pendingExport!=null){JSONObject profile=pendingExport;pendingExport=null;android.net.Uri target=data.getData();new Thread(()->{try(java.io.OutputStream out=getContentResolver().openOutputStream(target)){if(out==null)throw new java.io.IOException();ExportClient.archive(profile,out);main.post(()->toast("节点配置包已保存"));}catch(Exception failure){main.post(()->toast("保存失败，请重新导出"));}},"node-export").start();}}
 private void showUpdate(){
  UpdateMonitor.APK apk=UpdateMonitor.available;if(apk==null)return;UpdateMonitor.prompted(this,apk);
  new MaterialAlertDialogBuilder(this).setTitle("发现新版本 "+apk.name).setMessage(apk.notes+"\n安装包约 "+TunnelService.size(apk.size)+"，将校验原签名并交给系统确认安装。")
   .setPositiveButton("下载并更新",(dialog,which)->UpdateMonitor.download(this,apk,new UpdateMonitor.Result(){
    public void done(java.io.File file){main.post(()->{if(isDestroyed())return;try{UpdateMonitor.install(MainActivity.this,file);toast("若需允许安装来源，请授权后再次点击安装新版");}catch(Exception failed){toast("无法打开系统安装器，请重试");}});}
    public void failed(){main.post(()->{if(!isDestroyed())toast(UpdateMonitor.status);});}
   })).setNegativeButton("稍后",null).show();
 }
 private void refresh(){
  AccountMonitor.refresh(this);if(accountUsage!=null)accountUsage.setText(AccountMonitor.display(this));
  if(updateDetail!=null)updateDetail.setText(UpdateMonitor.status);
  if(profileDetail!=null){ProfileMonitor.Profile profile=ProfileMonitor.current;String value=profile==null?ProfileMonitor.status:profile.label+" · "+profile.protocolLabel+"\n"+ProfileMonitor.status;if(profile!=null&&TunnelService.state.equals("connected")&&!profile.revision.equals(TunnelService.activeProfileRevision))value+="\n面板已更新配置，断开重连后使用新节点";profileDetail.setText(value);}
  if(onlineValue!=null){onlineValue.setText(OnlineMonitor.count==null?(OnlineMonitor.status.startsWith("待接入")?"待接入":"不可用"):OnlineMonitor.fresh()?OnlineMonitor.count+" 台":"不可用");onlineDetail.setText((OnlineMonitor.count!=null&&!OnlineMonitor.fresh()?"上次 "+OnlineMonitor.count+" 台 · ":"")+OnlineMonitor.status+((OnlineMonitor.updatedAt>0)?"\n"+new java.text.SimpleDateFormat("HH:mm:ss",Locale.CHINA).format(new java.util.Date(OnlineMonitor.updatedAt)):""));}
  if(quotaValue!=null){QuotaInfo q=QuotaMonitor.current;if(q==null){quotaValue.setText(QuotaMonitor.status.startsWith("待接入")?"待接入":"不可用");quotaDetail.setText(QuotaMonitor.status);}else{quotaValue.setText(!QuotaMonitor.fresh()?"不可用":q.expired(System.currentTimeMillis())?"已过期":q.total!=0&&q.remaining()==0?"已用尽":q.total==0?"不限量":TunnelService.size(q.remaining()));String exp=q.expire==0?"无到期限制":new java.text.SimpleDateFormat("yyyy-MM-dd",Locale.CHINA).format(new java.util.Date(q.expire*1000));String stamp=new java.text.SimpleDateFormat("HH:mm:ss",Locale.CHINA).format(new java.util.Date(QuotaMonitor.updatedAt));quotaDetail.setText((QuotaMonitor.fresh()?"":"上次数据 · ")+"已用 "+TunnelService.size(q.used())+" / "+(q.total==0?"不限量":TunnelService.size(q.total))+"\n到期："+exp+"\n"+QuotaMonitor.status+" · "+stamp);}}
  if(reportDetail!=null)reportDetail.setText(TunnelService.reportingStatus);
  String s=TunnelService.state;boolean on=s.equals("connected"),busy=s.equals("connecting")||s.equals("reconnecting")||s.equals("stopping");
  if(!s.equals(lastState)){if(!on&&testing){testSession++;tester.stop();testing=false;testKind=0;detail="连接已断开，测试停止";}lastState=s;}
  if(on&&TunnelService.verified&&connectionGlyph!=null&&successAnimatedAt!=TunnelService.connectedAt){successAnimatedAt=TunnelService.connectedAt;connectionGlyph.success();}
  if(status!=null){status.setText(on?"已连接":s.equals("reconnecting")?"恢复中":s.equals("connecting")?"连接中":s.equals("stopping")?"断开中":s.equals("error")?"连接失败":"未连接");caption.setText(on&&TunnelService.verified?"网络验证成功 · 专属通道运行中":TunnelService.message);power.setText(on?"断开连接":s.equals("reconnecting")?"取消恢复":s.equals("connecting")?"取消连接":"连接");power.setEnabled(!s.equals("stopping"));long sec=on?(SystemClock.elapsedRealtime()-TunnelService.connectedAt)/1000:0;clock.setText(String.format(Locale.CHINA,"%02d:%02d:%02d",sec/3600,sec/60%60,sec%60));up.setText(TunnelService.size(TunnelService.uploadRate)+"/s");down.setText(TunnelService.size(TunnelService.downloadRate)+"/s");upTotal.setText("已用 "+TunnelService.size(TunnelService.uploadBytes));downTotal.setText("已用 "+TunnelService.size(TunnelService.downloadBytes));}
  if(latencyValue!=null){latencyValue.setText(latency);downloadValue.setText(download);testDetail.setText(detail);delayButton.setEnabled(on&&!testing);downloadButton.setEnabled(on&&!testing);stopButton.setVisibility(testing?View.VISIBLE:View.GONE);}
 }
 private void toast(String t){Toast.makeText(this,t,Toast.LENGTH_SHORT).show();}
 private class PowerGlyph extends View {
  android.animation.ValueAnimator pulse;float halo;
  void success(){if(!android.animation.ValueAnimator.areAnimatorsEnabled()||!isAttachedToWindow())return;if(pulse!=null)pulse.cancel();pulse=android.animation.ValueAnimator.ofFloat(0,1);pulse.setDuration(650);pulse.setInterpolator(new android.view.animation.DecelerateInterpolator());pulse.addUpdateListener(a->{halo=(float)a.getAnimatedValue();float scale=1+.08f*(float)Math.sin(Math.PI*halo);setScaleX(scale);setScaleY(scale);invalidate();});pulse.start();}
  @Override protected void onDetachedFromWindow(){if(pulse!=null)pulse.cancel();setScaleX(1);setScaleY(1);super.onDetachedFromWindow();}

  Paint p=new Paint(3);PowerGlyph(Context c){super(c);setContentDescription("连接状态图标");}
  @Override protected void onDraw(Canvas c){float w=getWidth(),h=getHeight();p.setColor(color(androidx.appcompat.R.attr.colorPrimary));p.setAlpha(255);p.setStyle(Paint.Style.FILL);c.drawCircle(w/2,h/2,w*.49f,p);
   if(halo>0&&halo<1){p.setColor(color(com.google.android.material.R.attr.colorOnPrimary));p.setAlpha((int)(140*(1-halo)));p.setStyle(Paint.Style.STROKE);p.setStrokeWidth(dp(2));c.drawCircle(w/2,h/2,w*(.34f+.14f*halo),p);}
   p.setAlpha(255);p.setColor(color(com.google.android.material.R.attr.colorOnPrimary));p.setStyle(Paint.Style.STROKE);p.setStrokeWidth(dp(5));p.setStrokeCap(Paint.Cap.ROUND);c.drawArc(w*.27f,h*.27f,w*.73f,h*.73f,-48,276,false,p);c.drawLine(w*.5f,h*.22f,w*.5f,h*.49f,p);
  }
 }
 private class Graph extends View {
  ArrayList<Float> values=new ArrayList<>();Paint p=new Paint(3);Path path=new Path();
  Graph(Context c){super(c);setContentDescription("下载速度趋势");}void clear(){values.clear();invalidate();}void add(float n){values.add(n);if(values.size()>48)values.remove(0);invalidate();}
  @Override protected void onDraw(Canvas c){float w=getWidth(),h=getHeight();p.setColor(color(com.google.android.material.R.attr.colorOnSecondaryContainer));p.setAlpha(25);p.setStrokeWidth(dp(1));for(int i=1;i<=3;i++)c.drawLine(0,h*i/4,w,h*i/4,p);if(values.size()<2)return;float max=1;for(float v:values)max=Math.max(max,v);path.reset();for(int i=0;i<values.size();i++){float x=i*w/47,y=h-dp(6)-values.get(i)/max*(h-dp(18));if(i==0)path.moveTo(x,y);else path.lineTo(x,y);}p.setAlpha(255);p.setStyle(Paint.Style.STROKE);p.setStrokeWidth(dp(3));p.setStrokeJoin(Paint.Join.ROUND);p.setStrokeCap(Paint.Cap.ROUND);c.drawPath(path,p);p.setStyle(Paint.Style.FILL);}
 }
}
