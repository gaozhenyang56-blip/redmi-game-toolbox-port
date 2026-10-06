import com.gzy.redmiport.FpsFreshness;
public class FpsFreshnessTest {
 static void check(boolean value,String message){if(!value)throw new AssertionError(message);}
 public static void main(String[] args){
  long t=100000000000L;
  check(FpsFreshness.value(60,t,t)==60,"fresh result");
  check(FpsFreshness.value(60,t,t+800000000L)==60,"duplicate buffer retains measured rate, not false zero");
  check(FpsFreshness.value(60,t,t+1500000000L)==60,"freshness boundary");
  check(FpsFreshness.value(60,t,t+1500000001L)==-1,"must expire by frame timestamp, not read completion");
  check(FpsFreshness.value(60,0,t)==-1,"empty timestamp");
  check(FpsFreshness.value(-1,t,t)==-1,"unavailable reading");
  check(FpsFreshness.value(60,t+50000001L,t)==-1,"future timestamp");
  System.out.println("7 FPS freshness cases passed (no Android device)");
 }
}
