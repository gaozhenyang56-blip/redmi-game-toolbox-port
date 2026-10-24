package com.gzy.qinglian;
import org.junit.Test;
import static org.junit.Assert.*;
import java.io.*;
import java.net.*;
import java.util.concurrent.*;
import java.util.concurrent.atomic.AtomicBoolean;


public class ConnectionProbeTest {
 private static final class Server implements AutoCloseable {
  final ServerSocket server;final ExecutorService workers=Executors.newCachedThreadPool();final java.util.Set<Socket> clients=ConcurrentHashMap.newKeySet();final CountDownLatch requestStarted=new CountDownLatch(1);volatile boolean closed;
  Server(long delay)throws Exception{
   server=new ServerSocket(0,16,InetAddress.getByName("127.0.0.1"));
   Thread accept=new Thread(()->{while(!closed)try{Socket socket=server.accept();clients.add(socket);workers.execute(()->{
    try(Socket c=socket){c.setSoTimeout(1000);BufferedReader reader=new BufferedReader(new InputStreamReader(c.getInputStream(),java.nio.charset.StandardCharsets.US_ASCII));String line;while((line=reader.readLine())!=null&&!line.isEmpty()){}requestStarted.countDown();Thread.sleep(delay);
     c.getOutputStream().write("HTTP/1.1 200 OK\r\nX-Qinglian-Speed: server-v1\r\nContent-Length: 1\r\nConnection: close\r\n\r\nx".getBytes(java.nio.charset.StandardCharsets.US_ASCII));c.getOutputStream().flush();
    }catch(Exception expectedCancellation){}finally{clients.remove(socket);}
   });}catch(Exception stopped){}});accept.setDaemon(true);accept.start();
  }
  HttpURLConnection connection()throws Exception{return (HttpURLConnection)new URL("http://127.0.0.1:"+server.getLocalPort()+"/speed").openConnection(Proxy.NO_PROXY);}
  public void close()throws Exception{closed=true;server.close();for(Socket c:clients)c.close();workers.shutdownNow();workers.awaitTermination(2,TimeUnit.SECONDS);}
 }
 @Test public void coldHy2AcceptsSlowHandshakeWhileNormalProbeStaysBounded()throws Exception{
  try(Server server=new Server(3600)){
   assertTrue(ConnectionProbe.transfer(server.connection(),1,()->false,true)>3000000000L);
   assertThrows(SocketTimeoutException.class,()->ConnectionProbe.transfer(server.connection(),1,()->false,false));
  }
 }
 @Test public void cancellationInterruptsWaitingForHeaders()throws Exception{
  try(Server server=new Server(10000)){
   AtomicBoolean cancelled=new AtomicBoolean();ExecutorService worker=Executors.newSingleThreadExecutor();
   try{
    Future<?> task=worker.submit(()->{assertThrows(InterruptedIOException.class,()->ConnectionProbe.transfer(server.connection(),1,cancelled::get,true));});
    assertTrue(server.requestStarted.await(2,TimeUnit.SECONDS));cancelled.set(true);task.get(3,TimeUnit.SECONDS);
   }finally{worker.shutdownNow();}
  }
 }
 @Test public void diagnosticsUseOnlySafeStageAndReasonCodes(){
  String secret="password=private-auth-material https://private.invalid/secret";
  String result=ConnectionFailure.message("verify",true,"",new IOException(secret));assertTrue(result.contains("H-VERIFY"));assertFalse(result.contains("private"));
  assertTrue(ConnectionFailure.message("verify",true,"QUIC_TIMEOUT",new IOException(secret)).contains("H-TIMEOUT"));
  assertTrue(ConnectionFailure.message("profile",true,"",new ApiEndpoint.HttpFailure(401)).contains("P401"));
  assertTrue(ConnectionFailure.message("verify",true,"TLS_CERTIFICATE",new IOException(secret)).contains("H-TLS"));
  assertTrue(ConnectionFailure.message("verify",true,"QUIC_TIMEOUT",new ApiEndpoint.HttpFailure(403)).contains("H403"));
  assertEquals("TLS_CERTIFICATE",Hy2Client.classify("x509: certificate signed by unknown authority "+secret));
  assertEquals("AUTH_REJECTED",Hy2Client.classify("authentication failed "+secret));
  assertEquals("UDP_NETWORK",Hy2Client.classify("network is unreachable "+secret));
 }
}
