package com.gzy.qinglian;
import java.io.*;
import java.nio.charset.StandardCharsets;
final class Io {
 static String readUtf8(InputStream in)throws IOException{ByteArrayOutputStream out=new ByteArrayOutputStream();byte[] buf=new byte[4096];int n;while((n=in.read(buf))!=-1)out.write(buf,0,n);return out.toString(StandardCharsets.UTF_8.name());}
}
