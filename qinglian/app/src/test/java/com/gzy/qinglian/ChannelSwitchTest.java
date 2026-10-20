package com.gzy.qinglian;
import org.json.*;import org.junit.*;import static org.junit.Assert.*;import org.junit.runner.RunWith;import org.robolectric.*;import org.robolectric.annotation.Config;import org.robolectric.util.ReflectionHelpers;
import java.util.concurrent.*;
/** Service lifecycle/selection fixtures; native transport is tested separately. */
@RunWith(RobolectricTestRunner.class) @Config(sdk=35)
public class ChannelSwitchTest {
 public static class Service extends TunnelService {
  int starts,stops,relays;boolean rejectHy2,failTcpRelay;long probeBytes;
  @Override ProfileMonitor.Bundle candidates()throws Exception{
   JSONObject tcp=new JSONObject().put("protocol","vless").put("add","127.0.0.1").put("port",443).put("id","11111111-1111-4111-8111-111111111111");
   JSONObject hy=new JSONObject().put("protocol","hysteria2").put("add","127.0.0.1").put("port",443).put("auth","public-fixture").put("compatibility",tcp);
   return new ProfileMonitor.Bundle(new ProfileMonitor.Profile(tcp.toString(),"TCP","a".repeat(64)),new ProfileMonitor.Profile(hy.toString(),"HY2","b".repeat(64)));
  }
  @Override void startCore(){starts++;}
  @Override void stopCore(){stops++;}
  @Override void stopRelay(){}
  @Override boolean coreHealthy(){return true;}
  @Override void startRelay()throws Exception{relays++;String node=ReflectionHelpers.getField(this,"runningNode");if(failTcpRelay&&!NodeConfig.protocol(new JSONObject(node)).equals("hysteria2"))throw new java.io.IOException("relay fixture");}
  @Override long probe(long bytes)throws Exception{probeBytes+=bytes;String n=ReflectionHelpers.getField(this,"runningNode");boolean hy=NodeConfig.protocol(new JSONObject(n)).equals("hysteria2");if(hy&&rejectHy2)throw new java.io.IOException("fixture failure");return hy?100:300;}
 }
 @After public void reset(){TunnelService.state="disconnected";TunnelService.connectedAt=0;}
 void idle(Service s)throws Exception{((ExecutorService)ReflectionHelpers.getField(s,"worker")).submit(()->{}).get(10,TimeUnit.SECONDS);}
 Hy2Settings.Selection selection(){return new Hy2Settings.Selection(false,true,true,true,true,"vless");}
 @Test public void initialComparisonIsBoundedAndPinsWinningLeaseSelection()throws Exception{
  var control=Robolectric.buildService(Service.class).create();try{Service s=control.get();ReflectionHelpers.setField(s,"selectedProfile",selection());ProfileMonitor.Profile p=s.chooseInitialChannel();assertEquals("hysteria2",NodeConfig.protocol(new JSONObject(p.node)));assertEquals(524288,s.probeBytes);assertEquals(2,s.starts);assertEquals(2,s.stops);assertTrue(TunnelService.profileSelection().accelerated);assertTrue(TunnelService.profileSelection().options().getBoolean("labHy2"));}finally{control.destroy();}
 }
 @Test public void switchingKeepsGuestIdentityCountersAndPendingPreferences()throws Exception{
  var control=Robolectric.buildService(Service.class).create();try{Service s=control.get();ReflectionHelpers.setField(s,"selectedProfile",selection());s.configureProfile(s.candidates().tcp);GuestClient.begin(s);String guest=GuestClient.identity();TunnelService.uploadBytes=123;TunnelService.downloadBytes=456;TunnelService.connectedAt=999;TunnelService.state="connected";
   s.requestChannelSwitch();idle(s);assertTrue(TunnelService.profileSelection().accelerated);assertEquals(guest,GuestClient.identity());assertEquals(123,TunnelService.uploadBytes);assertEquals(456,TunnelService.downloadBytes);assertEquals(999,TunnelService.connectedAt);assertEquals("connected",TunnelService.state);assertEquals(1,s.relays);
  }finally{control.destroy();}
 }
 @Test public void exhaustedLocalRecoveryBudgetTriesOtherTransportWithoutNewGuest()throws Exception{
  var control=Robolectric.buildService(Service.class).create();try{Service s=control.get();ReflectionHelpers.setField(s,"selectedProfile",selection());s.configureProfile(s.candidates().tcp);s.failTcpRelay=true;GuestClient.begin(s);String identity=GuestClient.identity();TunnelService.state="connected";
   s.requestRecovery();idle(s);assertEquals("connected",TunnelService.state);assertTrue(TunnelService.profileSelection().accelerated);assertEquals(identity,GuestClient.identity());assertEquals(4,s.relays);
  }finally{control.destroy();}
 }
 @Test public void failedCandidateRestoresTheExactOriginalSelectionAndProfile()throws Exception{
  var control=Robolectric.buildService(Service.class).create();try{Service s=control.get();Hy2Settings.Selection original=selection();ReflectionHelpers.setField(s,"selectedProfile",original);s.configureProfile(s.candidates().tcp);s.rejectHy2=true;TunnelService.state="connected";
   s.requestChannelSwitch();idle(s);assertSame(original,TunnelService.profileSelection());assertEquals("VLESS",TunnelService.activeProtocol);assertTrue(TunnelService.verified);assertEquals("connected",TunnelService.state);assertEquals(2,s.starts);assertEquals(1,s.relays);
  }finally{control.destroy();}
 }
}
