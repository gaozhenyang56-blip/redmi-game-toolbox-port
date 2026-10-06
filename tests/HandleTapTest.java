import com.gzy.redmiport.HandleTap;

public class HandleTapTest {
 private static void check(boolean value,String message){if(!value)throw new AssertionError(message);}
 private static HandleTap down(){HandleTap tap=new HandleTap();tap.update(0,1000,0,100,8,1);return tap;}
 public static void main(String[] args){
  check(down().update(1,1250,0,100,8,1),"stationary short press opens");
  check(!down().update(1,1300,0,100,8,1),"long press belongs to original gesture");
  check(!down().update(1,1200,40,100,8,1),"horizontal swipe is not tap");
  check(!down().update(1,1200,0,140,8,1),"vertical drag is not tap");
  HandleTap tap=down();tap.update(2,1100,40,100,8,1);
  check(!tap.update(1,1200,0,100,8,1),"out and back remains swipe");
  tap=down();tap.update(3,1100,0,100,8,1);
  check(!tap.update(1,1200,0,100,8,1),"cancel cannot open");
  tap=down();tap.update(5,1100,0,100,8,2);
  check(!tap.update(1,1200,0,100,8,1),"multi touch cannot open");
  check(!new HandleTap().update(1,1200,0,100,8,1),"up without down cannot open");
  check(!down().update(1,999,0,100,8,1),"backward time rejected");
  tap=down();tap.update(1,1200,0,100,8,1);
  check(!tap.update(1,1250,0,100,8,1),"only one click per sequence");
  check(down().update(1,1200,8,100,8,1),"touch slop boundary allowed");
  tap=new HandleTap();tap.update(0,1000,0,100,8,2);
  check(!tap.update(1,1200,0,100,8,1),"multi pointer start rejected");
  System.out.println("12 handle tap cases passed (no Android device)");
 }
}
