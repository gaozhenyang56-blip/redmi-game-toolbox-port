.class public Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INIT_CAPACITY:I = 0x100

.field private static final TAG:Ljava/lang/String; = "StatisticAppTraffic"


# instance fields
.field private mBeginTime:[J

.field private mContext:Landroid/content/Context;

.field private mEndTime:[J

.field private mFirstDayofMonth:J

.field private mImsi:Ljava/lang/String;

.field private mLastMonth:J

.field private mNow:J

.field private mStatsSession:Lcom/miui/net/MiuiNetworkSessionStats;

.field private mToday:J

.field private mYesterday:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->initStatsSession()V

    iput-object p2, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mImsi:Ljava/lang/String;

    invoke-direct {p0}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->initData()V

    return-void
.end method

.method private addEntryToAppUsageItem(Landroid/util/SparseArray;Ljava/util/Map;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "[",
            "Lcom/miui/networkassistant/model/AppDataUsage;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;I)V"
        }
    .end annotation

    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/miui/networkassistant/model/AppDataUsage;

    const/4 p3, 0x0

    aget-object p3, p1, p3

    const-string v0, "txBytes"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, v1, v2}, Lcom/miui/networkassistant/model/AppDataUsage;->addTxBytes(J)V

    const-string v1, "rxBytes"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p3, v2, v3}, Lcom/miui/networkassistant/model/AppDataUsage;->addRxBytes(J)V

    const/4 p3, 0x1

    aget-object p3, p1, p3

    const-string v2, "txForegroundBytes"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p3, v3, v4}, Lcom/miui/networkassistant/model/AppDataUsage;->addTxBytes(J)V

    const-string v3, "rxForegroundBytes"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p3, v4, v5}, Lcom/miui/networkassistant/model/AppDataUsage;->addRxBytes(J)V

    const/4 p3, 0x2

    aget-object p1, p1, p3

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {p1, v4, v5}, Lcom/miui/networkassistant/model/AppDataUsage;->addTxBytes(J)V

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    sub-long/2addr v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/miui/networkassistant/model/AppDataUsage;->addRxBytes(J)V

    return-void
.end method

