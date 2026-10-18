package com.gzy.qinglian;
import android.content.Context;
import android.util.AtomicFile;
import java.io.*;
import java.security.MessageDigest;
/** Version-pinned, public V2Ray routing databases. No network or user data. */
final class GeoAssets {
 static final String[] NAMES={"geoip.dat","geosite.dat"};
 static final String[] HASHES={"bc7297903da14f6d725caafbf903e5a90026b9368f3d9f9ddbc7fd6f6dd1f1b0","df277aa430bb3d67d5d7c960dd6816e4c271616000a7900486b903091d39b393"};
 private static String hash(InputStream in)throws Exception{MessageDigest d=MessageDigest.getInstance("SHA-256");byte[] b=new byte[16384];for(int n;(n=in.read(b))!=-1;)d.update(b,0,n);return ApiEndpoint.hex(d.digest());}
 static synchronized void prepare(Context c)throws Exception{
  for(int i=0;i<NAMES.length;i++){
   File path=new File(c.getFilesDir(),NAMES[i]);boolean valid=false;if(path.isFile())try(InputStream in=new FileInputStream(path)){valid=hash(in).equals(HASHES[i]);}if(valid)continue;
   AtomicFile target=new AtomicFile(path);FileOutputStream out=null;
   try{out=target.startWrite();MessageDigest digest=MessageDigest.getInstance("SHA-256");try(InputStream in=c.getAssets().open(NAMES[i])){byte[] b=new byte[16384];for(int n;(n=in.read(b))!=-1;){out.write(b,0,n);digest.update(b,0,n);}}if(!ApiEndpoint.hex(digest.digest()).equals(HASHES[i]))throw new IOException("路由数据校验失败");target.finishWrite(out);out=null;}
   finally{if(out!=null)target.failWrite(out);}
  }
 }
}
