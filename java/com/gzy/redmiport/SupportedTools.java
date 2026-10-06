package com.gzy.redmiport;
import java.util.*;
import java.lang.reflect.*;
/** Filters only the original model list; original layout and adapters are retained. */
public final class SupportedTools {
 public static List filter(List input){
  ArrayList out=new ArrayList();if(input==null)return out;
  for(Object item:input){try{
   Method getter=item.getClass().getMethod("l");Object type=getter.invoke(item);
   if(!(type instanceof Enum))continue;
   String name=((Enum)type).name();
   if(name.equals("PERFORMANCE")||name.equals("SETTINGS")||name.equals("GAME_MORE_TOOLS")||name.equals("LEFT_ARROW")||name.equals("RIGHT_ARROW"))out.add(item);
  }catch(Exception ignored){}}
  return out;
 }
}
