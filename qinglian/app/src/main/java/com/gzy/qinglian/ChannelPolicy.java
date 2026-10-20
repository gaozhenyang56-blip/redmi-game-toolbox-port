package com.gzy.qinglian;
import java.util.ArrayDeque;
/** Avoid reacting to a single bad sample or repeatedly interrupting live downloads. */
final class ChannelPolicy {
 private int failures;private long lastSwitch=-180000;
 private final ArrayDeque<Long> switches=new ArrayDeque<>();
 static boolean chooseHy2(long tcp,long hy2,boolean preferHy2){
  if(tcp<0)return hy2>=0;if(hy2<0)return false;
  // A small sample is noisy: require a 20% advantage to override the preference.
  return preferHy2?!(tcp<hy2*.8):hy2<tcp*.8;
 }
 synchronized void success(){failures=0;}
 synchronized boolean failed(long now){failures++;return failures>=3&&canSwitch(now);}
 synchronized boolean canSwitch(long now){while(!switches.isEmpty()&&now-switches.peekFirst()>=600000)switches.removeFirst();return now-lastSwitch>=180000&&switches.size()<2;}
 synchronized boolean reserve(long now){if(!canSwitch(now))return false;switches.addLast(now);lastSwitch=now;failures=0;return true;}
}
