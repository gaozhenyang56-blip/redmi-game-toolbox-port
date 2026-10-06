.class public Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MEGA:I = 0x100000


# instance fields
.field private final mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

.field private final mContext:Landroid/content/Context;

.field private final mSimManager:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

.field private mWeeklyLastTrackTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;[Lcom/miui/networkassistant/service/tm/TrafficSimManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->mWeeklyLastTrackTime:J

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->mSimManager:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    invoke-static {p1}, Lcom/miui/networkassistant/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    return-void
.end method

.method private getDataUsageIgnoreEnable(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/miui/networkassistant/config/DataUsageIgnoreAppListConfig;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/networkassistant/config/DataUsageIgnoreAppListConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/DataUsageIgnoreAppListConfig;->getIgnoreList()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private getRoamingSettingState()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getDataRoamingEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/CommonConfig;->getDataRoamingWhiteListEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "white_list_allow"

    goto :goto_0

    :cond_0
    const-string v0, "all_allow"

    goto :goto_0

    :cond_1
    const-string v0, "all_ban"

    :goto_0
    return-object v0
.end method

.method private isPackageEffective(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const-wide v0, 0x1900000000L

    cmp-long p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private trackActiveCardPackageState(I)V
    .locals 11

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->mSimManager:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageTotal()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->isPackageEffective(J)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageWarning()F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-long v1, v1

    const-string v3, "daily_warning_value"

    invoke-static {v3, v1, v2}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordCalculateEvent(Ljava/lang/String;J)V

    const-string v1, "daily_flow_startdate"

    const-wide/16 v2, 0x1

    invoke-static {v1, v2, v3}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordCalculateEvent(Ljava/lang/String;J)V

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isLeisureDataUsageEffective()Z

    move-result v1

    const-wide/32 v4, 0x100000

    const-wide/16 v6, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getLeisureDataUsageTotal()J

    move-result-wide v0

    cmp-long v8, v0, v6

    if-lez v8, :cond_0

    move-wide v8, v2

    goto :goto_0

    :cond_0
    move-wide v8, v6

    :goto_0
    const-string v10, "toggle_idler_flow"

    invoke-static {v10, v8, v9}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordNumericEvent(Ljava/lang/String;J)V

    div-long/2addr v0, v4

    const-string v8, "idler_flow_size1"

    invoke-static {v8, v0, v1}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordCalculateEvent(Ljava/lang/String;J)V

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->mSimManager:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getCurrentMonthExtraPackage()J

    move-result-wide v0

    cmp-long p1, v0, v6

    if-lez p1, :cond_2

    goto :goto_1

    :cond_2
    move-wide v2, v6

    :goto_1
    const-string v6, "toggle_add_flow"

    invoke-static {v6, v2, v3}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordNumericEvent(Ljava/lang/String;J)V

    if-lez p1, :cond_3

    div-long/2addr v0, v4

    const-string p1, "add_flow_size1"

    invoke-static {p1, v0, v1}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordCalculateEvent(Ljava/lang/String;J)V

    :cond_3
    return-void
.end method

.method private trackDualCardPackageState()V
    .locals 12

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    const/4 v1, 0x0

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->mSimManager:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    const/4 v6, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isSimInserted()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageTotal()J

    move-result-wide v0

    add-long v7, v0, v4

    cmp-long v9, v0, v4

    if-lez v9, :cond_0

    move-wide v9, v2

    goto :goto_0

    :cond_0
    move-wide v9, v4

    :goto_0
    const-string v11, "toggle_dailyflow_sim1"

    invoke-static {v11, v9, v10}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordNumericEvent(Ljava/lang/String;J)V

    const-string v9, "daily_flow_double_sim1"

    invoke-direct {p0, v9, v0, v1}, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->trackPackageSize(Ljava/lang/String;J)V

    move v1, v6

    goto :goto_1

    :cond_1
    move-wide v7, v4

    :goto_1
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->mSimManager:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    aget-object v0, v0, v6

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isSimInserted()Z

    move-result v6

    if-eqz v6, :cond_3

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageTotal()J

    move-result-wide v9

    add-long/2addr v7, v9

    cmp-long v0, v9, v4

    if-lez v0, :cond_2

    goto :goto_2

    :cond_2
    move-wide v2, v4

    :goto_2
    const-string v0, "toggle_dailyflow_sim2"

    invoke-static {v0, v2, v3}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordNumericEvent(Ljava/lang/String;J)V

    const-string v0, "daily_flow_double_sim2"

    invoke-direct {p0, v0, v9, v10}, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->trackPackageSize(Ljava/lang/String;J)V

    :cond_3
    int-to-long v0, v1

    const-string v2, "toggle_double_sim"

    invoke-static {v2, v0, v1}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordNumericEvent(Ljava/lang/String;J)V

    const-string v0, "daily_flow_double_sim1+2"

    invoke-direct {p0, v0, v7, v8}, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->trackPackageSize(Ljava/lang/String;J)V

    goto :goto_5

    :cond_4
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->mSimManager:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isSimInserted()Z

    move-result v1

    if-eqz v1, :cond_5

    move-wide v6, v2

    goto :goto_3

    :cond_5
    move-wide v6, v4

    :goto_3
    const-string v1, "toggle_single_sim"

    invoke-static {v1, v6, v7}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordNumericEvent(Ljava/lang/String;J)V

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isSimInserted()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageTotal()J

    move-result-wide v0

    cmp-long v6, v0, v4

    if-lez v6, :cond_6

    goto :goto_4

    :cond_6
    move-wide v2, v4

    :goto_4
    const-string v4, "toggle_dailyflow_sim"

    invoke-static {v4, v2, v3}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordNumericEvent(Ljava/lang/String;J)V

    const-string v2, "daily_flow_single"

    invoke-direct {p0, v2, v0, v1}, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->trackPackageSize(Ljava/lang/String;J)V

    :cond_7
    :goto_5
    return-void
.end method

.method private trackPackageSize(Ljava/lang/String;J)V
    .locals 2

    invoke-direct {p0, p2, p3}, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->isPackageEffective(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x100000

    div-long/2addr p2, v0

    invoke-static {p1, p2, p3}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordCalculateEvent(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method private trackReminder()V
    .locals 9

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->mSimManager:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    const-string v1, "bill_reminder_sum"

    const-string v2, "traffic_reminder_sum"

    const-wide/16 v3, 0x1

    const-wide/16 v5, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isSimInserted()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isTrafficReminderSwitch()Z

    move-result v7

    if-eqz v7, :cond_0

    move-wide v7, v3

    goto :goto_0

    :cond_0
    move-wide v7, v5

    :goto_0
    invoke-static {v2, v7, v8}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordNumericEvent(Ljava/lang/String;J)V

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isBillReminderSwitch()Z

    move-result v0

    if-eqz v0, :cond_1

    move-wide v7, v3

    goto :goto_1

    :cond_1
    move-wide v7, v5

    :goto_1
    invoke-static {v1, v7, v8}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordNumericEvent(Ljava/lang/String;J)V

    :cond_2
    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->mSimManager:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    const/4 v7, 0x1

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isSimInserted()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isTrafficReminderSwitch()Z

    move-result v7

    if-eqz v7, :cond_3

    move-wide v7, v3

    goto :goto_2

    :cond_3
    move-wide v7, v5

    :goto_2
    invoke-static {v2, v7, v8}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordNumericEvent(Ljava/lang/String;J)V

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isBillReminderSwitch()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    move-wide v3, v5

    :goto_3
    invoke-static {v1, v3, v4}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordNumericEvent(Ljava/lang/String;J)V

    :cond_5
    return-void
.end method

.method private trackSettingButtonState(I)V
    .locals 10

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->mSimManager:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isSimInserted()Z

    move-result v1

    const-string v2, "result_type"

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getImsi()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->getDataUsageIgnoreEnable(Ljava/lang/String;)Z

    move-result v1

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v3}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "flow_except_app"

    invoke-static {v1, v4}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->getRoamingSettingState()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "toggle_overseas_control"

    invoke-static {v4, v1}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getRoamingDailyLimitEnabled()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "toggle_overseas_daily_limit"

    invoke-static {v4, v1}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isCorrectionEffective()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isDataUsageAutoCorrectionEffective()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "toggle_auto_correction"

    invoke-static {v4, v1}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v3}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isTrafficCorrectionAutoModify()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "toggle_autochange_flow"

    invoke-static {v1, v4}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->mSimManager:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    aget-object p1, v1, p1

    invoke-virtual {p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getCurrentMonthTotalPackage()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-lez p1, :cond_2

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, v3}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDailyLimitEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "toggle_dailyflow_limit"

    invoke-static {v1, p1}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, v3}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isLockScreenTrafficEnable()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "toggle_lockscreen_flow"

    invoke-static {v1, p1}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, v3}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isLockScreenTrafficEnable()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "toggle_daily_exceed_cutoff"

    invoke-static {v1, p1}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "status_bar_show_network_assistant"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    int-to-long v3, p1

    const-string p1, "toggle_notification_bar"

    invoke-static {p1, v3, v4}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordNumericEvent(Ljava/lang/String;J)V

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "status_bar_show_network_speed"

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    int-to-long v3, p1

    const-string p1, "toggle_statusbar_netspeed"

    invoke-static {p1, v3, v4}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordNumericEvent(Ljava/lang/String;J)V

    sget-object p1, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/FirewallRule;->value()I

    move-result v1

    iget-object v3, p0, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v3}, Lcom/miui/networkassistant/config/CommonConfig;->getFirewallMobilePreConfig()I

    move-result v3

    const-wide/16 v4, 0x1

    if-ne v1, v3, :cond_3

    move-wide v8, v4

    goto :goto_0

    :cond_3
    move-wide v8, v6

    :goto_0
    const-string v1, "toggle_newapp_data_allow"

    invoke-static {v1, v8, v9}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordNumericEvent(Ljava/lang/String;J)V

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/FirewallRule;->value()I

    move-result p1

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/CommonConfig;->getFirewallWifiPreConfig()I

    move-result v1

    if-ne p1, v1, :cond_4

    move-wide v8, v4

    goto :goto_1

    :cond_4
    move-wide v8, v6

    :goto_1
    const-string p1, "toggle_newapp_wlan_allow"

    invoke-static {p1, v8, v9}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordNumericEvent(Ljava/lang/String;J)V

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, v2}, Lcom/miui/networkassistant/traffic/purchase/CooperationManager;->isTrafficPurchaseAvailable(Landroid/content/Context;Lcom/miui/networkassistant/config/SimUserInfo;Z)Z

    move-result p1

    if-eqz p1, :cond_5

    move-wide v1, v4

    goto :goto_2

    :cond_5
    move-wide v1, v6

    :goto_2
    const-string p1, "toggle_flowbuy_display"

    invoke-static {p1, v1, v2}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordNumericEvent(Ljava/lang/String;J)V

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isDailyUsedCardEffective()Z

    move-result p1

    if-eqz p1, :cond_6

    move-wide v6, v4

    :cond_6
    const-string p1, "daily_card"

    invoke-static {p1, v6, v7}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordNumericEvent(Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method trackAnalyticsDaily(I)V
    .locals 6

    iget-wide v0, p0, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->mWeeklyLastTrackTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/CommonConfig;->getCommonAnalyticsUpdateTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->mWeeklyLastTrackTime:J

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->mWeeklyLastTrackTime:J

    const-wide/32 v4, 0x5265c00

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lp4/d;->h(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-wide v0, p0, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->mWeeklyLastTrackTime:J

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->trackActiveCardPackageState(I)V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->trackReminder()V

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->trackSettingButtonState(I)V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->trackDualCardPackageState()V

    invoke-static {}, Lcom/miui/analytics/AnalyticsUtil;->triggerUpload()V

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {p1, v0, v1}, Lcom/miui/networkassistant/config/CommonConfig;->setCommonAnalyticUpdateTime(J)Z

    :cond_1
    return-void
.end method