.method private buildAppUsageArray(Landroid/util/SparseArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "[",
            "Lcom/miui/networkassistant/model/AppDataUsage;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/miui/networkassistant/model/AppDataUsage;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->buildAppUsageItems()[Lcom/miui/networkassistant/model/AppDataUsage;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private buildAppUsageItems()[Lcom/miui/networkassistant/model/AppDataUsage;
    .locals 4

    const/4 v0, 0x3

    new-array v1, v0, [Lcom/miui/networkassistant/model/AppDataUsage;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    new-instance v3, Lcom/miui/networkassistant/model/AppDataUsage;

    invoke-direct {v3}, Lcom/miui/networkassistant/model/AppDataUsage;-><init>()V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private buildNetworkHistory(Landroid/util/SparseArray;Ljava/lang/Integer;[JI)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "[",
            "Lcom/miui/networkassistant/model/AppDataUsage;",
            ">;",
            "Ljava/lang/Integer;",
            "[JI)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/networkassistant/model/AppDataUsage;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    new-array v2, v0, [Lcom/miui/networkassistant/model/AppDataUsage;

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_0

    new-instance v4, Lcom/miui/networkassistant/model/AppDataUsage;

    invoke-direct {v4}, Lcom/miui/networkassistant/model/AppDataUsage;-><init>()V

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v0, v2

    :cond_1
    if-nez p3, :cond_2

    return-void

    :cond_2
    aget-object p1, v0, p4

    if-eqz p1, :cond_3

    aget-wide v0, p3, v1

    invoke-virtual {p1, v0, v1}, Lcom/miui/networkassistant/model/AppDataUsage;->addRxBytes(J)V

    const/4 p2, 0x1

    aget-wide p2, p3, p2

    invoke-virtual {p1, p2, p3}, Lcom/miui/networkassistant/model/AppDataUsage;->addTxBytes(J)V

    :cond_3
    return-void
.end method

.method private buildNetworkStats(Landroid/util/SparseArray;Landroid/util/SparseArray;IIZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "[",
            "Lcom/miui/networkassistant/model/AppDataUsage;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;IIZ)V"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    const/4 v4, 0x1

    if-eqz p5, :cond_1

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-ne v5, p4, :cond_2

    goto :goto_1

    :cond_1
    if-ne v3, p4, :cond_2

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    if-eqz v4, :cond_4

    invoke-virtual {p2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    if-nez v3, :cond_3

    return-void

    :cond_3
    invoke-direct {p0, p1, v3, p3}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->addEntryToAppUsageItem(Landroid/util/SparseArray;Ljava/util/Map;I)V

    if-nez p5, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return-void
.end method

.method private buildPeriodTimeMobileWorkStats(JJ)Landroid/util/SparseArray;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Landroid/util/SparseArray<",
            "Lcom/miui/networkassistant/model/AppDataUsage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mStatsSession:Lcom/miui/net/MiuiNetworkSessionStats;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mImsi:Ljava/lang/String;

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/miui/net/MiuiNetworkSessionStats;->getMobileSummaryForAllUid(Ljava/lang/String;JJ)Landroid/util/SparseArray;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->buildWorkStats(Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object p1

    return-object p1
.end method

.method private buildPeriodTimeWifiWorkStats(JJ)Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Landroid/util/SparseArray<",
            "Lcom/miui/networkassistant/model/AppDataUsage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mStatsSession:Lcom/miui/net/MiuiNetworkSessionStats;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/net/MiuiNetworkSessionStats;->getWifiSummaryForAllUid(JJ)Landroid/util/SparseArray;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->buildWorkStats(Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object p1

    return-object p1
.end method

.method private buildTrafficListForUid(IIJJJ)Landroid/util/SparseArray;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJJJ)",
            "Landroid/util/SparseArray<",
            "[",
            "Lcom/miui/networkassistant/model/AppDataUsage;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    new-instance v1, Landroid/util/SparseArray;

    move/from16 v2, p2

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    add-long v2, p3, p7

    const/4 v4, 0x0

    move-wide v12, v2

    move v14, v4

    move-wide/from16 v2, p3

    :goto_0
    cmp-long v5, v2, p5

    if-gez v5, :cond_0

    iget-object v5, v0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mStatsSession:Lcom/miui/net/MiuiNetworkSessionStats;

    iget-object v6, v0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mImsi:Ljava/lang/String;

    move/from16 v7, p1

    move-wide v8, v2

    move-wide v10, v12

    invoke-virtual/range {v5 .. v11}, Lcom/miui/net/MiuiNetworkSessionStats;->getMobileHistoryForUid(Ljava/lang/String;IJJ)[J

    move-result-object v5

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {p0, v1, v6, v5, v4}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->buildNetworkHistory(Landroid/util/SparseArray;Ljava/lang/Integer;[JI)V

    iget-object v5, v0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mStatsSession:Lcom/miui/net/MiuiNetworkSessionStats;

    move/from16 v6, p1

    move-wide v7, v2

    move-wide v9, v12

    invoke-virtual/range {v5 .. v10}, Lcom/miui/net/MiuiNetworkSessionStats;->getWifiHistoryForUid(IJJ)[J

    move-result-object v5

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {p0, v1, v6, v5, v7}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->buildNetworkHistory(Landroid/util/SparseArray;Ljava/lang/Integer;[JI)V

    add-long v2, v2, p7

    add-long v12, v12, p7

    add-int/2addr v14, v7

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private buildWorkStats(Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;)",
            "Landroid/util/SparseArray<",
            "Lcom/miui/networkassistant/model/AppDataUsage;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/SparseArray;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_5

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-static {}, Lx4/z1;->v()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v4}, Lx4/z1;->b(I)I

    move-result v4

    :cond_1
    const v6, 0x7fffffff

    const-string v7, "rxBytes"

    const-string v8, "txBytes"

    const/4 v9, -0x5

    if-ne v4, v6, :cond_2

    move v4, v9

    goto :goto_1

    :cond_2
    const/16 v6, 0x4e20

    if-gt v4, v6, :cond_3

    const/16 v6, 0x3e8

    if-ge v4, v6, :cond_4

    :cond_3
    const/4 v6, -0x4

    if-eq v4, v6, :cond_4

    if-eq v4, v9, :cond_4

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v2

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v9, 0x1

    aput-object v4, v6, v9

    const/4 v4, 0x2

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v6, v4

    const-string v4, "invalid uid :%d, tx:%d, rx:%d "

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "StatisticAppTraffic"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x2

    :cond_4
    :goto_1
    new-instance v6, Lcom/miui/networkassistant/model/AppDataUsage;

    invoke-direct {v6}, Lcom/miui/networkassistant/model/AppDataUsage;-><init>()V

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/miui/networkassistant/model/AppDataUsage;->addTxBytes(J)V

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v6, v4, v5}, Lcom/miui/networkassistant/model/AppDataUsage;->addRxBytes(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method private initData()V
    .locals 10

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getNowTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mNow:J

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mToday:J

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getYesterdayTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mYesterday:J

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getThisMonthBeginTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mFirstDayofMonth:J

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/miui/networkassistant/utils/DateUtil;->getLastMonthBeginTimeMillis(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mLastMonth:J

    const/4 v3, 0x4

    new-array v4, v3, [J

    iget-wide v5, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mYesterday:J

    const/4 v7, 0x0

    aput-wide v5, v4, v7

    iget-wide v5, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mToday:J

    aput-wide v5, v4, v0

    const/4 v8, 0x2

    aput-wide v1, v4, v8

    iget-wide v1, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mFirstDayofMonth:J

    const/4 v9, 0x3

    aput-wide v1, v4, v9

    iput-object v4, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mBeginTime:[J

    new-array v3, v3, [J

    aput-wide v5, v3, v7

    iget-wide v4, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mNow:J

    aput-wide v4, v3, v0

    aput-wide v1, v3, v8

    aput-wide v4, v3, v9

    iput-object v3, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mEndTime:[J

    return-void
.end method

.method private initStatsSession()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mStatsSession:Lcom/miui/net/MiuiNetworkSessionStats;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/miui/net/MiuiNetworkSessionStats;

    iget-object v1, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/net/MiuiNetworkSessionStats;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mStatsSession:Lcom/miui/net/MiuiNetworkSessionStats;

    :goto_0
    invoke-virtual {v0}, Lcom/miui/net/MiuiNetworkSessionStats;->openSession()V

    return-void
.end method


# virtual methods
.method public buildMobileDataUsage(IZ)Landroid/util/SparseArray;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Landroid/util/SparseArray<",
            "[",
            "Lcom/miui/networkassistant/model/AppDataUsage;",
            ">;"
        }
    .end annotation

    move-object v6, p0

    new-instance v7, Landroid/util/SparseArray;

    const/4 v0, 0x3

    invoke-direct {v7, v0}, Landroid/util/SparseArray;-><init>(I)V

    invoke-direct {p0, v7}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->buildAppUsageArray(Landroid/util/SparseArray;)V

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    const/4 v0, 0x4

    if-ge v8, v0, :cond_1

    iget-object v9, v6, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mStatsSession:Lcom/miui/net/MiuiNetworkSessionStats;

    iget-object v10, v6, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mImsi:Ljava/lang/String;

    iget-object v0, v6, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mBeginTime:[J

    aget-wide v11, v0, v8

    iget-object v0, v6, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mEndTime:[J

    aget-wide v13, v0, v8

    invoke-virtual/range {v9 .. v14}, Lcom/miui/net/MiuiNetworkSessionStats;->getMobileSummaryForAllUid(Ljava/lang/String;JJ)Landroid/util/SparseArray;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v0, p0

    move-object v1, v7

    move v3, v8

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->buildNetworkStats(Landroid/util/SparseArray;Landroid/util/SparseArray;IIZ)V

    goto :goto_1

    :cond_0
    const-string v0, "StatisticAppTraffic"

    const-string v1, "mobile summaryStats null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    return-object v7
.end method

.method public buildWifiDataUsage(IZ)Landroid/util/SparseArray;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Landroid/util/SparseArray<",
            "[",
            "Lcom/miui/networkassistant/model/AppDataUsage;",
            ">;"
        }
    .end annotation

    new-instance v6, Landroid/util/SparseArray;

    const/4 v0, 0x3

    invoke-direct {v6, v0}, Landroid/util/SparseArray;-><init>(I)V

    invoke-direct {p0, v6}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->buildAppUsageArray(Landroid/util/SparseArray;)V

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    const/4 v0, 0x4

    if-ge v7, v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mStatsSession:Lcom/miui/net/MiuiNetworkSessionStats;

    iget-object v1, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mBeginTime:[J

    aget-wide v2, v1, v7

    iget-object v1, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mEndTime:[J

    aget-wide v4, v1, v7

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/miui/net/MiuiNetworkSessionStats;->getWifiSummaryForAllUid(JJ)Landroid/util/SparseArray;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v0, p0

    move-object v1, v6

    move v3, v7

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->buildNetworkStats(Landroid/util/SparseArray;Landroid/util/SparseArray;IIZ)V

    goto :goto_1

    :cond_0
    const-string v0, "StatisticAppTraffic"

    const-string v1, "wifi summaryStats null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    return-object v6
.end method

.method public closeSession()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mStatsSession:Lcom/miui/net/MiuiNetworkSessionStats;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/net/MiuiNetworkSessionStats;->closeSession()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mStatsSession:Lcom/miui/net/MiuiNetworkSessionStats;

    :cond_0
    return-void
.end method

.method public getAppLastMonthPerDayTraffic(I)Landroid/util/SparseArray;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/SparseArray<",
            "[",
            "Lcom/miui/networkassistant/model/AppDataUsage;",
            ">;"
        }
    .end annotation

    iget-wide v3, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mLastMonth:J

    iget-wide v5, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mFirstDayofMonth:J

    const/16 v2, 0x1f

    const-wide/32 v7, 0x5265c00

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->buildTrafficListForUid(IIJJJ)Landroid/util/SparseArray;

    move-result-object p1

    return-object p1
.end method

.method public getAppThisMonthPerDayTraffic(I)Landroid/util/SparseArray;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/SparseArray<",
            "[",
            "Lcom/miui/networkassistant/model/AppDataUsage;",
            ">;"
        }
    .end annotation

    iget-wide v3, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mFirstDayofMonth:J

    iget-wide v5, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mNow:J

    const/16 v2, 0x1f

    const-wide/32 v7, 0x5265c00

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->buildTrafficListForUid(IIJJJ)Landroid/util/SparseArray;

    move-result-object p1

    return-object p1
.end method

.method public getAppTodayPerHourTraffic(I)Landroid/util/SparseArray;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/SparseArray<",
            "[",
            "Lcom/miui/networkassistant/model/AppDataUsage;",
            ">;"
        }
    .end annotation

    sget v2, Lcom/miui/networkassistant/model/DataUsageConstants;->ONE_DAY_HOUR_COUNT:I

    iget-wide v3, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mToday:J

    iget-wide v5, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mNow:J

    sget-wide v7, Lcom/miui/networkassistant/utils/DateUtil;->MILLIS_IN_HOURS_BY_SORT:J

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->buildTrafficListForUid(IIJJJ)Landroid/util/SparseArray;

    move-result-object p1

    return-object p1
.end method

.method public getAppYesterdayPerHourTraffic(I)Landroid/util/SparseArray;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/SparseArray<",
            "[",
            "Lcom/miui/networkassistant/model/AppDataUsage;",
            ">;"
        }
    .end annotation

    sget v2, Lcom/miui/networkassistant/model/DataUsageConstants;->ONE_DAY_HOUR_COUNT:I

    iget-wide v3, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mYesterday:J

    iget-wide v5, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mToday:J

    sget-wide v7, Lcom/miui/networkassistant/utils/DateUtil;->MILLIS_IN_HOURS_BY_SORT:J

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->buildTrafficListForUid(IIJJJ)Landroid/util/SparseArray;

    move-result-object p1

    return-object p1
.end method

.method public getNetworkWifiTotalBytes(JJ)J
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mStatsSession:Lcom/miui/net/MiuiNetworkSessionStats;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/net/MiuiNetworkSessionStats;->getNetworkWifiTotalBytes(JJ)J

    move-result-wide p1

    return-wide p1

    :cond_0
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public getTodayDataUsageAppMapByDec(Landroid/content/Context;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeMap;

    new-instance v1, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic$1;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic$1;-><init>(Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;)V

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-static {p1}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->getFilteredAppInfosList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->getTodayMobileTraffic()Landroid/util/SparseArray;

    move-result-object v1

    if-eqz p1, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/networkassistant/model/AppInfo;

    iget v3, v2, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/networkassistant/model/AppDataUsage;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v3

    iget-object v2, v2, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getTodayMobileTraffic()Landroid/util/SparseArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/miui/networkassistant/model/AppDataUsage;",
            ">;"
        }
    .end annotation

    iget-wide v0, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mToday:J

    iget-wide v2, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mNow:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->buildPeriodTimeMobileWorkStats(JJ)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public getYesterdayMobileTraffic()Landroid/util/SparseArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/miui/networkassistant/model/AppDataUsage;",
            ">;"
        }
    .end annotation

    iget-wide v0, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mYesterday:J

    iget-wide v2, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mToday:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->buildPeriodTimeMobileWorkStats(JJ)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public getYesterdayWifiTraffic()Landroid/util/SparseArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/miui/networkassistant/model/AppDataUsage;",
            ">;"
        }
    .end annotation

    iget-wide v0, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mYesterday:J

    iget-wide v2, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mToday:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->buildPeriodTimeWifiWorkStats(JJ)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method
