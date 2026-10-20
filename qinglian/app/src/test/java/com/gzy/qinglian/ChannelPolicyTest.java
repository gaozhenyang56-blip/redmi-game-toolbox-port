package com.gzy.qinglian;
import org.junit.Test;import static org.junit.Assert.*;
public class ChannelPolicyTest {
 @Test public void smallSamplesKeepPreferenceUnlessClearAdvantage(){assertTrue(ChannelPolicy.chooseHy2(90,100,true));assertFalse(ChannelPolicy.chooseHy2(100,90,false));assertTrue(ChannelPolicy.chooseHy2(200,100,false));assertFalse(ChannelPolicy.chooseHy2(100,200,true));assertTrue(ChannelPolicy.chooseHy2(-1,100,false));assertFalse(ChannelPolicy.chooseHy2(100,-1,true));}
 @Test public void requiresThreeFailuresAndQuietWindowLimitsSwitches(){ChannelPolicy p=new ChannelPolicy();assertFalse(p.failed(0));assertFalse(p.failed(45000));p.success();assertFalse(p.failed(90000));assertFalse(p.failed(135000));assertTrue(p.failed(180000));assertTrue(p.reserve(180000));assertFalse(p.canSwitch(180001));assertFalse(p.reserve(359999));assertTrue(p.reserve(360000));assertFalse(p.canSwitch(600000));assertTrue(p.canSwitch(780000));}
}
