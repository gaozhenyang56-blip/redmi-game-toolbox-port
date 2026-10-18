package com.gzy.qinglian;
import android.view.*;
import android.widget.*;
import androidx.core.graphics.Insets;
import androidx.core.view.*;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.*;
import org.robolectric.annotation.Config;
import static org.junit.Assert.*;

@RunWith(RobolectricTestRunner.class) @Config(sdk=35,qualifiers="w360dp-h780dp-xxhdpi")
public class InsetsTest {
 @Test public void systemBottomInsetIsReservedOnceAndNavigationStaysCompact(){
  try(var ctrl=Robolectric.buildActivity(MainActivity.class).setup()){
   MainActivity a=ctrl.get();ViewGroup root=(ViewGroup)((ViewGroup)a.findViewById(android.R.id.content)).getChildAt(0);
   View nav=root.getChildAt(root.getChildCount()-1);
   WindowInsetsCompat insets=new WindowInsetsCompat.Builder().setInsets(WindowInsetsCompat.Type.systemBars(),Insets.of(0,72,0,144)).build();
   for(int i=0;i<2;i++){
    assertTrue(ViewCompat.dispatchApplyWindowInsets(root,insets).isConsumed());
    root.measure(View.MeasureSpec.makeMeasureSpec(1080,View.MeasureSpec.EXACTLY),View.MeasureSpec.makeMeasureSpec(2340,View.MeasureSpec.EXACTLY));root.layout(0,0,1080,2340);
    assertEquals(144,root.getPaddingBottom());assertEquals(0,nav.getPaddingBottom());
    assertEquals(2340-144-Math.round(8*a.getResources().getDisplayMetrics().density),nav.getBottom());
    assertTrue(nav.getHeight()<=96*a.getResources().getDisplayMetrics().density);
   }
  }
 }
}
