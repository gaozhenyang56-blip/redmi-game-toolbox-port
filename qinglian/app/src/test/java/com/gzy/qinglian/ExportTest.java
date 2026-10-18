package com.gzy.qinglian;
import org.junit.Test;import org.junit.runner.RunWith;import static org.junit.Assert.*;import org.robolectric.*;import org.robolectric.annotation.*;import org.json.*;import java.io.*;import java.util.zip.*;
@RunWith(RobolectricTestRunner.class) @Config(sdk=35)
public class ExportTest {
 @Test public void remarkNamesArchiveAndUnsafePathCharactersCannotEscape()throws Exception{
  assertEquals("我的节点.zip",ExportClient.archiveName(new JSONObject().put("remark","我的节点")));
  assertEquals("a_b_c.zip",ExportClient.archiveName(new JSONObject().put("remark","a/b:c")));
  assertEquals("Qinglian-node.zip",ExportClient.archiveName(new JSONObject().put("remark","  ")));
 }
 @Test public void archiveContainsOnlyClientDataEvenWhenServerMetadataPresent()throws Exception{
  JSONObject p=new JSONObject().put("node",new JSONObject().put("ps","我的节点")).put("uri","ss://fixture#name").put("caPem","PUBLIC CA").put("clientConfig",new JSONObject().put("auth","user-only")).put("inbound",new JSONObject().put("keyFile","SECRET SERVER KEY"));
  ByteArrayOutputStream out=new ByteArrayOutputStream();ExportClient.archive(p,out);int count=0;try(ZipInputStream zip=new ZipInputStream(new ByteArrayInputStream(out.toByteArray()))){for(ZipEntry e;(e=zip.getNextEntry())!=null;){assertFalse(e.getName().contains("/"));String text=new String(zip.readAllBytes(),java.nio.charset.StandardCharsets.UTF_8);assertFalse(text.contains("SECRET SERVER KEY"));count++;}}assertEquals(5,count);
 }
}
