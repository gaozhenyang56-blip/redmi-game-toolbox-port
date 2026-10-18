package com.gzy.qinglian;
import android.view.*;import android.widget.*;import org.junit.Test;import org.junit.runner.RunWith;import static org.junit.Assert.*;import org.robolectric.*;import org.robolectric.annotation.*;
@RunWith(RobolectricTestRunner.class) @Config(sdk=35,qualifiers="w360dp-h780dp-xxhdpi") @GraphicsMode(GraphicsMode.Mode.NATIVE)
public class AccountUiTest {
 private TextView find(View v,String t){if(v instanceof TextView&&((TextView)v).getText().toString().equals(t)&&v.isShown())return (TextView)v;if(v instanceof ViewGroup)for(int i=0;i<((ViewGroup)v).getChildCount();i++){TextView r=find(((ViewGroup)v).getChildAt(i),t);if(r!=null)return r;}return null;}
 @Test public void accountsOpenAsAnIndependentActivityAndGuestCanStayOnConnectionPage(){
  try(var ctrl=Robolectric.buildActivity(MainActivity.class).setup()){
   MainActivity a=ctrl.get();a.getSharedPreferences("export-api",0).edit().clear().commit();TextView open=find(a.getWindow().getDecorView(),"账号 / 节点导出");assertNotNull(open);open.performClick();android.content.Intent intent=Shadows.shadowOf(a).getNextStartedActivity();assertEquals(AccountActivity.class.getName(),intent.getComponent().getClassName());assertTrue(AccountMonitor.display(a).contains("免登录"));
  }
 }
 @Test public void guestAccountPageShowsLoginWithoutExportControlsAndCapturesLayout()throws Exception{
  RuntimeEnvironment.getApplication().getSharedPreferences("export-api",0).edit().clear().commit();
  try(var ctrl=Robolectric.buildActivity(AccountActivity.class).setup()){
   AccountActivity a=ctrl.get();View root=a.getWindow().getDecorView();assertNotNull(find(root,"账号与节点导出"));assertNotNull(find(root,"登录账号"));assertNull(find(root,"创建独立节点"));AccountPage page=org.robolectric.util.ReflectionHelpers.getField(a,"page");page.token.setText("a");page.password.setText("b");page.activate.performClick();assertTrue(page.status.isShown());assertTrue(page.status.getText().toString().contains("用户名"));page.token.setText("");page.password.setText("");
   root.measure(View.MeasureSpec.makeMeasureSpec(1080,View.MeasureSpec.EXACTLY),View.MeasureSpec.makeMeasureSpec(2340,View.MeasureSpec.EXACTLY));root.layout(0,0,1080,2340);android.graphics.Bitmap image=android.graphics.Bitmap.createBitmap(1080,2340,android.graphics.Bitmap.Config.ARGB_8888);root.draw(new android.graphics.Canvas(image));try(java.io.FileOutputStream out=new java.io.FileOutputStream(new java.io.File(System.getProperty("user.dir"),"build/ui-account-v13.png"))){image.compress(android.graphics.Bitmap.CompressFormat.PNG,100,out);}
  }
 }
 @Test public void onlyManualGuestBeginCreatesANewSessionIdentity(){
  android.content.Context c=RuntimeEnvironment.getApplication();GuestClient.begin(c);String key=GuestClient.identity();assertTrue(key.matches("[0-9a-f]{64}"));assertEquals(key,GuestClient.identity());GuestClient.end(c);assertEquals("",GuestClient.identity());GuestClient.begin(c);assertNotEquals(key,GuestClient.identity());GuestClient.end(c);
 }
}
