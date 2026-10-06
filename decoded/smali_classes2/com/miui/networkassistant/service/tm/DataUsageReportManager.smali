.class public Lcom/miui/networkassistant/service/tm/DataUsageReportManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "DataUsageReportManager"


# instance fields
.field private connectedTime:J

.field private disconnectedTime:J

.field private mConfig:Lcom/miui/networkassistant/config/CommonConfig;

.field private mContext:Landroid/content/Context;

.field private mLastState:Lp4/d$a;

.field private mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

.field private mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

.field private mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lp4/d$a;->a:Lp4/d$a;

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->mLastState:Lp4/d$a;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->connectedTime:J

    iput-wide v0, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->disconnectedTime:J

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/networkassistant/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->mConfig:Lcom/miui/networkassistant/config/CommonConfig;

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/networkassistant/dual/SimCardHelper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/dual/SimCardHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/networkassistant/service/tm/DataUsageReportManager;)Lcom/miui/networkassistant/dual/SimCardHelper;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/networkassistant/service/tm/DataUsageReportManager;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/networkassistant/service/tm/DataUsageReportManager;Lcom/miui/networkassistant/service/tm/TrafficSimManager;I)Lorg/json/JSONObject;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->getUploadDataUsage(Lcom/miui/networkassistant/service/tm/TrafficSimManager;I)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/networkassistant/service/tm/DataUsageReportManager;Lcom/miui/networkassistant/service/tm/TrafficSimManager;)Lorg/json/JSONObject;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->getAppDetailDataUsage(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/networkassistant/service/tm/DataUsageReportManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->checkWifiAndMobileConnectedTime()V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/networkassistant/service/tm/DataUsageReportManager;)Lcom/miui/networkassistant/config/CommonConfig;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->mConfig:Lcom/miui/networkassistant/config/CommonConfig;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/networkassistant/service/tm/DataUsageReportManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private checkAndGetMonitorCenter()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    :cond_0
    return-void
.end method

