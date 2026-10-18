package com.gzy.qinglian;
import org.junit.*;import static org.junit.Assert.*;import org.junit.runner.RunWith;import org.robolectric.*;import org.robolectric.annotation.Config;import com.google.android.material.materialswitch.MaterialSwitch;
@RunWith(RobolectricTestRunner.class) @Config(sdk=35)
public class LabsTest {
 @After public void clear(){RuntimeEnvironment.getApplication().getSharedPreferences("labs",0).edit().clear().commit();}
 @Test public void remainingExperimentsAreOptIn(){android.content.Context c=RuntimeEnvironment.getApplication();assertFalse(LabSettings.enabled(c,"parallel"));assertFalse(LabSettings.enabled(c,"raw"));}
 @Test public void laboratoryContainsOnlySpeedMeasurementExperiments(){try(var controller=Robolectric.buildActivity(LabsActivity.class).setup()){LabsActivity a=controller.get();java.util.ArrayList<MaterialSwitch> switches=new java.util.ArrayList<>();walk(a.findViewById(android.R.id.content),switches);assertEquals(2,switches.size());assertEquals("四路并行下载测速",switches.get(0).getText().toString());switches.get(0).setChecked(true);assertTrue(LabSettings.enabled(a,"parallel"));}}
 private void walk(android.view.View v,java.util.List<MaterialSwitch> out){if(v instanceof MaterialSwitch)out.add((MaterialSwitch)v);if(v instanceof android.view.ViewGroup){android.view.ViewGroup g=(android.view.ViewGroup)v;for(int i=0;i<g.getChildCount();i++)walk(g.getChildAt(i),out);}}
}
