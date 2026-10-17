package com.gzy.qinglian;
import org.junit.Test;import org.junit.runner.RunWith;import static org.junit.Assert.*;
import org.robolectric.*;import org.robolectric.annotation.Config;
import androidx.appcompat.app.AppCompatDelegate;import android.content.Context;import android.content.res.Configuration;
@RunWith(RobolectricTestRunner.class) @Config(sdk=35)
public class AppearanceTest {
 @Test public void defaultsToLightAndPersistsDarkThenLightAcrossActivities(){
  Context app=RuntimeEnvironment.getApplication();app.getSharedPreferences("appearance",0).edit().clear().commit();assertEquals(AppCompatDelegate.MODE_NIGHT_NO,AppAppearance.mode(app));
  try{
   assertTrue(AppAppearance.select(app,AppCompatDelegate.MODE_NIGHT_YES));
   try(var activity=Robolectric.buildActivity(MainActivity.class).setup()){assertEquals(Configuration.UI_MODE_NIGHT_YES,activity.get().getResources().getConfiguration().uiMode&Configuration.UI_MODE_NIGHT_MASK);}
   assertTrue(AppAppearance.select(app,AppCompatDelegate.MODE_NIGHT_NO));
   try(var activity=Robolectric.buildActivity(MainActivity.class).setup()){assertEquals(Configuration.UI_MODE_NIGHT_NO,activity.get().getResources().getConfiguration().uiMode&Configuration.UI_MODE_NIGHT_MASK);}
  }finally{app.getSharedPreferences("appearance",0).edit().clear().commit();AppCompatDelegate.setDefaultNightMode(AppCompatDelegate.MODE_NIGHT_NO);}
 }
}
