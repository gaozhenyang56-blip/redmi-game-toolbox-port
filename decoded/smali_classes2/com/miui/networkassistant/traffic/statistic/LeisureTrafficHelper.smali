.class public Lcom/miui/networkassistant/traffic/statistic/LeisureTrafficHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isLeisureTime(Lcom/miui/networkassistant/config/SimUserInfo;)Z
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/miui/networkassistant/config/SimUserInfo;->getLeisureDataUsageFromTime()J

    move-result-wide v4

    add-long/2addr v4, v2

    invoke-virtual {p0}, Lcom/miui/networkassistant/config/SimUserInfo;->getLeisureDataUsageToTime()J

    move-result-wide v6

    add-long/2addr v6, v2

    cmp-long p0, v4, v6

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez p0, :cond_2

    cmp-long p0, v0, v6

    if-ltz p0, :cond_1

    cmp-long p0, v0, v4

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :cond_1
    :goto_0
    return v2

    :cond_2
    cmp-long p0, v0, v4

    if-lez p0, :cond_3

    cmp-long p0, v0, v6

    if-gez p0, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    return v2
.end method
