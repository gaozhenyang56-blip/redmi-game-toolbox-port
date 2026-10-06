.class public Lcom/miui/networkassistant/service/tm/TrafficSimManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/networkassistant/service/tm/TrafficSimManager$MiSimCallBack;
    }
.end annotation


# static fields
.field private static final DEFAULT_LONG_TYPE_VALUE:J = -0x1L

.field private static final DIVIDED_TIME:J = 0x1388L

.field private static final MEGA:I = 0x100000

.field private static final NOTIFACATION_RECEIVER_PACKAGE:Ljava/lang/String; = "com.android.phone"

.field private static final OVER_DAILY_LIMIT_STOP_NETWORK:I = 0x1

.field private static final OVER_DAILY_LIMIT_WARNING:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TrafficManageService-TrafficSimManager"

.field private static final TELEPHONE_SIM_BILL_QUERY_ACTION:Ljava/lang/String; = "com.android.phone.intent.action.NA_SIM_BILL_QUERY"

.field private static codeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstanceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/networkassistant/service/tm/TrafficSimManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ONLY_NOTIFICATION:I

.field private STOP_NETWORK_REMINDER:I

.field private lastMonthDataUsageValues:[J

.field private lastNotifyTime:J

.field private lastTodayDataUsageValues:[J

.field private lastTodayDataUsageValuesForHotpot:[J

.field private mCacheLeisureTime:J

.field private mCacheLeisureUsed:J

.field private mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

.field private mContext:Landroid/content/Context;

.field private mCurrentImsi:Ljava/lang/String;

.field private mDailyCardEnable:Z

.field private mDailyCardPackage:J

.field private mDailyLimitTraffic:J

.field private mDataUsageIgnoreUidListSelfLocked:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDataUsageTotalPackage:J

.field private mDataUsageTotalPackageWarning:J

.field mIgnoreAppListConfig:Lcom/miui/networkassistant/config/DataUsageIgnoreAppListConfig;

.field private mIsDailyLimitEnabled:Z

.field private mIsDataUsageOverLimitOn:Z

.field private mIsDataUsageOverNormalPkg:Z

.field private mIsLeisureDataUsageOverLimitOn:Z

.field private mIsMiSim:Z

.field private mIsRoamingDailyLimitEnabled:Z

.field private mIsSimLocationError:Z

.field private mIsTcDiagnostic:Z

.field private mIsTotalPackageSetted:Z

.field private mIsTrafficPurchaseAvailable:Z

.field private mIsUserCorrection:Z

.field public mLaunchFrom:I

.field private mLeisureDataUsageTotal:J

.field private mLeisureFromTime:J

.field private mLeisureToTime:J

.field private mMiSimHelper:Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;

.field private mMiuiNetworkSessionStats:Lcom/miui/net/MiuiNetworkSessionStats;

.field private mOverDailyLimitWarningType:I

.field private mRoamingDailyLimitTraffic:J

.field private mRoamingOverLimitOptType:I

.field private mService:Lcom/miui/networkassistant/service/tm/TrafficManageService;

.field mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

.field mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

.field private mTrafficCorrectionListener:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;

.field private mUpdateAutoCorrectionLock:Ljava/lang/Object;

.field uiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$1;

    invoke-direct {v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager$1;-><init>()V

    sput-object v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->codeSet:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->sInstanceMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->ONLY_NOTIFICATION:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->STOP_NETWORK_REMINDER:I

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->uiHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    new-array v2, v1, [J

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->lastMonthDataUsageValues:[J

    new-array v2, v1, [J

    fill-array-data v2, :array_1

    iput-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->lastTodayDataUsageValues:[J

    new-array v1, v1, [J

    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->lastTodayDataUsageValuesForHotpot:[J

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->lastNotifyTime:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mCacheLeisureUsed:J

    iput-wide v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mCacheLeisureTime:J

    iput-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsSimLocationError:Z

    iput-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsTcDiagnostic:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mUpdateAutoCorrectionLock:Ljava/lang/Object;

    new-instance v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$4;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager$4;-><init>(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mTrafficCorrectionListener:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mDataUsageIgnoreUidListSelfLocked:Ljava/util/HashSet;

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mService:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mCurrentImsi:Ljava/lang/String;

    invoke-static {p1}, Lcom/miui/networkassistant/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    new-instance p1, Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;

    iget-object p2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mMiSimHelper:Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;

    return-void

    nop

    :array_0
    .array-data 8
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 8
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 8
        -0x1
        -0x1
    .end array-data
.end method

.method public static synthetic a(Lcom/miui/networkassistant/service/tm/TrafficSimManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->lambda$shouldUpdateTcEngine$2(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)Lcom/miui/net/MiuiNetworkSessionStats;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mMiuiNetworkSessionStats:Lcom/miui/net/MiuiNetworkSessionStats;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/networkassistant/service/tm/TrafficSimManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->checkOperatorConfig(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/networkassistant/service/tm/TrafficSimManager;Lcom/miui/networkassistant/model/TrafficUsedStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->checkBillRemainder(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->notifyBillPackageChange()V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/networkassistant/service/tm/TrafficSimManager;Lcom/miui/networkassistant/model/TrafficUsedStatus;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->checkPackagesConfig(Lcom/miui/networkassistant/model/TrafficUsedStatus;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/miui/networkassistant/service/tm/TrafficSimManager;Lcom/miui/networkassistant/model/TrafficUsedStatus;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->checkTotalLimitError(Lcom/miui/networkassistant/model/TrafficUsedStatus;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->notifyTrafficPackageChange()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsTcDiagnostic:Z

    return p0
.end method

.method static synthetic access$300(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsSimLocationError:Z

    return p0
.end method

.method static synthetic access$400(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/networkassistant/service/tm/TrafficSimManager;Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->showDataUsageCorrectionFailureNotify(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/networkassistant/service/tm/TrafficSimManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->shouldUpdateTcEngine(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/networkassistant/service/tm/TrafficSimManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->finishCorrection(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->showCorrectionFailedToast()V

    return-void
.end method

.method static synthetic access$900()Ljava/util/Set;
    .locals 1

    sget-object v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->codeSet:Ljava/util/Set;

    return-object v0
.end method

.method public static synthetic b(Lcom/miui/networkassistant/service/tm/TrafficSimManager;IIZZILjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->lambda$startCorrectionFlow$0(IIZZILjava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->lambda$checkNormalTrafficStatus$4()V

    return-void
.end method

.method private checkBillRemainder(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V
    .locals 10

    const-string v0, "TrafficManageService-TrafficSimManager"

    const-string v1, "checkBillRemainder: start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getReminderCount()I

    move-result v1

    const/16 v2, 0x64

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v3, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    if-ne v1, v5, :cond_1

    const/16 v1, 0x1e

    goto :goto_0

    :cond_1
    const/4 v5, 0x3

    if-ne v1, v5, :cond_2

    const/16 v1, 0x32

    goto :goto_0

    :cond_2
    const/4 v5, 0x4

    if-ne v1, v5, :cond_3

    const/16 v1, 0x50

    goto :goto_0

    :cond_3
    const/4 v5, 0x5

    if-ne v1, v5, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    move v1, v4

    :goto_0
    iget-object v5, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getBillTotal()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/miui/networkassistant/config/SimUserInfo;->setBillPackageTotal(J)Z

    iget-object v5, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getBillRemained()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/miui/networkassistant/config/SimUserInfo;->setBillPackageRemained(J)Z

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iget-object v6, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v6}, Lcom/miui/networkassistant/config/SimUserInfo;->getOperator()Ljava/lang/String;

    move-result-object v6

    const-string v7, "operator"

    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkBillRemainder: status.isBillEnabled()"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->isBillEnabled()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkBillRemainder: mSimUser.isReturnBillResult()"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v7}, Lcom/miui/networkassistant/config/SimUserInfo;->isReturnBillResult()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->isBillEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getBillRemained()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gtz v6, :cond_5

    const-string v4, "checkBillArrears: arrearsBill"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isReturnBillResult()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getSlotNum()I

    move-result v0

    invoke-static {v0}, Lcom/miui/networkassistant/utils/TrafficUpdateUtil;->arrearsBill(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->setLastBillArrears(Z)V

    const-string v0, "track_key_this_correction_result_status"

    const-string v3, "true"

    invoke-virtual {v5, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "track_key_last_correction_result_status"

    invoke-virtual {v5, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "track_key_send_bill_arrears_telephone"

    invoke-static {v0, v5}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0, v4}, Lcom/miui/networkassistant/config/SimUserInfo;->setLastBillArrears(Z)V

    :cond_6
    :goto_1
    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getBillRemained()J

    move-result-wide v3

    mul-int/2addr v1, v2

    int-to-long v0, v1

    cmp-long v2, v3, v0

    if-gtz v2, :cond_7

    const-string v2, "bill_over_limit"

    invoke-static {v2}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordCountEvent(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getBillRemained()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-gtz v0, :cond_a

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getLastBillNotifyTime()J

    move-result-wide v0

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getThisMonthBeginTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_a

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isBillReminderSwitch()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v0

    invoke-static {v0}, Lcom/miui/networkassistant/utils/VirtualSimUtil;->getBusinessHall(I)Landroid/content/Intent;

    move-result-object v0

    const v1, 0x7f0804b3

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/miui/networkassistant/utils/PackageUtil;->isIntentExist(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v0

    invoke-static {v0}, Lcom/miui/networkassistant/utils/VirtualSimUtil;->getBillIntent(I)Landroid/content/Intent;

    move-result-object v0

    const v1, 0x7f08086f

    :cond_8
    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/miui/networkassistant/utils/PackageUtil;->isIntentExist(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_9

    return-void

    :cond_9
    const-string v2, "bill_over_limit_notification"

    invoke-static {v2}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordCountEvent(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getBillRemained()J

    move-result-wide v3

    long-to-float p1, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr p1, v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v3}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v3

    invoke-static {v2, p1, v3, v0, v1}, Lcom/miui/networkassistant/utils/NotificationUtil;->sendBillWarningNotify(Landroid/content/Context;Ljava/lang/String;ILandroid/content/Intent;I)V

    invoke-static {}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->trackBillReminderNotificationShow()V

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->setLastBillNotifyTime(J)Z

    :cond_a
    return-void
.end method

.method private checkDailyUsedTrafficStatus()V
    .locals 10

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isDailyTrafficReminderSwitch()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getCorrectedMonthTotalUsed()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getNormalMonthTotalPackage()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsDataUsageOverNormalPkg:Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDailyUsedCardStopNetworkCount()I

    move-result v0

    add-int/2addr v0, v1

    int-to-long v6, v0

    iget-wide v8, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mDailyCardPackage:J

    mul-long/2addr v6, v8

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getTodayCorrectDataUsageUsed()J

    move-result-wide v8

    long-to-float v1, v6

    iget-wide v6, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mDailyCardPackage:J

    long-to-float v3, v6

    const v6, 0x3dccccd0    # 0.100000024f

    mul-float/2addr v3, v6

    sub-float/2addr v1, v3

    long-to-float v3, v8

    cmpl-float v1, v3, v1

    if-ltz v1, :cond_4

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getDailyReminderType()I

    move-result v1

    iget v3, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->STOP_NETWORK_REMINDER:I

    if-ne v1, v3, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v0

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentActiveSlotNum()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDailyUsedCardStopNetworkTime()J

    move-result-wide v0

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v6

    cmp-long v0, v0, v6

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0, v4, v5}, Lcom/miui/networkassistant/config/SimUserInfo;->setDailyUsedCardStopNetworkTime(J)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0, v4, v5}, Lcom/miui/networkassistant/config/SimUserInfo;->setDailyUsedCardDataUpdateTime(J)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->setOverDataUsageStopNetworkType(I)Z

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->onNormalTrafficOverLimit()V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelDataUsageOverLimit(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->setMobilePolicyEnable(Z)Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v1

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/miui/networkassistant/utils/BroadCastUtil;->sendBroadCastNetworkLimitToPhone(Landroid/content/Context;II)V

    goto :goto_1

    :cond_3
    new-instance v1, Lcom/miui/networkassistant/service/tm/k;

    invoke-direct {v1, p0, v0}, Lcom/miui/networkassistant/service/tm/k;-><init>(Lcom/miui/networkassistant/service/tm/TrafficSimManager;I)V

    invoke-direct {p0, v1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->checkMiSim(Lcom/miui/networkassistant/service/tm/TrafficSimManager$MiSimCallBack;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private checkLeisureTrafficStatus(JJ)V
    .locals 2

    iget-wide v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mLeisureDataUsageTotal:J

    cmp-long p1, p1, v0

    if-ltz p1, :cond_1

    iget-boolean p1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsLeisureDataUsageOverLimitOn:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getLeisureDataUsageOverLimitWarningTime()J

    move-result-wide p1

    const-wide/32 v0, 0x5265c00

    add-long/2addr p1, v0

    cmp-long p1, p3, p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {p1, p3, p4}, Lcom/miui/networkassistant/config/SimUserInfo;->saveLeisureDataUsageOverLimitWarningTime(J)Z

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {p2}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result p2

    invoke-static {p1, p2}, Lcom/miui/networkassistant/utils/NotificationUtil;->sendLeisureDataUsageWarning(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getLeisureOverLimitStopNetworkTime()J

    move-result-wide p1

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getThisMonthBeginTimeMillis()J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-gez p1, :cond_1

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {p1, p3, p4}, Lcom/miui/networkassistant/config/SimUserInfo;->saveLeisureOverLimitStopNetworkTime(J)Z

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/miui/networkassistant/config/SimUserInfo;->setOverDataUsageStopNetworkType(I)Z

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->onNormalTrafficOverLimit()V

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/miui/networkassistant/config/SimUserInfo;->setMobilePolicyEnable(Z)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private checkMiSim(Lcom/miui/networkassistant/service/tm/TrafficSimManager$MiSimCallBack;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lp4/d;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager$MiSimCallBack;->miSimEnable()V

    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/CommonConfig;->setMiSimEnabled(Z)V

    invoke-interface {p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager$MiSimCallBack;->miSimEnable()V

    return-void

    :cond_1
    new-instance v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$5;

    invoke-direct {v0, p0, p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager$5;-><init>(Lcom/miui/networkassistant/service/tm/TrafficSimManager;Lcom/miui/networkassistant/service/tm/TrafficSimManager$MiSimCallBack;)V

    new-array p1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private checkNormalAndLeisureTrafficStatus()V
    .locals 10

    const-string v0, "TrafficManageService-TrafficSimManager"

    const-string v1, "mina checkNormalAndLeisureTrafficStatus "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getCorrectedNormalAndLeisureMonthTotalUsed()[J

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mDataUsageTotalPackage:J

    const/4 v1, 0x0

    aget-wide v4, v0, v1

    move-object v1, p0

    move-wide v6, v8

    invoke-direct/range {v1 .. v7}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->checkNormalTrafficStatus(JJJ)V

    const/4 v1, 0x1

    aget-wide v1, v0, v1

    invoke-direct {p0, v1, v2, v8, v9}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->checkLeisureTrafficStatus(JJ)V

    return-void
.end method

.method private checkNormalTrafficStatus()V
    .locals 7

    iget-wide v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mDataUsageTotalPackage:J

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getCorrectedNormalMonthTotalUsed()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->checkNormalTrafficStatus(JJJ)V

    return-void
.end method

.method private checkNormalTrafficStatus(JJJ)V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isTrafficReminderSwitch()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    const-string p1, "TrafficManageService-TrafficSimManager"

    const-string p2, "checkNormalTrafficStatus: \u5f00\u5173\u672a\u6253\u5f00"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    cmp-long v0, p3, p1

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-ltz v0, :cond_3

    cmp-long p1, p1, v1

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageOverLimitStopNetworkTime()J

    move-result-wide p1

    iget-object p3, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {p3}, Lcom/miui/networkassistant/config/SimUserInfo;->getMonthStart()I

    move-result p3

    int-to-long p3, p3

    cmp-long p1, p1, p3

    if-gez p1, :cond_5

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result p1

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentActiveSlotNum()I

    move-result p2

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {p1, p5, p6}, Lcom/miui/networkassistant/config/SimUserInfo;->saveDataUsageOverLimitStopNetworkTime(J)Z

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getMonthOverReminderType()I

    move-result p1

    iget p2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->STOP_NETWORK_REMINDER:I

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {p1, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->setOverDataUsageStopNetworkType(I)Z

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->onNormalTrafficOverLimit()V

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelDataUsageOverLimit(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {p1, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->setMobilePolicyEnable(Z)Z

    goto/16 :goto_1

    :cond_1
    new-instance p1, Lcom/miui/networkassistant/service/tm/f;

    invoke-direct {p1, p0}, Lcom/miui/networkassistant/service/tm/f;-><init>(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)V

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->checkMiSim(Lcom/miui/networkassistant/service/tm/TrafficSimManager$MiSimCallBack;)V

    goto/16 :goto_1

    :cond_2
    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {p2}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result p2

    const/4 p3, 0x2

    invoke-static {p1, p2, p3}, Lcom/miui/networkassistant/utils/BroadCastUtil;->sendBroadCastNetworkLimitToPhone(Landroid/content/Context;II)V

    goto :goto_1

    :cond_3
    iget-wide p1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mDataUsageTotalPackageWarning:J

    cmp-long p3, p3, p1

    if-ltz p3, :cond_5

    cmp-long p1, p1, v1

    if-lez p1, :cond_5

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getNormalOnlyWarningTime()J

    move-result-wide p1

    iget-object p3, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {p3}, Lcom/miui/networkassistant/config/SimUserInfo;->getMonthStart()I

    move-result p3

    int-to-long p3, p3

    cmp-long p1, p1, p3

    if-gez p1, :cond_5

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result p1

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentActiveSlotNum()I

    move-result p2

    if-ne p1, p2, :cond_5

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {p1, p5, p6}, Lcom/miui/networkassistant/config/SimUserInfo;->saveNormalOnlyWarningTime(J)Z

    iget-boolean p1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsTrafficPurchaseAvailable:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->isDailyUsedCardEffective()Z

    move-result p1

    if-nez p1, :cond_4

    move p1, p2

    goto :goto_0

    :cond_4
    move p1, v3

    :goto_0
    iget-object p3, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    const p4, 0x7f121ad6

    invoke-virtual {p3, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-array p2, p2, [Ljava/lang/Object;

    new-instance p4, Ljava/text/DecimalFormat;

    const-string p5, "0%"

    invoke-direct {p4, p5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-object p5, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {p5}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageWarning()F

    move-result p5

    float-to-double p5, p5

    invoke-virtual {p4, p5, p6}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p4

    aput-object p4, p2, v3

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/miui/networkassistant/service/tm/g;

    invoke-direct {p3, p0, p1, p2}, Lcom/miui/networkassistant/service/tm/g;-><init>(Lcom/miui/networkassistant/service/tm/TrafficSimManager;ZLjava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->checkMiSim(Lcom/miui/networkassistant/service/tm/TrafficSimManager$MiSimCallBack;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private checkNotLimitedTrafficStatus()V
    .locals 6

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isInfiniteTrafficReminderSwitch()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getNotLimitedWarning()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getCorrectedMonthTotalUsed()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getNotLimitedDataUsageOverLimitStopNetworkTime()J

    move-result-wide v0

    iget-object v4, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v4}, Lcom/miui/networkassistant/config/SimUserInfo;->getMonthStart()I

    move-result v4

    invoke-static {v4}, Lcom/miui/networkassistant/utils/DateUtil;->getThisMonthBeginTimeMillis(I)J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-gez v0, :cond_2

    new-instance v0, Lcom/miui/networkassistant/service/tm/l;

    invoke-direct {v0, p0, v2, v3}, Lcom/miui/networkassistant/service/tm/l;-><init>(Lcom/miui/networkassistant/service/tm/TrafficSimManager;J)V

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->checkMiSim(Lcom/miui/networkassistant/service/tm/TrafficSimManager$MiSimCallBack;)V

    :cond_2
    return-void
.end method

.method private checkOperatorConfig()V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isSimLocationAlertIgnore()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->hasOperatorAndCity()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v1

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mService:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    iget-object v2, v2, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/miui/networkassistant/service/tm/TrafficSimManager$3;

    invoke-direct {v3, p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager$3;-><init>(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)V

    invoke-static {v0, v1, v2, v3}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getPhoneNumber(Landroid/content/Context;ILandroid/os/Handler;Lcom/miui/networkassistant/utils/TelephonyUtil$PhoneNumberLoadedListener;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->checkOperatorConfig(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private checkOperatorConfig(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getSimLocation(Ljava/lang/String;)[I

    move-result-object p1

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget p1, p1, v1

    const/4 v2, -0x1

    if-le v0, v2, :cond_1

    if-le p1, v2, :cond_1

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getCity()I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getProvince()I

    move-result v0

    if-eq p1, v0, :cond_1

    :cond_0
    iput-boolean v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsSimLocationError:Z

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v0

    invoke-static {p1, v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->sendSimLocationErrorNotify(Landroid/content/Context;I)V

    :cond_1
    return-void
.end method

.method private checkPackagesConfig(Lcom/miui/networkassistant/model/TrafficUsedStatus;)Z
    .locals 14

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageTotal()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageTotal()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getTotalTrafficB()J

    move-result-wide v5

    sub-long/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/32 v5, 0xa00000

    cmp-long v1, v1, v5

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->isTrafficCorrectionAutoModify()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, v2}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->saveCorrectedPkgsAndUsageValues(Lcom/miui/networkassistant/model/TrafficUsedStatus;Z)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    const v5, 0x7f121aa9

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getTotalTrafficB()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytesByMB(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v6}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageTotal()J

    move-result-wide v6

    invoke-static {v0, v6, v7}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytesByMB(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getTotalTrafficB()J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/PackageUtil;->isRunningForeground(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v9, v2, p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->startTrafficConfigAlertActivity(Ljava/lang/String;ZLcom/miui/networkassistant/model/TrafficUsedStatus;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    const v1, 0x7f120fc0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    const v1, 0x7f120fbf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v6, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v10

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getImsi()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x1

    move-object v12, p1

    invoke-static/range {v6 .. v13}, Lcom/miui/networkassistant/utils/NotificationUtil;->sendPackageChangeNotify(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;Lcom/miui/networkassistant/model/TrafficUsedStatus;Z)V

    :cond_2
    :goto_0
    return v2

    :cond_3
    return v0
.end method

.method private checkTotalLimitError(Lcom/miui/networkassistant/model/TrafficUsedStatus;)Z
    .locals 13

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getCurrentMonthTotalPackage()J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getRemainTrafficB()J

    move-result-wide v4

    div-long/2addr v4, v2

    cmp-long v0, v0, v4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->isTotalLimitError()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isTrafficCorrectionAutoModify()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, v1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->saveCorrectedPkgsAndUsageValues(Lcom/miui/networkassistant/model/TrafficUsedStatus;Z)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    const v3, 0x7f121ab3

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getRemainTrafficB()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytesByMB(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v4, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v5}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageTotal()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytesByMB(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/miui/networkassistant/utils/PackageUtil;->isRunningForeground(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v8, v2, p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->startTrafficConfigAlertActivity(Ljava/lang/String;ZLcom/miui/networkassistant/model/TrafficUsedStatus;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    const v2, 0x7f120fc2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    const v2, 0x7f120fc1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v5, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v9

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getImsi()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    move-object v11, p1

    invoke-static/range {v5 .. v12}, Lcom/miui/networkassistant/utils/NotificationUtil;->sendPackageChangeNotify(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;Lcom/miui/networkassistant/model/TrafficUsedStatus;Z)V

    :goto_1
    return v1

    :cond_3
    return v2
.end method

.method public static synthetic d(Lcom/miui/networkassistant/service/tm/TrafficSimManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->lambda$checkDailyUsedTrafficStatus$6(I)V

    return-void
.end method

.method public static synthetic e(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->lambda$checkDailyLimit$7()V

    return-void
.end method

.method public static synthetic f(Lcom/miui/networkassistant/service/tm/TrafficSimManager;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->lambda$checkNormalTrafficStatus$5(ZLjava/lang/String;)V

    return-void
.end method

.method private finishCorrection(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsUserCorrection:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mService:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    const/16 v1, 0x11

    goto :goto_0

    :cond_0
    const/16 v1, 0x12

    :goto_0
    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mService:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    iget-object v1, v1, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iput-boolean v3, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsUserCorrection:Z

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->notifyTrafficPackageChange()V

    :cond_1
    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->saveDataUsageCorrectedTime(J)Z

    :cond_2
    return-void
.end method

.method public static synthetic g(Lcom/miui/networkassistant/service/tm/TrafficSimManager;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->lambda$checkNotLimitedTrafficStatus$3(J)V

    return-void
.end method

.method private getCorrectedOffsetValue()J
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageCorrectedTime()J

    move-result-wide v0

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getThisMonthBeginTimeMillis()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getCorrectedOffsetValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static declared-synchronized getInstance(Lcom/miui/networkassistant/service/tm/TrafficManageService;Ljava/lang/String;)Lcom/miui/networkassistant/service/tm/TrafficSimManager;
    .locals 2

    const-class v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->sInstanceMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    invoke-direct {v1, p0, p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;-><init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;Ljava/lang/String;)V

    sget-object p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->sInstanceMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->initImsiRelated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getLeisureMonthDataUsage()J
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mCacheLeisureTime:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_0

    iput-wide v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mCacheLeisureTime:J

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getThisMonthBeginTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5, v2, v3}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getInternalLeisureUsed(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mCacheLeisureUsed:J

    :cond_0
    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getInternalLeisureUsed(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mCacheLeisureUsed:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private getMonthDataUsageUsed()J
    .locals 8

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/MiSimUtil;->isMiSimEnable(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mMiSimHelper:Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getImsi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;->refreshMiSimFlowData(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mMiSimHelper:Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;

    invoke-virtual {v0}, Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;->getMonthUsedFlow()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->lastMonthDataUsageValues:[J

    const/4 v1, 0x1

    aget-wide v2, v0, v1

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    const/4 v2, 0x0

    const-string v3, "TrafficManageService-TrafficSimManager"

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->lastMonthDataUsageValues:[J

    aget-wide v6, v0, v2

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x1388

    cmp-long v0, v4, v6

    if-gez v0, :cond_1

    const-string v0, "getMonthDataUsageUsed: return last value"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->lastMonthDataUsageValues:[J

    aget-wide v1, v0, v1

    move-wide v0, v1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getThisMonthBeginTimeMillis()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getDataUsageByFromTo(JJ)J

    move-result-wide v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getMonthDataUsageUsed: new_get = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->lastMonthDataUsageValues:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    aput-wide v6, v0, v2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->lastMonthDataUsageValues:[J

    aput-wide v4, v0, v1

    move-wide v0, v4

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    goto :goto_1

    :cond_2
    move-wide v0, v2

    :goto_1
    return-wide v0
.end method

.method private getNormalMonthDataUsageUsed()J
    .locals 5

    iget-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mDailyCardEnable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsDataUsageOverNormalPkg:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getNormalTodayDataUsageUsed()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getMonthDataUsageUsed()J

    move-result-wide v0

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    goto :goto_1

    :cond_1
    move-wide v0, v2

    :goto_1
    return-wide v0
.end method

.method private getNormalMonthTotalPackage()J
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/MiSimUtil;->isMiSimEnable(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mMiSimHelper:Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getImsi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;->refreshMiSimFlowData(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mMiSimHelper:Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;

    invoke-virtual {v0}, Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;->getTotalMonthFlow()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageTotal()J

    move-result-wide v0

    :goto_0
    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getCurrentMonthExtraPackage()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private getRoamingTodayDataUsage()J
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getRoamingBeginTime()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    sub-long v4, v0, v4

    cmp-long v4, v4, v2

    if-lez v4, :cond_0

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v2

    :cond_0
    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getDataUsageByFromTo(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private getSimLocation(Ljava/lang/String;)[I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lbh/c;->b(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    aput p1, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    invoke-interface {v2, p1}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;->getProvinceCodeByCityCode(I)I

    move-result p1

    aput p1, v0, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "TrafficManageService-TrafficSimManager"

    const-string v1, "parse city code exception."

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v0

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public static synthetic h(Lcom/miui/networkassistant/service/tm/TrafficSimManager;ZIII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->lambda$startCorrectionReal$1(ZIII)V

    return-void
.end method

.method public static synthetic i(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->lambda$onNormalTrafficOverLimit$9()V

    return-void
.end method

.method private initDailyCardInfo()V
    .locals 7

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isDailyUsedCardEffective()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mDailyCardEnable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isTotalDataUsageSetted()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->saveDataUsageTotal(J)Z

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDailyUsedCardPackage()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mDailyCardPackage:J

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDailyUsedCardDataUpdateTime()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lcom/miui/networkassistant/utils/DateUtil;->isTheSameDay(JJ)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->setDailyUsedCardDataUpdateTime(J)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->saveCorrectedOffsetValue(J)Z

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getTodayCorrectDataUsageUsed()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mDailyCardPackage:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1, v0}, Lcom/miui/networkassistant/config/SimUserInfo;->setDailyUsedCardStopNetworkCount(I)Z

    :cond_1
    return-void
.end method

.method private initImsiRelated()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->initSimInfo()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->initTrafficCorrection()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->initMobileStatistic()V

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->initTrafficStatusMonitorVariable()V

    return-void
.end method

.method private initMobileStatistic()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mCurrentImsi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "default1"

    const-string v1, "default2"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mCurrentImsi:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/miui/net/MiuiNetworkSessionStats;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/net/MiuiNetworkSessionStats;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mMiuiNetworkSessionStats:Lcom/miui/net/MiuiNetworkSessionStats;

    invoke-virtual {v0}, Lcom/miui/net/MiuiNetworkSessionStats;->openSession()V

    :cond_1
    :goto_0
    return-void
.end method

.method private initSimInfo()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mCurrentImsi:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v0

    invoke-static {v0}, Lcom/miui/networkassistant/utils/TelephonyUtil;->isMiMobileOperator(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isSimInserted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->hasImsi()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "TrafficManageService-TrafficSimManager"

    const-string v1, "\u975e\u7c73\u5361\uff0c\u5f15\u5bfc\u81f3\u8425\u4e1a\u5385\u8bbe\u7f6e\u5957\u9910"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->checkNormalTotalPackageSetted()V

    :cond_1
    return-void
.end method

.method private initTrafficCorrection()V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getImsi()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/miui/networkassistant/traffic/correction/TrafficCorrectionManager;->getTrafficCorrectionInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mTrafficCorrectionListener:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;->registerLisener(Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;)V

    return-void
.end method

.method public static synthetic j(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->lambda$checkDailyLimit$8()V

    return-void
.end method

.method private synthetic lambda$checkDailyLimit$7()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/NotificationUtil;->sendDailyLimitWarning(Landroid/content/Context;I)V

    return-void
.end method

.method private synthetic lambda$checkDailyLimit$8()V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->setDataUsageOverDailyLimitTime(J)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/NotificationUtil;->sendDailyLimitWarning(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/miui/networkassistant/utils/BroadCastUtil;->sendBroadCastNetworkLimitToPhone(Landroid/content/Context;II)V

    return-void
.end method

.method private synthetic lambda$checkDailyUsedTrafficStatus$6(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/miui/networkassistant/utils/NotificationUtil;->sendDailyCardDataUsageOverLimit(Landroid/content/Context;II)V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/config/SimUserInfo;->setDailyUsedCardStopNetworkCount(I)Z

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->setDailyUsedCardStopNetworkTime(J)Z

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result p1

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentActiveSlotNum()I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v0

    const/4 v1, 0x3

    invoke-static {p1, v0, v1}, Lcom/miui/networkassistant/utils/BroadCastUtil;->sendBroadCastNetworkLimitToPhone(Landroid/content/Context;II)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$checkNormalTrafficStatus$4()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/NotificationUtil;->sendNormalDataUsageOverWarning(Landroid/content/Context;I)V

    return-void
.end method

.method private synthetic lambda$checkNormalTrafficStatus$5(ZLjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v1

    invoke-static {v0, p1, v1, p2}, Lcom/miui/networkassistant/utils/NotificationUtil;->sendNormalDataUsageWarning(Landroid/content/Context;ZILjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$checkNotLimitedTrafficStatus$3(J)V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->saveNotLimitedDataUsageOverLimitStopNetworkTime(J)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v1

    invoke-static {v0, p1, p2, v1}, Lcom/miui/networkassistant/utils/NotificationUtil;->sendNotLimitedDataUsageOverWarning(Landroid/content/Context;JI)V

    invoke-static {}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->trackTrafficReminderNotificationShow()V

    return-void
.end method

.method private synthetic lambda$onNormalTrafficOverLimit$9()V
    .locals 4

    const-string v0, "package_over_limit"

    invoke-static {v0}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordCountEvent(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/TelephonyUtil;->setMobileDataState(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "mobile_policy"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/TelephonyUtil;->isPhoneIdleState(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, La8/s1;->a()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v1

    const-string v2, "sim_slot_num_tag"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lx4/z1;->d()Landroid/os/UserHandle;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lx4/v;->u(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getOverDataUsageStopNetworkType()I

    move-result v0

    iget-boolean v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mDailyCardEnable:Z

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getDailyUsedCardStopNetworkCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v3}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v3

    invoke-static {v2, v0, v1, v3}, Lcom/miui/networkassistant/utils/NotificationUtil;->sendDataUsageOverLimit(Landroid/content/Context;III)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$shouldUpdateTcEngine$2(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0, p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->checkTrafficCorrectionEngineUpdate(ZZI)V

    return-void
.end method

.method private synthetic lambda$startCorrectionFlow$0(IIZZILjava/lang/String;)V
    .locals 7

    const-string v0, "cannot_get_city"

    const-string v1, "startCorrectionFlow \u672a\u83b7\u53d6\u76f8\u5173\u5230\u6570\u636e\uff0c\u65e0\u6cd5\u8fdb\u884c\u6821\u6b63"

    const-string v2, "TrafficManageService-TrafficSimManager"

    iget-object v3, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-static {v3, p6}, Lbh/c;->b(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    :try_start_0
    iget-object v5, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v5, p6}, Lcom/miui/networkassistant/config/SimUserInfo;->setPhoneNumber(Ljava/lang/String;)V

    iget-object p6, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    iget-object v5, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;->getProvinceCodeByCityCode(I)I

    move-result v5

    invoke-virtual {p6, v5}, Lcom/miui/networkassistant/config/SimUserInfo;->saveProvince(I)Z

    iget-object p6, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p6, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->saveCity(I)Z

    iget-object p6, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {p6}, Lcom/miui/networkassistant/config/SimUserInfo;->hasOperatorAndCity()Z

    move-result p6

    if-eqz p6, :cond_0

    invoke-virtual/range {p0 .. p5}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->startCorrectionReal(IIZZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object p4, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {p4}, Lcom/miui/networkassistant/config/SimUserInfo;->hasOperatorAndCity()Z

    move-result p4

    if-nez p4, :cond_4

    new-instance p4, Lcom/miui/networkassistant/model/TrafficUsedStatus;

    invoke-direct {p4, v4, p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;-><init>(II)V

    invoke-virtual {p4, p3}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setIsBackground(Z)V

    invoke-virtual {p4, p2}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setLaunchFrom(I)V

    iget-object p5, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    check-cast p5, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;

    invoke-virtual {p5, p4}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->onTrafficCorrected(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V

    if-nez p3, :cond_3

    goto :goto_0

    :catchall_0
    move-exception p4

    iget-object p5, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {p5}, Lcom/miui/networkassistant/config/SimUserInfo;->hasOperatorAndCity()Z

    move-result p5

    if-nez p5, :cond_2

    new-instance p5, Lcom/miui/networkassistant/model/TrafficUsedStatus;

    invoke-direct {p5, v4, p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;-><init>(II)V

    invoke-virtual {p5, p3}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setIsBackground(Z)V

    invoke-virtual {p5, p2}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setLaunchFrom(I)V

    iget-object p6, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    check-cast p6, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;

    invoke-virtual {p6, p5}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->onTrafficCorrected(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V

    if-nez p3, :cond_1

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->showCorrectionFailedToast()V

    :cond_1
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2, p3, v0}, Lcom/miui/networkassistant/utils/AnalyticsHelperNew;->trackStopReasonCorrection(IIZLjava/lang/String;)V

    :cond_2
    throw p4

    :catch_0
    iget-object p4, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {p4}, Lcom/miui/networkassistant/config/SimUserInfo;->hasOperatorAndCity()Z

    move-result p4

    if-nez p4, :cond_4

    new-instance p4, Lcom/miui/networkassistant/model/TrafficUsedStatus;

    invoke-direct {p4, v4, p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;-><init>(II)V

    invoke-virtual {p4, p3}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setIsBackground(Z)V

    invoke-virtual {p4, p2}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setLaunchFrom(I)V

    iget-object p5, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    check-cast p5, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;

    invoke-virtual {p5, p4}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->onTrafficCorrected(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V

    if-nez p3, :cond_3

    :goto_0
    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->showCorrectionFailedToast()V

    :cond_3
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2, p3, v0}, Lcom/miui/networkassistant/utils/AnalyticsHelperNew;->trackStopReasonCorrection(IIZLjava/lang/String;)V

    :cond_4
    return-void
.end method

.method private synthetic lambda$startCorrectionReal$1(ZIII)V
    .locals 10

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->showCorrectionStartedToast()V

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MIMOBILE"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    xor-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->checkTrafficCorrectionEngineUpdate(ZZI)V

    :cond_1
    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    const/4 v6, 0x0

    const/4 v0, 0x2

    if-ne p4, v0, :cond_2

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getNormalMonthDataUsageUsed()J

    move-result-wide v0

    :goto_0
    move-wide v7, v0

    move v3, p2

    move v4, p3

    move v5, p1

    move v9, p4

    invoke-interface/range {v2 .. v9}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;->startCorrection(IIZLjava/util/Map;JI)Z

    return-void
.end method

.method private notifyBillPackageChange()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "com.miui.networkassistant.provider"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "bill_detail"

    aput-object v3, v1, v2

    const-string v2, "%s/%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method private notifyTrafficPackageChange()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "com.miui.networkassistant.provider"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "datausage_status"

    aput-object v3, v1, v2

    const-string v2, "%s/%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method private onNormalTrafficOverLimit()V
    .locals 1

    new-instance v0, Lcom/miui/networkassistant/service/tm/d;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/tm/d;-><init>(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)V

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->checkMiSim(Lcom/miui/networkassistant/service/tm/TrafficSimManager$MiSimCallBack;)V

    return-void
.end method

.method private saveCorrectedUsageValues(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V
    .locals 10

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getUsedTrafficB()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->isLeisureDataUsageEffective()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getCorrectedNormalAndLeisureMonthTotalUsed()[J

    move-result-object v2

    aget-wide v5, v2, v3

    aget-wide v7, v2, v4

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getCorrectedNormalMonthTotalUsed()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->isNormalJustOver()Z

    move-result v2

    if-eqz v2, :cond_1

    cmp-long v2, v5, v0

    if-lez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getLeisureUsedB()J

    move-result-wide v5

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->isLeisureJustOver()Z

    move-result v9

    if-eqz v9, :cond_2

    cmp-long v7, v7, v5

    if-lez v7, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    if-eqz v2, :cond_3

    invoke-virtual {p0, v0, v1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->saveLatestCorrectedNormalDataUsage(J)V

    :cond_3
    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->isLeisureEnable()Z

    move-result p1

    if-eqz p1, :cond_4

    if-eqz v3, :cond_4

    invoke-virtual {p0, v5, v6}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->saveLatestCorrectedLeisureDataUsage(J)V

    :cond_4
    return-void
.end method

.method private sendIgnoreStatusAndStatEvent(IIZLjava/lang/String;)V
    .locals 1

    invoke-static {p1, p2, p3, p4}, Lcom/miui/networkassistant/utils/AnalyticsHelperNew;->trackStopReasonCorrection(IIZLjava/lang/String;)V

    if-nez p3, :cond_1

    const-string v0, "operate_not_support"

    invoke-static {v0, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->showOperateNotSupportToast()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->showCorrectionFailedToast()V

    :cond_1
    :goto_0
    new-instance p4, Lcom/miui/networkassistant/model/TrafficUsedStatus;

    const/4 v0, -0x1

    invoke-direct {p4, v0, p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;-><init>(II)V

    invoke-virtual {p4, p3}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setIsBackground(Z)V

    invoke-virtual {p4, p2}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setLaunchFrom(I)V

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    check-cast p1, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;

    invoke-virtual {p1, p4}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->onTrafficCorrected(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V

    return-void
.end method

.method private shouldUpdateTcEngine(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsUserCorrection:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/networkassistant/service/tm/m;

    invoke-direct {v0, p0, p1}, Lcom/miui/networkassistant/service/tm/m;-><init>(Lcom/miui/networkassistant/service/tm/TrafficSimManager;I)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private showAutoModifyPackageAlert()V
    .locals 7

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelNormalTotalPackageNotSetted(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    const-string v1, "com.android.contacts"

    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/PackageUtil;->isRunningForeground(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v3}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v3

    invoke-static {v3}, Lcom/miui/networkassistant/utils/VirtualSimUtil;->getBusinessHall(I)Landroid/content/Intent;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/miui/networkassistant/utils/PackageUtil;->isIntentExist(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-boolean v3, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsUserCorrection:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v3}, Lcom/miui/networkassistant/config/SimUserInfo;->isTrafficCorrectionAutoModify()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/networkassistant/utils/PackageUtil;->isRunningForeground(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    const v3, 0x7f121aa0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    const v4, 0x7f121a9f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getCurrentMonthTotalPackage()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytesByMB(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v4}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v4

    invoke-static {v3, v0, v1, v4, v2}, Lcom/miui/networkassistant/utils/NotificationUtil;->sendCorrectionAlertNotify(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mService:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v2

    const v3, 0x7f121aab

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mService:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    iget-object v1, v1, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    return-void
.end method

.method private showCorrectionFailedToast()V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mService:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v1

    const/16 v2, 0x12

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mService:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    iget-object v1, v1, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private showCorrectionStartedToast()V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mService:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v1

    const/16 v2, 0x10

    const v3, 0x7f121aaf

    invoke-virtual {v0, v2, v1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mService:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    iget-object v1, v1, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private showDataUsageCorrectionFailureNotify(Landroid/content/Context;I)V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsUserCorrection:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1204c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/miui/networkassistant/utils/NotificationUtil;->sendDataUsageCorrectionTimeOutOrFailureNotify(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    :cond_0
    return-void
.end method

.method private showDataUsageCorrectionTimeOutNotify(Landroid/content/Context;I)V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsUserCorrection:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120617

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/miui/networkassistant/utils/NotificationUtil;->sendDataUsageCorrectionTimeOutOrFailureNotify(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    :cond_0
    return-void
.end method

.method private showOperateNotSupportToast()V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mService:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v1

    const/16 v2, 0x17

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mService:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    iget-object v1, v1, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private showTrafficInStatusBar()V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/CommonConfig;->isStatusBarShowTrafficUpdate()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "status_bar_show_network_assistant"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/miui/networkassistant/config/CommonConfig;->setStatusBarShowTrafficUpdate(Z)Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method private startTrafficConfigAlertActivity(Ljava/lang/String;ZLcom/miui/networkassistant/model/TrafficUsedStatus;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "bundle_key_is_stable_pkg"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "bundle_key_body"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result p1

    const-string p2, "sim_slot_num_tag"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getImsi()Ljava/lang/String;

    move-result-object p1

    const-string p2, "bundle_key_imsi"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "bundle_key_traffic_used_status"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lx4/z1;->d()Landroid/os/UserHandle;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lx4/v;->u(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private updateTrafficCorrectionEngine(I)Z
    .locals 18

    move-object/from16 v1, p0

    const-string v2, "TrafficManageService-TrafficSimManager"

    const/4 v3, 0x0

    :try_start_0
    const-string v0, "\u5f00\u59cb\u66f4\u65b0\u6a21\u677f"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->checkOperatorConfig()V

    iget-object v0, v1, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v0, ""

    :goto_0
    move-object v9, v0

    goto :goto_2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, "+"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0xa

    goto :goto_1

    :cond_1
    const/4 v5, 0x7

    :goto_1
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_2
    iget-object v4, v1, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    iget-object v0, v1, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getProvince()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iget-object v0, v1, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getCity()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    iget-object v0, v1, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getOperator()Ljava/lang/String;

    move-result-object v7

    move/from16 v8, p1

    invoke-interface/range {v4 .. v9}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;->updateSMSTemplate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    iget-object v4, v1, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v4}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v10

    iget v11, v1, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mLaunchFrom:I

    iget-boolean v4, v1, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsUserCorrection:Z

    const/4 v5, 0x1

    if-nez v4, :cond_2

    move v12, v5

    goto :goto_3

    :cond_2
    move v12, v3

    :goto_3
    const/4 v13, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iget-object v4, v1, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    move/from16 v16, v0

    move-object/from16 v17, v4

    invoke-static/range {v10 .. v17}, Lcom/miui/networkassistant/utils/AnalyticsHelperNew;->trackUpdateTemplate(IIZZJZLcom/miui/networkassistant/config/SimUserInfo;)V

    if-eqz v0, :cond_3

    iget-object v4, v1, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/miui/networkassistant/config/SimUserInfo;->setTrafficCorrectionEngineUpdateTime(J)Z

    :cond_3
    const-string v4, "\u66f4\u65b0\u6a21\u677f\u7ed3\u679c, result:%b, slotNum:%d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v3

    iget-object v7, v1, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v7}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v4, "update engine exception"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3
.end method


# virtual methods
.method checkActiveSlotTraffic()V
    .locals 4

    iget-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsDataUsageOverLimitOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageOverLimitStopNetworkTime()J

    move-result-wide v0

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getThisMonthBeginTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isMobilePolicyEnable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mService:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->getMobileDataPolicy()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "TrafficManageService-TrafficSimManager"

    const-string v1, "checkActiveSlotTraffic"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->onNormalTrafficOverLimit()V

    :cond_0
    return-void
.end method

.method public checkBillArrears(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V
    .locals 6

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->isBillEnabled()Z

    move-result v0

    const-string v1, "TrafficManageService-TrafficSimManager"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isReturnBillResult()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNumForQuery()I

    move-result v0

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getBillRemained()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->returnBillToTelephone(IJ)V

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getBillRemained()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getSlotNum()I

    move-result v2

    invoke-static {v0, v2}, Lcom/miui/networkassistant/utils/NotificationUtil;->sendBillArrears(Landroid/content/Context;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkBillArrears: status.getBillRemained()="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getBillRemained()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string p1, "checkBillRemainder: returnBillToTelephone"

    :goto_0
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->isBillEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isReturnBillResult()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getBillPackageRemained()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    cmp-long v0, v2, v4

    if-gtz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkBillArrears: mSimUser.getBillPackageRemained()="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getBillPackageRemained()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "mSimUser.isReturnBillResult()="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->isReturnBillResult()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getSlotNum()I

    move-result p1

    invoke-static {v0, p1}, Lcom/miui/networkassistant/utils/NotificationUtil;->sendBillArrears(Landroid/content/Context;I)V

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mSimUser.getSlotNumForQuery(): returnLastBillToTelephone"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNumForQuery()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNumForQuery()I

    move-result p1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getBillPackageRemained()J

    move-result-wide v2

    invoke-virtual {p0, p1, v2, v3}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->returnLastBillToTelephone(IJ)V

    const-string p1, "checkBillRemainder: returnLastBillToTelephone"

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public checkCorrectTime(IZZII)I
    .locals 9

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkCorrectTime: isBackground = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " type = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " laumchFrom = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "TrafficManageService-TrafficSimManager"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    and-int/lit8 p3, p4, 0x2

    const-wide/32 v3, 0x927c0

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {p3}, Lcom/miui/networkassistant/config/SimUserInfo;->getBillCorrectionSuccessTime()J

    move-result-wide v5

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v7

    cmp-long p3, v5, v7

    if-lez p3, :cond_1

    goto :goto_0

    :cond_0
    sub-long v5, v1, v5

    cmp-long p3, v5, v3

    if-gez p3, :cond_1

    :goto_0
    and-int/lit8 p4, p4, -0x3

    :cond_1
    and-int/lit8 p3, p4, 0x1

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {p3}, Lcom/miui/networkassistant/config/SimUserInfo;->getTrafficCorrectionSuccessTime()J

    move-result-wide v5

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v1

    cmp-long p3, v5, v1

    if-lez p3, :cond_3

    goto :goto_1

    :cond_2
    sub-long/2addr v1, v5

    cmp-long p3, v1, v3

    if-gez p3, :cond_3

    :goto_1
    and-int/lit8 p4, p4, -0x2

    :cond_3
    and-int/lit8 p3, p4, 0x3

    if-nez p3, :cond_5

    const-string v1, "checkCorrectTime: \u8fc7\u4e8e\u9891\u7e41"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_4

    const-string v0, "auto_too_frequently"

    goto :goto_2

    :cond_4
    const-string v0, "manual_too_frequently"

    :goto_2
    invoke-static {p1, p5, p2, v0}, Lcom/miui/networkassistant/utils/AnalyticsHelperNew;->trackStopReasonCorrection(IIZLjava/lang/String;)V

    new-instance v0, Lcom/miui/networkassistant/model/TrafficUsedStatus;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;-><init>(II)V

    invoke-virtual {v0, p2}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setIsBackground(Z)V

    invoke-virtual {v0, p5}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setLaunchFrom(I)V

    invoke-virtual {v0, p4}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setCurrentCorrectionType(I)V

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    check-cast p1, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;

    invoke-virtual {p1, v0}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->onTrafficCorrected(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V

    :cond_5
    return p3
.end method

.method checkDailyLimit()V
    .locals 8

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getNormalTodayDataUsageNoLeisureUsed()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "daily limit traffic %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TrafficManageService-TrafficSimManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getCorrectedNormalMonthTotalUsed()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mDataUsageTotalPackage:J

    sub-long/2addr v6, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v6, v4

    if-lez v1, :cond_0

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->isLastDayOfMonth()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "checkDailyLimit -- isLastDayOfMonth: true !"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getNormalTodayDataUsageNoLeisureUsed()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mDailyLimitTraffic:J

    cmp-long v1, v4, v6

    if-ltz v1, :cond_4

    iget v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mOverDailyLimitWarningType:I

    if-eqz v1, :cond_3

    if-eq v1, v0, :cond_1

    goto/16 :goto_0

    :cond_1
    new-array v1, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mService:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-virtual {v4}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->getMobileDataPolicy()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v3, "policy %d"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v1

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentActiveSlotNum()I

    move-result v2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mService:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-virtual {v1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->getMobileDataPolicy()I

    move-result v1

    if-ne v1, v0, :cond_4

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageOverDailyLimitTime()J

    move-result-wide v1

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_4

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->setDataUsageOverDailyLimitTime(J)Z

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1, v0}, Lcom/miui/networkassistant/config/SimUserInfo;->setOverDataUsageStopNetworkType(I)Z

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->onNormalTrafficOverLimit()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageOverDailyLimitTime()J

    move-result-wide v0

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    new-instance v0, Lcom/miui/networkassistant/service/tm/i;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/tm/i;-><init>(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)V

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->checkMiSim(Lcom/miui/networkassistant/service/tm/TrafficSimManager$MiSimCallBack;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageOverDailyLimitTime()J

    move-result-wide v1

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_4

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->setDataUsageOverDailyLimitTime(J)Z

    new-instance v1, Lcom/miui/networkassistant/service/tm/h;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/service/tm/h;-><init>(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)V

    invoke-direct {p0, v1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->checkMiSim(Lcom/miui/networkassistant/service/tm/TrafficSimManager$MiSimCallBack;)V

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v1

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentActiveSlotNum()I

    move-result v2

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/miui/networkassistant/utils/BroadCastUtil;->sendBroadCastNetworkLimitToPhone(Landroid/content/Context;II)V

    :cond_4
    :goto_0
    return-void
.end method

.method checkDailyLimitTrafficStatus()V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isTrafficManageControlEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsMiSim:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "smart_dual_sim"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v0

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentActiveSlotNum()I

    move-result v1

    if-eq v0, v1, :cond_2

    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsRoamingDailyLimitEnabled:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isDataRoaming()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->checkRoamingDailyLimit()V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsDailyLimitEnabled:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isNotLimitCardEnable()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->checkDailyLimit()V

    :cond_4
    :goto_0
    return-void
.end method

.method checkNormalTotalPackageSetted()V
    .locals 3

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentActiveSlotNum()I

    move-result v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v1

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/MiSimUtil;->isMiSimEnable(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isSimInserted()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isTotalDataUsageSetted()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mService:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isOversea()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isDataUsageTotalNotSetNotified()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->setDataUsageTotalNotSetNotified(Z)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v2

    invoke-static {v0, v2}, Lcom/miui/networkassistant/utils/NotificationUtil;->sendNormalTotalPackageNotSetted(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->setNATipsEnable(Z)Z

    :cond_3
    return-void
.end method

.method checkRoamingDailyLimit()V
    .locals 6

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getRoamingTodayDataUsage()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mRoamingDailyLimitTraffic:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mRoamingOverLimitOptType:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mService:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->getMobileDataPolicy()I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageOverRoamingDailyLimitTime()J

    move-result-wide v0

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->setDataUsageOverRoamingDailyLimitTime(J)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->setOverDataUsageStopNetworkType(I)Z

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->onNormalTrafficOverLimit()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageOverRoamingDailyLimitTime()J

    move-result-wide v0

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->setDataUsageOverRoamingDailyLimitTime(J)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->sendRoamingDailyLimitWarning(Landroid/content/Context;)V

    :cond_2
    :goto_0
    return-void
.end method

.method declared-synchronized checkTrafficCorrectionEngineUpdate(ZZI)V
    .locals 19

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, v1, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getTrafficCorrectionEngineUpdateTime()J

    move-result-wide v4

    iget-object v0, v1, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getBillCorrectionSuccessTime()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-nez v0, :cond_0

    move-wide v6, v2

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getBillCorrectionSuccessTime()J

    move-result-wide v6

    :goto_0
    iget-object v0, v1, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getTrafficCorrectionSuccessTime()J

    move-result-wide v10

    cmp-long v0, v10, v8

    if-nez v0, :cond_1

    move-wide v8, v2

    goto :goto_1

    :cond_1
    iget-object v0, v1, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getTrafficCorrectionSuccessTime()J

    move-result-wide v8

    :goto_1
    if-eqz p2, :cond_4

    invoke-static {}, Lef/x;->z()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-object v0, v1, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/TelephonyUtil;->isAirModeOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v1, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isSimInserted()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isDataRoaming()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v1, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isSupportCorrection()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "MIMOBILE"

    iget-object v10, v1, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v10}, Lcom/miui/networkassistant/config/SimUserInfo;->getOperator()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v1, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isBrandSetted()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    :cond_3
    monitor-exit p0

    return-void

    :cond_4
    const/4 v0, 0x0

    const/4 v10, 0x1

    if-eqz p1, :cond_6

    :cond_5
    :goto_2
    move v2, v10

    goto :goto_6

    :cond_6
    sub-long v4, v2, v4

    :try_start_2
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v11

    const-wide/32 v13, 0x240c8400

    cmp-long v11, v11, v13

    if-gtz v11, :cond_7

    move v11, v10

    goto :goto_3

    :cond_7
    move v11, v0

    :goto_3
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    sub-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v6, 0x4d3f6400

    cmp-long v2, v2, v6

    if-lez v2, :cond_8

    move v2, v10

    goto :goto_4

    :cond_8
    move v2, v0

    :goto_4
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide v5, 0x9a7ec800L

    cmp-long v3, v3, v5

    if-lez v3, :cond_9

    move v3, v10

    goto :goto_5

    :cond_9
    move v3, v0

    :goto_5
    if-nez v11, :cond_a

    if-nez v2, :cond_5

    if-eqz v3, :cond_a

    goto :goto_2

    :cond_a
    move v2, v0

    :goto_6
    if-eqz v2, :cond_b

    move/from16 v2, p3

    invoke-direct {v1, v2}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->updateTrafficCorrectionEngine(I)Z

    goto :goto_8

    :cond_b
    iget-object v2, v1, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v11

    iget v12, v1, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mLaunchFrom:I

    iget-boolean v2, v1, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsUserCorrection:Z

    if-nez v2, :cond_c

    move v13, v10

    goto :goto_7

    :cond_c
    move v13, v0

    :goto_7
    const/4 v14, 0x0

    iget-object v0, v1, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getTrafficCorrectionEngineUpdateTime()J

    move-result-wide v15

    const/16 v17, 0x0

    iget-object v0, v1, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    move-object/from16 v18, v0

    invoke-static/range {v11 .. v18}, Lcom/miui/networkassistant/utils/AnalyticsHelperNew;->trackUpdateTemplate(IIZZJZLcom/miui/networkassistant/config/SimUserInfo;)V

    const-string v0, "TrafficManageService-TrafficSimManager"

    const-string v2, "\u77ed\u671f\u4e0d\u9700\u8981\u66f4\u65b0\u6a21\u677f"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method checkTrafficSettingAndSendNotification()V
    .locals 11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->isTotalDataUsageSetted()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->hasOperatorAndCity()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_0
    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->isOversea()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x44aa200

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getCorrectedNormalMonthTotalUsed()J

    move-result-wide v5

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getThisMonthBeginTimeMillis()J

    move-result-wide v7

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getDayOfMonth()I

    move-result v9

    const/16 v10, 0x12

    if-ne v9, v10, :cond_2

    if-eqz v2, :cond_2

    const-wide/32 v9, 0x100000

    cmp-long v2, v5, v9

    if-ltz v2, :cond_2

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getTrafficSettingMonthlyNotifyUpdateTime()J

    move-result-wide v9

    cmp-long v2, v9, v7

    if-gez v2, :cond_2

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelNormalTotalPackageNotSetted(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v7}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v7

    invoke-static {v2, v5, v6, v7}, Lcom/miui/networkassistant/utils/NotificationUtil;->sendTrafficSettingMonthlyNotify(Landroid/content/Context;JI)V

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2, v4}, Lcom/miui/networkassistant/config/SimUserInfo;->setNATipsEnable(Z)Z

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/miui/networkassistant/config/SimUserInfo;->setTrafficSettingMonthlyNotifyUpdateTime(J)Z

    :cond_2
    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getTrafficSettingDailyNotifyUpdateTime()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getNormalTodayDataUsageUsed()J

    move-result-wide v5

    const-wide/32 v7, 0x1400000

    cmp-long v2, v5, v7

    if-ltz v2, :cond_3

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelNormalTotalPackageNotSetted(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v7}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v7

    invoke-static {v2, v5, v6, v7}, Lcom/miui/networkassistant/utils/NotificationUtil;->sendTrafficSettingDailyNotify(Landroid/content/Context;JI)V

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2, v4}, Lcom/miui/networkassistant/config/SimUserInfo;->setNATipsEnable(Z)Z

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->setTrafficSettingDailyNotifyUpdateTime(Z)Z

    :cond_3
    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getTrafficSettingDailyLimitNotifyUpdateTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v4}, Lcom/miui/networkassistant/config/SimUserInfo;->isTotalDataUsageSetted()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v4}, Lcom/miui/networkassistant/config/SimUserInfo;->getDailyLimitEnabled()Z

    move-result v4

    if-nez v4, :cond_5

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getCurrentMonthTotalPackage()J

    move-result-wide v0

    const-wide v2, 0x80000000L

    cmp-long v2, v0, v2

    if-gez v2, :cond_5

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getNormalTodayDataUsageUsed()J

    move-result-wide v2

    const-wide v4, 0x3fa999999999999aL    # 0.05

    long-to-double v0, v0

    mul-double/2addr v0, v4

    const-wide/high16 v4, 0x417e000000000000L    # 3.145728E7

    cmpl-double v6, v0, v4

    if-lez v6, :cond_4

    goto :goto_1

    :cond_4
    move-wide v0, v4

    :goto_1
    long-to-double v4, v2

    cmpl-double v0, v4, v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v1

    invoke-static {v0, v2, v3, v1}, Lcom/miui/networkassistant/utils/NotificationUtil;->sendSettingDailyLimitNotify(Landroid/content/Context;JI)V

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getThisMonthEndTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2, v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->setTrafficSettingDailyLimitNotifyUpdateTime(J)Z

    :cond_5
    return-void
.end method

.method checkTrafficStatus()V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isTrafficManageControlEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lp4/d;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsMiSim:Z

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "smart_dual_sim"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v0

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentActiveSlotNum()I

    move-result v1

    if-eq v0, v1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isNotLimitCardEnable()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->checkNotLimitedTrafficStatus()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getBrand()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->checkDailyUsedTrafficStatus()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isLeisureDataUsageEffective()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->checkNormalAndLeisureTrafficStatus()V

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->checkNormalTrafficStatus()V

    :goto_0
    return-void
.end method

.method clearAllLimitTime()V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->saveDataUsageOverLimitStopNetworkWarningTime(J)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->saveDataUsageOverLimitStopNetworkTime(J)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->saveLeisureDataUsageOverLimitWarningTime(J)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->saveLeisureOverLimitStopNetworkTime(J)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->setDataUsageOverDailyLimitTime(J)Z

    return-void
.end method

.method clearDailyLimitTime()V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->setDataUsageOverDailyLimitTime(J)Z

    return-void
.end method

.method clearRoamingDailyLimitTime()V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->setDataUsageOverRoamingDailyLimitTime(J)Z

    return-void
.end method

.method forceUpdateTraffic()V
    .locals 1

    new-instance v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager$2;-><init>(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method getCorrectedMonthTotalUsed()J
    .locals 5

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getMonthDataUsageUsed()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getCorrectedOffsetValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    move-wide v0, v2

    :cond_0
    return-wide v0
.end method

.method getCorrectedNormalAndLeisureMonthTotalUsed()[J
    .locals 10

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getCorrectedNormalAndLeisureMonthTotalUsedNoAligned()[J

    move-result-object v0

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getCorrectedOffsetValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    aput-wide v2, v0, v1

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getLeisureDataUsageCorrectedTime()J

    move-result-wide v2

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getThisMonthBeginTimeMillis()J

    move-result-wide v4

    cmp-long v4, v2, v4

    const/4 v5, 0x1

    if-ltz v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v2, v2, v6

    if-gtz v2, :cond_0

    aget-wide v2, v0, v5

    iget-object v4, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v4}, Lcom/miui/networkassistant/config/SimUserInfo;->getLeisureDataUsageCorrectedValue()J

    move-result-wide v6

    add-long/2addr v2, v6

    aput-wide v2, v0, v5

    :cond_0
    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getLeisureDataUsageTotal()J

    move-result-wide v2

    aget-wide v6, v0, v5

    cmp-long v4, v6, v2

    if-lez v4, :cond_1

    aget-wide v8, v0, v1

    sub-long/2addr v6, v2

    add-long/2addr v8, v6

    aput-wide v8, v0, v1

    aput-wide v2, v0, v5

    :cond_1
    aget-wide v2, v0, v1

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-gez v2, :cond_2

    aput-wide v6, v0, v1

    :cond_2
    aget-wide v1, v0, v5

    cmp-long v1, v1, v6

    if-gez v1, :cond_3

    aput-wide v6, v0, v5

    :cond_3
    return-object v0
.end method

.method getCorrectedNormalAndLeisureMonthTotalUsedNoAligned()[J
    .locals 10

    const/4 v0, 0x2

    new-array v0, v0, [J

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getNormalMonthDataUsageUsed()J

    move-result-wide v1

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getLeisureMonthDataUsage()J

    move-result-wide v3

    iget-object v5, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v5}, Lcom/miui/networkassistant/config/SimUserInfo;->getLeisureDataUsageTotal()J

    move-result-wide v5

    cmp-long v7, v3, v5

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-lez v7, :cond_0

    sub-long/2addr v1, v5

    aput-wide v1, v0, v9

    aput-wide v5, v0, v8

    goto :goto_0

    :cond_0
    sub-long/2addr v1, v3

    aput-wide v1, v0, v9

    aput-wide v3, v0, v8

    :goto_0
    return-object v0
.end method

.method getCorrectedNormalMonthTotalUsed()J
    .locals 5

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getNormalMonthDataUsageUsed()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getCorrectedOffsetValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    move-wide v0, v2

    :cond_0
    return-wide v0
.end method

.method getCurrentMonthExtraPackage()J
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageOverlayPackageTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/DateUtil;->isCurrentCycleMonth(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageOverlayPackage()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method getCurrentMonthTotalPackage()J
    .locals 7

    iget-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mDailyCardEnable:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsDataUsageOverNormalPkg:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isDailyTrafficReminderSwitch()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDailyUsedCardPackage()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getCorrectedNormalMonthTotalUsed()J

    move-result-wide v3

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDailyUsedCardPackage()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getCorrectedNormalMonthTotalUsed()J

    move-result-wide v3

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDailyUsedCardPackage()J

    move-result-wide v5

    div-long/2addr v3, v5

    long-to-int v0, v3

    add-int/lit8 v0, v0, 0x1

    int-to-long v3, v0

    iget-object v5, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v5}, Lcom/miui/networkassistant/config/SimUserInfo;->getDailyUsedCardPackage()J

    move-result-wide v5

    mul-long/2addr v3, v5

    iget-object v5, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v5, v0}, Lcom/miui/networkassistant/config/SimUserInfo;->setDailyUsedCardStopNetworkCount(I)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDailyUsedCardStopNetworkCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-long v3, v0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDailyUsedCardPackage()J

    move-result-wide v5

    mul-long/2addr v3, v5

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getNormalMonthTotalPackage()J

    move-result-wide v3

    :goto_0
    cmp-long v0, v3, v1

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getTrafficCorrectionSuccessTime()J

    move-result-wide v5

    cmp-long v0, v5, v1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getLastTcUsed()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getLastTcRemain()J

    move-result-wide v2

    add-long v3, v0, v2

    :cond_2
    return-wide v3
.end method

.method getDailyLimitTraffic()J
    .locals 5

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getTrafficLimitValue()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getCustomizeDailyLimitWarning()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-wide v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mDataUsageTotalPackage:J

    const-wide/32 v3, 0x2200000

    cmp-long v3, v1, v3

    if-gtz v3, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const-wide/32 v0, 0x100000

    return-wide v0

    :cond_1
    const-wide/32 v0, 0x300000

    return-wide v0

    :cond_2
    const-wide/32 v0, 0x200000

    return-wide v0

    :cond_3
    int-to-long v3, v0

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x64

    div-long/2addr v1, v3

    return-wide v1
.end method

.method getDataUsageByFromTo(JJ)J
    .locals 13

    move-object v7, p0

    const-wide/16 v8, 0x0

    :try_start_0
    iget-object v1, v7, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mMiuiNetworkSessionStats:Lcom/miui/net/MiuiNetworkSessionStats;

    if-eqz v1, :cond_2

    iget-object v2, v7, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mCurrentImsi:Ljava/lang/String;

    move-wide v3, p1

    move-wide/from16 v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/miui/net/MiuiNetworkSessionStats;->getNetworkMobileTotalBytes(Ljava/lang/String;JJ)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v10, v7, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mDataUsageIgnoreUidListSelfLocked:Ljava/util/HashSet;

    monitor-enter v10
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v0, v7, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mDataUsageIgnoreUidListSelfLocked:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-wide v11, v1

    :goto_0
    :try_start_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object v1, p0

    move-wide v3, p1

    move-wide/from16 v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getDataUsageForUidByFromTo(IJJ)J

    move-result-wide v1

    sub-long/2addr v11, v1

    goto :goto_0

    :cond_0
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    cmp-long v0, v11, v8

    if-gez v0, :cond_1

    goto :goto_3

    :cond_1
    move-wide v8, v11

    goto :goto_3

    :catchall_0
    move-exception v0

    move-wide v8, v11

    goto :goto_1

    :catchall_1
    move-exception v0

    move-wide v8, v1

    :goto_1
    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_1

    :catchall_2
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-wide v8, v1

    goto :goto_2

    :catch_1
    move-exception v0

    :goto_2
    const-string v1, "TrafficManageService-TrafficSimManager"

    const-string v2, "get data usage failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_3
    return-wide v8
.end method

.method public getDataUsageForUidByFromTo(IJJ)J
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mMiuiNetworkSessionStats:Lcom/miui/net/MiuiNetworkSessionStats;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mCurrentImsi:Ljava/lang/String;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/miui/net/MiuiNetworkSessionStats;->getMobileHistoryForUid(Ljava/lang/String;IJJ)[J

    move-result-object p1

    const/4 p2, 0x0

    aget-wide p2, p1, p2

    const/4 p4, 0x1

    aget-wide p4, p1, p4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr p2, p4

    return-wide p2

    :catch_0
    move-exception p1

    const-string p2, "TrafficManageService-TrafficSimManager"

    const-string p3, "get data usage failed"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method getInternalLeisureUsed(JJ)J
    .locals 10

    iget-wide v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mLeisureFromTime:J

    add-long v2, p1, v0

    iget-wide v4, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mLeisureToTime:J

    add-long v6, p1, v4

    cmp-long v0, v0, v4

    const-wide/32 v4, 0x5265c00

    const-wide/16 v8, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0, p1, p2, v6, v7}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getDataUsageByFromTo(JJ)J

    move-result-wide p1

    add-long/2addr v8, p1

    :goto_0
    add-long/2addr v6, v4

    :cond_0
    cmp-long p1, v6, p3

    if-gez p1, :cond_1

    invoke-virtual {p0, v2, v3, v6, v7}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getDataUsageByFromTo(JJ)J

    move-result-wide p1

    add-long/2addr v8, p1

    add-long/2addr v2, v4

    goto :goto_0

    :cond_1
    cmp-long p1, v2, p3

    if-gez p1, :cond_2

    invoke-virtual {p0, v2, v3, p3, p4}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getDataUsageByFromTo(JJ)J

    move-result-wide p1

    add-long/2addr v8, p1

    :cond_2
    return-wide v8
.end method

.method getNormalTodayDataUsageNoLeisureUsed()J
    .locals 6

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    add-long/2addr v2, v0

    iget-object v4, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v4}, Lcom/miui/networkassistant/config/SimUserInfo;->isLeisureDataUsageEffective()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getDataUsageByFromTo(JJ)J

    move-result-wide v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getInternalLeisureUsed(JJ)J

    move-result-wide v0

    sub-long/2addr v4, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getNormalTodayDataUsageUsed()J

    move-result-wide v4

    :goto_0
    return-wide v4
.end method

.method getNormalTodayDataUsageUsed()J
    .locals 7

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->lastTodayDataUsageValues:[J

    const/4 v1, 0x1

    aget-wide v2, v0, v1

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->lastTodayDataUsageValues:[J

    aget-wide v5, v0, v2

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x1388

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    aget-wide v1, v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v3}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v3

    invoke-static {v0, v3}, Lcom/miui/networkassistant/utils/MiSimUtil;->isMiSimEnable(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mMiSimHelper:Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;

    iget-object v3, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v4}, Lcom/miui/networkassistant/config/SimUserInfo;->getImsi()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;->refreshMiSimFlowData(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mMiSimHelper:Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;

    invoke-virtual {v0}, Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;->getMonthUsedFlow()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mMiSimHelper:Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;

    invoke-virtual {v0}, Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;->getMonthUsedFlow()J

    move-result-wide v0

    return-wide v0

    :cond_1
    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getDataUsageByFromTo(JJ)J

    move-result-wide v3

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->lastTodayDataUsageValues:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    aput-wide v5, v0, v2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->lastTodayDataUsageValues:[J

    aput-wide v3, v0, v1

    move-wide v1, v3

    :goto_0
    return-wide v1
.end method

.method public getTodayCorrectDataUsageUsed()J
    .locals 5

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getNormalTodayDataUsageUsed()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getCorrectedOffsetValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    move-wide v0, v2

    :cond_0
    return-wide v0
.end method

.method getTodayDataUsageForUidHotPot()J
    .locals 11

    const-wide/16 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->lastTodayDataUsageValuesForHotpot:[J

    const/4 v3, 0x1

    aget-wide v4, v2, v3

    const-wide/16 v6, -0x1

    cmp-long v2, v4, v6

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->lastTodayDataUsageValuesForHotpot:[J

    aget-wide v7, v2, v4

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x1388

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    aget-wide v0, v2, v3

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mMiuiNetworkSessionStats:Lcom/miui/net/MiuiNetworkSessionStats;

    iget-object v6, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mCurrentImsi:Ljava/lang/String;

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual/range {v5 .. v10}, Lcom/miui/net/MiuiNetworkSessionStats;->getMobileSummaryForAllUid(Ljava/lang/String;JJ)Landroid/util/SparseArray;

    move-result-object v2

    const/4 v5, -0x5

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    const-string v7, "txBytes"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v5, "rxBytes"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v6

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->lastTodayDataUsageValuesForHotpot:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    aput-wide v5, v2, v4

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->lastTodayDataUsageValuesForHotpot:[J

    aput-wide v0, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "TrafficManageService-TrafficSimManager"

    const-string v4, "get data usage failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-wide v0
.end method

.method getTodayLeisureDataUsage()J
    .locals 5

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    add-long/2addr v2, v0

    iget-object v4, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v4}, Lcom/miui/networkassistant/config/SimUserInfo;->isLeisureDataUsageEffective()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getInternalLeisureUsed(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method initDataUsageIgnoreAppList()V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mDataUsageIgnoreUidListSelfLocked:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->hasImsi()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mCurrentImsi:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/miui/networkassistant/config/DataUsageIgnoreAppListConfig;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/networkassistant/config/DataUsageIgnoreAppListConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIgnoreAppListConfig:Lcom/miui/networkassistant/config/DataUsageIgnoreAppListConfig;

    :cond_0
    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIgnoreAppListConfig:Lcom/miui/networkassistant/config/DataUsageIgnoreAppListConfig;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/DataUsageIgnoreAppListConfig;->getIgnoreList()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mDataUsageIgnoreUidListSelfLocked:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/miui/networkassistant/utils/PackageUtil;->getUidByPackageName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mDataUsageIgnoreUidListSelfLocked:Ljava/util/HashSet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method initTrafficStatusMonitorVariable()V
    .locals 7

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getCorrectedMonthTotalUsed()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getNormalMonthTotalPackage()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-ltz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    iput-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsDataUsageOverNormalPkg:Z

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getCurrentMonthTotalPackage()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mDataUsageTotalPackage:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initTrafficStatusMonitorVariable: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mDataUsageTotalPackage:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "TrafficManageService-TrafficSimManager"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v5, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mDataUsageTotalPackage:J

    cmp-long v0, v5, v2

    if-ltz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v4

    :goto_1
    iput-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsTotalPackageSetted:Z

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->isDataUsageOverLimitStopNetwork()Z

    move-result v2

    and-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsDataUsageOverLimitOn:Z

    iget-wide v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mDataUsageTotalPackage:J

    long-to-float v0, v2

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageWarning()F

    move-result v2

    mul-float/2addr v0, v2

    float-to-long v2, v0

    iput-wide v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mDataUsageTotalPackageWarning:J

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v2

    invoke-static {v0, v2}, Lcom/miui/networkassistant/utils/MiSimUtil;->isMiSimEnable(Landroid/content/Context;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsMiSim:Z

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->updateTrafficCorrectionTotalLimit()V

    iget-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsTotalPackageSetted:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isLeisureDataUsageOverLimitWarning()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v4

    :goto_2
    iput-boolean v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsLeisureDataUsageOverLimitOn:Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getLeisureDataUsageTotal()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mLeisureDataUsageTotal:J

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isLeisureDataUsageEffective()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getLeisureDataUsageFromTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mLeisureFromTime:J

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getLeisureDataUsageToTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mLeisureToTime:J

    :cond_3
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDailyLimitEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsDailyLimitEnabled:Z

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getDailyLimitTraffic()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mDailyLimitTraffic:J

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDailyLimitWarningType()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mOverDailyLimitWarningType:I

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->initDataUsageIgnoreAppList()V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-static {v0, v1, v4}, Lcom/miui/networkassistant/traffic/purchase/CooperationManager;->isTrafficPurchaseAvailable(Landroid/content/Context;Lcom/miui/networkassistant/config/SimUserInfo;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsTrafficPurchaseAvailable:Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getRoamingDailyLimitTraffic()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mRoamingDailyLimitTraffic:J

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getRoamingDailyLimitEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsRoamingDailyLimitEnabled:Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getRoamingOverLimitOptType()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mRoamingOverLimitOptType:I

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->showTrafficInStatusBar()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->initDailyCardInfo()V

    return-void
.end method

.method notifyByNetChange()V
    .locals 6

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isTrafficManageControlEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lp4/d;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsMiSim:Z

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-wide v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->lastNotifyTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const-string v1, "TrafficManageService-TrafficSimManager"

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->lastNotifyTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    cmp-long v0, v2, v4

    if-gez v0, :cond_3

    const-string v0, "notifyByNetChange_time: return"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const-string v0, "notifyByNetChange: gooooo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->lastNotifyTime:J

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isNotLimitCardEnable()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->checkNotLimitedTrafficStatus()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getBrand()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->checkDailyUsedTrafficStatus()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isLeisureDataUsageEffective()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->checkNormalAndLeisureTrafficStatus()V

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->checkNormalTrafficStatus()V

    :goto_0
    iget-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsRoamingDailyLimitEnabled:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isDataRoaming()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->checkRoamingDailyLimit()V

    goto :goto_1

    :cond_7
    iget-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsDailyLimitEnabled:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isNotLimitCardEnable()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->checkDailyLimit()V

    :cond_8
    :goto_1
    return-void
.end method

.method reportSms()V
    .locals 2

    const-string v0, "TrafficManageService-TrafficSimManager"

    const-string v1, "reportSms"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getTcSmsReportCache()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/miui/networkassistant/service/tm/TrafficSimManager$6;

    invoke-direct {v1, p0, v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager$6;-><init>(Lcom/miui/networkassistant/service/tm/TrafficSimManager;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method resetTrafficPurchaseStatus()V
    .locals 2

    const-string v0, "TrafficManageService-TrafficSimManager"

    const-string v1, "update purchase traffic status true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->setTrafficPurchaseStatus(Z)Z

    return-void
.end method

.method public returnBillToTelephone(IJ)V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.phone.intent.action.NA_SIM_BILL_QUERY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.android.phone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "slotId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "billRemained"

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "correctionSuccess"

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    const-string p2, "miui.permission.EXTRA_NETWORK"

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Exception\uff1a"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "returnBillToTelephone:"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public returnLastBillToTelephone(IJ)V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.phone.intent.action.NA_SIM_BILL_QUERY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.android.phone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "slotId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "lastEfficientBill"

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "correctionSuccess"

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "isAutoCorrectionEnable"

    iget-object p2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {p2}, Lcom/miui/networkassistant/config/SimUserInfo;->isDataUsageAutoCorrectionOn()Z

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    const-string p2, "miui.permission.EXTRA_NETWORK"

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Exception\uff1a"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "returnBillToTelephone:"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method saveCorrectedPkgsAndUsageValues(Lcom/miui/networkassistant/model/TrafficUsedStatus;Z)V
    .locals 4

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getTotalTrafficB()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->saveDataUsageTotal(J)Z

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->updateTrafficCorrectionTotalLimit()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->showAutoModifyPackageAlert()V

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->clearAllLimitTime()V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {p2}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageTotal()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-gtz p2, :cond_1

    iget-object p2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getTotalTrafficB()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->saveDataUsageTotal(J)Z

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->initTrafficStatusMonitorVariable()V

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->saveCorrectedUsageValues(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->finishCorrection(Z)V

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mService:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-virtual {p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->broadCastDataUsageUpdated()V

    return-void
.end method

.method public saveCorrectionResult(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V
    .locals 3

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getCurrentCorrectionType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MIMOBILE"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getCurrentCorrectionType()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getOperator()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->toBillString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->setBillTcResult(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getReturnCode()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/config/SimUserInfo;->setBillTcResultCode(I)Z

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->toTrafficString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->setTrafficTcResult(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getReturnCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->setTrafficTcResultCode(I)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getUsedTrafficB()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->saveLastTcUsed(J)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getRemainTrafficB()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->saveLastTcRemain(J)Z

    :cond_3
    :goto_1
    return-void
.end method

.method saveLatestCorrectedLeisureDataUsage(J)V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getCorrectedNormalAndLeisureMonthTotalUsedNoAligned()[J

    move-result-object v0

    const/4 v1, 0x1

    aget-wide v1, v0, v1

    sub-long/2addr p1, v1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/config/SimUserInfo;->saveLeisureDataUsageCorrectedValue(J)Z

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->saveLeisureDataUsageCorrectedTime(J)Z

    return-void
.end method

.method saveLatestCorrectedNormalDataUsage(J)V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isDailyUsedCardEffective()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getNormalMonthTotalPackage()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    sub-long v0, p1, v0

    iget-wide v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mDailyCardPackage:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1, v0}, Lcom/miui/networkassistant/config/SimUserInfo;->setDailyUsedCardStopNetworkCount(I)Z

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getNormalTodayDataUsageUsed()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isLeisureDataUsageEffective()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getCorrectedNormalAndLeisureMonthTotalUsedNoAligned()[J

    move-result-object v0

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    move-wide v0, v1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getNormalMonthDataUsageUsed()J

    move-result-wide v0

    :goto_0
    sub-long/2addr p1, v0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/config/SimUserInfo;->saveCorrectedOffsetValue(J)Z

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->saveDataUsageCorrectedTime(J)Z

    return-void
.end method

.method public startCorrectionFlow(IIZZZI)Z
    .locals 15

    move-object v7, p0

    move/from16 v8, p1

    move/from16 v6, p2

    move/from16 v9, p3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v10, 0x0

    aput-object v1, v0, v10

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v11, 0x1

    aput-object v1, v0, v11

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "startCorrectionFlow : slotNum = %d isBackground = %b isCareUpdateResult = %b correctType = %d launchFrom = %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrafficManageService-TrafficSimManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lef/x;->z()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "startCorrectionFlow stop: CTA \u6ca1\u6709\u540c\u610f"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "not_allow_cta"

    :goto_0
    invoke-direct {p0, v8, v6, v9, v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->sendIgnoreStatusAndStatEvent(IIZLjava/lang/String;)V

    return v10

    :cond_0
    iget-object v0, v7, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/TelephonyUtil;->isAirModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "startCorrectionFlow stop: \u98de\u884c\u6a21\u5f0f"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "air_mode_open"

    goto :goto_0

    :cond_1
    iget-object v0, v7, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isSimInserted()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "startCorrectionFlow stop: \u8be5\u5361\u69fd\u6ca1\u6709\u63d2\u5165\u5361"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "sim_not_insert"

    goto :goto_0

    :cond_2
    iget-object v0, v7, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isDataRoaming()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "startCorrectionFlow stop: \u6d41\u91cf\u6f2b\u6e38"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "traffic_roaming"

    goto :goto_0

    :cond_3
    if-eqz v9, :cond_4

    iget-object v0, v7, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isDataUsageAutoCorrectionOn()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "startCorrectionFlow stop: \u5f00\u5173\u672a\u6253\u5f00 not open"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "switcher_is_close"

    goto :goto_0

    :cond_4
    iget-object v0, v7, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v8}, Lcom/miui/networkassistant/utils/TelephonyUtil;->isVirtualSim(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "startCorrectionFlow stop: \u865a\u5361\u4e0d\u9700\u8981\u6821\u6b63"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "is_virtualsim"

    goto :goto_0

    :cond_5
    iget-object v0, v7, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getOperator()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v7, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getOperatorStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startCorrectionFlow \u4fdd\u5b58\u8fd0\u8425\u5546\u6570\u636e\uff1a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v7, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2, v0}, Lcom/miui/networkassistant/config/SimUserInfo;->saveOperator(Ljava/lang/String;)Z

    :cond_6
    iget-object v0, v7, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isSupportCorrection()Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startCorrectionFlow \u975e\u4e09\u5927\u8fd0\u8425\u5546\u548c\u5c0f\u7c73\u79fb\u52a8"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "release can` t show"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "operate_not_support"

    goto/16 :goto_0

    :cond_7
    iget-object v0, v7, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MIMOBILE"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    iget-object v0, v7, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isBrandSetted()Z

    move-result v0

    if-nez v12, :cond_a

    if-nez v0, :cond_8

    iget-object v2, v7, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/networkassistant/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/CommonConfig;->isEnableToSendMsgToCorrect()Z

    move-result v2

    if-nez v2, :cond_8

    const-string v0, "send_sms_not_agree"

    goto/16 :goto_0

    :cond_8
    if-eqz v0, :cond_9

    iget-object v0, v7, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isTrafficManageControlEnable()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v7, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isNotLimitCardEnable()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, v7, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isDailyUsedCardEnable()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    const-string v0, "\u6d41\u91cf\u76d1\u63a7\u5173\u95ed"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v0, p6, -0x2

    move v4, v0

    goto :goto_1

    :cond_a
    move/from16 v4, p6

    :goto_1
    if-eqz p5, :cond_b

    move v13, v4

    goto :goto_2

    :cond_b
    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->checkCorrectTime(IZZII)I

    move-result v0

    move v13, v0

    :goto_2
    if-nez v13, :cond_c

    return v10

    :cond_c
    iput v6, v7, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mLaunchFrom:I

    xor-int/lit8 v0, v9, 0x1

    iput-boolean v0, v7, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsUserCorrection:Z

    iput-boolean v10, v7, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsTcDiagnostic:Z

    if-eqz v12, :cond_d

    :goto_3
    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move v5, v13

    invoke-virtual/range {v0 .. v5}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->startCorrectionReal(IIZZI)V

    goto :goto_4

    :cond_d
    iget-object v0, v7, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->hasOperatorAndCity()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_3

    :goto_4
    return v11

    :cond_e
    iput-boolean v10, v7, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsSimLocationError:Z

    iget-object v10, v7, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    new-instance v12, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v12, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v14, Lcom/miui/networkassistant/service/tm/j;

    move-object v0, v14

    move-object v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move v6, v13

    invoke-direct/range {v0 .. v6}, Lcom/miui/networkassistant/service/tm/j;-><init>(Lcom/miui/networkassistant/service/tm/TrafficSimManager;IIZZI)V

    invoke-static {v10, v8, v12, v14}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getPhoneNumber(Landroid/content/Context;ILandroid/os/Handler;Lcom/miui/networkassistant/utils/TelephonyUtil$PhoneNumberLoadedListener;)V

    return v11
.end method

.method startCorrectionReal(IIZZI)V
    .locals 7

    iget-object p4, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {p4}, Lcom/miui/networkassistant/config/SimUserInfo;->getOperator()Ljava/lang/String;

    move-result-object p4

    const-string v0, "MIMOBILE"

    invoke-static {v0, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_0

    iget-object p4, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    const/4 v0, 0x0

    invoke-interface {p4, v0}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;->setFinished(Z)V

    :cond_0
    new-instance p4, Lcom/miui/networkassistant/service/tm/e;

    move-object v1, p4

    move-object v2, p0

    move v3, p3

    move v4, p1

    move v5, p2

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/miui/networkassistant/service/tm/e;-><init>(Lcom/miui/networkassistant/service/tm/TrafficSimManager;ZIII)V

    invoke-static {p4}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method updateAutoCorrectionConfig()V
    .locals 6

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isSimInserted()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->hasImsi()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isOversea()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isDataRoaming()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataRoamingStopChanged()Z

    move-result v1

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mUpdateAutoCorrectionLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->toggleDataUsageAutoCorrection(Z)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/miui/networkassistant/config/SimUserInfo;->setDataRoamingStopUpdateTime(J)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->setDataRoamingStopChanged(Z)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/miui/networkassistant/config/SimUserInfo;->setDataRoamingStopUpdateTime(J)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->toggleDataUsageAutoCorrection(Z)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->setDataRoamingStopChanged(Z)Z

    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :goto_1
    return-void
.end method

.method updateRoamingBeginTime()V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isSimInserted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->hasImsi()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isDataRoaming()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getRoamingNetworkState()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateRoamingBeginTime : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrafficManageService-TrafficSimManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->setRoamingBeginTime(J)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->setRoamingBeginTime(J)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->setRoamingNetworkState(Z)Z

    :cond_1
    return-void
.end method

.method updateTrafficCorrectionTotalLimit()V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getCurrentMonthTotalPackage()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;->setTotalLimit(J)V

    return-void
.end method
