package com.gzy.qinglian;
import org.junit.Test;
import static org.junit.Assert.*;
import java.util.*;
import java.util.concurrent.*;
import java.util.concurrent.atomic.*;
import org.json.*;

public class DeviceReporterTest {
 @Test public void closesAfterInflightHeartbeatWithCapturedFinalCounters()throws Exception{
  CountDownLatch entered=new CountDownLatch(1),release=new CountDownLatch(1);
  List<JSONObject> requests=Collections.synchronizedList(new ArrayList<>());
  AtomicReference<DeviceReporter.Sample> sample=new AtomicReference<>(new DeviceReporter.Sample(1,2,3,4));
  ScheduledExecutorService worker=Executors.newSingleThreadScheduledExecutor();
  DeviceReporter reporter=new DeviceReporter(body->{
   requests.add(body);if(body.getBoolean("online")){entered.countDown();assertTrue(release.await(3,TimeUnit.SECONDS));}
  },sample::get,new JSONObject().put("sessionId","session-one").put("generation",2),worker);
  try{
   reporter.start();assertTrue(entered.await(3,TimeUnit.SECONDS));
   sample.set(new DeviceReporter.Sample(100,200,30,40));reporter.close();reporter.close();
   sample.set(new DeviceReporter.Sample(0,0,0,0));release.countDown();
   assertTrue(worker.awaitTermination(3,TimeUnit.SECONDS));assertEquals(2,requests.size());
   JSONObject offline=requests.get(1);assertFalse(offline.getBoolean("online"));assertEquals(200,offline.getLong("downloadBytes"));
   assertEquals(0,offline.getDouble("uploadRate"),0);assertEquals("session-one",offline.getString("sessionId"));
   assertEquals(1,requests.get(0).getLong("sequence"));assertEquals(2,offline.getLong("sequence"));
  }finally{release.countDown();reporter.close();worker.shutdownNow();}
 }
 @Test public void failedOnlineStillAttemptsOffline()throws Exception{
  CountDownLatch entered=new CountDownLatch(1);List<JSONObject> requests=Collections.synchronizedList(new ArrayList<>());
  ScheduledExecutorService worker=Executors.newSingleThreadScheduledExecutor();
  DeviceReporter reporter=new DeviceReporter(body->{requests.add(body);entered.countDown();throw new java.io.IOException("fixture failure");},
   ()->new DeviceReporter.Sample(5,6,7,8),new JSONObject().put("sessionId","failed"),worker);
  try{
   reporter.start();assertTrue(entered.await(3,TimeUnit.SECONDS));reporter.close();assertTrue(worker.awaitTermination(3,TimeUnit.SECONDS));
   assertEquals(2,requests.size());assertFalse(requests.get(1).getBoolean("online"));assertTrue(reporter.status.contains("暂不可用"));
  }finally{reporter.close();worker.shutdownNow();}
 }
 @Test public void closingBeforeStartSendsNothing()throws Exception{
  ScheduledExecutorService worker=Executors.newSingleThreadScheduledExecutor();AtomicInteger sent=new AtomicInteger();
  DeviceReporter reporter=new DeviceReporter(body->sent.incrementAndGet(),()->new DeviceReporter.Sample(0,0,0,0),new JSONObject(),worker);
  reporter.close();reporter.start();assertTrue(worker.awaitTermination(3,TimeUnit.SECONDS));assertEquals(0,sent.get());
 }
}
