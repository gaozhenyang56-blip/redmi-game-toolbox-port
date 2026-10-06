.class public Lmiui/securitycenter/net/MiuiNetworkSessionStats;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mStatsService:Landroid/app/usage/NetworkStatsManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const-class v1, Landroid/app/usage/NetworkStatsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/NetworkStatsManager;

    iput-object v0, p0, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->mStatsService:Landroid/app/usage/NetworkStatsManager;

    return-void
.end method

.method private buildNetworkStatsMap(Landroid/app/usage/NetworkStats;)Landroid/util/SparseArray;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/usage/NetworkStats;",
            ")",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Landroid/util/SparseArray;

    const/16 v1, 0xff

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    new-instance v1, Landroid/app/usage/NetworkStats$Bucket;

    invoke-direct {v1}, Landroid/app/usage/NetworkStats$Bucket;-><init>()V

    :goto_0
    invoke-virtual {p1}, Landroid/app/usage/NetworkStats;->hasNextBucket()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1, v1}, Landroid/app/usage/NetworkStats;->getNextBucket(Landroid/app/usage/NetworkStats$Bucket;)Z

    invoke-virtual {v1}, Landroid/app/usage/NetworkStats$Bucket;->getUid()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    if-nez v3, :cond_0

    invoke-direct {p0}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->buildStatsMap()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {v1}, Landroid/app/usage/NetworkStats$Bucket;->getState()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    const-string v2, "txForegroundBytes"

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "rxForegroundBytes"

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v2, "txBytes"

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "rxBytes"

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_2
    return-object v0
.end method

.method private buildStatsMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "rxForegroundBytes"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "txForegroundBytes"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "txBytes"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "rxBytes"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private getHistoryForUid([JLandroid/app/usage/NetworkStats;I)V
    .locals 9

    new-instance v0, Landroid/app/usage/NetworkStats$Bucket;

    invoke-direct {v0}, Landroid/app/usage/NetworkStats$Bucket;-><init>()V

    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/app/usage/NetworkStats;->hasNextBucket()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p2, v0}, Landroid/app/usage/NetworkStats;->getNextBucket(Landroid/app/usage/NetworkStats$Bucket;)Z

    const/4 v1, -0x1

    if-eq p3, v1, :cond_1

    invoke-virtual {v0}, Landroid/app/usage/NetworkStats$Bucket;->getUid()I

    move-result v1

    if-eq v1, p3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    const/4 v1, 0x0

    aget-wide v5, p1, v1

    invoke-virtual {v0}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide v7

    add-long/2addr v5, v7

    aput-wide v5, p1, v1

    :cond_2
    invoke-virtual {v0}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v1, 0x1

    aget-wide v2, p1, v1

    invoke-virtual {v0}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide v4

    add-long/2addr v2, v4

    aput-wide v2, p1, v1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public closeSession()V
    .locals 0

    return-void
.end method

.method public forceUpdate()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->mStatsService:Landroid/app/usage/NetworkStatsManager;

    const-string v1, "forceUpdate"

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getMobileHistoryForUid(Ljava/lang/String;IJJ)[J
    .locals 9

    const/4 v0, 0x2

    new-array v0, v0, [J

    :try_start_0
    iget-object v1, p0, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->mStatsService:Landroid/app/usage/NetworkStatsManager;

    const/4 v2, 0x0

    move-object v3, p1

    move-wide v4, p3

    move-wide v6, p5

    move v8, p2

    invoke-virtual/range {v1 .. v8}, Landroid/app/usage/NetworkStatsManager;->queryDetailsForUid(ILjava/lang/String;JJI)Landroid/app/usage/NetworkStats;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->getHistoryForUid([JLandroid/app/usage/NetworkStats;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public getMobileSummaryForAllUid(Ljava/lang/String;JJ)Landroid/util/SparseArray;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->mStatsService:Landroid/app/usage/NetworkStatsManager;

    const/4 v1, 0x0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Landroid/app/usage/NetworkStatsManager;->querySummary(ILjava/lang/String;JJ)Landroid/app/usage/NetworkStats;

    move-result-object p1

    invoke-direct {p0, p1}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->buildNetworkStatsMap(Landroid/app/usage/NetworkStats;)Landroid/util/SparseArray;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getNetworkMobileTotalBytes(Ljava/lang/String;JJ)J
    .locals 8

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [J

    iget-object v1, p0, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->mStatsService:Landroid/app/usage/NetworkStatsManager;

    const/4 v2, 0x0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v1 .. v7}, Landroid/app/usage/NetworkStatsManager;->querySummary(ILjava/lang/String;JJ)Landroid/app/usage/NetworkStats;

    move-result-object p1

    const/4 p2, -0x1

    invoke-direct {p0, v0, p1, p2}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->getHistoryForUid([JLandroid/app/usage/NetworkStats;I)V

    const/4 p1, 0x0

    aget-wide p1, v0, p1

    const/4 p3, 0x1

    aget-wide p3, v0, p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr p1, p3

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-wide/16 p1, 0x0

    :goto_0
    return-wide p1
.end method

.method public getNetworkWifiTotalBytes(JJ)J
    .locals 8

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [J

    iget-object v1, p0, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->mStatsService:Landroid/app/usage/NetworkStatsManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v1 .. v7}, Landroid/app/usage/NetworkStatsManager;->querySummary(ILjava/lang/String;JJ)Landroid/app/usage/NetworkStats;

    move-result-object p1

    const/4 p2, -0x1

    invoke-direct {p0, v0, p1, p2}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->getHistoryForUid([JLandroid/app/usage/NetworkStats;I)V

    const/4 p1, 0x0

    aget-wide p1, v0, p1

    const/4 p3, 0x1

    aget-wide p3, v0, p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr p1, p3

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-wide/16 p1, 0x0

    :goto_0
    return-wide p1
.end method

.method public getWifiHistoryForUid(IJJ)[J
    .locals 9

    const/4 v0, 0x2

    new-array v0, v0, [J

    :try_start_0
    iget-object v1, p0, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->mStatsService:Landroid/app/usage/NetworkStatsManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-wide v4, p2

    move-wide v6, p4

    move v8, p1

    invoke-virtual/range {v1 .. v8}, Landroid/app/usage/NetworkStatsManager;->queryDetailsForUid(ILjava/lang/String;JJI)Landroid/app/usage/NetworkStats;

    move-result-object p2

    invoke-direct {p0, v0, p2, p1}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->getHistoryForUid([JLandroid/app/usage/NetworkStats;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public getWifiSummaryForAllUid(JJ)Landroid/util/SparseArray;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->mStatsService:Landroid/app/usage/NetworkStatsManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    move-wide v3, p1

    move-wide v5, p3

    invoke-virtual/range {v0 .. v6}, Landroid/app/usage/NetworkStatsManager;->querySummary(ILjava/lang/String;JJ)Landroid/app/usage/NetworkStats;

    move-result-object p1

    invoke-direct {p0, p1}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->buildNetworkStatsMap(Landroid/app/usage/NetworkStats;)Landroid/util/SparseArray;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public openSession()V
    .locals 0

    return-void
.end method
