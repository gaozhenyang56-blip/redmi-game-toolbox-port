package com.gzy.qinglian;
import org.junit.Test;import org.junit.runner.RunWith;import static org.junit.Assert.*;
import org.robolectric.*;import org.robolectric.annotation.*;
import android.view.*;import android.widget.*;import android.graphics.*;import java.io.*;
@RunWith(RobolectricTestRunner.class) @Config(sdk=35,qualifiers="w360dp-h780dp-xxhdpi") @GraphicsMode(GraphicsMode.Mode.NATIVE)
public class UiTest {
 private TextView find(View v,String text){if(v instanceof TextView&&((TextView)v).getText().toString().equals(text))return (TextView)v;if(v instanceof ViewGroup)for(int i=0;i<((ViewGroup)v).getChildCount();i++){TextView r=find(((ViewGroup)v).getChildAt(i),text);if(r!=null)return r;}return null;}
 @Test public void opensAndNavigatesAllPages()throws Exception{
  try(var ctrl=Robolectric.buildActivity(MainActivity.class).setup()){
   MainActivity a=ctrl.get();View v=a.getWindow().getDecorView();assertNotNull(find(v,"唯一节点"));assertNotNull(find(v,"服务端剩余流量"));assertNotNull(find(v,"实时流量"));
   v.measure(View.MeasureSpec.makeMeasureSpec(1080,View.MeasureSpec.EXACTLY),View.MeasureSpec.makeMeasureSpec(2340,View.MeasureSpec.EXACTLY));v.layout(0,0,1080,2340);Bitmap image=Bitmap.createBitmap(1080,2340,Bitmap.Config.ARGB_8888);v.draw(new Canvas(image));File out=new File(System.getProperty("user.dir"),"build/ui-home.png");out.getParentFile().mkdirs();try(FileOutputStream f=new FileOutputStream(out)){image.compress(Bitmap.CompressFormat.PNG,100,f);}
   find(v,"测速").performClick();assertNotNull(find(v,"看看连接表现"));assertFalse(find(v,"测试延迟").isEnabled());assertFalse(find(v,"开始下载测速").isEnabled());
   find(v,"关于").performClick();assertNotNull(find(v,"开源许可"));find(v,"连接").performClick();assertNotNull(find(v,"唯一节点"));
  }
 }
}
