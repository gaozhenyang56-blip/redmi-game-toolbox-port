package com.gzy.qinglian;
import android.app.Activity;
import android.graphics.*;
import android.graphics.drawable.BitmapDrawable;
import android.os.Looper;
import android.view.*;
import android.widget.*;
import java.time.Duration;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.*;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;
import static org.junit.Assert.*;

@RunWith(RobolectricTestRunner.class) @Config(sdk=35) @GraphicsMode(GraphicsMode.Mode.NATIVE)
public class FrostedBarTest {
 @Test public void capturesOnlySourceStripCoalescesChangesAndStopsInBackground(){
  try(var ctrl=Robolectric.buildActivity(Activity.class).setup()){
   Activity a=ctrl.get();FrameLayout root=new FrameLayout(a);a.setContentView(root);
   int[] draws={0};View source=new View(a){@Override protected void onDraw(Canvas canvas){draws[0]++;canvas.drawColor(Color.RED);}};
   root.addView(source,new FrameLayout.LayoutParams(-1,-1));
   FrostedBar bar=new FrostedBar(a,Color.WHITE,false);bar.setSource(source);root.addView(bar,new FrameLayout.LayoutParams(-1,80,Gravity.BOTTOM));
   root.measure(View.MeasureSpec.makeMeasureSpec(400,View.MeasureSpec.EXACTLY),View.MeasureSpec.makeMeasureSpec(800,View.MeasureSpec.EXACTLY));root.layout(0,0,400,800);
   bar.setActive(true);for(int i=0;i<100;i++)bar.requestBackdrop();
   Shadows.shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(80));
   assertEquals(1,draws[0]);ImageView image=(ImageView)bar.getChildAt(0);
   Bitmap bitmap=((BitmapDrawable)image.getDrawable()).getBitmap();assertEquals((bar.getWidth()+7)/8,bitmap.getWidth());assertEquals((bar.getHeight()+7)/8,bitmap.getHeight());assertEquals(Color.RED,bitmap.getPixel(bitmap.getWidth()/2,bitmap.getHeight()/2));
   bar.requestBackdrop();bar.setActive(false);Shadows.shadowOf(Looper.getMainLooper()).idleFor(Duration.ofSeconds(1));
   assertEquals(1,draws[0]);assertNull(image.getDrawable());
   bar.setActive(true);Shadows.shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(80));assertEquals(2,draws[0]);assertNotNull(image.getDrawable());
  }
 }
}
