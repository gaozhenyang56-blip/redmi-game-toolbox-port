package com.gzy.qinglian;
import org.junit.Test;
import static org.junit.Assert.*;
public class RecoveryBudgetTest {
 @Test public void boundsCrashLoopsAndRecoversAfterQuietPeriod(){
  RecoveryBudget b=new RecoveryBudget();assertEquals(500,b.nextDelay(1000));assertEquals(1000,b.nextDelay(2000));assertEquals(2000,b.nextDelay(3000));
  assertEquals(-1,b.nextDelay(59999));assertEquals(2000,b.nextDelay(61000));assertEquals(-1,b.nextDelay(61001));
  assertEquals(500,b.nextDelay(121000));
 }
 @Test public void newUserConnectionStartsFresh(){
  RecoveryBudget b=new RecoveryBudget();b.nextDelay(0);b.nextDelay(1);b.nextDelay(2);assertEquals(-1,b.nextDelay(3));b.reset();assertEquals(500,b.nextDelay(4));
 }
}
