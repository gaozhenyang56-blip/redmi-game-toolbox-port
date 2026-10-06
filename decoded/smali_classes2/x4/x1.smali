.class public Lx4/x1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(JLjava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(JJLjava/util/TimeZone;)I
    .locals 2

    invoke-virtual {p4}, Ljava/util/TimeZone;->getRawOffset()I

    move-result p4

    div-int/lit16 p4, p4, 0x3e8

    int-to-long v0, p4

    invoke-static {p0, p1, v0, v1}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result p0

    invoke-static {p2, p3, v0, v1}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method public static c(J)I
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v0, v1, p0, p1, v2}, Lx4/x1;->b(JJLjava/util/TimeZone;)I

    move-result p0

    return p0
.end method
