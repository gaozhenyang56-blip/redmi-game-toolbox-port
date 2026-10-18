package com.gzy.qinglian;
import org.junit.Test;
import java.util.*;
import static org.junit.Assert.*;
public class RoutingPresetTest {
 @Test public void selectsOnlyKnownInstalledEnabledPackagesAndLeavesInputUntouched(){
  List<AppRouting.App> apps=Arrays.asList(new AppRouting.App("com.openai.chatgpt","ChatGPT"),new AppRouting.App("com.github.android","GitHub"),new AppRouting.App("fake.chatgpt","ChatGPT"),new AppRouting.App("com.google.android.gm","Gmail"));
  Set<String> result=AppRouting.presetPackages(apps,p->!p.equals("com.google.android.gm"));
  assertEquals(new TreeSet<>(Arrays.asList("com.openai.chatgpt","com.github.android")),result);assertEquals(4,apps.size());
  assertFalse(result.contains("org.telegram.messenger"));
 }
}
