package com.gzy.qinglian;
import android.app.Activity;
import android.graphics.*;
import android.graphics.drawable.BitmapDrawable;
import android.view.*;
import android.widget.*;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.*;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;
import static org.junit.Assert.*;

@RunWith(RobolectricTestRunner.class) @Config(sdk=35) @GraphicsMode(GraphicsMode.Mode.NATIVE)
public class FrostedBarTest {
 private Bitmap image(FrostedBar bar){return ((BitmapDrawable)((ImageView)bar.getChildAt(0)).getDrawable()).getBitmap();}
 @Test public void updatesOnContentDrawWithoutScrollAndDoesNotUploadIdenticalFrames(){
  try(var ctrl=Robolectric.buildActivity(Activity.class).setup()){
   Activity a=ctrl.get();FrameLayout root=new FrameLayout(a);a.setContentView(root);int[] color={Color.RED};
   View source=new View(a){@Override protected void onDraw(Canvas canvas){canvas.drawColor(color[0]);}};root.addView(source,new FrameLayout.LayoutParams(-1,-1));
   FrostedBar bar=new FrostedBar(a,Color.WHITE,false);bar.setSource(source);root.addView(bar,new FrameLayout.LayoutParams(-1,80,Gravity.CENTER));
   root.measure(View.MeasureSpec.makeMeasureSpec(400,View.MeasureSpec.EXACTLY),View.MeasureSpec.makeMeasureSpec(800,View.MeasureSpec.EXACTLY));root.layout(0,0,400,800);bar.setActive(true);
   source.getViewTreeObserver().dispatchOnPreDraw();Bitmap first=image(bar);assertEquals(Color.RED,first.getPixel(first.getWidth()/2,first.getHeight()/2));
   assertEquals((((ImageView)bar.getChildAt(0)).getWidth()+7)/8,first.getWidth());assertTrue(first.getWidth()<root.getWidth()/2);
   for(int i=0;i<10;i++)source.getViewTreeObserver().dispatchOnPreDraw();assertSame(first,image(bar));
   color[0]=Color.BLUE;source.invalidate();source.getViewTreeObserver().dispatchOnPreDraw();assertNotSame(first,image(bar));assertEquals(Color.BLUE,image(bar).getPixel(image(bar).getWidth()/2,image(bar).getHeight()/2));
   bar.setActive(false);source.getViewTreeObserver().dispatchOnPreDraw();assertNull(((ImageView)bar.getChildAt(0)).getDrawable());
   bar.setActive(true);source.getViewTreeObserver().dispatchOnPreDraw();assertNotNull(image(bar));
   bar.setVisibility(View.GONE);source.getViewTreeObserver().dispatchOnPreDraw();assertNull(((ImageView)bar.getChildAt(0)).getDrawable());
   bar.setVisibility(View.VISIBLE);source.getViewTreeObserver().dispatchOnPreDraw();assertNotNull(image(bar));
   root.removeView(bar);source.getViewTreeObserver().dispatchOnPreDraw();assertNull(((ImageView)bar.getChildAt(0)).getDrawable());
  }
 }
 @Test public void foregroundPumpSamplesChangesWithoutInvalidationAndStopsWhenPaused(){
  try(var ctrl=Robolectric.buildActivity(Activity.class).setup()){
   Activity a=ctrl.get();FrameLayout root=new FrameLayout(a);a.setContentView(root);int[] color={Color.RED},draws={0};
   View source=new View(a){@Override protected void onDraw(Canvas c){draws[0]++;c.drawColor(color[0]);}};root.addView(source,new FrameLayout.LayoutParams(-1,-1));
   FrostedBar bar=new FrostedBar(a,Color.WHITE,false);bar.setSource(source);root.addView(bar,new FrameLayout.LayoutParams(-1,80,Gravity.CENTER));root.measure(View.MeasureSpec.makeMeasureSpec(400,View.MeasureSpec.EXACTLY),View.MeasureSpec.makeMeasureSpec(800,View.MeasureSpec.EXACTLY));root.layout(0,0,400,800);bar.setActive(true);
   Shadows.shadowOf(android.os.Looper.getMainLooper()).idleFor(java.time.Duration.ofMillis(150));color[0]=Color.BLUE;
   Shadows.shadowOf(android.os.Looper.getMainLooper()).idleFor(java.time.Duration.ofMillis(150));Bitmap b=image(bar);assertEquals(Color.BLUE,b.getPixel(b.getWidth()/2,b.getHeight()/2));
   bar.setActive(false);int stopped=draws[0];Shadows.shadowOf(android.os.Looper.getMainLooper()).idleFor(java.time.Duration.ofMillis(150));assertEquals(stopped,draws[0]);assertNull(((ImageView)bar.getChildAt(0)).getDrawable());
  }
 }
 @Test @Config(sdk=30) public void olderAndroidReallyBlursAnEdgeInsteadOfOnlyTinting(){
  try(var ctrl=Robolectric.buildActivity(Activity.class).setup()){
   Activity a=ctrl.get();FrameLayout root=new FrameLayout(a);a.setContentView(root);
   View source=new View(a){@Override protected void onDraw(Canvas canvas){canvas.drawColor(Color.BLACK);Paint p=new Paint();p.setColor(Color.WHITE);canvas.drawRect(200,0,400,800,p);}};root.addView(source,new FrameLayout.LayoutParams(-1,-1));
   FrostedBar bar=new FrostedBar(a,Color.WHITE,false);bar.setSource(source);root.addView(bar,new FrameLayout.LayoutParams(-1,80,Gravity.CENTER));
   root.measure(View.MeasureSpec.makeMeasureSpec(400,View.MeasureSpec.EXACTLY),View.MeasureSpec.makeMeasureSpec(800,View.MeasureSpec.EXACTLY));root.layout(0,0,400,800);bar.setActive(true);source.getViewTreeObserver().dispatchOnPreDraw();
   Bitmap b=image(bar);int center=Color.red(b.getPixel(b.getWidth()/2,b.getHeight()/2));assertTrue(center>40&&center<215);
   assertTrue(Color.red(b.getPixel(b.getWidth()/2-3,b.getHeight()/2))<center);assertTrue(Color.red(b.getPixel(b.getWidth()/2+3,b.getHeight()/2))>center);
  }
 }
}
