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
 private LinearLayout root,body,nav;
 private TextView quotaValue,quotaDetail,onlineValue,onlineDetail;
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
 private final Runnable ticker=new Runnable(){public void run(){QuotaMonitor.refresh(MainActivity.this,false);OnlineMonitor.refresh(MainActivity.this,false);refresh();main.postDelayed(this,500);}};
 @Override public void onCreate(Bundle b){
  DynamicColors.applyToActivityIfAvailable(this);super.onCreate(b);
  WindowCompat.setDecorFitsSystemWindows(getWindow(),false);
  if(b!=null){latency=b.getString("latency","—");download=b.getString("download","—");tab=b.getInt("tab",0);}
  root=new LinearLayout(this);root.setOrientation(LinearLayout.VERTICAL);root.setBackgroundColor(color(com.google.android.material.R.attr.colorSurface));
  ViewCompat.setOnApplyWindowInsetsListener(root,(v,insets)->{androidx.core.graphics.Insets s=insets.getInsets(WindowInsetsCompat.Type.systemBars());v.setPadding(s.left,s.top,s.right,s.bottom);return insets;});
  setContentView(root);
  boolean night=(getResources().getConfiguration().uiMode & android.content.res.Configuration.UI_MODE_NIGHT_MASK)==android.content.res.Configuration.UI_MODE_NIGHT_YES;
  new WindowInsetsControllerCompat(getWindow(),root).setAppearanceLightStatusBars(!night);
  new WindowInsetsControllerCompat(getWindow(),root).setAppearanceLightNavigationBars(!night);
  LinearLayout header=new LinearLayout(this);header.setGravity(Gravity.CENTER_VERTICAL);header.setPadding(dp(24),dp(18),dp(24),dp(10));
  TextView title=text("轻连",30,true);header.addView(title,new LinearLayout.LayoutParams(0,-2,1));
  TextView badge=text("PRIVATE / 01",11,true);badge.setTextColor(color(androidx.appcompat.R.attr.colorPrimary));header.addView(badge);root.addView(header);
  ScrollView scroll=new ScrollView(this);scroll.setFillViewport(true);scroll.setClipToPadding(false);
  body=new LinearLayout(this);body.setOrientation(LinearLayout.VERTICAL);body.setPadding(dp(20),dp(12),dp(20),dp(22));scroll.addView(body);root.addView(scroll,new LinearLayout.LayoutParams(-1,0,1));
  nav=new LinearLayout(this);nav.setPadding(dp(16),dp(8),dp(16),dp(8));root.addView(nav);build();
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
 private LinearLayout card(int tint){MaterialCardView c=new MaterialCardView(this);c.setRadius(dp(28));c.setCardElevation(0);c.setStrokeWidth(0);c.setCardBackgroundColor(color(tint));LinearLayout p=new LinearLayout(this);p.setOrientation(LinearLayout.VERTICAL);p.setPadding(dp(22),dp(22),dp(22),dp(22));c.addView(p);LinearLayout.LayoutParams lp=new LinearLayout.LayoutParams(-1,-2);lp.bottomMargin=dp(14);body.addView(c,lp);return p;}
 private MaterialButton button(String title){MaterialButton b=new MaterialButton(this);b.setText(title);b.setTextSize(15);b.setCornerRadius(dp(28));b.setMinHeight(dp(54));return b;}
 private void build(){
  body.removeAllViews();nav.removeAllViews();String[] names={"连接","测速","关于"};
  for(int i=0;i<3;i++){final int index=i;MaterialButton b=new MaterialButton(this,null,com.google.android.material.R.attr.materialButtonOutlinedStyle);b.setText(names[i]);b.setCornerRadius(dp(24));if(tab==i){b.setBackgroundTintList(android.content.res.ColorStateList.valueOf(color(com.google.android.material.R.attr.colorSecondaryContainer)));b.setTextColor(color(com.google.android.material.R.attr.colorOnSecondaryContainer));b.setStrokeWidth(0);}b.setOnClickListener(v->{tab=index;build();});LinearLayout.LayoutParams lp=new LinearLayout.LayoutParams(0,dp(54),1);lp.setMargins(dp(4),0,dp(4),0);nav.addView(b,lp);}
  quotaValue=quotaDetail=onlineValue=onlineDetail=null;status=caption=clock=up=down=upTotal=downTotal=latencyValue=downloadValue=testDetail=null;power=delayButton=downloadButton=stopButton=null;progress=null;graph=null;
  if(tab==0)home();else if(tab==1)speed();else about();refresh();
 }
 private void home(){
  LinearLayout hero=card(com.google.android.material.R.attr.colorPrimaryContainer);hero.setGravity(Gravity.CENTER_HORIZONTAL);
  TextView label=text("专属连接",14,true);label.setGravity(Gravity.CENTER);label.setTextColor(color(com.google.android.material.R.attr.colorOnPrimaryContainer));hero.addView(label);space(hero,16);
  PowerGlyph glyph=new PowerGlyph(this);hero.addView(glyph,new LinearLayout.LayoutParams(dp(88),dp(88)));space(hero,14);
  status=text("未连接",30,true);status.setGravity(Gravity.CENTER);status.setTextColor(color(com.google.android.material.R.attr.colorOnPrimaryContainer));hero.addView(status);space(hero,8);caption=note("");caption.setGravity(Gravity.CENTER);caption.setTextColor(color(com.google.android.material.R.attr.colorOnPrimaryContainer));hero.addView(caption);space(hero,16);
  power=button("连接");hero.addView(power,new LinearLayout.LayoutParams(-1,dp(62)));power.setOnClickListener(v->toggle());space(hero,8);
  clock=note("00:00:00");clock.setGravity(Gravity.CENTER);clock.setTextColor(color(com.google.android.material.R.attr.colorOnPrimaryContainer));hero.addView(clock);
  LinearLayout summary=card(com.google.android.material.R.attr.colorSurfaceContainer);summary.addView(text("连接概览",18,true));space(summary,18);
  LinearLayout row=new LinearLayout(this);LinearLayout online=new LinearLayout(this),quota=new LinearLayout(this);online.setOrientation(LinearLayout.VERTICAL);quota.setOrientation(LinearLayout.VERTICAL);row.addView(online,new LinearLayout.LayoutParams(0,-2,1));row.addView(quota,new LinearLayout.LayoutParams(0,-2,1));summary.addView(row);
  online.addView(note("实时在线人数"));space(online,8);onlineValue=text("待接入",26,true);online.addView(onlineValue);space(online,6);onlineDetail=note("按在线设备统计");online.addView(onlineDetail);
  quota.addView(note("服务端剩余流量"));space(quota,8);quotaValue=text("待接入",26,true);quota.addView(quotaValue);space(quota,6);quotaDetail=note("需要该节点的订阅链接");quota.addView(quotaDetail);
  space(summary,12);MaterialButton update=button("刷新连接数据");update.setOnClickListener(v->{QuotaMonitor.refresh(this,true);OnlineMonitor.refresh(this,true);});summary.addView(update);
  LinearLayout node=card(com.google.android.material.R.attr.colorSurfaceContainer);node.addView(text("唯一节点",18,true));space(node,6);node.addView(note("专属通道  ·  VMess / TCP\n固定内置，无需选择或导入"));

  LinearLayout stats=card(com.google.android.material.R.attr.colorSurfaceContainer);stats.addView(text("实时流量",18,true));space(stats,16);
  LinearLayout cols=new LinearLayout(this);stats.addView(cols);
  LinearLayout a=new LinearLayout(this),b=new LinearLayout(this);a.setOrientation(LinearLayout.VERTICAL);b.setOrientation(LinearLayout.VERTICAL);cols.addView(a,new LinearLayout.LayoutParams(0,-2,1));cols.addView(b,new LinearLayout.LayoutParams(0,-2,1));
  a.addView(note("↑ 上传速度"));up=text("0 B/s",21,true);a.addView(up);space(a,5);upTotal=note("已用 0 B");a.addView(upTotal);
  b.addView(note("↓ 下载速度"));down=text("0 B/s",21,true);b.addView(down);space(b,5);downTotal=note("已用 0 B");b.addView(downTotal);
  space(stats,14);stats.addView(note("用量按本次连接统计，通知栏每秒刷新。"));
  MaterialButton go=button("前往网络测速");go.setOnClickListener(v->{tab=1;build();});body.addView(go);
 }
 private void speed(){
  body.addView(text("看看连接表现",28,true));space(body,8);body.addView(note("所有测试都通过唯一节点进行"));space(body,20);
  LinearLayout c=card(com.google.android.material.R.attr.colorSurfaceContainer);c.addView(note("连接延迟 / 三次中位数"));space(c,8);latencyValue=text(latency,36,true);c.addView(latencyValue);space(c,8);c.addView(note("包含代理连接与 HTTPS 握手时间"));space(c,12);
  delayButton=button("测试延迟");delayButton.setOnClickListener(v->runDelay());c.addView(delayButton);
  LinearLayout d=card(com.google.android.material.R.attr.colorSecondaryContainer);d.addView(note("下载速度"));space(d,8);downloadValue=text(download,34,true);downloadValue.setTextColor(color(com.google.android.material.R.attr.colorOnSecondaryContainer));d.addView(downloadValue);space(d,12);
  graph=new Graph(this);d.addView(graph,new LinearLayout.LayoutParams(-1,dp(100)));space(d,12);
  progress=new LinearProgressIndicator(this);progress.setMax(100);progress.setTrackThickness(dp(6));progress.setTrackCornerRadius(dp(3));d.addView(progress,new LinearLayout.LayoutParams(-1,dp(8)));space(d,12);
  testDetail=note(detail);testDetail.setTextColor(color(com.google.android.material.R.attr.colorOnSecondaryContainer));d.addView(testDetail);space(d,12);downloadButton=button("开始下载测速");downloadButton.setOnClickListener(v->new MaterialAlertDialogBuilder(this).setTitle("开始下载测速？").setMessage("通过当前节点下载测试数据，接收约 32 MB 或持续约 12 秒。网络等待可能增加耗时，随时可以停止。").setPositiveButton("开始",(dialog,which)->runDownload()).setNegativeButton("取消",null).show());d.addView(downloadButton);
  stopButton=button("停止测试");stopButton.setOnClickListener(v->{testSession++;tester.stop();testing=false;testKind=0;detail="测试已停止";refresh();});d.addView(stopButton);
  body.addView(note("测速结果受服务器、线路和测试站点影响。Mbps 为兆比特/秒，8 Mbps 约等于 1 MB/s。"));
 }
 private void about(){
  LinearLayout c=card(com.google.android.material.R.attr.colorPrimaryContainer);c.addView(text("轻连",36,true));space(c,10);c.addView(note("一个节点，专注连接。\n1.0.1 · Preview\nARM64 · Android 8.0 及以上"));
  LinearLayout d=card(com.google.android.material.R.attr.colorSurfaceContainer);d.addView(text("连接与隐私",19,true));space(d,12);d.addView(note("使用 V2Ray / v2fly 核心。\n连接时会请求 Android 系统 VPN 授权；关闭界面后仍可后台运行。\n通知栏显示本次上传、下载流量与实时速度，可直接断开。\n不接入广告与统计 SDK，不提供节点编辑、导出或订阅功能。\n测速请求会访问 Google 204 测试地址与 Cloudflare 下载站点。"));
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
  Intent ask=VpnService.prepare(this);if(ask!=null)startActivityForResult(ask,77);else startTunnel();
 }
 private void startTunnel(){if(Build.VERSION.SDK_INT>=33&&checkSelfPermission(Manifest.permission.POST_NOTIFICATIONS)!=PackageManager.PERMISSION_GRANTED){requestPermissions(new String[]{Manifest.permission.POST_NOTIFICATIONS},78);return;}startForegroundService(new Intent(this,TunnelService.class));}
 @Override public void onRequestPermissionsResult(int r,String[] p,int[] g){super.onRequestPermissionsResult(r,p,g);if(r==78){if(g.length>0&&g[0]!=PackageManager.PERMISSION_GRANTED)toast("通知权限未允许，可能无法在通知栏查看流量");startForegroundService(new Intent(this,TunnelService.class));}}
 @Override protected void onActivityResult(int r,int code,Intent data){super.onActivityResult(r,code,data);if(r==77){if(code==RESULT_OK)startTunnel();else toast("未获得 VPN 授权");}}
 private void refresh(){
  if(onlineValue!=null){onlineValue.setText(OnlineMonitor.count==null?"待接入":OnlineMonitor.count+" 台");onlineDetail.setText(OnlineMonitor.status+((OnlineMonitor.updatedAt>0)?"\n"+new java.text.SimpleDateFormat("HH:mm:ss",Locale.CHINA).format(new java.util.Date(OnlineMonitor.updatedAt)):""));}
  if(quotaValue!=null){QuotaInfo q=QuotaMonitor.current;if(q==null){quotaValue.setText("待接入");quotaDetail.setText(QuotaMonitor.status);}else{quotaValue.setText(q.total==0?"不限量":TunnelService.size(q.remaining()));String exp=q.expire==0?"无到期限制":new java.text.SimpleDateFormat("yyyy-MM-dd",Locale.CHINA).format(new java.util.Date(q.expire*1000));String stamp=new java.text.SimpleDateFormat("HH:mm:ss",Locale.CHINA).format(new java.util.Date(QuotaMonitor.updatedAt));quotaDetail.setText("已用 "+TunnelService.size(q.used())+" / "+(q.total==0?"不限量":TunnelService.size(q.total))+"\n到期："+exp+"\n"+QuotaMonitor.status+" · "+stamp);}}
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
