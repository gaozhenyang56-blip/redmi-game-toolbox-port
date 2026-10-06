.class public Lcom/miui/networkassistant/service/tm/LockScreenManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOCK_SCREEN_APP_MIN:J = 0x400L

.field private static final LOCK_SCREEN_GUIDE_MAX_COUNT:I = 0x1

.field private static final LOCK_SCREEN_WARNING_TIME_MAX:J = 0xa4cb800L

.field private static final LOCK_SCREEN_WARNING_TIME_MIN:J = 0x0L

.field private static final TAG:Ljava/lang/String; = "LockScreenManager"


# instance fields
.field private isScreenOn:Z

.field private mConfig:Lcom/miui/networkassistant/config/CommonConfig;

.field private mCurrentUidMapSelfLocked:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mLockScreenBeginTime:J

.field private mLockScreenEndTime:J

.field private mLockScreenMonitorEnabled:Z

.field private mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

.field private mService:Lcom/miui/networkassistant/service/tm/TrafficManageService;

.field private mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

.field private mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

.field private mWarningBytesLimit:J


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;[Lcom/miui/networkassistant/service/tm/TrafficSimManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x19000

    iput-wide v0, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mWarningBytesLimit:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mLockScreenMonitorEnabled:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mCurrentUidMapSelfLocked:Ljava/util/HashMap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->isScreenOn:Z

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mService:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    iput-object p2, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    invoke-static {p1}, Lcom/miui/networkassistant/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mLockScreenBeginTime:J

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/LockScreenManager;->initLockScreenMonitor()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/networkassistant/service/tm/LockScreenManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/service/tm/LockScreenManager;->markAndCalculate(Ljava/lang/String;)V

    return-void
.end method

.method private checkAndGetMonitorCenter()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mService:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    :cond_0
    return-void
.end method

.method private initLockScreenDataUpgrade()V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/CommonConfig;->isLockScreenTrafficMonitorEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1, v0}, Lcom/miui/networkassistant/config/SimUserInfo;->setLockScreenTrafficEnable(Z)Z

    sget-boolean v1, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    iget-object v1, v1, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1, v0}, Lcom/miui/networkassistant/config/SimUserInfo;->setLockScreenTrafficEnable(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/config/CommonConfig;->setLockScreenTrafficMonitorEnable(Z)Z

    :cond_1
    return-void
.end method

.method private markAndCalculate(Ljava/lang/String;)V
    .locals 13

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mCurrentUidMapSelfLocked:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/LockScreenManager;->checkAndGetMonitorCenter()V

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mLockScreenEndTime:J

    iget-wide v3, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mLockScreenBeginTime:J

    sub-long v8, v1, v3

    const-wide/16 v1, 0x0

    cmp-long p1, v8, v1

    if-lez p1, :cond_6

    const-wide/32 v3, 0xa4cb800

    cmp-long p1, v8, v3

    if-gez p1, :cond_6

    const/4 p1, 0x0

    iget-object v3, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    invoke-virtual {v3}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->getFilteredAppInfosList()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/networkassistant/model/AppInfo;

    iget-object v5, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mCurrentUidMapSelfLocked:Ljava/util/HashMap;

    iget v6, v4, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v7, v5, v1

    if-gez v7, :cond_1

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mService:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    iget v10, v4, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    invoke-static {v7, v10}, Lcom/miui/networkassistant/traffic/statistic/NaTrafficStats;->getMobileBytes(Landroid/content/Context;I)J

    move-result-wide v10

    sub-long/2addr v10, v5

    const-wide/16 v5, 0x400

    cmp-long v5, v10, v5

    if-ltz v5, :cond_2

    iget-object v5, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mCurrentUidMapSelfLocked:Ljava/util/HashMap;

    iget v4, v4, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    int-to-long v4, p1

    add-long/2addr v4, v10

    long-to-int p1, v4

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mCurrentUidMapSelfLocked:Ljava/util/HashMap;

    iget v4, v4, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    int-to-long v6, p1

    iget-wide v1, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mWarningBytesLimit:J

    cmp-long p1, v6, v1

    if-lez p1, :cond_6

    iget-boolean p1, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mLockScreenMonitorEnabled:Z

    if-eqz p1, :cond_4

    iget-object v5, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mService:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    iget-wide v10, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mLockScreenBeginTime:J

    iget-object v12, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mCurrentUidMapSelfLocked:Ljava/util/HashMap;

    invoke-static/range {v5 .. v12}, Lcom/miui/networkassistant/utils/NotificationUtil;->sendLockScreenTrafficUsed(Landroid/content/Context;JJJLjava/util/HashMap;)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->isNotLimitCardEnable()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mService:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-direct {p0, p1, v6, v7}, Lcom/miui/networkassistant/service/tm/LockScreenManager;->sendAndCheckLockScreenTrafficGuide(Landroid/content/Context;J)V

    goto :goto_2

    :cond_5
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mLockScreenBeginTime:J

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mCurrentUidMapSelfLocked:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    invoke-virtual {p1}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->getFilteredAppInfosList()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/networkassistant/model/AppInfo;

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mCurrentUidMapSelfLocked:Ljava/util/HashMap;

    iget v3, v1, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mService:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget v1, v1, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    invoke-static {v4, v1}, Lcom/miui/networkassistant/traffic/statistic/NaTrafficStats;->getMobileBytes(Landroid/content/Context;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private sendAndCheckLockScreenTrafficGuide(Landroid/content/Context;J)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/CommonConfig;->getLockScreenTrafficGuideNotifyCount()I

    move-result v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/CommonConfig;->isLockScreenTrafficOpened()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    invoke-static {p1, p2, p3}, Lcom/miui/networkassistant/utils/NotificationUtil;->sendLockScreenTrafficGuideNotify(Landroid/content/Context;J)V

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mConfig:Lcom/miui/networkassistant/config/CommonConfig;

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/miui/networkassistant/config/CommonConfig;->setLockScreenTrafficGuideNotifyCount(I)Z

    :cond_0
    return-void
.end method


# virtual methods
.method initLockScreenMonitor()V
    .locals 5

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentActiveSlotNum()I

    move-result v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v1, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    iput-object v1, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->hasImsi()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/LockScreenManager;->initLockScreenDataUpgrade()V

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->isLockScreenTrafficEnable()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->isNotLimitCardEnable()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mLockScreenMonitorEnabled:Z

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getCurrentMonthTotalPackage()J

    move-result-wide v0

    iget-object v4, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v4}, Lcom/miui/networkassistant/config/SimUserInfo;->getLockScreenWarningLevel()I

    move-result v4

    invoke-static {v4, v0, v1}, Lcom/miui/networkassistant/traffic/lockscreen/LockScreenTrafficHelper;->getWarningLimitBytes(IJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mWarningBytesLimit:J

    iget-boolean v0, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mLockScreenMonitorEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v0, v3}, Lcom/miui/networkassistant/config/CommonConfig;->setLockScreenTrafficOpened(Z)Z

    :cond_2
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mLockScreenMonitorEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mWarningBytesLimit:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getBrand()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "[LockScreenManager] mLockScreenMonitorEnabled: %s, mWarningBytesLimit: %s, getBrand: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockScreenManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/LockScreenManager;->checkAndGetMonitorCenter()V

    :cond_3
    return-void
.end method

.method public isScreenOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->isScreenOn:Z

    return v0
.end method

.method onLockScreenChange(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isExistTotalDataUsage()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockScreenManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->isScreenOn:Z

    goto :goto_1

    :cond_1
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    new-instance v0, Lcom/miui/networkassistant/service/tm/LockScreenManager$1;

    invoke-direct {v0, p0, p1}, Lcom/miui/networkassistant/service/tm/LockScreenManager$1;-><init>(Lcom/miui/networkassistant/service/tm/LockScreenManager;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    :cond_3
    :goto_2
    return-void
.end method
