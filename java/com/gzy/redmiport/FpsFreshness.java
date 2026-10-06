package com.gzy.redmiport;
/** A cached calculation is usable only while its actual-present timestamp is fresh. */
public final class FpsFreshness {
    public static long value(long fps,long presentedAt,long now){
        return fps>=0&&presentedAt>0&&presentedAt<=now+50000000L&&now-presentedAt<=1500000000L?fps:-1;
    }
}
