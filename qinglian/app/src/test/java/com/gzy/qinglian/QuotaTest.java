package com.gzy.qinglian;
import org.junit.Test;import static org.junit.Assert.*;
public class QuotaTest {
 @Test public void computesServerRemaining(){QuotaInfo q=QuotaInfo.parse("upload=100; download=200; total=1000; expire=1792224000");assertEquals(700,q.remaining());assertEquals(300,q.used());}
 @Test public void zeroTotalIsUnlimited(){assertEquals(-1,QuotaInfo.parse("total=0; upload=100; download=200").remaining());}
 @Test public void exhaustedQuotaIsZero(){assertEquals(0,QuotaInfo.parse("total=50; upload=100; download=200").remaining());}
 @Test(expected=Exception.class)public void noHeaderIsUnknown(){QuotaInfo.parse(null);}
 @Test(expected=Exception.class)public void missingFieldIsNotZero(){QuotaInfo.parse("upload=10; total=100");}
 @Test(expected=Exception.class)public void negativeTrafficRejected(){QuotaInfo.parse("upload=-1; download=5; total=10");}
}
