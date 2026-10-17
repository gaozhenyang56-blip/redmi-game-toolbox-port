package com.gzy.qinglian;
import java.util.ArrayDeque;

/** Bounded restarts, including failed starts. A quiet minute restores the budget. */
final class RecoveryBudget {
 private final ArrayDeque<Long> attempts=new ArrayDeque<>();
 synchronized long nextDelay(long now){
  while(!attempts.isEmpty()&&now-attempts.peekFirst()>=60000)attempts.removeFirst();
  if(attempts.size()>=3)return -1;
  long delay=500L<<attempts.size();attempts.addLast(now);return delay;
 }
 synchronized void reset(){attempts.clear();}
}
