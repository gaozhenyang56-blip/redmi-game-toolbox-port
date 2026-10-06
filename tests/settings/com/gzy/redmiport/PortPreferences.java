package com.gzy.redmiport;
import java.util.HashMap;
public class PortPreferences {
 public static final HashMap<String,Object> values=new HashMap<>();
 public static boolean bool(String k,boolean fallback){return values.containsKey(k)?(Boolean)values.get(k):fallback;}
 public static int number(String k,int fallback){return values.containsKey(k)?(Integer)values.get(k):fallback;}
 public static void put(String k,boolean v){values.put(k,v);}
 public static void put(String k,int v){values.put(k,v);}
}
