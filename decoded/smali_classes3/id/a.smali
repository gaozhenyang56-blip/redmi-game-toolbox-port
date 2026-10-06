.class public Lid/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(JJLjava/lang/String;Ljava/util/List;)Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/miui/powercenter/legacypowerrank/BatteryData;",
            ">;)",
            "Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;"
        }
    .end annotation

    new-instance v0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;

    invoke-direct {v0}, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->type:I

    iput-wide p0, v0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->startTime:J

    iput-wide p2, v0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->endTime:J

    invoke-static {p0, p1, p2, p3, p5}, Lid/a;->g(JJLjava/util/List;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->histogramDataStr:Ljava/lang/String;

    iput-object p4, v0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->batteryDataStr:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/powercenter/legacypowerrank/BatteryData;",
            ">;",
            "Ljava/util/List<",
            "Lcom/miui/powercenter/legacypowerrank/BatteryData;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/miui/powercenter/legacypowerrank/BatteryData;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/powercenter/legacypowerrank/BatteryData;

    invoke-static {v2}, Lid/a;->j(Lcom/miui/powercenter/legacypowerrank/BatteryData;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;

    invoke-static {p1}, Lid/a;->j(Lcom/miui/powercenter/legacypowerrank/BatteryData;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/miui/powercenter/legacypowerrank/BatteryData;

    invoke-direct {v3, p1}, Lcom/miui/powercenter/legacypowerrank/BatteryData;-><init>(Lcom/miui/powercenter/legacypowerrank/BatteryData;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;

    if-eqz p1, :cond_2

    iget-wide v4, v3, Lcom/miui/powercenter/legacypowerrank/BatteryData;->value:D

    iget-wide v6, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->value:D

    sub-double/2addr v4, v6

    iput-wide v4, v3, Lcom/miui/powercenter/legacypowerrank/BatteryData;->value:D

    iget-wide v4, v3, Lcom/miui/powercenter/legacypowerrank/BatteryData;->usageTime:J

    iget-wide v6, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->usageTime:J

    sub-long/2addr v4, v6

    iput-wide v4, v3, Lcom/miui/powercenter/legacypowerrank/BatteryData;->usageTime:J

    iget-wide v4, v3, Lcom/miui/powercenter/legacypowerrank/BatteryData;->cpuTime:J

    iget-wide v6, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->cpuTime:J

    sub-long/2addr v4, v6

    iput-wide v4, v3, Lcom/miui/powercenter/legacypowerrank/BatteryData;->cpuTime:J

    iget-wide v4, v3, Lcom/miui/powercenter/legacypowerrank/BatteryData;->gpsTime:J

    iget-wide v6, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->gpsTime:J

    sub-long/2addr v4, v6

    iput-wide v4, v3, Lcom/miui/powercenter/legacypowerrank/BatteryData;->gpsTime:J

    iget-wide v4, v3, Lcom/miui/powercenter/legacypowerrank/BatteryData;->wifiRunningTime:J

    iget-wide v6, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->wifiRunningTime:J

    sub-long/2addr v4, v6

    iput-wide v4, v3, Lcom/miui/powercenter/legacypowerrank/BatteryData;->wifiRunningTime:J

    iget-wide v4, v3, Lcom/miui/powercenter/legacypowerrank/BatteryData;->cpuFgTime:J

    iget-wide v6, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->cpuFgTime:J

    sub-long/2addr v4, v6

    iput-wide v4, v3, Lcom/miui/powercenter/legacypowerrank/BatteryData;->cpuFgTime:J

    iget-wide v4, v3, Lcom/miui/powercenter/legacypowerrank/BatteryData;->wakeLockTime:J

    iget-wide v6, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->wakeLockTime:J

    sub-long/2addr v4, v6

    iput-wide v4, v3, Lcom/miui/powercenter/legacypowerrank/BatteryData;->wakeLockTime:J

    iget-wide v4, v3, Lcom/miui/powercenter/legacypowerrank/BatteryData;->mobileRxBytes:J

    iget-wide v6, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->mobileRxBytes:J

    sub-long/2addr v4, v6

    iput-wide v4, v3, Lcom/miui/powercenter/legacypowerrank/BatteryData;->mobileRxBytes:J

    iget-wide v4, v3, Lcom/miui/powercenter/legacypowerrank/BatteryData;->mobileTxBytes:J

    iget-wide v6, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->mobileTxBytes:J

    sub-long/2addr v4, v6

    iput-wide v4, v3, Lcom/miui/powercenter/legacypowerrank/BatteryData;->mobileTxBytes:J

    iget-wide v4, v3, Lcom/miui/powercenter/legacypowerrank/BatteryData;->noCoveragePercent:D

    iget-wide v6, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->noCoveragePercent:D

    sub-double/2addr v4, v6

    iput-wide v4, v3, Lcom/miui/powercenter/legacypowerrank/BatteryData;->noCoveragePercent:D

    iget-wide v4, v3, Lcom/miui/powercenter/legacypowerrank/BatteryData;->screenPower:D

    iget-wide v6, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->screenPower:D

    sub-double/2addr v4, v6

    iput-wide v4, v3, Lcom/miui/powercenter/legacypowerrank/BatteryData;->screenPower:D

    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object v0

    :cond_4
    :goto_2
    return-object p0
.end method

.method public static c(Landroid/content/Context;)J
    .locals 3

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-wide/high16 v0, -0x8000000000000000L

    const-string v2, "batterystats_reset_time"

    invoke-static {p0, v2, v0, v1}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static d()J
    .locals 15

    const-string v0, "BatteryDataUtils"

    const-wide/16 v1, 0x0

    :try_start_0
    const-string v3, "miui.securitycenter.powercenter.BatteryStatsUtils"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getBatteryStats"

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5, v7}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "android.os.BatteryStats"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "STATS_SINCE_CHARGED"

    invoke-static {v4, v5}, Lbh/f;->m(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "computeBatteryRealtime"

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v6

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x1

    aput-object v9, v8, v10

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    mul-long/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v10

    invoke-static {v3, v5, v8, v7}, Lbh/f;->f(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "usageRealTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "getBatteryUsageRealtime error:"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-wide v1
.end method

.method public static e()J
    .locals 5

    const-wide/16 v0, 0x0

    :try_start_0
    new-instance v2, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;

    invoke-direct {v2}, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;-><init>()V

    invoke-static {}, Lcom/miui/powercenter/batteryhistory/n;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->refreshHistory(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->refreshHistory()V

    :goto_0
    const-string v3, "mStats"

    invoke-static {v2, v3}, Lbh/f;->j(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1e

    if-gt v3, v4, :cond_1

    const-string v3, "mHistoryBaseTime"

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v3, v4}, Lbh/f;->k(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    :goto_1
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_2

    :cond_1
    const-string v3, "getHistoryBaseTime"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v4}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "BatteryDataUtils"

    const-string v4, "readHistoryBaseTime error!!"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    return-wide v0
.end method

.method public static f()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/miui/powercenter/batteryhistory/u;",
            ">;"
        }
    .end annotation

    const-string v0, "BatteryDataUtils"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    :try_start_0
    new-instance v5, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;

    invoke-direct {v5}, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;-><init>()V

    invoke-static {}, Lcom/miui/powercenter/batteryhistory/n;->b()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->refreshHistory(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->refreshHistory()V

    :goto_0
    new-instance v6, Lmiui/securitycenter/powercenter/HistoryItemWrapper;

    invoke-direct {v6}, Lmiui/securitycenter/powercenter/HistoryItemWrapper;-><init>()V

    invoke-virtual {v5}, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->startIterate()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v5, v6}, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->getNextHistoryItem(Lmiui/securitycenter/powercenter/HistoryItemWrapper;)Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v7, Lcom/miui/powercenter/batteryhistory/u;

    invoke-direct {v7, v6}, Lcom/miui/powercenter/batteryhistory/u;-><init>(Lmiui/securitycenter/powercenter/HistoryItemWrapper;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :cond_1
    move-object v7, v2

    :goto_1
    :try_start_1
    invoke-virtual {v5}, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->finishIterate()V

    goto :goto_2

    :cond_2
    move-object v7, v2

    :goto_2
    const-string v6, "mStats"

    invoke-static {v5, v6}, Lbh/f;->j(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1e

    if-gt v6, v8, :cond_3

    const-string v2, "mHistoryBaseTime"

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v2, v6}, Lbh/f;->k(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    :goto_3
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_4

    :cond_3
    const-string v6, "getHistoryBaseTime"

    invoke-static {v5, v6, v2, v2}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    goto :goto_3

    :cond_4
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFirstHistoryData baseTime ="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFirstHistoryData time ="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/miui/powercenter/batteryhistory/u;->b()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_0
    move-exception v5

    move-object v2, v7

    goto :goto_5

    :catch_1
    move-exception v5

    :goto_5
    const-string v6, "getFirstHistoryData readHistoryBaseTime error!!"

    invoke-static {v0, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v7, v2

    :cond_5
    :goto_6
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method private static g(JJLjava/util/List;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List<",
            "Lcom/miui/powercenter/legacypowerrank/BatteryData;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    move-wide v4, v2

    move-wide v2, v0

    :cond_0
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/powercenter/legacypowerrank/BatteryData;

    iget-wide v7, v6, Lcom/miui/powercenter/legacypowerrank/BatteryData;->value:D

    add-double/2addr v4, v7

    iget v7, v6, Lcom/miui/powercenter/legacypowerrank/BatteryData;->drainType:I

    const/4 v8, 0x5

    if-ne v7, v8, :cond_1

    iget-wide v0, v6, Lcom/miui/powercenter/legacypowerrank/BatteryData;->usageTime:J

    goto :goto_0

    :cond_1
    if-nez v7, :cond_0

    iget-wide v2, v6, Lcom/miui/powercenter/legacypowerrank/BatteryData;->usageTime:J

    goto :goto_0

    :cond_2
    :try_start_0
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "start_time"

    invoke-virtual {p4, v6, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p0, "end_time"

    invoke-virtual {p4, p0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p0, "total_consume"

    invoke-virtual {p4, p0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p0, "screen_usagetime"

    invoke-virtual {p4, p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p0, "idle_usagetime"

    invoke-virtual {p4, p0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method public static h()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static i(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;

    iget-wide v1, v1, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->totalConsume:D

    const-wide/16 v3, 0x0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_2
    return v0
.end method

.method private static j(Lcom/miui/powercenter/legacypowerrank/BatteryData;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->drainType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->defaultPackageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static k(Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;)V
    .locals 3

    iget v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->type:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->histogramDataStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->histogramDataStr:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "start_time"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->startTime:J

    const-string v1, "end_time"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->endTime:J

    const-string v1, "total_consume"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->totalConsume:D

    const-string v1, "screen_usagetime"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->screenUsageTime:J

    const-string v1, "idle_usagetime"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->idleUsageTime:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static l(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/powercenter/legacypowerrank/BatteryData;",
            ">;",
            "Ljava/util/List<",
            "Lcom/miui/powercenter/legacypowerrank/BatteryData;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/miui/powercenter/legacypowerrank/BatteryData;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eqz p0, :cond_5

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/powercenter/legacypowerrank/BatteryData;

    invoke-static {v2}, Lid/a;->j(Lcom/miui/powercenter/legacypowerrank/BatteryData;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;

    invoke-static {p1}, Lid/a;->j(Lcom/miui/powercenter/legacypowerrank/BatteryData;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/miui/powercenter/legacypowerrank/BatteryData;

    invoke-direct {v3, p1}, Lcom/miui/powercenter/legacypowerrank/BatteryData;-><init>(Lcom/miui/powercenter/legacypowerrank/BatteryData;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;

    if-eqz p1, :cond_3

    iget-wide v4, v3, Lcom/miui/powercenter/legacypowerrank/BatteryData;->value:D

    iget-wide v6, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->value:D

    add-double/2addr v4, v6

    iput-wide v4, v3, Lcom/miui/powercenter/legacypowerrank/BatteryData;->value:D

    iget-wide v4, v3, Lcom/miui/powercenter/legacypowerrank/BatteryData;->usageTime:J

    iget-wide v6, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->usageTime:J

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/miui/powercenter/legacypowerrank/BatteryData;->usageTime:J

    iget-wide v4, v3, Lcom/miui/powercenter/legacypowerrank/BatteryData;->cpuTime:J

    iget-wide v6, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->cpuTime:J

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/miui/powercenter/legacypowerrank/BatteryData;->cpuTime:J

    iget-wide v4, v3, Lcom/miui/powercenter/legacypowerrank/BatteryData;->gpsTime:J

    iget-wide v6, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->gpsTime:J

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/miui/powercenter/legacypowerrank/BatteryData;->gpsTime:J

    iget-wide v4, v3, Lcom/miui/powercenter/legacypowerrank/BatteryData;->wifiRunningTime:J

    iget-wide v6, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->wifiRunningTime:J

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/miui/powercenter/legacypowerrank/BatteryData;->wifiRunningTime:J

    iget-wide v4, v3, Lcom/miui/powercenter/legacypowerrank/BatteryData;->cpuFgTime:J

    iget-wide v6, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->cpuFgTime:J

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/miui/powercenter/legacypowerrank/BatteryData;->cpuFgTime:J

    iget-wide v4, v3, Lcom/miui/powercenter/legacypowerrank/BatteryData;->wakeLockTime:J

    iget-wide v6, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->wakeLockTime:J

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/miui/powercenter/legacypowerrank/BatteryData;->wakeLockTime:J

    iget-wide v4, v3, Lcom/miui/powercenter/legacypowerrank/BatteryData;->mobileRxBytes:J

    iget-wide v6, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->mobileRxBytes:J

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/miui/powercenter/legacypowerrank/BatteryData;->mobileRxBytes:J

    iget-wide v4, v3, Lcom/miui/powercenter/legacypowerrank/BatteryData;->mobileTxBytes:J

    iget-wide v6, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->mobileTxBytes:J

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/miui/powercenter/legacypowerrank/BatteryData;->mobileTxBytes:J

    iget-wide v4, v3, Lcom/miui/powercenter/legacypowerrank/BatteryData;->noCoveragePercent:D

    iget-wide v6, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->noCoveragePercent:D

    add-double/2addr v4, v6

    iput-wide v4, v3, Lcom/miui/powercenter/legacypowerrank/BatteryData;->noCoveragePercent:D

    iget-wide v4, v3, Lcom/miui/powercenter/legacypowerrank/BatteryData;->screenPower:D

    iget-wide v6, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->screenPower:D

    add-double/2addr v4, v6

    iput-wide v4, v3, Lcom/miui/powercenter/legacypowerrank/BatteryData;->screenPower:D

    :cond_3
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-object v0

    :cond_5
    :goto_2
    return-object p1

    :cond_6
    :goto_3
    return-object p0
.end method