.method private checkWifiAndMobileConnectedTime()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->mLastState:Lp4/d$a;

    sget-object v3, Lp4/d$a;->c:Lp4/d$a;

    if-eq v2, v3, :cond_0

    sget-object v3, Lp4/d$a;->d:Lp4/d$a;

    if-ne v2, v3, :cond_1

    :cond_0
    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getYesterdayTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->handleDisconnected(JJ)V

    iput-wide v0, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->connectedTime:J

    :cond_1
    sget-object v0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wifiAndMobileTurnOnTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->mConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/CommonConfig;->getWifiDailyConnectedTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->mConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/CommonConfig;->getMobileDailyConnectedTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getAllAppsJsonString(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 11

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->checkAndGetMonitorCenter()V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->getFilteredAppInfosList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v2, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;

    iget-object v3, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p1}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->getYesterdayMobileTraffic()Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {v2}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->getYesterdayWifiTraffic()Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v2}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->closeSession()V

    if-nez p1, :cond_1

    if-nez v3, :cond_1

    return-object v1

    :cond_1
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v4, v1

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/networkassistant/model/AppInfo;

    iget v6, v5, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    if-eqz p1, :cond_3

    invoke-virtual {p1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/networkassistant/model/AppDataUsage;

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/networkassistant/model/AppDataUsage;

    :cond_4
    if-nez v1, :cond_5

    if-eqz v4, :cond_2

    :cond_5
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v7, "pkgName"

    iget-object v5, v5, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-wide/16 v7, 0x0

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v9

    goto :goto_1

    :cond_6
    move-wide v9, v7

    :goto_1
    const-string v5, "usedTraffic"

    invoke-virtual {v6, v5, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v7

    :cond_7
    const-string v5, "usedWifi"

    invoke-virtual {v6, v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_8
    return-object v2
.end method

.method private getAppDetailDataUsage(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)Lorg/json/JSONObject;
    .locals 17

    move-object/from16 v1, p0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->checkAndGetMonitorCenter()V

    iget-object v0, v1, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->getFilteredAppInfosList()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    new-instance v3, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;

    iget-object v4, v1, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->mContext:Landroid/content/Context;

    move-object/from16 v5, p1

    iget-object v5, v5, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v5}, Lcom/miui/networkassistant/config/SimUserInfo;->getImsi()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/networkassistant/model/AppInfo;

    iget v5, v4, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    invoke-virtual {v3, v5}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->getAppYesterdayPerHourTraffic(I)Landroid/util/SparseArray;

    move-result-object v5

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    if-eqz v5, :cond_4

    const/4 v7, 0x0

    move v8, v7

    :goto_1
    sget v9, Lcom/miui/networkassistant/model/DataUsageConstants;->ONE_DAY_HOUR_COUNT:I

    if-ge v8, v9, :cond_4

    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcom/miui/networkassistant/model/AppDataUsage;

    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    if-eqz v9, :cond_3

    aget-object v11, v9, v7

    invoke-virtual {v11}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v11

    const/4 v13, 0x1

    aget-object v9, v9, v13

    invoke-virtual {v9}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v9, v11, v15

    if-gtz v9, :cond_2

    cmp-long v9, v13, v15

    if-lez v9, :cond_3

    :cond_2
    const-string v9, "m"

    invoke-virtual {v10, v9, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v9, "w"

    invoke-virtual {v10, v9, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    move-result v5

    if-lez v5, :cond_1

    iget-object v4, v4, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    return-object v2
.end method

.method private getSha1String(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SHA-1"

    invoke-static {p1, v0}, Llm/a;->b(Ljava/lang/CharSequence;Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lsm/a;->d([B)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private getUploadDataUsage(Lcom/miui/networkassistant/service/tm/TrafficSimManager;I)Lorg/json/JSONObject;
    .locals 30

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getImsi()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getOperatorStr(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "operator"

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual/range {p1 .. p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getCurrentMonthTotalPackage()J

    move-result-wide v5

    const-string v7, "settingPkg"

    invoke-virtual {v3, v7, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v5, v1, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->mConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v5}, Lcom/miui/networkassistant/config/CommonConfig;->getUploadMonthReportUpdateTime()J

    move-result-wide v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/miui/networkassistant/utils/DateUtil;->isTheSameMonth(JJ)Z

    move-result v5

    const-wide/16 v6, 0x0

    if-nez v5, :cond_1

    iget-object v5, v1, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->mConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v5}, Lcom/miui/networkassistant/config/CommonConfig;->getUploadMonthReportUpdateTime()J

    move-result-wide v8

    cmp-long v5, v8, v6

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getPreMonthTimeMillis()J

    move-result-wide v8

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getThisMonthEndTimeMillis()J

    move-result-wide v10

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getThisMonthBeginTimeMillis()J

    move-result-wide v8

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v10

    :goto_1
    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getYesterdayTimeMillis()J

    move-result-wide v12

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v14

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->isLeisureDataUsageEffective()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getLeisureDataUsageTotal()J

    move-result-wide v6

    invoke-virtual {v0, v12, v13, v14, v15}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getInternalLeisureUsed(JJ)J

    move-result-wide v16

    invoke-virtual {v0, v8, v9, v10, v11}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getInternalLeisureUsed(JJ)J

    move-result-wide v18

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getLeisureDataUsageFromTime()J

    move-result-wide v20

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getLeisureDataUsageToTime()J

    move-result-wide v22

    move-object v2, v4

    move-wide/from16 v24, v6

    move-wide/from16 v6, v16

    move-wide/from16 v4, v18

    move-wide/from16 v26, v20

    move-wide/from16 v28, v22

    goto :goto_2

    :cond_2
    move-object v2, v4

    move-wide v4, v6

    move-wide/from16 v24, v4

    move-wide/from16 v26, v24

    move-wide/from16 v28, v26

    :goto_2
    invoke-virtual {v0, v12, v13, v14, v15}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getDataUsageByFromTo(JJ)J

    move-result-wide v16

    move-wide/from16 v18, v12

    sub-long v12, v16, v6

    invoke-virtual {v0, v8, v9, v10, v11}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getDataUsageByFromTo(JJ)J

    move-result-wide v16

    move-wide/from16 v20, v8

    sub-long v8, v16, v4

    move-wide/from16 v16, v10

    const-string v10, "yesterdayTrafficUsed"

    invoke-direct {v1, v12, v13}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->secDiffPrivLaplace(J)J

    move-result-wide v11

    invoke-virtual {v3, v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v10, "monthTrafficUsed"

    invoke-direct {v1, v8, v9}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->secDiffPrivLaplace(J)J

    move-result-wide v8

    invoke-virtual {v3, v10, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v8, "leisurePkg"

    move-wide/from16 v9, v24

    invoke-virtual {v3, v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v8, "yesterdayLeisureUsed"

    invoke-direct {v1, v6, v7}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->secDiffPrivLaplace(J)J

    move-result-wide v6

    invoke-virtual {v3, v8, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v6, "monthLeisureUsed"

    invoke-direct {v1, v4, v5}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->secDiffPrivLaplace(J)J

    move-result-wide v4

    invoke-virtual {v3, v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v4, "leisureFrom"

    move-wide/from16 v6, v26

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v4, "leisureTo"

    move-wide/from16 v6, v28

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIgnoreAppListConfig:Lcom/miui/networkassistant/config/DataUsageIgnoreAppListConfig;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/DataUsageIgnoreAppListConfig;->getIgnoreList()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3

    :cond_3
    const-string v0, "ignore"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;

    iget-object v4, v1, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4, v2}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-wide/from16 v4, v18

    invoke-virtual {v0, v4, v5, v14, v15}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->getNetworkWifiTotalBytes(JJ)J

    move-result-wide v4

    const-string v6, "yesterdayWifiUsed"

    invoke-direct {v1, v4, v5}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->secDiffPrivLaplace(J)J

    move-result-wide v4

    invoke-virtual {v3, v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-wide/from16 v10, v16

    move-wide/from16 v8, v20

    invoke-virtual {v0, v8, v9, v10, v11}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->getNetworkWifiTotalBytes(JJ)J

    move-result-wide v4

    const-string v6, "monthWifiUsed"

    invoke-direct {v1, v4, v5}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->secDiffPrivLaplace(J)J

    move-result-wide v4

    invoke-virtual {v3, v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->closeSession()V

    invoke-direct {v1, v2}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->getAllAppsJsonString(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v2, "appRank"

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    const-string v0, ""

    :goto_4
    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_5
    return-object v3
.end method

.method private handleDisconnected(JJ)V
    .locals 3

    iput-wide p1, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->disconnectedTime:J

    iget-wide v0, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->connectedTime:J

    cmp-long v2, v0, p3

    if-gez v2, :cond_0

    sub-long/2addr p1, p3

    goto :goto_0

    :cond_0
    sub-long/2addr p1, v0

    :goto_0
    const-wide/16 p3, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->mLastState:Lp4/d$a;

    sget-object v1, Lp4/d$a;->d:Lp4/d$a;

    if-ne v0, v1, :cond_1

    iget-object p3, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->mConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {p3}, Lcom/miui/networkassistant/config/CommonConfig;->getMobileDailyConnectedTime()J

    move-result-wide p3

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->mConfig:Lcom/miui/networkassistant/config/CommonConfig;

    add-long v1, p3, p1

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/CommonConfig;->setMobileDailyConnectedTime(J)Z

    goto :goto_1

    :cond_1
    sget-object v1, Lp4/d$a;->c:Lp4/d$a;

    if-ne v0, v1, :cond_2

    iget-object p3, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->mConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {p3}, Lcom/miui/networkassistant/config/CommonConfig;->getWifiDailyConnectedTime()J

    move-result-wide p3

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->mConfig:Lcom/miui/networkassistant/config/CommonConfig;

    add-long v1, p3, p1

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/CommonConfig;->setWifiDailyConnectedTime(J)Z

    :cond_2
    :goto_1
    sget-object v0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDisconnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private isUploaded()Z
    .locals 5

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->mConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/CommonConfig;->getUploadMonthReportUpdateTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private secDiffPrivLaplace(J)J
    .locals 3

    new-instance v0, Lyi/b;

    invoke-direct {v0}, Lyi/b;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lyi/a;->e(Ljava/lang/Float;)Lxi/c;

    const v1, 0x3f666666    # 0.9f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lxi/c;->c(Ljava/lang/Float;)Lxi/c;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lyi/d;->g(Ljava/lang/Float;Ljava/lang/Float;)Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lyi/b;->j(Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method


# virtual methods
.method public trackNetworkStateAnalytics(Lp4/d$a;)V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->mLastState:Lp4/d$a;

    if-ne p1, v2, :cond_0

    return-void

    :cond_0
    sget-object v3, Lp4/d$a;->d:Lp4/d$a;

    if-eq p1, v3, :cond_2

    sget-object v4, Lp4/d$a;->c:Lp4/d$a;

    if-ne p1, v4, :cond_1

    goto :goto_0

    :cond_1
    sget-object v2, Lp4/d$a;->b:Lp4/d$a;

    if-ne p1, v2, :cond_5

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->handleDisconnected(JJ)V

    goto :goto_1

    :cond_2
    :goto_0
    if-eq v2, v3, :cond_3

    sget-object v3, Lp4/d$a;->c:Lp4/d$a;

    if-ne v2, v3, :cond_4

    :cond_3
    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->handleDisconnected(JJ)V

    :cond_4
    iput-wide v0, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->connectedTime:J

    :cond_5
    :goto_1
    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->mLastState:Lp4/d$a;

    return-void
.end method

.method public uploadTrafficDataDaily([Lcom/miui/networkassistant/service/tm/TrafficSimManager;)V
    .locals 1

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->isUploaded()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    new-instance p1, Lcom/miui/networkassistant/service/tm/DataUsageReportManager$1;

    invoke-direct {p1, p0}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager$1;-><init>(Lcom/miui/networkassistant/service/tm/DataUsageReportManager;)V

    invoke-static {p1}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
