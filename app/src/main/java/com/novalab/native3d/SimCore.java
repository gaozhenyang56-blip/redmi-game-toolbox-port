package com.novalab.native3d;

import android.content.Context;
import android.content.SharedPreferences;
import org.json.JSONArray;
import org.json.JSONObject;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;

/** Numerical simulation state. No WebView / JavaScript code. */
public final class SimCore {
  public static final int CHEM = 0, CIRCUIT = 1, MOTION = 2, OPTICS = 3;
  public static final String[] MODE_NAMES={"化学实验","电学实验","力学实验","光学实验"};
  public static final String[][] CATALOG={
    {"烧杯","试管","锥形瓶","圆底烧瓶","量筒","试剂瓶","培养皿","滴管","漏斗","玻璃棒","温度计","酒精灯","铁架台","蒸发皿","电子天平","广口瓶","表面皿","烧瓶夹","三脚架","导管","容量瓶","分液漏斗","冷凝管","滴定管","移液管","试管架","坩埚","坩埚钳","研钵","洗瓶","药匙","集气瓶","水槽","蒸馏烧瓶","温度计夹","橡胶塞","玻璃弯管","长颈漏斗","滴瓶"},
    {"电池","灯泡","电阻","开关","电流表","电压表","可变电阻","电容器","LED","电动机"},
    {"小车","方块","斜面","弹簧","小球","砝码","挡板","测力计"},
    {"光源","凸透镜","凹透镜","平面镜","光屏","棱镜"}
  };
  public static final class Reagent {
    public final String name,formula,group;
    public final float ph; public final int color; public final int reaction;
    Reagent(String n,String f,String g,float p,int c,int r){name=n;formula=f;group=g;ph=p;color=c;reaction=r;}
  }
  public static final int ACID=1,ALKALI=2,INDICATOR=3,CARBONATE=4,CALCIUM=5,COPPER=6,CHLORIDE=7,SILVER=8,IRON=9,STARCH=10,IODINE=11,OTHER=0;
  public static final Reagent[] REAGENTS={
    new Reagent("蒸馏水","H₂O","常用溶液",7,0x6BB8FF,OTHER),
    new Reagent("氯化钠溶液","NaCl","盐类",7,0x8BE9FF,CHLORIDE),
    new Reagent("蔗糖溶液","C₁₂H₂₂O₁₁","常用溶液",7,0x9CE7FA,OTHER),
    new Reagent("葡萄糖溶液","C₆H₁₂O₆","常用溶液",7,0x9CE7FA,OTHER),
    new Reagent("醋酸稀溶液","CH₃COOH","酸性虚拟样本",3,0xA7D7FE,ACID),
    new Reagent("柠檬酸稀溶液","C₆H₈O₇","酸性虚拟样本",3,0xACEEFF,ACID),
    new Reagent("盐酸稀溶液","HCl","酸性虚拟样本",2,0xA2DDFF,ACID),
    new Reagent("硫酸稀溶液","H₂SO₄","酸性虚拟样本",2,0x9CCFFF,ACID),
    new Reagent("硝酸稀溶液","HNO₃","酸性虚拟样本",2,0xB1DCFF,ACID),
    new Reagent("氢氧化钠稀溶液","NaOH","碱性虚拟样本",12,0xAEECF8,ALKALI),
    new Reagent("氢氧化钙澄清液","Ca(OH)₂","碱性虚拟样本",11,0x9AD8F2,ALKALI),
    new Reagent("氨水稀溶液","NH₃·H₂O","碱性虚拟样本",10,0x9AD8F2,ALKALI),
    new Reagent("碳酸氢钠溶液","NaHCO₃","盐类",8.3f,0xA1E0FF,CARBONATE),
    new Reagent("碳酸钠溶液","Na₂CO₃","盐类",10.5f,0xACDEFA,CARBONATE),
    new Reagent("氯化钙溶液","CaCl₂","盐类",7,0x95DDF6,CALCIUM),
    new Reagent("硫酸铜溶液","CuSO₄","盐类",5,0x3684E7,COPPER),
    new Reagent("氯化铁溶液","FeCl₃","盐类",4,0xC99539,IRON),
    new Reagent("硝酸银溶液","AgNO₃","盐类",7,0xC6E9FF,SILVER),
    new Reagent("硫酸钠溶液","Na₂SO₄","盐类",7,0xB8DAF0,OTHER),
    new Reagent("硝酸钾溶液","KNO₃","盐类",7,0xBADFF9,OTHER),
    new Reagent("氯化钾溶液","KCl","盐类",7,0xB8DFFD,CHLORIDE),
    new Reagent("高锰酸钾稀溶液","KMnO₄","有色溶液",7,0xA64CEB,OTHER),
    new Reagent("重铬酸钾虚拟溶液","K₂Cr₂O₇","有色溶液",5,0xE68C37,OTHER),
    new Reagent("碘液（模拟）","I₂","指示剂",7,0xA8712D,IODINE),
    new Reagent("淀粉溶液","(C₆H₁₀O₅)n","常用溶液",7,0xD4E8F4,STARCH),
    new Reagent("酚酞指示剂","Indicator","指示剂",7,0xE2DFF6,INDICATOR),
    new Reagent("石蕊指示剂","Litmus","指示剂",7,0x8F72CF,INDICATOR),
    new Reagent("广泛 pH 指示剂","Universal","指示剂",7,0x97CC80,INDICATOR),
    new Reagent("溴麝香草酚蓝","BTB","指示剂",7,0x7DCD7D,INDICATOR),
    new Reagent("氯化镁溶液","MgCl₂","盐类",7,0xB9DEFF,OTHER),
    new Reagent("氯化铵溶液","NH₄Cl","盐类",6,0xB8DFFF,OTHER),
    new Reagent("硫酸镁溶液","MgSO₄","盐类",7,0xBCD7E9,OTHER),
    new Reagent("硫酸亚铁溶液","FeSO₄","有色溶液",5,0x88C5B1,OTHER),
    new Reagent("硫酸锌溶液","ZnSO₄","盐类",7,0xC2E5F5,OTHER),
    new Reagent("白砂糖溶液","C₁₂H₂₂O₁₁","常用溶液",7,0xDDEAF5,OTHER),
    new Reagent("小苏打模拟液","NaHCO₃","盐类",8.3f,0xB9E2F7,CARBONATE),
    new Reagent("柠檬汁模拟液","Citric","酸性虚拟样本",3,0xD5E77C,ACID),
    new Reagent("紫甘蓝指示液","Anthocyanin","指示剂",7,0xA17AC8,INDICATOR),
    new Reagent("食用色素红","Dye-R","有色溶液",7,0xE96B88,OTHER),
    new Reagent("食用色素蓝","Dye-B","有色溶液",7,0x4D91E8,OTHER),
    new Reagent("碳酸饮料模拟液","CO₂(aq)","常用溶液",4,0xA9D8EA,ACID),
    new Reagent("碳酸钙悬浊液","CaCO₃","悬浊液",7,0xD7DCE0,CALCIUM)
  };

