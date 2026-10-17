package com.gzy.qinglian;
import org.junit.Test;
import static org.junit.Assert.*;
import java.io.*;
import java.net.*;
import java.nio.charset.StandardCharsets;
import java.security.*;
import java.security.cert.*;
import java.security.spec.PKCS8EncodedKeySpec;
import java.util.Base64;
import javax.net.ssl.*;
import java.util.concurrent.*;

/** Test-only CA and localhost key. Never production trust or a release signing key. */
public class ApiTlsTest {
 private InputStream resource(String name){return getClass().getResourceAsStream("/"+name);}
 private LocalTlsServer server()throws Exception{
  CertificateFactory certificates=CertificateFactory.getInstance("X.509");
  java.security.cert.Certificate leaf,ca;
  try(InputStream in=resource("tls-server-cert.pem")){leaf=certificates.generateCertificate(in);}
  try(InputStream in=resource("tls-ca.pem")){ca=certificates.generateCertificate(in);}
  String pem;try(InputStream in=resource("tls-server-key.pem")){pem=new String(in.readAllBytes(),StandardCharsets.US_ASCII);}
  byte[] encoded=Base64.getDecoder().decode(pem.replace("-----BEGIN PRIVATE KEY-----","").replace("-----END PRIVATE KEY-----","").replaceAll("\\s", ""));
  PrivateKey key=KeyFactory.getInstance("RSA").generatePrivate(new PKCS8EncodedKeySpec(encoded));
  KeyStore store=KeyStore.getInstance(KeyStore.getDefaultType());store.load(null,null);store.setKeyEntry("fixture",key,"fixture".toCharArray(),new java.security.cert.Certificate[]{leaf,ca});
  KeyManagerFactory manager=KeyManagerFactory.getInstance(KeyManagerFactory.getDefaultAlgorithm());manager.init(store,"fixture".toCharArray());
  SSLContext context=SSLContext.getInstance("TLS");context.init(manager.getKeyManagers(),null,null);
  return new LocalTlsServer(context);
 }
 private static class LocalTlsServer implements AutoCloseable {
  final SSLServerSocket listener;final ExecutorService connections=Executors.newCachedThreadPool();volatile boolean closed;
  LocalTlsServer(SSLContext context)throws Exception{
   listener=(SSLServerSocket)context.getServerSocketFactory().createServerSocket(0,16,InetAddress.getByName("127.0.0.1"));
   Thread accept=new Thread(()->{while(!closed)try{SSLSocket connection=(SSLSocket)listener.accept();connections.execute(()->handle(connection));}catch(Exception ignored){}});accept.setDaemon(true);accept.start();
  }
  void handle(SSLSocket connection){
   try(SSLSocket socket=connection){socket.setSoTimeout(3000);socket.startHandshake();BufferedReader input=new BufferedReader(new InputStreamReader(socket.getInputStream(),StandardCharsets.US_ASCII));String line;
    while((line=input.readLine())!=null&&!line.isEmpty()){}
    byte[] body="{\"online\":2}".getBytes(StandardCharsets.UTF_8);
    OutputStream out=socket.getOutputStream();out.write(("HTTP/1.1 200 OK\r\nContent-Length: "+body.length+"\r\nConnection: close\r\n\r\n").getBytes(StandardCharsets.US_ASCII));out.write(body);out.flush();
   }catch(Exception expectedHandshakeFailure){}
  }
  int port(){return listener.getLocalPort();}
  @Override public void close()throws Exception{closed=true;listener.close();connections.shutdownNow();connections.awaitTermination(3,TimeUnit.SECONDS);}
 }

 @Test public void trustsOnlyConfiguredCaAndStillChecksHostname()throws Exception{
  LocalTlsServer server=server();try{
   SSLSocketFactory factory;try(InputStream in=resource("tls-ca.pem")){factory=ApiEndpoint.trustCa(in);}
   URL correct=new URL("https://127.0.0.1:"+server.port()+"/api");
   assertEquals(2,new ApiEndpoint(correct,"fixture-token",factory).request(null).getInt("online"));
   assertThrows(IOException.class,()->new ApiEndpoint(correct,"fixture-token").request(null));
   URL wrong=new URL("https://localhost:"+server.port()+"/api");
   assertThrows(IOException.class,()->new ApiEndpoint(wrong,"fixture-token",factory).request(null));
  }finally{server.close();}
 }
 @Test public void refusesLeafAsCaAndMalformedCertificate()throws Exception{
  try(InputStream in=resource("tls-server-cert.pem")){assertThrows(Exception.class,()->ApiEndpoint.trustCa(in));}
  assertThrows(Exception.class,()->ApiEndpoint.trustCa(new ByteArrayInputStream("not a CA".getBytes(StandardCharsets.UTF_8))));
 }
}
