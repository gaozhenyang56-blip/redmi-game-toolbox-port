package com.gzy.redmiport;
import android.content.Context;
public class GameShortcut {
 public static boolean supported=true,pinned;
 public static boolean supported(Context c){return supported;}
 public static boolean pinned(Context c){return pinned;}
 public static boolean change(Context c,boolean value){pinned=value;return true;}
}
