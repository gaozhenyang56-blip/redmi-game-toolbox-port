.class public Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final IMSI:Ljava/lang/String; = "imsi"

.field private static final UPDATE_IMSI_URI:Landroid/net/Uri;

.field private static final sMiServiceUri:Landroid/net/Uri;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFirstDayofMonth:J

.field private mLastMonth:J

.field private mNow:J

.field private mThisWeek:J

.field private mToday:J

.field private mTotalTraffic:J

.field private mYesterday:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.xiaomi.push.providers.TrafficProvider/traffic"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;->sMiServiceUri:Landroid/net/Uri;

    const-string v0, "content://com.xiaomi.push.providers.TrafficProvider/update_imsi"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;->UPDATE_IMSI_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;->initDateData()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;->lambda$updateSim$0(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method private initDateData()V
    .locals 2

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getNowTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;->mNow:J

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;->mToday:J

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getThisMonthBeginTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;->mFirstDayofMonth:J

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/miui/networkassistant/utils/DateUtil;->getLastMonthBeginTimeMillis(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;->mLastMonth:J

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getYesterdayTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;->mYesterday:J

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getThisWeekBeginTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;->mThisWeek:J

    return-void
.end method

.method private static synthetic lambda$updateSim$0(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "imsi"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;->UPDATE_IMSI_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static updateSim(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/miui/networkassistant/traffic/statistic/a;

    invoke-direct {v0, p1, p0}, Lcom/miui/networkassistant/traffic/statistic/a;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getTotalTraffic()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;->mTotalTraffic:J

    return-wide v0
.end method

.method public query(IILjava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$MiAppInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p2, v3, :cond_0

    new-array p2, v1, [Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v0

    const-string p3, "message_ts > ? and message_ts < ? and network_type = ?"

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    new-array p2, p2, [Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, p2, v0

    aput-object p3, p2, v1

    const-string p3, "message_ts > ? and message_ts < ? and network_type = ? and imsi = ?"

    :goto_0
    move-object v8, p2

    move-object v7, p3

    if-eqz p1, :cond_4

    if-eq p1, v3, :cond_3

    if-eq p1, v0, :cond_2

    if-eq p1, v1, :cond_1

    goto :goto_1

    :cond_1
    iget-wide p1, p0, Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;->mFirstDayofMonth:J

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v8, v2

    iget-wide p1, p0, Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;->mNow:J

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v8, v3

    goto :goto_1

    :cond_2
    iget-wide p1, p0, Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;->mLastMonth:J

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v8, v2

    iget-wide p1, p0, Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;->mFirstDayofMonth:J

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v8, v3

    goto :goto_1

    :cond_3
    iget-wide p1, p0, Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;->mToday:J

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v8, v2

    iget-wide p1, p0, Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;->mNow:J

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v8, v3

    goto :goto_1

    :cond_4
    sget-boolean p1, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_CM_CUSTOMIZATION_TEST:Z

    if-eqz p1, :cond_5

    iget-wide p1, p0, Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;->mThisWeek:J

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v8, v2

    iget-wide p1, p0, Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;->mNow:J

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v8, v3

    goto :goto_1

    :cond_5
    iget-wide p1, p0, Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;->mYesterday:J

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v8, v2

    iget-wide p1, p0, Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;->mToday:J

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v8, v3

    :goto_1
    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;->mTotalTraffic:J

    iget-object p1, p0, Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;->sMiServiceUri:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_8

    :goto_2
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;->mTotalTraffic:J

    add-long/2addr v6, v4

    iput-wide v6, p0, Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;->mTotalTraffic:J

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$MiAppInfo;

    invoke-virtual {p3, v4, v5}, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$MiAppInfo;->addTraffic(J)V

    goto :goto_2

    :cond_6
    new-instance v0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$MiAppInfo;

    invoke-direct {v0}, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$MiAppInfo;-><init>()V

    iput-object p3, v0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$MiAppInfo;->packageName:Ljava/lang/CharSequence;

    iput-wide v4, v0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$MiAppInfo;->totalTraffic:J

    invoke-virtual {p2, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_3

    :catch_0
    move-exception p3

    :try_start_1
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_9

    goto :goto_4

    :goto_3
    if-eqz p1, :cond_7

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_7
    throw p2

    :cond_8
    if-eqz p1, :cond_9

    :goto_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_9
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method
