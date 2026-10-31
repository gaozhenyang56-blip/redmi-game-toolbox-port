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
 private static final class ProxyTlsServer implements AutoCloseable {
  final ServerSocket listener;final javax.net.ssl.SSLContext tls;final ExecutorService workers=Executors.newCachedThreadPool();final java.util.Set<Socket> clients=ConcurrentHashMap.newKeySet();final CountDownLatch connectStarted=new CountDownLatch(1);volatile boolean closed;
  ProxyTlsServer(long delay)throws Exception{
   java.security.cert.CertificateFactory certificates=java.security.cert.CertificateFactory.getInstance("X.509");
   java.security.cert.Certificate leaf,ca;
   try(InputStream in=getClass().getResourceAsStream("/tls-server-cert.pem")){leaf=certificates.generateCertificate(in);}
   try(InputStream in=getClass().getResourceAsStream("/tls-ca.pem")){ca=certificates.generateCertificate(in);}
   String pem;try(InputStream in=getClass().getResourceAsStream("/tls-server-key.pem")){pem=new String(in.readAllBytes(),java.nio.charset.StandardCharsets.US_ASCII);}
   byte[] encoded=java.util.Base64.getDecoder().decode(pem.replace("-----BEGIN PRIVATE KEY-----","").replace("-----END PRIVATE KEY-----","").replaceAll("\\s", ""));
   java.security.PrivateKey key=java.security.KeyFactory.getInstance("RSA").generatePrivate(new java.security.spec.PKCS8EncodedKeySpec(encoded));
   java.security.KeyStore store=java.security.KeyStore.getInstance(java.security.KeyStore.getDefaultType());store.load(null,null);store.setKeyEntry("fixture",key,"fixture".toCharArray(),new java.security.cert.Certificate[]{leaf,ca});
   javax.net.ssl.KeyManagerFactory manager=javax.net.ssl.KeyManagerFactory.getInstance(javax.net.ssl.KeyManagerFactory.getDefaultAlgorithm());manager.init(store,"fixture".toCharArray());
   tls=javax.net.ssl.SSLContext.getInstance("TLS");tls.init(manager.getKeyManagers(),null,null);
   listener=new ServerSocket(0,16,InetAddress.getByName("127.0.0.1"));
   Thread accept=new Thread(()->{while(!closed)try{Socket socket=listener.accept();clients.add(socket);workers.execute(()->{
    try(Socket raw=socket){raw.setSoTimeout(15000);BufferedReader in=new BufferedReader(new InputStreamReader(raw.getInputStream(),java.nio.charset.StandardCharsets.US_ASCII));String line;
     while((line=in.readLine())!=null&&!line.isEmpty()){}connectStarted.countDown();Thread.sleep(delay);
     raw.getOutputStream().write("HTTP/1.1 200 Connection Established\r\n\r\n".getBytes(java.nio.charset.StandardCharsets.US_ASCII));raw.getOutputStream().flush();
     try(javax.net.ssl.SSLSocket secure=(javax.net.ssl.SSLSocket)tls.getSocketFactory().createSocket(raw,"127.0.0.1",443,false)){
      secure.setUseClientMode(false);secure.startHandshake();BufferedReader http=new BufferedReader(new InputStreamReader(secure.getInputStream(),java.nio.charset.StandardCharsets.US_ASCII));while((line=http.readLine())!=null&&!line.isEmpty()){}
      secure.getOutputStream().write("HTTP/1.1 200 OK\r\nX-Qinglian-Speed: server-v1\r\nContent-Length: 1\r\nConnection: close\r\n\r\nx".getBytes(java.nio.charset.StandardCharsets.US_ASCII));secure.getOutputStream().flush();
     }
    }catch(Exception stopped){}finally{clients.remove(socket);}
   });}catch(Exception stopped){}});accept.setDaemon(true);accept.start();
  }
  HttpURLConnection connection()throws Exception{
   javax.net.ssl.HttpsURLConnection c=(javax.net.ssl.HttpsURLConnection)new URL("https://127.0.0.1/speed").openConnection(new Proxy(Proxy.Type.HTTP,new InetSocketAddress("127.0.0.1",listener.getLocalPort())));
   try(InputStream in=getClass().getResourceAsStream("/tls-ca.pem")){c.setSSLSocketFactory(ApiEndpoint.trustCa(in));}return c;
  }
  public void close()throws Exception{closed=true;listener.close();for(Socket c:clients)c.close();workers.shutdownNow();workers.awaitTermination(2,TimeUnit.SECONDS);}
 }
 @Test public void coldWssAcceptsSlowConnectTunnelAndStillVerifiesOriginalTls()throws Exception{
  try(ProxyTlsServer server=new ProxyTlsServer(3600)){
   assertTrue(ConnectionProbe.transfer(server.connection(),1,()->false,ConnectionProbe.Mode.COLD_WS)>3000000000L);
   assertThrows(SocketTimeoutException.class,()->ConnectionProbe.transfer(server.connection(),1,()->false,ConnectionProbe.Mode.STANDARD));
  }
 }
 @Test public void cancellationAlsoInterruptsProxyConnect()throws Exception{
  try(ProxyTlsServer server=new ProxyTlsServer(10000)){
   AtomicBoolean cancelled=new AtomicBoolean();ExecutorService worker=Executors.newSingleThreadExecutor();
   try{
    Future<?> task=worker.submit(()->{assertThrows(InterruptedIOException.class,()->ConnectionProbe.transfer(server.connection(),1,cancelled::get,ConnectionProbe.Mode.COLD_WS));});
    assertTrue(server.connectStarted.await(2,TimeUnit.SECONDS));cancelled.set(true);task.get(3,TimeUnit.SECONDS);
   }finally{worker.shutdownNow();}
  }
 }
 private static HttpURLConnection failed(Exception error)throws Exception{
  return new HttpURLConnection(new URL("http://127.0.0.1/fixture")){
   public int getResponseCode()throws IOException{if(error instanceof IOException)throw (IOException)error;throw new IOException(error);}
   public void disconnect(){}public boolean usingProxy(){return false;}public void connect(){}
  };
 }
 @Test public void retriesOneTransientOneByteColdProbeWithFreshConnection()throws Exception{
  try(Server server=new Server(0)){
   java.util.concurrent.atomic.AtomicInteger opens=new java.util.concurrent.atomic.AtomicInteger(),retries=new java.util.concurrent.atomic.AtomicInteger();
   long time=ConnectionProbe.withRetry(()->opens.getAndIncrement()==0?failed(new SocketTimeoutException()):server.connection(),1,()->false,ConnectionProbe.Mode.COLD_WS,retries::incrementAndGet);
   assertTrue(time>0);assertEquals(2,opens.get());assertEquals(1,retries.get());
  }
 }
 @Test public void retryBudgetDoesNotReplayComparisonOrFatalFailures()throws Exception{
  for(Exception error:new Exception[]{new ApiEndpoint.HttpFailure(401),new ApiEndpoint.HttpFailure(403),new ApiEndpoint.HttpFailure(429),new IOException("invalid marker"),new javax.net.ssl.SSLHandshakeException("certificate"){ {initCause(new java.security.cert.CertificateException());} }}){
   java.util.concurrent.atomic.AtomicInteger count=new java.util.concurrent.atomic.AtomicInteger();
   assertThrows(Exception.class,()->ConnectionProbe.withRetry(()->{count.incrementAndGet();return failed(error);},1,()->false,ConnectionProbe.Mode.COLD_WS,()->fail("fatal failure retried")));assertEquals(1,count.get());
  }
  java.util.concurrent.atomic.AtomicInteger count=new java.util.concurrent.atomic.AtomicInteger();
  assertThrows(SocketTimeoutException.class,()->ConnectionProbe.withRetry(()->{count.incrementAndGet();return failed(new SocketTimeoutException());},262144,()->false,ConnectionProbe.Mode.COLD_WS,()->fail("comparison replayed")));assertEquals(1,count.get());
  assertThrows(InterruptedIOException.class,()->ConnectionProbe.withRetry(()->{fail("cancelled request opened");return null;},1,()->true,ConnectionProbe.Mode.COLD_WS,()->fail("cancelled request retried")));
 }
 @Test public void modeAndNativeReasonAreBoundedAndGenerationSafe(){
  assertEquals(ConnectionProbe.Mode.COLD_WS,ConnectionProbe.mode("vmess","ws",true));assertEquals(ConnectionProbe.Mode.STANDARD,ConnectionProbe.mode("vmess","ws",false));assertEquals(ConnectionProbe.Mode.STANDARD,ConnectionProbe.mode("vmess","tcp",true));
  Hy2Client.FailureClassifier classifier=new Hy2Client.FailureClassifier();assertEquals("",classifier.accept("no recent net"));assertEquals("QUIC_TIMEOUT",classifier.accept("work activity"));
  assertTrue(ConnectionFailure.message("verify",true,"",new EOFException()).contains("H-VERIFY/EOF"));
  assertTrue(ConnectionFailure.message("verify",true,"",new SocketException()).contains("H-VERIFY/SOCKET"));
 }

 @Test public void proxyFailuresExposeOnlyFixedStatusNotPrivateMessages(){
  IOException android=new IOException("Unexpected response code for CONNECT: 502");
  IOException jdk=new IOException("Unable to tunnel through proxy. Proxy returns \"HTTP/1.1 503 Service Unavailable\"");
  assertEquals(502,ConnectionProbe.proxyStatus(android));assertEquals(503,ConnectionProbe.proxyStatus(jdk));assertTrue(ConnectionProbe.retryable(android));
  assertFalse(ConnectionProbe.retryable(new IOException("Unexpected response code for CONNECT: 403")));
  assertEquals(0,ConnectionProbe.proxyStatus(new IOException("https://private.invalid/502?password=secret")));
  assertTrue(ConnectionFailure.message("verify",true,"",android).contains("H-VERIFY/PROXY502"));
 }

}
