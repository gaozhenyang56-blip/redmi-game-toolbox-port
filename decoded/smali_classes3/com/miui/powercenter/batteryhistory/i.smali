.class public Lcom/miui/powercenter/batteryhistory/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/powercenter/batteryhistory/i$a;
    }
.end annotation


# static fields
.field private static a:Lcom/miui/powercenter/batteryhistory/i;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Z)Lcom/miui/powercenter/batteryhistory/i$a;
    .locals 16

    const-string v1, "getHistoryInfo"

    new-instance v2, Lcom/miui/powercenter/batteryhistory/i$a;

    invoke-direct {v2}, Lcom/miui/powercenter/batteryhistory/i$a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v2, Lcom/miui/powercenter/batteryhistory/i$a;->a:Ljava/util/List;

    const-string v3, "BatteryHistoryLoadMgr"

    const-string v0, "getHistoryInfo begin"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    :try_start_0
    new-instance v6, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;

    invoke-direct {v6}, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;-><init>()V

    invoke-static {}, Lcom/miui/powercenter/batteryhistory/n;->b()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->refreshHistory(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v6}, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->refreshHistory()V

    :goto_0
    new-instance v7, Lmiui/securitycenter/powercenter/HistoryItemWrapper;

    invoke-direct {v7}, Lmiui/securitycenter/powercenter/HistoryItemWrapper;-><init>()V

    invoke-virtual {v6}, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->startIterate()Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v8, -0x1

    move v9, v8

    move v10, v9

    move v11, v10

    :cond_1
    :goto_1
    invoke-virtual {v6, v7}, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->getNextHistoryItem(Lmiui/securitycenter/powercenter/HistoryItemWrapper;)Z

    move-result v12

    if-eqz v12, :cond_6

    iget-object v12, v2, Lcom/miui/powercenter/batteryhistory/i$a;->b:Lcom/miui/powercenter/batteryhistory/u;

    if-nez v12, :cond_2

    new-instance v12, Lcom/miui/powercenter/batteryhistory/u;

    invoke-direct {v12, v7}, Lcom/miui/powercenter/batteryhistory/u;-><init>(Lmiui/securitycenter/powercenter/HistoryItemWrapper;)V

    iput-object v12, v2, Lcom/miui/powercenter/batteryhistory/i$a;->b:Lcom/miui/powercenter/batteryhistory/u;

    :cond_2
    invoke-virtual {v7}, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->isDeltaData()Z

    move-result v12

    if-eqz v12, :cond_1

    if-nez p1, :cond_4

    const-string v12, "batteryLevel"

    invoke-virtual {v7, v12}, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const-string v13, "batteryPlugType"

    invoke-virtual {v7, v13}, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const-string v14, "batteryStatus"

    invoke-virtual {v7, v14}, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-ne v8, v12, :cond_3

    if-ne v10, v13, :cond_3

    if-ne v11, v14, :cond_3

    goto :goto_1

    :cond_3
    move v8, v12

    move v10, v13

    move v11, v14

    :cond_4
    new-instance v12, Lcom/miui/powercenter/batteryhistory/u;

    invoke-direct {v12, v7}, Lcom/miui/powercenter/batteryhistory/u;-><init>(Lmiui/securitycenter/powercenter/HistoryItemWrapper;)V

    iget-object v13, v2, Lcom/miui/powercenter/batteryhistory/i$a;->a:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    iget-wide v12, v12, Lcom/miui/powercenter/batteryhistory/u;->a:J

    sub-long/2addr v4, v12

    const-wide/32 v14, 0xf4240

    cmp-long v4, v4, v14

    if-lez v4, :cond_5

    move v0, v9

    :cond_5
    move-wide v4, v12

    goto :goto_1

    :cond_6
    iput v0, v2, Lcom/miui/powercenter/batteryhistory/i$a;->e:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lastIncreasingIntervalStartIndex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->finishIterate()V

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get firstHistoryInfo time: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/miui/powercenter/batteryhistory/i$a;->b:Lcom/miui/powercenter/batteryhistory/u;

    invoke-virtual {v4}, Lcom/miui/powercenter/batteryhistory/u;->b()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1f

    if-le v0, v4, :cond_8

    invoke-static {}, Lid/a;->d()J

    move-result-wide v4

    :goto_2
    iput-wide v4, v2, Lcom/miui/powercenter/batteryhistory/i$a;->c:J

    goto :goto_3

    :cond_8
    invoke-virtual {v6}, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->getBatteryUsageRealtime()J

    move-result-wide v4

    goto :goto_2

    :goto_3
    invoke-virtual {v6}, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->getScreenOnTime()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/miui/powercenter/batteryhistory/i$a;->d:J
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    :goto_4
    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    const-string v0, "getHistoryInfo end"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public static declared-synchronized d()Lcom/miui/powercenter/batteryhistory/i;
    .locals 2

    const-class v0, Lcom/miui/powercenter/batteryhistory/i;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/powercenter/batteryhistory/i;->a:Lcom/miui/powercenter/batteryhistory/i;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/powercenter/batteryhistory/i;

    invoke-direct {v1}, Lcom/miui/powercenter/batteryhistory/i;-><init>()V

    sput-object v1, Lcom/miui/powercenter/batteryhistory/i;->a:Lcom/miui/powercenter/batteryhistory/i;

    :cond_0
    sget-object v1, Lcom/miui/powercenter/batteryhistory/i;->a:Lcom/miui/powercenter/batteryhistory/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a()Lcom/miui/powercenter/batteryhistory/i$a;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/powercenter/batteryhistory/i;->b(Z)Lcom/miui/powercenter/batteryhistory/i$a;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/powercenter/batteryhistory/u;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/powercenter/batteryhistory/i;->b(Z)Lcom/miui/powercenter/batteryhistory/i$a;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/powercenter/batteryhistory/i$a;->a:Ljava/util/List;

    return-object v0
.end method
