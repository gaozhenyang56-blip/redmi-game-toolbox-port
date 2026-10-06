.class public Lcom/miui/networkassistant/utils/DateUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DATE_FORMAT_ALL:I = 0x1

.field public static final DATE_FORMAT_DAY:I = 0x2

.field public static final DATE_FORMAT_HH_MM:I = 0x3

.field public static final DATE_FORMAT_MM_DD_HH_MM:I = 0x4

.field public static final DATE_FORMAT_YYYY:I = 0x6

.field public static final DATE_FORMAT_YYYY_MM:I = 0x5

.field public static final DAY_IN_ONE_YEAR:I = 0x16d

.field public static final MILLIS_IN_HOURS_BY_SORT:J

.field public static final MILLIS_IN_ONE_DAY:J = 0x5265c00L

.field public static final MILLIS_IN_ONE_HOUR:J = 0x36ee80L

.field public static final MILLIS_IN_ONE_MINUTE:J = 0xea60L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    const-wide/32 v0, 0x6ddd00

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x36ee80

    :goto_0
    sput-wide v0, Lcom/miui/networkassistant/utils/DateUtil;->MILLIS_IN_HOURS_BY_SORT:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dayInterval(JI)Ljava/lang/String;
    .locals 5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    int-to-long v1, p2

    const-wide/32 v3, 0x5265c00

    mul-long/2addr v1, v3

    add-long/2addr p0, v1

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p0, 0x2

    new-array p1, p0, [Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    const/4 p2, 0x1

    add-int/2addr p0, p2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, p1, v1

    const/4 p0, 0x5

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p1, p2

    const-string p0, "%02d-%02d"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatDataTime(JI)Ljava/lang/String;
    .locals 1

    invoke-static {p2}, Lcom/miui/networkassistant/utils/DateUtil;->getDateFormat(I)Ljava/text/SimpleDateFormat;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static formatDataTime(JLjava/text/SimpleDateFormat;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatDate(J)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getActualMaxDayOfMonth()I
    .locals 2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    return v0
.end method

.method public static getDateFormat(I)Ljava/text/SimpleDateFormat;
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string p0, "yyyy"

    invoke-direct {v0, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string p0, "yyyy-MM"

    invoke-direct {v0, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string p0, "MM/dd HH:mm"

    invoke-direct {v0, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string p0, "HH:mm"

    invoke-direct {v0, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string p0, "yyyy/MM/dd"

    invoke-direct {v0, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getDayInterval(JJLjava/util/TimeZone;)I
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

.method public static getDayOfMonth()I
    .locals 2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static getDayOfWeek()I
    .locals 2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static getFormatTime(II)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v0, p1

    const-string p0, "%02d:%02d"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFormatedTime(Landroid/content/Context;J)Ljava/lang/String;
    .locals 11

    const-wide/32 v0, 0xea60

    cmp-long v2, p1, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gez v2, :cond_0

    const v0, 0x7f1219ee

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array v0, v4, [Ljava/lang/Object;

    const-wide/16 v1, 0x3e8

    div-long/2addr p1, v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/32 v5, 0x36ee80

    cmp-long v2, p1, v5

    if-gez v2, :cond_1

    const v2, 0x7f1219ed

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array v2, v4, [Ljava/lang/Object;

    div-long/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-wide/32 v7, 0x2255100

    cmp-long v2, p1, v7

    if-gez v2, :cond_2

    const v2, 0x7f1219eb

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    long-to-double v7, p1

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v7, v9

    const-wide v9, 0x414b774000000000L    # 3600000.0

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v2, v3

    rem-long/2addr p1, v5

    div-long/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v4

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const v0, 0x7f1219ec

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array v0, v4, [Ljava/lang/Object;

    div-long/2addr p1, v5

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFromNowDayInterval(J)I
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v0, v1, p0, p1, v2}, Lcom/miui/networkassistant/utils/DateUtil;->getDayInterval(JJLjava/util/TimeZone;)I

    move-result p0

    return p0
.end method

.method public static getHourInMilliTime(J)I
    .locals 2

    const-wide/32 v0, 0x5265c00

    rem-long/2addr p0, v0

    sget-wide v0, Lcom/miui/networkassistant/utils/DateUtil;->MILLIS_IN_HOURS_BY_SORT:J

    div-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static getHourWithMillisTime(J)I
    .locals 1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 p0, 0xb

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public static getLastMonthBeginTimeMillis(I)J
    .locals 11

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0xb

    if-ge v3, p0, :cond_2

    if-nez v2, :cond_0

    const/16 v0, 0xa

    add-int/lit8 v1, v1, -0x1

    move v10, v0

    move v9, v1

    goto :goto_1

    :cond_0
    if-ne v2, v0, :cond_1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    move v9, v1

    move v10, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x2

    move v9, v1

    move v10, v2

    goto :goto_1

    :cond_2
    if-nez v2, :cond_3

    add-int/lit8 v1, v1, -0x1

    :cond_3
    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    add-int/lit8 v4, v2, -0x1

    goto :goto_0

    :goto_1
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move v1, v9

    move v2, v10

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    if-lt p0, v0, :cond_5

    move v3, v0

    goto :goto_2

    :cond_5
    move v3, p0

    :goto_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move v1, v9

    move v2, v10

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getMillisUsingHM(II)J
    .locals 4

    int-to-long v0, p0

    sget-wide v2, Lcom/miui/networkassistant/utils/DateUtil;->MILLIS_IN_HOURS_BY_SORT:J

    mul-long/2addr v0, v2

    int-to-long p0, p1

    const-wide/32 v2, 0xea60

    mul-long/2addr p0, v2

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public static getMinuteInMilliTime(J)I
    .locals 2

    const-wide/32 v0, 0xea60

    div-long/2addr p0, v0

    const-wide/16 v0, 0x3c

    rem-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static getNowTimeMillis()J
    .locals 4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    new-instance v1, Landroid/text/format/Time;

    const-string v2, "UTC"

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/text/format/Time;->set(J)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getPreMonthTimeMillis()J
    .locals 8

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sub-int/2addr v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getSomedayTimeMillis(III)J
    .locals 10

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    new-instance v8, Landroid/text/format/Time;

    const-string v0, "UTC"

    invoke-direct {v8, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x1

    add-int/lit8 v2, p1, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move v1, p0

    move v3, p2

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    invoke-virtual {v8, p0, p1}, Landroid/text/format/Time;->set(J)V

    invoke-virtual {v8, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getThisMonthBeginTimeMillis()J
    .locals 8

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {v7, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getThisMonthBeginTimeMillis(I)J
    .locals 11

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {v7, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v3

    if-ge v2, p0, :cond_1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0xb

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    :goto_0
    move v9, v0

    move v10, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move v1, v9

    move v2, v10

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v3

    goto :goto_1

    :cond_1
    move v2, v1

    move v1, v0

    :goto_1
    if-lt p0, v3, :cond_2

    goto :goto_2

    :cond_2
    move v3, p0

    :goto_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getThisMonthEndTimeMillis()J
    .locals 8

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {v7, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/2addr v2, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getThisMonthEndTimeMillis(I)J
    .locals 13

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/4 v11, 0x5

    invoke-virtual {v7, v11}, Ljava/util/Calendar;->get(I)I

    move-result v12

    add-int/lit8 v2, v10, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move v1, v9

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-virtual {v7, v11}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    if-ge v12, p0, :cond_1

    if-nez v10, :cond_0

    add-int/lit8 v9, v9, -0x1

    const/16 v0, 0xb

    move v10, v0

    goto :goto_0

    :cond_0
    add-int/lit8 v10, v10, -0x1

    :goto_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move v1, v9

    move v2, v10

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-virtual {v7, v11}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    goto :goto_1

    :cond_1
    move v1, v9

    :goto_1
    if-lt p0, v0, :cond_2

    move v3, v0

    goto :goto_2

    :cond_2
    move v3, p0

    :goto_2
    add-int/lit8 v2, v10, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getThisWeekBeginTimeMillis()J
    .locals 7

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getDayOfWeek()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    rem-int/lit8 v0, v0, 0x7

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v1

    int-to-long v3, v0

    const-wide/32 v5, 0x5265c00

    mul-long/2addr v3, v5

    sub-long/2addr v1, v3

    return-wide v1
.end method

.method public static getTodayTimeMillis()J
    .locals 10

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v0, 0x5

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    new-instance v9, Landroid/text/format/Time;

    const-string v0, "UTC"

    invoke-direct {v9, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {v9, v0, v1}, Landroid/text/format/Time;->set(J)V

    invoke-virtual {v9, v8}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getYesterdayTimeMillis()J
    .locals 5

    new-instance v0, Landroid/text/format/Time;

    const-string v1, "UTC"

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public static isCurrentCycleMonth(J)Z
    .locals 2

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getThisMonthBeginTimeMillis()J

    move-result-wide v0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getThisMonthEndTimeMillis()J

    move-result-wide v0

    cmp-long p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isCycleDay(I)Z
    .locals 2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isLargerOffsetDay(JJI)Z
    .locals 2

    sub-long/2addr p0, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    int-to-long p2, p4

    const-wide/32 v0, 0x5265c00

    mul-long/2addr p2, v0

    cmp-long p0, p0, p2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isLastDayOfMonth()Z
    .locals 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    if-ne v2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSundayOfThisWeek()Z
    .locals 2

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getDayOfWeek()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isTheSameDay(JJ)Z
    .locals 5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v0, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p3

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne p1, p2, :cond_0

    if-ne v2, p3, :cond_0

    if-ne v4, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isTheSameMonth(JJ)Z
    .locals 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p3

    if-ne p1, p2, :cond_0

    if-ne v2, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static timeInterval(JI)Ljava/lang/String;
    .locals 5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    int-to-long v1, p2

    sget-wide v3, Lcom/miui/networkassistant/utils/DateUtil;->MILLIS_IN_HOURS_BY_SORT:J

    mul-long/2addr v1, v3

    add-long/2addr p0, v1

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 p0, 0xb

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, p1, v0

    const/4 p2, 0x1

    add-int/2addr p0, p2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p1, p2

    const-string p0, "%02d:00 ~ %02d:00"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static timeTwoHourInterval(JI)Ljava/lang/String;
    .locals 5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    int-to-long v1, p2

    sget-wide v3, Lcom/miui/networkassistant/utils/DateUtil;->MILLIS_IN_HOURS_BY_SORT:J

    mul-long/2addr v1, v3

    add-long/2addr p0, v1

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 p0, 0xb

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    const/4 p1, 0x2

    new-array p2, p1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    add-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, p2, p1

    const-string p0, "%02d:00 ~ %02d:00"

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
