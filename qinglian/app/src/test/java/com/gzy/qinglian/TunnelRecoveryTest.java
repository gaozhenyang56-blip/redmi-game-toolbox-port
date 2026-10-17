package com.gzy.qinglian;
import android.net.*;
import android.content.Intent;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.*;
import org.robolectric.annotation.Config;
import java.lang.reflect.Field;
import java.util.concurrent.*;
import static org.junit.Assert.*;

/** Exercises real worker serialization and stop/network callback races without native TUN. */
@RunWith(RobolectricTestRunner.class) @Config(sdk=35)
public class TunnelRecoveryTest {
 public static class Service extends TunnelService {
  int coreStarts,relayStarts;boolean healthy=true,failRelay;
  volatile Network[] selected;
  @Override boolean coreHealthy(){return healthy;}
  @Override void startCore(){coreStarts++;healthy=true;}
  @Override void stopCore(){healthy=false;}
  @Override void startRelay()throws Exception{relayStarts++;if(failRelay)throw new java.io.IOException("fixture");}
  @Override void stopRelay(){}
  @Override public boolean setUnderlyingNetworks(Network[] networks){selected=networks;return true;}
 }
 private void idle(Service s)throws Exception{
  Field f=TunnelService.class.getDeclaredField("worker");f.setAccessible(true);
  ((ExecutorService)f.get(s)).submit(()->{}).get(12,TimeUnit.SECONDS);
 }
 @Test public void relayFailureDoesNotRestartHealthyCoreOrResetUsage()throws Exception{
  var ctrl=Robolectric.buildService(Service.class).create();try{
   Service s=ctrl.get();TunnelService.state="connected";TunnelService.uploadBytes=123;TunnelService.downloadBytes=456;
   s.requestRecovery();s.requestRecovery();idle(s);
   assertEquals(1,s.relayStarts);assertEquals(0,s.coreStarts);assertEquals("connected",TunnelService.state);
   assertEquals(123,TunnelService.uploadBytes);assertEquals(456,TunnelService.downloadBytes);
  }finally{ctrl.destroy();}
 }
 @Test public void deadCoreRestartsAndRepeatedFailuresStopAtBudget()throws Exception{
  var ctrl=Robolectric.buildService(Service.class).create();try{
   Service s=ctrl.get();s.healthy=false;s.failRelay=true;s.requestRecovery();idle(s);
   assertEquals(1,s.coreStarts);assertEquals(3,s.relayStarts);assertEquals("error",TunnelService.state);
  }finally{ctrl.destroy();}
 }
 @Test public void userStopCancelsPendingRecovery()throws Exception{
  var ctrl=Robolectric.buildService(Service.class).create();try{
   Service s=ctrl.get();s.requestRecovery();s.onStartCommand(new Intent().setAction("STOP"),0,1);idle(s);
   assertEquals(0,s.coreStarts);assertEquals(0,s.relayStarts);assertEquals("disconnected",TunnelService.state);
  }finally{ctrl.destroy();}
 }
 @Test public void lateLossOfOldNetworkDoesNotClearNewNetworkAndStoppedCallbacksAreIgnored()throws Exception{
  var ctrl=Robolectric.buildService(Service.class).create();try{
   Service s=ctrl.get();s.trackNetwork();
   ConnectivityManager manager=s.getSystemService(ConnectivityManager.class);
   var callbacks=Shadows.shadowOf(manager).getNetworkCallbacks();assertEquals(1,callbacks.size());
   var callback=callbacks.iterator().next();Network wifi=org.robolectric.shadows.ShadowNetwork.newInstance(101),cell=org.robolectric.shadows.ShadowNetwork.newInstance(102);
   callback.onAvailable(wifi);callback.onAvailable(cell);callback.onLost(wifi);
   assertArrayEquals(new Network[]{cell},s.selected);
   callback.onLost(cell);assertNull(s.selected);
   callback.onCapabilitiesChanged(wifi,new NetworkCapabilities());assertArrayEquals(new Network[]{wifi},s.selected);
   s.onStartCommand(new Intent().setAction("STOP"),0,1);idle(s);
   callback.onAvailable(cell);assertArrayEquals(new Network[]{wifi},s.selected);
   assertTrue(Shadows.shadowOf(manager).getNetworkCallbacks().isEmpty());
  }finally{ctrl.destroy();}
 }
}
