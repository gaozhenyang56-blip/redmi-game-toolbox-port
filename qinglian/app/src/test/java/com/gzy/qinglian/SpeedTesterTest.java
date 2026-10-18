package com.gzy.qinglian;
import org.junit.Test;import static org.junit.Assert.*;
import java.net.*;import java.io.*;import java.util.concurrent.*;
public class SpeedTesterTest {
 private static class Result implements SpeedTester.Listener {
  CountDownLatch latch=new CountDownLatch(1);volatile String success,error;volatile long bytes;
  public void update(double m,long b,double f){bytes=b;}public void done(String t){success=t;latch.countDown();}public void failed(String t){error=t;latch.countDown();}
 }
 private static class LocalServer implements AutoCloseable {
  ServerSocket server;ExecutorService jobs=Executors.newCachedThreadPool();volatile boolean closed=false;CountDownLatch arrived=new CountDownLatch(1);boolean slow;java.util.concurrent.atomic.AtomicInteger requests=new java.util.concurrent.atomic.AtomicInteger(),inflight=new java.util.concurrent.atomic.AtomicInteger(),peak=new java.util.concurrent.atomic.AtomicInteger();
  LocalServer(boolean slow)throws Exception{this.slow=slow;server=new ServerSocket(0,20,InetAddress.getLoopbackAddress());Thread t=new Thread(()->{while(!closed)try{Socket client=server.accept();jobs.submit(()->handle(client));}catch(IOException e){break;}});t.setDaemon(true);t.start();}
  String url(String path){return "http://127.0.0.1:"+server.getLocalPort()+path;}
  void handle(Socket c){try(c){BufferedReader r=new BufferedReader(new InputStreamReader(c.getInputStream()));String first=r.readLine();String line;while((line=r.readLine())!=null&&!line.isEmpty()){}requests.incrementAndGet();int current=inflight.incrementAndGet();peak.accumulateAndGet(current,Math::max);arrived.countDown();if(slow)Thread.sleep(700);OutputStream out=c.getOutputStream();boolean down=first.contains("/down"),bad=first.contains("/bad");byte[] body=down?new byte[2097152]:new byte[0];String code=bad?"502 Bad Gateway":down?"200 OK":"204 No Content";out.write(("HTTP/1.1 "+code+"\r\nX-Qinglian-Speed: server-v1\r\nContent-Type: application/octet-stream\r\nContent-Length: "+body.length+"\r\nConnection: close\r\n\r\n").getBytes());out.write(body);out.flush();}catch(Exception ignored){}finally{inflight.decrementAndGet();}}
  public void close()throws Exception{closed=true;server.close();jobs.shutdownNow();}
 }
 @Test public void measuresRealResponseAndReportsFailure()throws Exception{
  try(LocalServer server=new LocalServer(false)){
   SpeedTester t=new SpeedTester(server.url("/ok"),server.url("/down"),Proxy.NO_PROXY);
   try{Result a=new Result();t.latency(a);assertTrue(a.latch.await(8,TimeUnit.SECONDS));assertNull(a.error);assertTrue(a.success.endsWith(" ms"));while(t.running())Thread.yield();Result b=new Result();t.download(b);assertTrue(b.latch.await(8,TimeUnit.SECONDS));assertNull(b.error);assertTrue(b.success.contains("2.0 MB"));}finally{t.close();}
  }
 }
 @Test public void rejectsBadHttpResponse()throws Exception{
  try(LocalServer server=new LocalServer(false)){
   SpeedTester t=new SpeedTester(server.url("/bad"),server.url("/bad"),Proxy.NO_PROXY);
   try{Result r=new Result();t.download(r);assertTrue(r.latch.await(8,TimeUnit.SECONDS));assertNotNull(r.error);assertNull(r.success);}finally{t.close();}
  }
 }
 @Test public void neverFallsBackToDirectWhenProxyFails()throws Exception{
  ServerSocket sock=new ServerSocket(0);int port=sock.getLocalPort();sock.close();SpeedTester t=new SpeedTester("http://example.com/","http://example.com/",new Proxy(Proxy.Type.HTTP,new InetSocketAddress("127.0.0.1",port)));
  try{Result r=new Result();t.download(r);assertTrue(r.latch.await(8,TimeUnit.SECONDS));assertNotNull(r.error);assertNull(r.success);}finally{t.close();}
 }
 @Test public void cancellationDoesNotProduceCompletion()throws Exception{
  try(LocalServer server=new LocalServer(true)){
   SpeedTester t=new SpeedTester(server.url("/ok"),server.url("/down"),Proxy.NO_PROXY);
   try{Result r=new Result();t.latency(r);assertTrue(server.arrived.await(3,TimeUnit.SECONDS));t.stop();assertFalse(r.latch.await(1,TimeUnit.SECONDS));assertNull(r.success);assertNull(r.error);}finally{t.close();}
  }
 }
 @Test public void reportsCoreProbeAndNeverFallsBackWhenCoreFails()throws Exception{
  SpeedTester t=new SpeedTester("http://unused.invalid/","http://unused.invalid/",Proxy.NO_PROXY,()->137L);
  try{Result r=new Result();t.latency(r);assertTrue(r.latch.await(3,TimeUnit.SECONDS));assertEquals("137 ms",r.success);assertNull(r.error);}finally{t.close();}
  SpeedTester failed=new SpeedTester("http://unused.invalid/","http://unused.invalid/",Proxy.NO_PROXY,()->{throw new IOException();});
  try{Result r=new Result();failed.latency(r);assertTrue(r.latch.await(3,TimeUnit.SECONDS));assertNotNull(r.error);assertNull(r.success);}finally{failed.close();}
 }
 @Test public void cancelledCoreProbeCannotPublishStaleResult()throws Exception{
  CountDownLatch entered=new CountDownLatch(1),release=new CountDownLatch(1);
  SpeedTester t=new SpeedTester("http://unused.invalid/","http://unused.invalid/",Proxy.NO_PROXY,()->{entered.countDown();try{release.await();}catch(InterruptedException ignored){}return 42;});
  try{Result r=new Result();t.latency(r);assertTrue(entered.await(3,TimeUnit.SECONDS));t.stop();release.countDown();assertFalse(r.latch.await(300,TimeUnit.MILLISECONDS));assertNull(r.success);assertNull(r.error);}finally{release.countDown();t.close();}
 }

