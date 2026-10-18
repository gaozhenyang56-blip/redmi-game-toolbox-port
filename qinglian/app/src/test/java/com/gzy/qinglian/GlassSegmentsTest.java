package com.gzy.qinglian;
import android.app.Activity;
import android.os.Looper;
import android.view.*;
import android.widget.*;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.*;
import org.robolectric.annotation.Config;
import java.time.Duration;
import java.util.Set;
import static org.junit.Assert.*;

@RunWith(RobolectricTestRunner.class) @Config(sdk=35)
public class GlassSegmentsTest {
 private GlassSegments rail(Activity a){
  a.setTheme(R.style.Theme_Qinglian);GlassSegments rail=new GlassSegments(a,new String[]{"左","右"},new int[]{101,102},null,false);a.setContentView(rail);
  rail.measure(View.MeasureSpec.makeMeasureSpec(400,View.MeasureSpec.EXACTLY),View.MeasureSpec.makeMeasureSpec(60,View.MeasureSpec.EXACTLY));rail.layout(0,0,400,60);return rail;
 }
 private void event(View v,int action,float x){MotionEvent e=MotionEvent.obtain(0,20,action,x,30,0);try{v.dispatchTouchEvent(e);}finally{e.recycle();}}
 private TextView find(View v,String label){if(v instanceof TextView&&label.contentEquals(((TextView)v).getText()))return (TextView)v;if(v instanceof ViewGroup)for(int i=0;i<((ViewGroup)v).getChildCount();i++){TextView result=find(((ViewGroup)v).getChildAt(i),label);if(result!=null)return result;}return null;}
 @Test public void tapChangesCheckedStateOnceAndProgrammaticRestoreDoesNotNotify(){
  try(var ctrl=Robolectric.buildActivity(Activity.class).setup()){
   GlassSegments rail=rail(ctrl.get());int[] changes={0};rail.setListener(i->changes[0]++);
   rail.findViewById(102).performClick();Shadows.shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(250));
   assertEquals(1,rail.selected());assertTrue(((RadioButton)rail.findViewById(102)).isChecked());assertFalse(((RadioButton)rail.findViewById(101)).isChecked());
   rail.findViewById(102).performClick();assertEquals(1,changes[0]);rail.setSelected(0,false);assertEquals(1,changes[0]);assertEquals(0,rail.selected());
  }
 }
 @Test public void dragCommitsOnReleaseButCancelKeepsOriginalSelection(){
  try(var ctrl=Robolectric.buildActivity(Activity.class).setup()){
   GlassSegments rail=rail(ctrl.get());int[] changes={0};rail.setListener(i->changes[0]++);
   event(rail,MotionEvent.ACTION_DOWN,100);event(rail,MotionEvent.ACTION_MOVE,300);assertEquals(0,changes[0]);event(rail,MotionEvent.ACTION_UP,300);
   assertEquals(1,rail.selected());assertEquals(1,changes[0]);
   event(rail,MotionEvent.ACTION_DOWN,300);event(rail,MotionEvent.ACTION_MOVE,100);event(rail,MotionEvent.ACTION_CANCEL,100);
   assertEquals(1,rail.selected());assertEquals(1,changes[0]);
  }
 }
 @Test public void routingSlidersPersistIndependentListsAndRuleGlobalMode(){
  try(var ctrl=Robolectric.buildActivity(MainActivity.class).setup()){
   MainActivity a=ctrl.get();assertTrue(new AppRouting(true,AppRouting.Mode.WHITELIST,Set.of("example.proxy")).save(a));assertTrue(new AppRouting(true,AppRouting.Mode.BLACKLIST,Set.of("example.direct")).save(a));
   a.findViewById(MainActivity.NAV_ROUTING).performClick();View decor=a.getWindow().getDecorView();
   find(decor,"白名单").performClick();assertEquals(AppRouting.Mode.WHITELIST,AppRouting.load(a).mode);assertEquals(Set.of("example.proxy"),AppRouting.load(a).selected);
   find(decor,"黑名单").performClick();assertEquals(Set.of("example.direct"),AppRouting.load(a).selected);
   a.findViewById(MainActivity.NAV_CONNECT).performClick();find(decor,"规则").performClick();assertFalse(AppRouting.load(a).global);find(decor,"全局").performClick();assertTrue(AppRouting.load(a).global);
  }
 }
}