  public static final class Item {
    public int id; public String type; public float x,z; public float volume=0,temperature=25,ph=7;
    public float property=10,mass=1,velocity=0,force=6,friction=.15f;
    public int color=0x6BB8FF; public boolean enabled=true,bubble=false,precipitate=false,indicator=false,boiling=false;
    public int count=0; public float acidUnits=0,baseUnits=0; public int chemicals=0, flags=0;
    public float electricV=0,electricI=0; public float angle=0;
    Item(int index,String type,float x,float z) {this.id=index;this.type=type;this.x=x;this.z=z;
      if(type.equals("电池")) property=6;
      if(type.equals("LED")) property=20;
      if(type.equals("电压表")) property=1e6f;
      if(type.equals("电流表")) property=.01f;
      if(type.equals("可变电阻")) property=40;
      if(type.equals("凸透镜") || type.equals("凹透镜"))property=1.8f;
      if(type.equals("小车"))mass=1.2f;
    }
    public String summary(){
      String s=type;
      if(isVessel(type))s+=" · "+(int)volume+" mL · pH "+String.format(java.util.Locale.US,"%.1f",ph)+" · "+(int)temperature+"°C";
      if(precipitate)s+=" · 沉淀";
      if(bubble)s+=" · 气泡";
      if(boiling)s+=" · 沸腾模拟";
      if(isElectric(type))s+=" · "+String.format(java.util.Locale.US,"%.2f V / %.3f A",electricV,electricI);
      if(type.equals("小车")||type.equals("小球"))s+=" · v="+String.format(java.util.Locale.US,"%.2f",velocity)+" m/s";
      return s;
    }
    JSONObject toJson(){JSONObject j=new JSONObject();try{
      j.put("id",id);j.put("type",type);j.put("x",x);j.put("z",z);j.put("volume",volume);j.put("temperature",temperature);j.put("ph",ph);j.put("property",property);j.put("mass",mass);j.put("velocity",velocity);j.put("force",force);j.put("friction",friction);j.put("color",color);j.put("enabled",enabled);j.put("bubble",bubble);j.put("precipitate",precipitate);j.put("indicator",indicator);j.put("boiling",boiling);j.put("count",count);j.put("acidUnits",acidUnits);j.put("baseUnits",baseUnits);j.put("chemicals",chemicals);j.put("flags",flags);j.put("angle",angle);
    }catch(Exception ignored){}return j;}
    static Item fromJson(JSONObject j){Item x=new Item(j.optInt("id"),j.optString("type"), (float)j.optDouble("x"), (float)j.optDouble("z"));
      x.volume=(float)j.optDouble("volume");x.temperature=(float)j.optDouble("temperature",25);x.ph=(float)j.optDouble("ph",7);x.property=(float)j.optDouble("property",10);x.mass=(float)j.optDouble("mass",1);x.velocity=(float)j.optDouble("velocity");x.force=(float)j.optDouble("force",6);x.friction=(float)j.optDouble("friction",.15);x.color=j.optInt("color",0x6BB8FF);x.enabled=j.optBoolean("enabled",true);x.bubble=j.optBoolean("bubble");x.precipitate=j.optBoolean("precipitate");x.indicator=j.optBoolean("indicator");x.boiling=j.optBoolean("boiling");x.count=j.optInt("count");x.acidUnits=(float)j.optDouble("acidUnits");x.baseUnits=(float)j.optDouble("baseUnits");x.chemicals=j.optInt("chemicals");x.flags=j.optInt("flags");x.angle=(float)j.optDouble("angle");return x;
    }
  }
  public static final class Wire {
    public int idA,portA,idB,portB;
    Wire(int a,int ap,int b,int bp){idA=a;portA=ap;idB=b;portB=bp;}
    JSONObject toJson(){JSONObject j=new JSONObject();try{j.put("a",idA);j.put("ap",portA);j.put("b",idB);j.put("bp",portB);}catch(Exception ignored){}return j;}
  }
  @SuppressWarnings("unchecked")
  public final ArrayList<Item>[] groups=(ArrayList<Item>[])new ArrayList[4];
  public final ArrayList<Wire> wires=new ArrayList<>();
  public int mode=CHEM,selected=-1; public boolean running=false;
  public int wireStartId=-1,wireStartPort=-1;
  public String status="新建空白实验 · 从下方器材库添加";
  private int nextId=1;
  private float accum=0;
  public SimCore(){for(int i=0;i<4;i++)groups[i]=new ArrayList<>();}
  public static boolean isVessel(String t){return Arrays.asList("烧杯","试管","锥形瓶","圆底烧瓶","量筒","试剂瓶","培养皿","蒸发皿","广口瓶","表面皿","容量瓶","分液漏斗","滴定管","集气瓶","蒸馏烧瓶","滴瓶","洗气瓶").contains(t);}
  public static boolean isElectric(String t){return Arrays.asList(CATALOG[CIRCUIT]).contains(t);}
  public ArrayList<Item> active(){return groups[mode];}
  public Item find(int id){for(Item t:groups[mode])if(t.id==id)return t;return null;}
  public Item chosen(){return find(selected);}
  public void changeMode(int newMode){if(newMode<0||newMode>=4)return;mode=newMode;selected=-1;wireStartId=-1;running=false;status=MODE_NAMES[mode]+" · 已切换原生 3D 场景";}
  public Item add(String type){int n=active().size();float x=-3.1f+(n%5)*1.55f,z=-1.25f+(n/5)*1.6f;Item t=new Item(nextId++,type,x,z);active().add(t);selected=t.id;status="已添加 "+type+" · 可拖动器材改变位置";if(mode==CIRCUIT)solveCircuit();return t;}
  public void remove(){if(selected<0)return;int id=selected;active().removeIf(o->o.id==id);wires.removeIf(w->w.idA==id||w.idB==id);selected=-1;wireStartId=-1;status="已移除器材";solveCircuit();}
  public void clear(){active().clear();if(mode==CIRCUIT)wires.clear();selected=-1;wireStartId=-1;running=false;status="实验台已清空";}
  public boolean pour(int fromId,int toId,float ml){Item a=find(fromId),b=find(toId);if(a==null||b==null||a==b||!isVessel(a.type)||!isVessel(b.type)||a.volume<.1f){status="需要两个装有液体的容器";return false;}
    float amount=Math.min(Math.min(ml,a.volume),400-b.volume);if(amount<=0){status="目标容器已满";return false;}
    float frac=amount/Math.max(a.volume,.1f),aRemain=a.volume-amount;
    float mixed=b.volume+amount;
    b.ph=(b.ph*b.volume+a.ph*amount)/mixed;
    b.temperature=(b.temperature*b.volume+a.temperature*amount)/mixed;
    b.acidUnits+=a.acidUnits*frac;b.baseUnits+=a.baseUnits*frac;
    b.chemicals|=a.chemicals; b.flags|=a.flags;
    b.color=mixColor(b.color,a.color,amount/mixed);
    b.volume=mixed;a.acidUnits*=1-frac;a.baseUnits*=1-frac;a.volume=aRemain;
    calculateChem(b); if(a.volume<.1){a.volume=0;a.chemicals=0;a.flags=0;a.bubble=false;a.precipitate=false;}
    status=String.format(java.util.Locale.CHINA,"已转移 %.0f mL 虚拟溶液",amount);return true;
  }
  public boolean addReagent(int reagentIndex,float amount){Item t=chosen();if(t==null||!isVessel(t.type)||reagentIndex<0||reagentIndex>=REAGENTS.length){status="请先选中一个化学容器";return false;}
    Reagent r=REAGENTS[reagentIndex];float actual=Math.min(amount,400-t.volume);if(actual<=0){status="容器已满";return false;}
    float old=t.volume,total=old+actual,ratio=actual/total;
    t.color=mixColor(t.color,r.color,ratio);
    t.volume=total;t.temperature=(t.temperature*old+25*actual)/total;
    if(r.reaction==ACID)t.acidUnits+=(7-r.ph)*actual;
    if(r.reaction==ALKALI)t.baseUnits+=(r.ph-7)*actual;
    t.chemicals|=1<<Math.min(r.reaction,16);
    if(r.reaction==INDICATOR)t.indicator=true;
    if(r.name.contains("碳酸钙"))t.chemicals|=1<<CALCIUM;
    if(r.name.contains("酚酞"))t.flags|=1;
    if(r.name.contains("石蕊"))t.flags|=2;
    if(r.name.contains("广泛")||r.name.contains("溴麝")||r.name.contains("紫甘蓝"))t.flags|=4;
    calculateChem(t);
    status="已加入 "+r.name+" · "+(int)actual+" mL（虚拟模拟）";
    return true;
  }
  private static int mixColor(int a,int b,float p){p=Math.min(1,Math.max(0,p));int ar=(a>>16)&255,ag=(a>>8)&255,ab=a&255,br=(b>>16)&255,bg=(b>>8)&255,bb=b&255;return ((int)(ar*(1-p)+br*p)<<16)|((int)(ag*(1-p)+bg*p)<<8)|(int)(ab*(1-p)+bb*p);}
  public void calculateChem(Item t){
    float net=t.baseUnits-t.acidUnits;
    if(Math.abs(net)<t.volume*.08)t.ph=7;
    else if(net>0)t.ph=Math.min(13,7+2.1f+(float)Math.log10(1+net/Math.max(1,t.volume))*2f);
    else t.ph=Math.max(1,7-2.1f-(float)Math.log10(1-net/Math.max(1,t.volume))*2f);
    boolean acid=(t.chemicals&(1<<ACID))!=0;
    boolean carbon=(t.chemicals&(1<<CARBONATE))!=0;
    boolean calcium=(t.chemicals&(1<<CALCIUM))!=0;
    boolean alkali=(t.chemicals&(1<<ALKALI))!=0;
    boolean iron=(t.chemicals&(1<<IRON))!=0;
    boolean copper=(t.chemicals&(1<<COPPER))!=0;
    boolean silver=(t.chemicals&(1<<SILVER))!=0;
    boolean chloride=(t.chemicals&(1<<CHLORIDE))!=0;
    t.bubble=acid&&carbon;t.precipitate=(calcium&&carbon)||(iron&&alkali)||(copper&&alkali)||(silver&&chloride);
    if(t.precipitate)t.color=(iron&&alkali)?0xB68643:(copper&&alkali?0x56B7D2:0xDBE6E8);
    else if((t.chemicals&(1<<STARCH))!=0&&(t.chemicals&(1<<IODINE))!=0)t.color=0x272C7D;
    else if((t.flags&1)!=0)t.color=t.ph>=8.3f?0xF265AF:0xA5E4FE;
    else if((t.flags&2)!=0)t.color=t.ph<6?0xE3677F:(t.ph>8?0x5471D8:0xAF8BCF);
    else if((t.flags&4)!=0)t.color=t.ph<4?0xE27855:(t.ph<6?0xEBC65A:t.ph>9?0x5779CB:0x68C88B);
  }
  public void setWireEnd(int id,int port){Item t=find(id);if(t==null||!isElectric(t.type))return;
    if(wireStartId<0){wireStartId=id;wireStartPort=port;status="已选择 "+t.type+(port==0?" 左":" 右")+"接线柱；选择另一接线柱";return;}
    if(wireStartId==id&&wireStartPort==port){wireStartId=-1;status="已取消连线";return;}
    for(Wire w:wires){if(w.idA==wireStartId&&w.portA==wireStartPort&&w.idB==id&&w.portB==port){wireStartId=-1;return;}}
    wires.add(new Wire(wireStartId,wireStartPort,id,port));wireStartId=-1;wireStartPort=-1;solveCircuit();status="导线已连接 · "+status;
  }
  public void clearWires(){wires.clear();wireStartId=-1;solveCircuit();status="已移除所有导线";}
  private static int findParent(int[] p,int i){while(p[i]!=i){p[i]=p[p[i]];i=p[i];}return i;}
  private static void union(int[] p,int a,int b){int x=findParent(p,a),y=findParent(p,b);if(x!=y)p[y]=x;}
  public void solveCircuit(){if(groups[CIRCUIT].isEmpty())return;
    ArrayList<Item> old=groups[CIRCUIT];int count=old.size();for(Item t:old){t.electricI=0;t.electricV=0;}
    int[] parent=new int[count*2];for(int i=0;i<parent.length;i++)parent[i]=i;
    HashMap<Integer,Integer> pos=new HashMap<>();for(int i=0;i<count;i++)pos.put(old.get(i).id,i);
    for(Wire w:wires){Integer a=pos.get(w.idA),b=pos.get(w.idB);if(a!=null&&b!=null)union(parent,2*a+w.portA,2*b+w.portB);}
    int batteryCount=0;for(Item t:old)if(t.type.equals("电池")&&t.enabled)batteryCount++;
    if(batteryCount==0){status="电路未接电源";return;}
    // Exclude disconnected islands, which otherwise make the nodal matrix singular.
    HashMap<Integer,Integer> rootIndex=new HashMap<>();int[] node=new int[parent.length];int next=0;
    for(int i=0;i<node.length;i++){int root=findParent(parent,i);Integer k=rootIndex.get(root);if(k==null){k=next++;rootIndex.put(root,k);}node[i]=k;}
    int[] graph=new int[next];for(int i=0;i<next;i++)graph[i]=i;
    for(int i=0;i<count;i++){Item t=old.get(i);if(isElectric(t.type)&&!t.type.equals("开关")||t.type.equals("开关")&&t.enabled)union(graph,node[2*i],node[2*i+1]);}
    HashSet<Integer> activeRoots=new HashSet<>();for(int i=0;i<count;i++)if(old.get(i).type.equals("电池")&&old.get(i).enabled)activeRoots.add(findParent(graph,node[2*i]));
    HashMap<Integer,Integer> reduced=new HashMap<>();int ground=-1;
    for(int i=0;i<count;i++)if(old.get(i).type.equals("电池")&&old.get(i).enabled){ground=node[2*i+1];break;}
    if(ground<0)return;reduced.put(ground,0);
    for(int k=0;k<next;k++)if(activeRoots.contains(findParent(graph,k))&&!reduced.containsKey(k))reduced.put(k,reduced.size());
    int relevant=reduced.size(),ns=batteryCount;
    if(relevant>35){status="电路规模超过此版本求解上限";return;}
    int dim=relevant-1+ns; if(dim<=0||dim>60)return;
    double[][] a=new double[dim][dim+1];int batteryNo=0;
    for(int i=0;i<count;i++){
      Item t=old.get(i);Integer ni=reduced.get(node[2*i]),nj=reduced.get(node[2*i+1]);
      if(ni==null||nj==null||!isElectric(t.type))continue;
      int left=ni,right=nj;
      if(t.type.equals("电池")){
        if(!t.enabled)continue;
        if(left==right){status="检测到电源两极直接短接";return;}
        int k=relevant-1+batteryNo++;
        if(left>0){a[left-1][k]+=1;a[k][left-1]+=1;}
        if(right>0){a[right-1][k]-=1;a[k][right-1]-=1;}
        a[k][dim]=t.property;
      }else{
        if(t.type.equals("开关")&&!t.enabled)continue;
        double R= t.type.equals("电流表")?.01:t.type.equals("电压表")?1e6:t.type.equals("开关")?.02:t.type.equals("LED")?20:t.type.equals("电动机")?15:t.type.equals("电容器")?1e9:Math.max(.05,t.property);
        if(left==right)continue;
        double g=1.0/R;
        if(left>0)a[left-1][left-1]+=g;
        if(right>0)a[right-1][right-1]+=g;
        if(left>0&&right>0){a[left-1][right-1]-=g;a[right-1][left-1]-=g;}
      }
    }
    for(int col=0;col<dim;col++){
      int pivot=col;for(int row=col+1;row<dim;row++)if(Math.abs(a[row][col])>Math.abs(a[pivot][col]))pivot=row;
      if(Math.abs(a[pivot][col])<1e-12){status="电路未闭合或含不确定连接";return;}
      double[] tmp=a[col];a[col]=a[pivot];a[pivot]=tmp;
      double d=a[col][col];for(int j=col;j<=dim;j++)a[col][j]/=d;
      for(int row=0;row<dim;row++)if(row!=col){double v=a[row][col];for(int j=col;j<=dim;j++)a[row][j]-=v*a[col][j];}
    }
    double[] v=new double[relevant];for(Map.Entry<Integer,Integer> e:reduced.entrySet()){int ix=e.getValue();v[ix]=ix==0?0:a[ix-1][dim];}
    int bIndex=0;float totalI=0;
    for(int i=0;i<count;i++){
      Item t=old.get(i);Integer ni=reduced.get(node[2*i]),nj=reduced.get(node[2*i+1]);if(ni==null||nj==null)continue;
      t.electricV=(float)(v[ni]-v[nj]);
      if(t.type.equals("电池")){t.electricI=(float)Math.abs(a[relevant-1+bIndex++][dim]);totalI=Math.max(totalI,t.electricI);}
      else if(t.type.equals("开关")&&!t.enabled)t.electricI=0;
      else{double R=t.type.equals("电流表")?.01:t.type.equals("电压表")?1e6:t.type.equals("开关")?.02:t.type.equals("LED")?20:t.type.equals("电动机")?15:t.type.equals("电容器")?1e9:Math.max(.05,t.property);t.electricI=(float)Math.abs(t.electricV/R);}
    }
    status=String.format(java.util.Locale.US,"节点法求解完成 · 电源电流 %.3f A · %d 条连线",totalI,wires.size());
  }
  public void update(float dt){if(dt<=0||dt>.2f)return;accum+=dt;
    if(mode==CHEM && running){
      for(Item t:active())if(isVessel(t.type)&&t.volume>0){
        boolean lamp=false;
        for(Item source:active())if(source.type.equals("酒精灯")&&source.enabled&&Math.hypot(source.x-t.x,source.z-t.z)<1.75f){lamp=true;break;}
        if(lamp)t.temperature=Math.min(100,t.temperature+dt*7.5f);
        else t.temperature=Math.max(25,t.temperature-dt*.65f);
        t.boiling=t.temperature>=98f;
        boolean acid=(t.chemicals&(1<<ACID))!=0,carbonate=(t.chemicals&(1<<CARBONATE))!=0;
        t.bubble=(acid&&carbonate)||t.boiling;
      }
    }
    if(mode==MOTION&&running){for(Item t:active())if(t.type.equals("小车")||t.type.equals("小球")){
      float previous=t.x;
      float a=t.force/Math.max(.1f,t.mass)-9.8f*t.friction*Math.signum(t.velocity==0?t.force:t.velocity);
      for(Item fixture:active()){
        if(fixture.type.equals("斜面")&&Math.abs(t.z-fixture.z)<.95f&&Math.abs(t.x-fixture.x)<1.35f)a+=4.4f;
        if(fixture.type.equals("弹簧")){float dx=t.x-fixture.x;if(Math.abs(dx)<1.7f)a-=Math.max(1,fixture.property*.35f)*dx/Math.max(.1f,t.mass);}
      }
      t.velocity+=a*dt;
      if(Math.abs(t.velocity)<.03f&&Math.abs(t.force)<9.8f*t.mass*t.friction)t.velocity=0;
      t.x+=t.velocity*dt;
      for(Item wall:active())if(wall.type.equals("挡板")&&Math.abs(t.z-wall.z)<.8f&&((previous<wall.x&&t.x>=wall.x)||(previous>wall.x&&t.x<=wall.x))){t.x=wall.x+(previous<wall.x?-.18f:.18f);t.velocity=-t.velocity*.35f;}
      if(t.x>4.7f){t.x=4.7f;t.velocity=-Math.abs(t.velocity)*.45f;}
      if(t.x< -4.7f){t.x=-4.7f;t.velocity=Math.abs(t.velocity)*.45f;}
    }}
  }
  public void example(){clear();if(mode==CHEM){Item a=add("烧杯");a.x=-1.9f;a.z=.1f;selected=a.id;addReagent(15,85);Item b=add("试管");b.x=.5f;b.z=.2f;selected=b.id;addReagent(0,30);add("酒精灯").x=2.3f;selected=a.id;status="已创建化学自由实验 · 点击器材修改试剂";}
    if(mode==CIRCUIT){Item battery=add("电池");battery.x=-2.7f;battery.z=0;Item sw=add("开关");sw.x=-.8f;sw.z=0;Item lamp1=add("灯泡");lamp1.x=1.5f;lamp1.z=-.85f;Item lamp2=add("灯泡");lamp2.x=1.5f;lamp2.z=.85f;
      wires.add(new Wire(battery.id,0,sw.id,0));wires.add(new Wire(sw.id,1,lamp1.id,0));wires.add(new Wire(sw.id,1,lamp2.id,0));wires.add(new Wire(lamp1.id,1,battery.id,1));wires.add(new Wire(lamp2.id,1,battery.id,1));selected=lamp1.id;solveCircuit();}
    if(mode==MOTION){Item cart=add("小车");cart.x=-3.5f;cart.force=5;add("斜面").x=2;selected=cart.id;status="点击运行测试小车受力和摩擦";}
    if(mode==OPTICS){Item light=add("光源");light.x=-3.4f;light.z=0;Item lens=add("凸透镜");lens.x=0;lens.z=0;Item screen=add("光屏");screen.x=3.4f;screen.z=0;selected=lens.id;status="改变透镜焦距并观察光线折射";}
  }
  public void save(Context ctx){try{JSONObject root=new JSONObject();root.put("version",4);root.put("mode",mode);root.put("next",nextId);JSONArray datasets=new JSONArray();for(int m=0;m<4;m++){JSONArray arr=new JSONArray();for(Item t:groups[m])arr.put(t.toJson());datasets.put(arr);}root.put("items",datasets);JSONArray wa=new JSONArray();for(Wire w:wires)wa.put(w.toJson());root.put("wires",wa);ctx.getSharedPreferences("native_lab",Context.MODE_PRIVATE).edit().putString("scene",root.toString()).apply();status="四个实验台已保存在手机本地";}catch(Exception ex){status="保存失败";}}
  public void load(Context ctx){String data=ctx.getSharedPreferences("native_lab",Context.MODE_PRIVATE).getString("scene",null);if(data==null)return;
    try{JSONObject root=new JSONObject(data);JSONArray ds=root.getJSONArray("items");for(int m=0;m<4;m++){groups[m].clear();JSONArray items=ds.getJSONArray(m);for(int i=0;i<items.length();i++)groups[m].add(Item.fromJson(items.getJSONObject(i)));}
      wires.clear();JSONArray ws=root.getJSONArray("wires");for(int i=0;i<ws.length();i++){JSONObject w=ws.getJSONObject(i);wires.add(new Wire(w.getInt("a"),w.getInt("ap"),w.getInt("b"),w.getInt("bp")));}nextId=root.optInt("next",1);mode=root.optInt("mode",0);selected=-1;solveCircuit();status="已恢复上次实验";
    }catch(Exception ex){status="本地记录不可用，已使用空白实验台";}}
  }