 @Test public void customSizeStopsAtRequestedBytesEvenWhenOriginSendsMore()throws Exception{
  try(LocalServer server=new LocalServer(false)){
   SpeedTester t=new SpeedTester(server.url("/ok"),server.url("/down"),Proxy.NO_PROXY);
   try{Result r=new Result();t.download(r,1);assertTrue(r.latch.await(8,TimeUnit.SECONDS));assertNull(r.error);assertEquals(1048576L,r.bytes);assertTrue(r.success.contains("1.0 MB"));}finally{t.close();}
  }
 }
 @Test public void fourStreamsUseExactCombinedSizeAndCancellation()throws Exception{
  try(LocalServer server=new LocalServer(true)){SpeedTester t=new SpeedTester(server.url("/ok"),server.url("/down"),Proxy.NO_PROXY);try{Result r=new Result();t.download(r,1,4,true);assertTrue(r.latch.await(8,TimeUnit.SECONDS));assertNull(r.error);assertEquals(1048576L,r.bytes);assertTrue(r.success.contains("4路并行"));assertEquals(4,server.requests.get());assertEquals(4,server.peak.get());}finally{t.close();}}
  try(LocalServer server=new LocalServer(true)){SpeedTester t=new SpeedTester(server.url("/ok"),server.url("/down"),Proxy.NO_PROXY);try{Result r=new Result();t.download(r,1,4,false);assertTrue(server.arrived.await(3,TimeUnit.SECONDS));t.stop();assertFalse(r.latch.await(1,TimeUnit.SECONDS));}finally{t.close();}}
 }
 @Test public void parallelDoesNotFallbackWhenProxyFails()throws Exception{
  ServerSocket s=new ServerSocket(0);int port=s.getLocalPort();s.close();SpeedTester t=new SpeedTester("http://example.com/","http://example.com/",new Proxy(Proxy.Type.HTTP,new InetSocketAddress("127.0.0.1",port)));try{Result r=new Result();t.download(r,1,4,false);assertTrue(r.latch.await(8,TimeUnit.SECONDS));assertNotNull(r.error);}finally{t.close();}
 }
 @Test public void firstPartySourceUsesExactBudgetAndCanRunAgainAfterFailure()throws Exception{
  try(LocalServer server=new LocalServer(false)){SpeedTester t=new SpeedTester(server.url("/ok"),server.url("/down"),Proxy.NO_PROXY);try{Result bad=new Result();t.download(bad,1,4,false,(proxy,bytes)->(HttpURLConnection)new URL(server.url("/bad")).openConnection(proxy));assertTrue(bad.latch.await(8,TimeUnit.SECONDS));assertTrue(bad.error.contains("HTTP 502"));while(t.running())Thread.yield();Result good=new Result();t.download(good,1,4,true,(proxy,bytes)->(HttpURLConnection)new URL(server.url("/down")).openConnection(proxy));assertTrue(good.latch.await(8,TimeUnit.SECONDS));assertNull(good.error);assertEquals(1048576,good.bytes);}finally{t.close();}}
 }
 @Test public void downloadTimeoutIsNotReportedAsVpnFailure(){String error=SpeedTester.downloadError(new SocketTimeoutException(),800L*1048576,false);assertTrue(error.contains("800.0 MB"));assertTrue(error.contains("超时"));assertTrue(error.contains("不代表VPN断开"));}
 @Test(timeout=5000) public void stopNeverWaitsForBlockingDisconnectOnUiThread()throws Exception{
  CountDownLatch opened=new CountDownLatch(1),unblock=new CountDownLatch(1);SpeedTester tester=new SpeedTester("http://unused/","http://unused/",Proxy.NO_PROXY);
  try{Result result=new Result();tester.download(result,1,1,false,(proxy,bytes)->new HttpURLConnection(new URL("http://unused/")){
   public void connect(){}public boolean usingProxy(){return false;}public void disconnect(){try{unblock.await();}catch(InterruptedException ignored){}}
   public int getResponseCode()throws IOException{opened.countDown();try{unblock.await();}catch(InterruptedException e){throw new InterruptedIOException();}return 200;}
  });assertTrue(opened.await(3,TimeUnit.SECONDS));long start=System.nanoTime();tester.stop();assertTrue("UI thread waited for network close",System.nanoTime()-start<200000000L);assertNull(result.success);assertNull(result.error);
  }finally{unblock.countDown();tester.close();}
 }
}
