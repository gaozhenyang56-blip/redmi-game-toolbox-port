package com.novalab.native3d;

import android.app.Activity;
import android.content.Intent;
import android.app.AlertDialog;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.content.res.Configuration;
import android.content.pm.ActivityInfo;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.GridLayout;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.SeekBar;
import android.widget.TextView;
import java.util.Locale;

/** All-native Android controls over the real-time OpenGL ES simulator. */
public final class MainActivity extends Activity {
  private final SimCore sim=new SimCore();
  private LabGLView graphics;
  private LinearLayout root,screenTabs,actions,body,workspace,panelRoot;
  private FrameLayout sceneFrame;
  private boolean panMode=false;
  private TextView panButton;
  private TextView status,modeStatus,sceneCounter,sectionHeading;
  private ScrollView scroll;
  private int panel=0,chemSource=-1,reagentVolume=30;
  private String query="";
  private final Handler handler=new Handler(Looper.getMainLooper());
  private final int BACK=0xFF080F20,CARD=0xFF121F34,CARD2=0xFF1B2A43,EDGE=0xFF30415E,WHITE=0xFFEDF5FF,MUTED=0xFF9FB3CC,GREEN=0xFF69E6C7,BLUE=0xFF8BAFFF;
  private int d(float dp){return (int)(getResources().getDisplayMetrics().density*dp+.5f);}
  private GradientDrawable rounded(int fill,int radius,int border){GradientDrawable bg=new GradientDrawable();bg.setColor(fill);bg.setCornerRadius(d(radius));if(border!=0)bg.setStroke(d(1),border);return bg;}
  private TextView text(String s,int sp,int c,boolean bold){TextView t=new TextView(this);t.setText(s);t.setTextSize(sp);t.setTextColor(c);t.setGravity(Gravity.CENTER_VERTICAL);t.setFontFeatureSettings("kern");if(bold)t.setTypeface(Typeface.DEFAULT,Typeface.BOLD);return t;}
  private LinearLayout vertical(){LinearLayout v=new LinearLayout(this);v.setOrientation(LinearLayout.VERTICAL);return v;}
  private LinearLayout horizontal(){LinearLayout v=new LinearLayout(this);v.setOrientation(LinearLayout.HORIZONTAL);v.setGravity(Gravity.CENTER_VERTICAL);return v;}
  private LinearLayout.LayoutParams lp(int w,int h){return new LinearLayout.LayoutParams(w<0?w:d(w),h<0?h:d(h));}
  private TextView chip(String label,boolean selected,Runnable click){TextView t=text(label,13,selected?BACK:WHITE,true);t.setGravity(Gravity.CENTER);t.setPadding(d(9),d(9),d(9),d(9));t.setBackground(rounded(selected?GREEN:CARD2,11,selected?0:EDGE));t.setOnClickListener(v->click.run());return t;}
  private void rowGap(LinearLayout row,int px){View space=new View(this);row.addView(space,lp(px,1));}
  private void padding(View v,int l,int top,int right,int bottom){v.setPadding(d(l),d(top),d(right),d(bottom));}
  @Override public void onCreate(Bundle b){super.onCreate(b);getWindow().setStatusBarColor(BACK);getWindow().setNavigationBarColor(BACK);sim.load(this);int orient=getSharedPreferences("nova_ui",0).getInt("orientation",ActivityInfo.SCREEN_ORIENTATION_UNSPECIFIED);if(orient!=ActivityInfo.SCREEN_ORIENTATION_UNSPECIFIED)setRequestedOrientation(orient);build();handler.postDelayed(new Runnable(){@Override public void run(){if(!isFinishing()){refreshStatusOnly();handler.postDelayed(this,350);}}},350);}
  private void build(){
    boolean landscape=getResources().getConfiguration().orientation==Configuration.ORIENTATION_LANDSCAPE;
    root=vertical();root.setBackgroundColor(BACK);setContentView(root);
    LinearLayout top=horizontal();padding(top,landscape?13:17,6,12,6);root.addView(top,lp(-1,landscape?50:58));
    LinearLayout brand=vertical();TextView title=text("◈  星图实验室",landscape?18:20,WHITE,true);brand.addView(title);
    TextView sub=text("NOVA LAB  /  原生三维模拟引擎",10,GREEN,true);brand.addView(sub);
    top.addView(brand,new LinearLayout.LayoutParams(0,-2,1));
    top.addView(chip("横竖",false,()->new AlertDialog.Builder(this).setTitle("屏幕方向").setItems(new String[]{"跟随系统","横屏","竖屏"},(dialog,which)->{int orient=which==1?ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE:which==2?ActivityInfo.SCREEN_ORIENTATION_PORTRAIT:ActivityInfo.SCREEN_ORIENTATION_UNSPECIFIED;getSharedPreferences("nova_ui",0).edit().putInt("orientation",orient).apply();setRequestedOrientation(orient);}).show()),lp(58,36));rowGap(top,7);
    top.addView(chip("存档",false,()->{synchronized(sim){sim.save(this);}refresh();}),lp(58,36));rowGap(top,7);
    top.addView(chip("归位",false,()->graphics.resetCamera()),lp(58,36));
    screenTabs=horizontal();padding(screenTabs,10,3,10,landscape?4:7);root.addView(screenTabs,lp(-1,landscape?43:49));

    // Landscape: stage left, instrument library right. Portrait: stage above library.
    workspace=landscape?horizontal():vertical();
    root.addView(workspace,new LinearLayout.LayoutParams(-1,0,1));
    sceneFrame=new FrameLayout(this);sceneFrame.setBackground(rounded(0xFF111E32,17,EDGE));
    graphics=new LabGLView(this,sim);graphics.setPanMode(panMode);
    sceneFrame.addView(graphics,new FrameLayout.LayoutParams(-1,-1));
    modeStatus=text("",11,GREEN,true);padding(modeStatus,10,7,10,7);modeStatus.setBackground(rounded(0xC215263C,11,0));
    FrameLayout.LayoutParams ms=new FrameLayout.LayoutParams(-2,d(30),Gravity.TOP|Gravity.LEFT);
    ms.setMargins(d(10),d(11),0,0);sceneFrame.addView(modeStatus,ms);
    sceneCounter=text("",11,BLUE,false);padding(sceneCounter,9,6,9,6);sceneCounter.setBackground(rounded(0xC215263C,11,0));
    FrameLayout.LayoutParams ct=new FrameLayout.LayoutParams(-2,d(30),Gravity.TOP|Gravity.RIGHT);
    ct.setMargins(0,d(11),d(10),0);sceneFrame.addView(sceneCounter,ct);

    // Floating on-canvas camera controls, usable in both orientations.
    LinearLayout cameraTools=vertical();cameraTools.setGravity(Gravity.CENTER);
    cameraTools.setBackground(rounded(0xC511213A,14,EDGE));padding(cameraTools,4,4,4,4);
    TextView zoomIn=chip("＋",false,()->graphics.zoomBy(1.24f));
    TextView zoomOut=chip("－",false,()->graphics.zoomBy(1f/1.24f));
    panButton=chip(panMode?"平移":"旋转",panMode,()->{panMode=!panMode;graphics.setPanMode(panMode);panButton.setText(panMode?"平移":"旋转");panButton.setTextColor(panMode?BACK:WHITE);panButton.setBackground(rounded(panMode?GREEN:CARD2,11,panMode?0:EDGE));});
    TextView home=chip("⌖",false,()->graphics.resetCamera());
    cameraTools.addView(zoomIn,lp(50,40));cameraTools.addView(zoomOut,lp(50,40));
    cameraTools.addView(panButton,lp(50,40));cameraTools.addView(home,lp(50,40));
    FrameLayout.LayoutParams controls=new FrameLayout.LayoutParams(d(58),-2,Gravity.RIGHT|Gravity.CENTER_VERTICAL);
    controls.rightMargin=d(8);sceneFrame.addView(cameraTools,controls);
    TextView help=text(landscape?"拖模型 · 空白旋转 · 双指缩放/移动":"双指缩放/平移 · 点击选中器材",10,0xFFD6E6F5,false);
    padding(help,9,5,9,5);help.setBackground(rounded(0xB31B2B40,12,0));
    FrameLayout.LayoutParams hp=new FrameLayout.LayoutParams(-2,d(24),Gravity.LEFT|Gravity.BOTTOM);
    hp.leftMargin=d(9);hp.bottomMargin=d(9);sceneFrame.addView(help,hp);

    panelRoot=vertical();panelRoot.setBackground(rounded(CARD,20,EDGE));
    if(landscape){
      LinearLayout.LayoutParams stage=new LinearLayout.LayoutParams(0,-1,1);
      stage.setMargins(d(8),0,d(4),d(8));workspace.addView(sceneFrame,stage);
      int panelWidth=Math.min(355,Math.max(288,(int)(getResources().getConfiguration().screenWidthDp*.40f)));
      LinearLayout.LayoutParams side=lp(panelWidth,-1);side.setMargins(d(4),0,d(8),d(8));workspace.addView(panelRoot,side);
    }else{
      LinearLayout.LayoutParams stage=new LinearLayout.LayoutParams(-1,0,1.15f);
      stage.setMargins(d(9),0,d(9),d(5));workspace.addView(sceneFrame,stage);
      LinearLayout.LayoutParams bottom=new LinearLayout.LayoutParams(-1,0,.85f);
      bottom.setMargins(d(9),0,d(9),d(7));workspace.addView(panelRoot,bottom);
    }
    LinearLayout bar=horizontal();padding(bar,14,7,12,7);panelRoot.addView(bar,lp(-1,48));
    sectionHeading=text("器材库",15,WHITE,true);bar.addView(sectionHeading,new LinearLayout.LayoutParams(0,-2,1));
    bar.addView(chip("▶ 演示",false,()->{synchronized(sim){sim.example();sim.save(this);}refresh();}),lp(72,34));rowGap(bar,6);
    bar.addView(chip("清空",false,()->new AlertDialog.Builder(this).setTitle("清空当前实验台？").setMessage("仅清空当前学科。其他实验台和本地存档不受影响。").setNegativeButton("取消",null).setPositiveButton("清空",(dialog,which)->{synchronized(sim){sim.clear();sim.save(this);}refresh();}).show()),lp(58,34));
    actions=horizontal();padding(actions,11,0,11,6);panelRoot.addView(actions,lp(-1,42));
    scroll=new ScrollView(this);scroll.setFillViewport(false);scroll.setVerticalScrollBarEnabled(false);
    panelRoot.addView(scroll,new LinearLayout.LayoutParams(-1,0,1));
    body=vertical();padding(body,12,4,12,5);scroll.addView(body,new ScrollView.LayoutParams(-1,-2));
    status=text("",11,MUTED,false);padding(status,13,5,13,5);panelRoot.addView(status,lp(-1,32));
    refresh();
  }
  @Override public void onConfigurationChanged(Configuration newConfig){
    super.onConfigurationChanged(newConfig);
    float[] previous=graphics==null?null:graphics.getCameraState();
    if(graphics!=null)graphics.onPause();
    build();
    if(previous!=null)graphics.setCameraState(previous);
    graphics.onResume();
  }
  public void refresh(){
    if(screenTabs==null||actions==null||body==null)return;
    screenTabs.removeAllViews();String[] names={"化学","电学","力学","光学"};
    for(int i=0;i<4;i++){final int m=i;TextView t=chip(names[i],m==sim.mode,()->{synchronized(sim){sim.changeMode(m);}panel=0;query="";refresh();});
      LinearLayout.LayoutParams p=new LinearLayout.LayoutParams(0,d(36),1);p.setMargins(d(3),0,d(3),0);screenTabs.addView(t,p);}
    actions.removeAllViews();String[] tabs=sim.mode==SimCore.CHEM?new String[]{"器材","试剂","属性","记录"}:new String[]{"器材","属性","记录"};
    int tabIndex=0;for(String name:tabs){final int p=name.equals("器材")?0:name.equals("试剂")?1:name.equals("属性")?2:3;TextView t=chip(name,p==panel,()->{panel=p;query="";rebuildPanel();refresh();});
      LinearLayout.LayoutParams a=new LinearLayout.LayoutParams(0,d(34),1);a.setMargins(d(3),0,d(3),0);actions.addView(t,a);tabIndex++;}
    if(sim.mode!=SimCore.CHEM&&panel==1)panel=2;
    if(sim.mode==SimCore.MOTION || sim.mode==SimCore.CHEM){rowGap(actions,6);TextView play=chip(sim.running?"Ⅱ 暂停":"▶ 运行",sim.running,()->{sim.running=!sim.running;refresh();});actions.addView(play,lp(83,34));}
    rebuildPanel();refreshStatusOnly();
  }
  private void refreshStatusOnly(){if(status==null)return;
    synchronized(sim){status.setText("◉ "+sim.status);modeStatus.setText("● OpenGL ES · "+SimCore.MODE_NAMES[sim.mode]);sceneCounter.setText(sim.active().size()+" 模型 / "+(sim.mode==SimCore.CIRCUIT?sim.wires.size()+" 导线":"自由场景"));}
  }
  private void rebuildPanel(){if(body==null)return;body.removeAllViews();
    if(panel==0)showLibrary();else if(panel==1&&sim.mode==SimCore.CHEM)showReagents();else if(panel==2)showProperties();else showRecords();
    scroll.scrollTo(0,0);
  }
  private void addExplanation(String s){TextView t=text(s,12,MUTED,false);padding(t,3,2,3,8);body.addView(t,lp(-1,-2));}
  private void addTitle(String s){TextView title=text(s,15,WHITE,true);padding(title,1,5,1,7);body.addView(title,lp(-1,-2));}
  private EditText searchBox(String hint){EditText e=new EditText(this);e.setSingleLine(true);e.setTextSize(13);e.setTextColor(WHITE);e.setHintTextColor(MUTED);e.setHint(hint);e.setText(query);e.setBackground(rounded(CARD2,12,EDGE));padding(e,12,0,10,0);body.addView(e,lp(-1,39));return e;}
  private void showLibrary(){sectionHeading.setText("三维器材库");
    addExplanation("真正的立体模型；点击添加到实验台，在画布中拖动、旋转视角。");
    TextView realModels=chip("✦  打开高精度 GLB 模型库",false,()->startActivity(new Intent(this,ModelGalleryActivity.class)));
    body.addView(realModels,lp(-1,42));
    EditText find=searchBox("搜索器材名称（共 "+SimCore.CATALOG[sim.mode].length+" 种）");
    GridLayout grid=new GridLayout(this);grid.setColumnCount(3);LinearLayout.LayoutParams gg=lp(-1,-2);gg.topMargin=d(10);body.addView(grid,gg);
    fillLibrary(grid,query);
    find.addTextChangedListener(new TextWatcher(){public void beforeTextChanged(CharSequence s,int start,int count,int after){}public void onTextChanged(CharSequence s,int start,int before,int count){query=s.toString();fillLibrary(grid,query);}public void afterTextChanged(Editable e){}});
  }
  private void fillLibrary(GridLayout grid,String value){grid.removeAllViews();String[] list=SimCore.CATALOG[sim.mode];int count=0;for(String item:list){if(!item.contains(value))continue;int col=count++%3;
      LinearLayout cell=vertical();cell.setBackground(rounded(CARD2,12,EDGE));padding(cell,8,9,6,9);
      TextView glyph=text(iconFor(item),23,GREEN,true);glyph.setGravity(Gravity.CENTER);cell.addView(glyph,lp(-1,30));
      TextView label=text(item,12,WHITE,true);label.setGravity(Gravity.CENTER);cell.addView(label,lp(-1,30));
      cell.setOnClickListener(v->{synchronized(sim){sim.add(item);}panel=2;refresh();});
      GridLayout.LayoutParams cp=new GridLayout.LayoutParams(GridLayout.spec(GridLayout.UNDEFINED,1f),GridLayout.spec(col,1f));cp.width=0;cp.height=d(83);cp.setMargins(d(3),d(3),d(3),d(3));grid.addView(cell,cp);
    }
    if(count==0){TextView none=text("没有找到匹配的器材",13,MUTED,false);grid.addView(none);}
  }
  private String iconFor(String name){
    if(name.contains("杯")||name.contains("瓶")||name.contains("管")||name.contains("皿"))return "◧";
    if(name.contains("电")||name.contains("灯")||name.contains("阻"))return "ϟ";
    if(name.contains("镜")||name.contains("光"))return "◉";
    if(name.contains("球"))return "◍";
    if(name.contains("小车"))return "▰";
    if(name.contains("温度"))return "♧";
    return "⬡";
  }
  private void showReagents(){sectionHeading.setText("虚拟试剂库");
    addExplanation(SimCore.REAGENTS.length+" 种虚拟试剂 · 仅用于屏幕内模拟，不能作为真实实验操作指导。");
    SimCore.Item target=sim.chosen();if(target==null||!SimCore.isVessel(target.type)){
      TextView warning=text("先在器材库添加烧杯、试管或其他容器，再进入试剂库。",13,0xFFFFCC8A,false);padding(warning,8,9,8,9);body.addView(warning);}
    else addExplanation("当前容器："+target.type+" · "+(int)target.volume+" mL");
    TextView amount=text("每次添加 "+reagentVolume+" mL",13,WHITE,true);body.addView(amount);
    SeekBar amountSeek=new SeekBar(this);amountSeek.setMax(19);amountSeek.setProgress((reagentVolume-5)/5);body.addView(amountSeek,lp(-1,35));amountSeek.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener(){public void onProgressChanged(SeekBar s,int p,boolean user){reagentVolume=5+p*5;amount.setText("每次添加 "+reagentVolume+" mL");}public void onStartTrackingTouch(SeekBar s){}public void onStopTrackingTouch(SeekBar s){}});
    EditText find=searchBox("按名称、化学式或类别搜索试剂");
    LinearLayout listing=vertical();body.addView(listing,lp(-1,-2));fillReagents(listing,query);
    find.addTextChangedListener(new TextWatcher(){public void beforeTextChanged(CharSequence s,int a,int c,int x){}public void onTextChanged(CharSequence s,int a,int b,int c){query=s.toString();fillReagents(listing,query);}public void afterTextChanged(Editable s){}});
  }
  private void fillReagents(LinearLayout listing,String q){listing.removeAllViews();
    int num=0;for(int i=0;i<SimCore.REAGENTS.length;i++){
      SimCore.Reagent r=SimCore.REAGENTS[i];if(!r.name.contains(q)&&!r.formula.contains(q)&&!r.group.contains(q))continue;final int index=i;num++;
      LinearLayout tile=horizontal();padding(tile,10,6,10,6);tile.setBackground(rounded(CARD2,12,EDGE));
      View dot=new View(this);dot.setBackground(rounded(0xFF000000|r.color,15,0));tile.addView(dot,lp(13,32));rowGap(tile,10);
      LinearLayout details=vertical();details.addView(text(r.name,13,WHITE,true));details.addView(text(r.formula+"  /  "+r.group,10,MUTED,false));tile.addView(details,new LinearLayout.LayoutParams(0,-2,1));
      TextView add=chip("＋添加",false,()->{synchronized(sim){sim.addReagent(index,reagentVolume);sim.save(this);}refreshStatusOnly();});tile.addView(add,lp(70,33));
      LinearLayout.LayoutParams pp=lp(-1,53);pp.bottomMargin=d(6);listing.addView(tile,pp);
    }
    if(num==0)listing.addView(text("没有匹配的虚拟试剂",13,MUTED,false));
  }
  private void propertySlider(String label,int max,int progress,java.util.function.IntConsumer change){
    TextView cap=text(label+" · "+progress,12,WHITE,false);body.addView(cap,lp(-1,25));SeekBar seek=new SeekBar(this);seek.setMax(max);seek.setProgress(progress);body.addView(seek,lp(-1,37));seek.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener(){public void onProgressChanged(SeekBar s,int p,boolean user){cap.setText(label+" · "+p);if(user){synchronized(sim){change.accept(p);}}}public void onStartTrackingTouch(SeekBar s){}public void onStopTrackingTouch(SeekBar s){sim.save(MainActivity.this);refreshStatusOnly();}});
  }
  private void propertyAction(String name,Runnable work){TextView button=chip(name,false,work);LinearLayout.LayoutParams p=lp(-1,38);p.bottomMargin=d(7);body.addView(button,p);}
  private void showProperties(){sectionHeading.setText("模型参数与交互");
    SimCore.Item chosen=sim.chosen();if(chosen==null){addExplanation("点击场景中的器材选择模型，或从器材库添加新模型。");return;}
    addTitle("◈ "+chosen.type+"  ·  #"+chosen.id);
    addExplanation(chosen.summary());
    propertySlider("模型水平旋转角度 °",360,((int)chosen.angle%360+360)%360,p->chosen.angle=p);
    LinearLayout rotateRow=horizontal();TextView leftTurn=chip("↶ 旋转 -15°",false,()->{chosen.angle=(chosen.angle+345)%360;sim.save(this);refresh();});TextView rightTurn=chip("旋转 +15° ↷",false,()->{chosen.angle=(chosen.angle+15)%360;sim.save(this);refresh();});rotateRow.addView(leftTurn,new LinearLayout.LayoutParams(0,d(36),1));rowGap(rotateRow,6);rotateRow.addView(rightTurn,new LinearLayout.LayoutParams(0,d(36),1));body.addView(rotateRow,lp(-1,40));
    if(sim.mode==SimCore.CHEM){
      if(SimCore.isVessel(chosen.type)){
        propertyAction("＋ 打开试剂库",()->{panel=1;query="";refresh();});
        propertyAction("↗ 选择此容器作为倒液来源",()->{chemSource=chosen.id;sim.status="已选定来源，请选择另一个容器并点击倒液";refreshStatusOnly();});
        propertyAction("⇢ 从已选来源倒入 20 mL",()->{synchronized(sim){sim.pour(chemSource,chosen.id,20);sim.save(this);}refresh();});
        propertyAction("🔥 模拟加热 10°C",()->{synchronized(sim){chosen.temperature=Math.min(120,chosen.temperature+10);sim.status="已调节虚拟容器温度";sim.save(this);}refresh();});
        propertyAction("❄ 模拟冷却 10°C",()->{synchronized(sim){chosen.temperature=Math.max(0,chosen.temperature-10);sim.status="已调节虚拟容器温度";sim.save(this);}refresh();});
        propertyAction("清除当前液体",()->{chosen.volume=0;chosen.ph=7;chosen.color=0x6BB8FF;chosen.acidUnits=0;chosen.baseUnits=0;chosen.chemicals=0;chosen.flags=0;chosen.bubble=false;chosen.precipitate=false;chosen.indicator=false;sim.save(this);refresh();});
      }else if(chosen.type.equals("酒精灯"))propertyAction(chosen.enabled?"关闭虚拟火焰":"点亮虚拟火焰",()->{chosen.enabled=!chosen.enabled;sim.save(this);refresh();});
      else addExplanation("该三维模型已支持自由摆放与旋转视角；更精细器材动作仍在开发。 ");
    }else if(sim.mode==SimCore.CIRCUIT){
      if(chosen.type.equals("电池"))propertySlider("电源电压 V",24,(int)chosen.property,p->{chosen.property=Math.max(1,p);sim.solveCircuit();});
      else if(chosen.type.equals("开关"))propertyAction(chosen.enabled?"断开开关":"闭合开关",()->{chosen.enabled=!chosen.enabled;sim.solveCircuit();sim.save(this);refresh();});
      else if(!chosen.type.equals("电流表")&&!chosen.type.equals("电压表"))propertySlider("电阻值 Ω",200,(int)chosen.property,p->{chosen.property=Math.max(1,p);sim.solveCircuit();});
      propertyAction("● 左接线柱 — 连接端子",()->{sim.setWireEnd(chosen.id,0);refreshStatusOnly();});
      propertyAction("● 右接线柱 — 连接端子",()->{sim.setWireEnd(chosen.id,1);refreshStatusOnly();});
      addExplanation("接线方法：选一个器材的左/右接线柱，再选择另一器材并点击它的接线柱。支持串联、并联和多支路节点计算。");
      propertyAction("清除全部导线",()->{sim.clearWires();refresh();});
    }else if(sim.mode==SimCore.MOTION){
      if(chosen.type.equals("小车")||chosen.type.equals("小球")){
        propertySlider("推力 N",30,(int)chosen.force,p->chosen.force=p);
        propertySlider("质量 × 0.1 kg",60,(int)(chosen.mass*10),p->chosen.mass=Math.max(.1f,p/10f));
        propertySlider("摩擦系数 × 0.01",100,(int)(chosen.friction*100),p->chosen.friction=p/100f);
        propertyAction("重置运动",()->{chosen.velocity=0;chosen.x=-3.2f;sim.running=false;refresh();});
      }else addExplanation("可在三维实验台移动器材并观察空间关系。");
    }else{
      if(chosen.type.contains("透镜"))propertySlider("焦距 × 0.1 m",50,(int)(chosen.property*10),p->chosen.property=Math.max(.3f,p/10f));
      addExplanation("三维近轴光路模拟：改变透镜焦距或拖动光源、透镜与光屏的位置。当前采用薄透镜近似。 ");
    }
    propertyAction("删除该三维模型",()->{synchronized(sim){sim.remove();sim.save(this);}refresh();});
  }
  private void showRecords(){sectionHeading.setText("实验记录与场景管理");
    addTitle("四学科独立实验台");
    addExplanation("实验模型、位置、试剂状态、导线连接保存在设备本地。无需联网、无需账号。 ");
    for(int m=0;m<4;m++){
      TextView t=text(SimCore.MODE_NAMES[m]+"   ·   "+sim.groups[m].size()+" 个模型",13,WHITE,true);padding(t,11,12,10,12);t.setBackground(rounded(CARD2,11,EDGE));LinearLayout.LayoutParams p=lp(-1,47);p.bottomMargin=d(7);body.addView(t,p);
    }
    propertyAction("立即保存全部实验台",()->{sim.save(this);refreshStatusOnly();});
    propertyAction("重新载入本地存档",()->{sim.load(this);refresh();});
    propertyAction("恢复三维视角",()->graphics.resetCamera());
    addExplanation("数值引擎：化学规则近似 / 电路节点电压法 / 牛顿力学积分 / 光学薄透镜近似。此版本尚未覆盖 NB 实验室全部教学实验及专业 3D 资产。 ");
  }
  @Override protected void onPause(){if(graphics!=null)graphics.onPause();synchronized(sim){sim.save(this);}super.onPause();}
  @Override protected void onResume(){super.onResume();if(graphics!=null)graphics.onResume();}
  @Override public void onBackPressed(){if(panel!=0){panel=0;refresh();}else if(sim.selected!=-1){sim.selected=-1;refresh();}else super.onBackPressed();}
}
