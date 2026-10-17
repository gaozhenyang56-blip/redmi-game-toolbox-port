package com.gzy.qinglian;
import java.util.*;
/** Values from Subscription-Userinfo. total=0 means unlimited, not zero remaining. */
public final class QuotaInfo {
 public final long upload,download,total,expire;
 public QuotaInfo(long up,long down,long total,long expire){if(up<0||down<0||total<0||expire<0||expire>Long.MAX_VALUE/1000)throw new IllegalArgumentException();Math.addExact(up,down);this.upload=up;this.download=down;this.total=total;this.expire=expire;}
 public long used(){return Math.addExact(upload,download);}
 public long remaining(){return total==0?-1:Math.max(0,total-used());}
 public static QuotaInfo parse(String s){
  if(s==null||s.trim().isEmpty())throw new IllegalArgumentException("未返回配额信息");
  HashMap<String,Long> m=new HashMap<>();for(String item:s.split(";")){String[] p=item.trim().split("=",2);if(p.length==2&&Arrays.asList("upload","download","total","expire").contains(p[0].trim())){if(m.containsKey(p[0].trim()))throw new IllegalArgumentException();m.put(p[0].trim(),Long.parseLong(p[1].trim()));}}
  if(!m.keySet().containsAll(Arrays.asList("upload","download","total")))throw new IllegalArgumentException("配额字段不完整");
  return new QuotaInfo(m.get("upload"),m.get("download"),m.get("total"),m.getOrDefault("expire",0L));
 }
}
