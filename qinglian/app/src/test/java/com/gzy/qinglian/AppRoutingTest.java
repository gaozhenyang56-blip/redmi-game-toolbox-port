package com.gzy.qinglian;
import org.junit.Test;
import static org.junit.Assert.*;
import java.util.*;

public class AppRoutingTest {
 private final String own="com.gzy.qinglian";
 @Test public void defaultRoutesEverythingExceptCoreApp(){
  AppRouting.Plan plan=new AppRouting(true,AppRouting.Mode.BLACKLIST,Set.of("example.ignored")).plan(own,name->true);
  assertFalse(plan.allowList);assertEquals(Set.of(own),plan.packages);
 }
 @Test public void includeUsesOnlySelectedInstalledAppsAndExcludesSelf(){
  AppRouting.Plan plan=new AppRouting(false,AppRouting.Mode.WHITELIST,Set.of(own,"example.vpn","example.removed")).plan(own,name->!name.endsWith("removed"));
  assertTrue(plan.allowList);assertEquals(Set.of("example.vpn"),plan.packages);
 }
 @Test public void excludeUsesDenyListAndAlwaysProtectsCoreSockets(){
  AppRouting.Plan plan=new AppRouting(false,AppRouting.Mode.BLACKLIST,Set.of("example.direct","example.removed")).plan(own,name->!name.endsWith("removed"));
  assertFalse(plan.allowList);assertEquals(Set.of(own,"example.direct"),plan.packages);
 }
 @Test public void emptyOrEntirelyRemovedIncludeListCannotFallBackToAllApps(){
  for(Set<String> selected:List.of(Collections.<String>emptySet(),Set.of(own),Set.of("example.removed"))){
   assertThrows(IllegalArgumentException.class,()->new AppRouting(false,AppRouting.Mode.WHITELIST,selected).plan(own,name->false));
  }
 }
 @Test public void selectionIsImmutableSnapshot(){
  Set<String> selected=new HashSet<>(Set.of("example.one"));AppRouting rules=new AppRouting(false,AppRouting.Mode.WHITELIST,selected);
  selected.clear();assertEquals(Set.of("example.one"),rules.selected);
  assertThrows(UnsupportedOperationException.class,()->rules.selected.clear());
 }
}
