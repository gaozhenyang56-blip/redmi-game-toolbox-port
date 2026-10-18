package com.gzy.qinglian;
import org.junit.Test;import static org.junit.Assert.*;import org.json.*;
public class ProfileTest {
 private JSONObject fixture()throws Exception{return new JSONObject("{\"node\":{\"id\":\"11111111-1111-4111-8111-111111111111\",\"add\":\"192.0.2.1\",\"port\":443,\"aid\":0,\"net\":\"tcp\",\"type\":\"http\",\"host\":\"\",\"path\":\"/\",\"tls\":\"none\"},\"revision\":\""+"a".repeat(64)+"\",\"label\":\"面板节点\"}");}
 @Test public void acceptsPanelProfileAndPreservesActualNode()throws Exception{ProfileMonitor.Profile p=ProfileMonitor.parse(fixture());assertEquals("面板节点",p.label);assertEquals("192.0.2.1",new JSONObject(p.node).getString("add"));assertEquals("a".repeat(64),p.revision);}
 @Test public void rejectsMalformedRevisionAndUnsupportedTransport()throws Exception{
  JSONObject bad=fixture().put("revision","invalid");assertThrows(Exception.class,()->ProfileMonitor.parse(bad));
  JSONObject unsupported=fixture();unsupported.getJSONObject("node").put("net","grpc");assertThrows(Exception.class,()->ProfileMonitor.parse(unsupported));
 }
}
