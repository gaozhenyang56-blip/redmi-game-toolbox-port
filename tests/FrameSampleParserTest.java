import com.gzy.redmiport.FrameSampleParser;
public class FrameSampleParserTest {
 static long now=100000000000L;
 static String frames(String layer,int fps,int n,long end){StringBuilder s=new StringBuilder("LAYER:"+layer+"\n8333333\n");for(int i=0;i<n;i++){long t=end-(n-1-i)*1000000000L/fps;s.append(t-1000).append(' ').append(t).append(' ').append(t-500).append('\n');}return s.toString();}
 static void check(boolean pass,String message){if(!pass)throw new AssertionError(message);}
 static void rate(int fps){FrameSampleParser.Result r=FrameSampleParser.parse("PACKAGE:com.test.game\n"+frames("SurfaceView[com.test.game/Main](BLAST)#4",fps,Math.min(fps+1,127),now),now);check(r.available()&&r.fps==fps,"actual-present FPS "+fps);}
 public static void main(String[] a){
  for(int fps:new int[]{20,30,45,60,90,120})rate(fps);
  check(!FrameSampleParser.parse("PACKAGE:com.test.game\nLAYER:SurfaceView[com.test.game/Main]\n8333333\n0 0 0\n0 9223372036854775807 0",now).available(),"zero/pending frames must not become refresh-rate FPS");
  check(!FrameSampleParser.parse("PACKAGE:com.test.game\n"+frames("SurfaceView[com.test.game/Main]",60,61,now-2000000000L),now).available(),"old timestamps must expire");
  check(!FrameSampleParser.parse("PACKAGE:com.test.game\n"+frames("SurfaceView[com.test.gameclone/Main]",60,61,now),now).available(),"other package prefix must be rejected");
  check(!FrameSampleParser.parse("Permission Denial: can't dump SurfaceFlinger",now).available(),"permission denial");
  String multi="PACKAGE:com.test.game\nLAYER:SurfaceView[com.test.game/Main] container\n8333333\n"+frames("SurfaceView[com.test.game/Main](BLAST)#buffer",60,61,now)+"broken line\n0 not-a-number 0\n";
  check(FrameSampleParser.parse(multi,now).fps==60,"skip container without frame data and malformed rows");
  check(!FrameSampleParser.parse("PACKAGE:com.test.game\n"+frames("SurfaceView[com.test.game/Main]",1000,127,now),now).available(),"implausible timestamps");
  check(FrameSampleParser.parse("PACKAGE:com.test.game\n"+frames("SurfaceView[com.test.game/Main]",60,61,now-2000000000L),now).reason.equals("帧时间已过期"),"specific expiry diagnostic");
  check(FrameSampleParser.parse("PACKAGE:com.test.game\nLAYER:SurfaceView[com.test.game/Main]\n8333333\n",now).reason.equals("帧时间不足"),"specific missing-data diagnostic");
  System.out.println("14 FPS parser cases passed: actual frames, invalid/pending/expired/other-app data, multiple layers");
 }
}
