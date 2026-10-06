package com.gzy.redmiport;
import java.util.*;
import java.util.regex.Pattern;
/** SurfaceFlinger latency: header is refresh period; row[1] is actual present time. */
public final class FrameSampleParser {
 public static final class Result {
  public final String layer,reason;public final long fps,last;public final int count;
  Result(String layer,long fps,long last,int count,String reason){this.layer=layer;this.fps=fps;this.last=last;this.count=count;this.reason=reason;}
  public boolean available(){return fps>=0;}
 }
 public static Result parse(String dump,long now){
  if(dump.contains("Permission Denial")||dump.contains("Permission denied"))return new Result("",-1,0,0,"系统拒绝读取帧数据");
  String pkg="",layer=null;TreeSet<Long> times=new TreeSet<Long>();Result best=null,rejected=null;int bestPriority=-1;
  for(String line:(dump+"\nLAYER:\n").split("\\r?\\n")){
   if(line.startsWith("PACKAGE:")){pkg=line.substring(8).trim();continue;}
   if(line.startsWith("LAYER:")){
    if(layer!=null&&!pkg.isEmpty()&&belongs(layer,pkg)){
     Result r=calculate(layer,times,now);int priority=(layer.contains("SurfaceView")?2:layer.contains("BLAST")?1:0);
     if(!r.available()&&(rejected==null||r.last>rejected.last))rejected=r;
     if(r.available()&&(best==null||priority>bestPriority||(priority==bestPriority&&(r.last>best.last||r.last==best.last&&r.count>best.count)))){best=r;bestPriority=priority;}
    }
    layer=line.substring(6);times.clear();continue;
   }
   if(layer==null)continue;
   String[] columns=line.trim().split("\\s+");if(columns.length!=3)continue;
   try{long time=Long.parseLong(columns[1]);if(time>0&&time<Long.MAX_VALUE&&time<=now+50000000L)times.add(time);}catch(NumberFormatException ignored){}
  }
  return best!=null?best:pkg.isEmpty()?new Result("",-1,0,0,"未识别前台应用"):
   rejected!=null?rejected:new Result("",-1,0,0,"未找到对应游戏图层");
 }
 private static boolean belongs(String layer,String pkg){return Pattern.compile("(?<![A-Za-z0-9_.])"+Pattern.quote(pkg)+"(?![A-Za-z0-9_.])").matcher(layer).find();}
 private static Result calculate(String layer,TreeSet<Long> times,long now){
  if(times.size()<2)return new Result(layer,-1,0,0,"帧时间不足");
  long last=times.last();if(now-last>1500000000L)return new Result(layer,-1,last,0,"帧时间已过期");
  SortedSet<Long> window=times.tailSet(last-1000000000L);if(window.size()<2)return new Result(layer,-1,last,window.size(),"帧时间不足");
  long first=window.first();long fps=Math.round((window.size()-1)*1000000000.0/(last-first));
  if(fps>240)return new Result(layer,-1,last,window.size(),"异常帧时间");
  return new Result(layer,fps,last,window.size(),"");
 }
}
