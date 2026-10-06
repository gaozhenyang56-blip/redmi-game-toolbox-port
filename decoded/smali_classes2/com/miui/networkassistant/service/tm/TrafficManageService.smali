.class public Lcom/miui/networkassistant/service/tm/TrafficManageService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/networkassistant/service/tm/TrafficManageService$TelCallback;,
        Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;,
        Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;,
        Lcom/miui/networkassistant/service/tm/TrafficManageService$SharedPreBinder;
    }
.end annotation


# static fields
.field private static final DAILY_AUTO_CORRECTION:I = 0x0

.field private static final MAX_RETRY_TIME:I = 0xa

.field private static final MAX_TRAFFIC_RATE:I = 0x7a120

.field static final MSG_CANCEL_WIFI_TO_MOBILE:I = 0x62

.field static final MSG_DEVICE_PROVISIONED_CHANGED:I = 0x20

.field static final MSG_FORCE_CHECK_DAILY_LIMIT_STATUS:I = 0x40

.field static final MSG_FORCE_CHECK_LOCK_SCREEN_STATUS:I = 0x42

.field static final MSG_FORCE_CHECK_ROAMING_DAILY_LIMIT_STATUS:I = 0x41

.field static final MSG_FORCE_CHECK_TETHERING_SETTING_STATUS:I = 0x42

.field static final MSG_FORCE_CHECK_TRAFFIC_STATUS:I = 0x2

.field static final MSG_INIT_SIM_STATE:I = 0x50

.field static final MSG_INIT_SIM_STATE_SIM_CHANGED:I = 0x51

.field static final MSG_OPERATE_NOT_SUPPORT:I = 0x17

.field private static final MSG_TRACK_USER_DATA:I = 0x30

.field static final MSG_TRAFFIC_AUTO_CORRECTION_LAUNCH:I = 0x13

.field static final MSG_TRAFFIC_CORRECTION_FAILED:I = 0x12

.field static final MSG_TRAFFIC_CORRECTION_SAVE_PKG:I = 0x14

.field static final MSG_TRAFFIC_CORRECTION_STARTED:I = 0x10

.field static final MSG_TRAFFIC_CORRECTION_SUCCEED:I = 0x11

.field private static final MSG_UPDATE_TC_ENGINE:I = 0x31

.field static final MSG_UPDATE_TRAFFIC_STATS_DAILY:I = 0x15

.field static final MSG_UPDATE_TRAFFIC_STATUS_MONITOR:I = 0x1

.field static final MSG_UPLOAD_DATA_USAGE_DAILY:I = 0x16

.field static final MSG_WIFI_TO_MOBILE:I = 0x60

.field static final MSG_WIFI_TO_MOBILE_DELAY:I = 0x61

.field private static final NET_AUTO_CORRECTION:I = 0x1

.field private static final NOTIFACATION_RECEIVER_PACKAGE:Ljava/lang/String; = "com.android.phone"

.field private static final PURCHASE_SUCCESS_AUTO_CORRECTION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TrafficManageService"

.field private static final TELEPHONE_SIM_BILL_QUERY_ACTION:Ljava/lang/String; = "com.android.phone.intent.action.NA_SIM_BILL_QUERY"

.field private static final WIFI_TO_MOBILE_DELAY:I = 0x5

.field private static final WIFI_TO_MOBILE_RANGE:I = 0x4


# instance fields
.field private mActiveSlotNum:I

.field private mAnalyticsManager:Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;

.field private mAppMonitor:[Lcom/miui/networkassistant/service/tm/AppMonitor;

.field private mArrearsBillReceiver:Landroid/content/BroadcastReceiver;

.field private mAutoCorrectionReceiver:Landroid/content/BroadcastReceiver;

.field private final mBackgroundHandler:Landroid/os/Handler;

.field private mBackgroundHandlerCallback:Landroid/os/Handler$Callback;

.field private mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

.field private mContext:Landroid/content/Context;

.field private mCurrentUserIndex:I

.field private mDeviceInitObserver:Landroid/database/ContentObserver;

.field private mDeviceProvisionedObserver:Landroid/database/ContentObserver;

.field private mDeviceProvisionedObserver1:Landroid/database/ContentObserver;

.field mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mIsDeviceProvisioned:Z

.field private mLockScreenManager:Lcom/miui/networkassistant/service/tm/LockScreenManager;

.field private mLockScreenReceiver:Landroid/content/BroadcastReceiver;

.field private final mMobileDataEnableObserver:Landroid/database/ContentObserver;

.field private mMobileDataPolicy:I

.field private final mMobileDataPolicyObserver:Landroid/database/ContentObserver;

.field private mMonthReportTrafficManager:Lcom/miui/networkassistant/service/tm/DataUsageReportManager;

.field private mNetworkConnectivityReceiver:Landroid/content/BroadcastReceiver;

.field private mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPreByte:J

.field private mPurchaseSmsManager:Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;

.field private mPurchaseSuccessReceiver:Landroid/content/BroadcastReceiver;

.field private mQueryBillReceiver:Landroid/content/BroadcastReceiver;

.field private mRefreshDataUsageDailyReceiver:Landroid/content/BroadcastReceiver;

.field private mRetryTime:I

.field private mScNetworkStatusReceiver:Landroid/content/BroadcastReceiver;

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

.field private mSimStateDataSlotReceiver:Landroid/content/BroadcastReceiver;

.field private mSimStateReceiver:Landroid/content/BroadcastReceiver;

.field private mSmsReceiver:Landroid/content/BroadcastReceiver;

.field private mTelCallback:Lcom/miui/networkassistant/service/tm/TrafficManageService$TelCallback;

.field private mTetherStatsManager:Lcom/miui/networkassistant/service/tm/TetherStatsManager;

.field private mTrafficCornBinders:[Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;

.field private mTrafficManageBinder:Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;

.field private mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

.field private mTrafficStatsReceiver:Landroid/content/BroadcastReceiver;

.field private mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiApStateReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiNetworkStatusReceiver:Landroid/content/BroadcastReceiver;

.field private mXmanShareReceiver:Lcom/miui/networkassistant/xman/XmanShareReceiver;

.field private mZmanShareReceiver:Lcom/miui/networkassistant/zman/ZmanShareReceiver;

.field private wifiToMobileShowing:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mActiveSlotNum:I

    iput v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mRetryTime:I

    iput-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->wifiToMobileShowing:Z

    new-instance v1, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;-><init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    iput-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mBackgroundHandlerCallback:Landroid/os/Handler$Callback;

    new-instance v1, Lcom/miui/networkassistant/service/tm/TrafficManageService$2;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService$2;-><init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    iput-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/networkassistant/service/tm/TrafficManageService$3;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService$3;-><init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    iput-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mSmsReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/miui/networkassistant/service/tm/TrafficManageService$4;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService$4;-><init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    iput-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mPurchaseSuccessReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/miui/networkassistant/service/tm/TrafficManageService$5;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService$5;-><init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    iput-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mAutoCorrectionReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/miui/networkassistant/service/tm/TrafficManageService$6;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService$6;-><init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    iput-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mRefreshDataUsageDailyReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/miui/networkassistant/xman/XmanShareReceiver;

    invoke-direct {v1}, Lcom/miui/networkassistant/xman/XmanShareReceiver;-><init>()V

    iput-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mXmanShareReceiver:Lcom/miui/networkassistant/xman/XmanShareReceiver;

    new-instance v1, Lcom/miui/networkassistant/zman/ZmanShareReceiver;

    invoke-direct {v1}, Lcom/miui/networkassistant/zman/ZmanShareReceiver;-><init>()V

    iput-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mZmanShareReceiver:Lcom/miui/networkassistant/zman/ZmanShareReceiver;

    new-instance v1, Lcom/miui/networkassistant/service/tm/TrafficManageService$7;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService$7;-><init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    iput-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficStatsReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/miui/networkassistant/service/tm/TrafficManageService$8;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService$8;-><init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    iput-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/miui/networkassistant/service/tm/TrafficManageService$9;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService$9;-><init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    iput-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mSimStateDataSlotReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/miui/networkassistant/service/tm/TrafficManageService$10;

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/miui/networkassistant/service/tm/TrafficManageService$10;-><init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mDeviceInitObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/miui/networkassistant/service/tm/TrafficManageService$11;

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/miui/networkassistant/service/tm/TrafficManageService$11;-><init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/miui/networkassistant/service/tm/TrafficManageService$12;

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/miui/networkassistant/service/tm/TrafficManageService$12;-><init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mDeviceProvisionedObserver1:Landroid/database/ContentObserver;

    new-instance v1, Lcom/miui/networkassistant/service/tm/TrafficManageService$13;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService$13;-><init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    iput-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/miui/networkassistant/service/tm/TrafficManageService$14;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService$14;-><init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    iput-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mNetworkConnectivityReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/miui/networkassistant/service/tm/TrafficManageService$15;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService$15;-><init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    iput-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mArrearsBillReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/miui/networkassistant/service/tm/TrafficManageService$16;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService$16;-><init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    iput-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mQueryBillReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/miui/networkassistant/service/tm/TrafficManageService$17;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService$17;-><init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    iput-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mWifiNetworkStatusReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/miui/networkassistant/service/tm/TrafficManageService$18;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService$18;-><init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    iput-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/miui/networkassistant/service/tm/TrafficManageService$19;

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/miui/networkassistant/service/tm/TrafficManageService$19;-><init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mMobileDataEnableObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/miui/networkassistant/service/tm/TrafficManageService$20;

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/miui/networkassistant/service/tm/TrafficManageService$20;-><init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mMobileDataPolicyObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/miui/networkassistant/service/tm/TrafficManageService$21;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService$21;-><init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    iput-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mLockScreenReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/miui/networkassistant/service/tm/TrafficManageService$22;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService$22;-><init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    iput-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mScNetworkStatusReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/miui/networkassistant/service/tm/TrafficManageService$23;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService$23;-><init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    iput-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v1, Lcom/miui/networkassistant/service/tm/TrafficManageService$25;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService$25;-><init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    iput-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mWifiApStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "TrafficManageService"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mBackgroundHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v2, v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mBackgroundHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    new-array v2, v1, [Lcom/miui/networkassistant/service/tm/AppMonitor;

    iput-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mAppMonitor:[Lcom/miui/networkassistant/service/tm/AppMonitor;

    new-array v2, v1, [Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    iput-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    new-array v1, v1, [Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;

    iput-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficCornBinders:[Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;

    new-instance v2, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;-><init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;Lcom/miui/networkassistant/service/tm/TrafficManageService$1;)V

    aput-object v2, v1, v0

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficCornBinders:[Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;

    const/4 v1, 0x1

    new-instance v2, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;

    invoke-direct {v2, p0, v3}, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;-><init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;Lcom/miui/networkassistant/service/tm/TrafficManageService$1;)V

    aput-object v2, v0, v1

    :cond_0
    return-void
.end method

.method static synthetic access$1000(Lcom/miui/networkassistant/service/tm/TrafficManageService;IZZIZI)Z
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->excuteCorrection(IZZIZI)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mBackgroundHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mAnalyticsManager:Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Lcom/miui/networkassistant/service/tm/DataUsageReportManager;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mMonthReportTrafficManager:Lcom/miui/networkassistant/service/tm/DataUsageReportManager;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Lcom/miui/networkassistant/service/tm/LockScreenManager;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mLockScreenManager:Lcom/miui/networkassistant/service/tm/LockScreenManager;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->checkAllTrafficCorrectionEngineUpdate()V

    return-void
.end method

.method static synthetic access$1600(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Lcom/miui/networkassistant/service/tm/TetherStatsManager;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTetherStatsManager:Lcom/miui/networkassistant/service/tm/TetherStatsManager;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/miui/networkassistant/service/tm/TrafficManageService;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mPreByte:J

    return-wide v0
.end method

.method static synthetic access$1702(Lcom/miui/networkassistant/service/tm/TrafficManageService;J)J
    .locals 0

    iput-wide p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mPreByte:J

    return-wide p1
.end method

.method static synthetic access$1802(Lcom/miui/networkassistant/service/tm/TrafficManageService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->wifiToMobileShowing:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/miui/networkassistant/service/tm/TrafficManageService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->handleAutoCorrectionMsg(II)V

    return-void
.end method

.method static synthetic access$2002(Lcom/miui/networkassistant/service/tm/TrafficManageService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mIsDeviceProvisioned:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/miui/networkassistant/service/tm/TrafficManageService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->initSim(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Lcom/miui/networkassistant/config/CommonConfig;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mPurchaseSmsManager:Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->cancelNotificationWhenSimChanged()V

    return-void
.end method

.method static synthetic access$2600(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/miui/networkassistant/service/tm/TrafficManageService;)I
    .locals 0

    iget p0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mCurrentUserIndex:I

    return p0
.end method

.method static synthetic access$2702(Lcom/miui/networkassistant/service/tm/TrafficManageService;I)I
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mCurrentUserIndex:I

    return p1
.end method

.method static synthetic access$2800(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->unregisterMobileInitObserver()V

    return-void
.end method

.method static synthetic access$2900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->checkCachedTcSmsReport()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Lcom/miui/networkassistant/dual/SimCardHelper;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->postUpdateTrafficCorrectionEngine()V

    return-void
.end method

.method static synthetic access$3100(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->startTrafficCorrectionByWifiConnected()V

    return-void
.end method

.method static synthetic access$3200(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->postTrackUserDataDaily()V

    return-void
.end method

.method static synthetic access$3300(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->checkAutoCorrectionConfig()V

    return-void
.end method

.method static synthetic access$3400(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficManageBinder:Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->postWifiToMobile()V

    return-void
.end method

.method static synthetic access$3600(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->cancelWifiToMobile()V

    return-void
.end method

.method static synthetic access$3702(Lcom/miui/networkassistant/service/tm/TrafficManageService;I)I
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mMobileDataPolicy:I

    return p1
.end method

.method static synthetic access$3800(Lcom/miui/networkassistant/service/tm/TrafficManageService;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->updateNormalTotalPackageSetted(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$3902(Lcom/miui/networkassistant/service/tm/TrafficManageService;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mServiceState:Landroid/telephony/ServiceState;

    return-object p1
.end method

.method static synthetic access$400(Lcom/miui/networkassistant/service/tm/TrafficManageService;III)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->startAutoCorrectionChecked(III)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/AppMonitor;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mAppMonitor:[Lcom/miui/networkassistant/service/tm/AppMonitor;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficCornBinders:[Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->updateActiveSlotNum()V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/networkassistant/service/tm/TrafficManageService;)I
    .locals 0

    iget p0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mActiveSlotNum:I

    return p0
.end method

.method static synthetic access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    return-object p0
.end method

.method private cancelNotificationWhenSimChanged()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

    invoke-virtual {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->isSimInserted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelNormalTotalPackageNotSetted(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelSimLocationErrorNotify(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelTcSmsReceivedNotify(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelTcSmsTimeOutOrFailureNotify(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelAllLowPriorityNotify(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->cancelNotificationWhenSlotChanged()V

    :cond_0
    return-void
.end method

.method private cancelNotificationWhenSlotChanged()V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelDataUsageOverLimit(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelNormalDataUsageWarning(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelDailyLimitWarning(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelRoamingDailyLimitWarning(Landroid/content/Context;)V

    return-void
.end method

.method private cancelWifiToMobile()V
    .locals 4

    iget-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->wifiToMobileShowing:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mBackgroundHandler:Landroid/os/Handler;

    const/16 v1, 0x62

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mBackgroundHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private checkAllTrafficCorrectionEngineUpdate()V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->checkTrafficCorrectionEngineUpdate(ZZI)V

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    aget-object v0, v0, v2

    invoke-virtual {v0, v1, v2, v2}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->checkTrafficCorrectionEngineUpdate(ZZI)V

    :cond_0
    return-void
.end method

.method private checkAutoCorrectionConfig()V
    .locals 2

    const-string v0, "TrafficManageService"

    const-string v1, "checkAutoCorrectionConfig"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->updateAutoCorrectionConfig()V

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->updateAutoCorrectionConfig()V

    :cond_0
    return-void
.end method

.method private checkCachedTcSmsReport()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->reportSms()V

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->reportSms()V

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->reportSms()V

    :cond_1
    return-void
.end method

.method static checkTimeEffective(J)Z
    .locals 4

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v0

    cmp-long v2, p0, v0

    const/4 v3, 0x1

    if-ltz v2, :cond_1

    invoke-static {p0, p1, v0, v1, v3}, Lcom/miui/networkassistant/utils/DateUtil;->isLargerOffsetDay(JJI)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    return v3
.end method

.method private createDataUsageAutoCorrectionIntent()Landroid/app/PendingIntent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.miui.action.DATA_USAGE_AUTO_CORRECTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    const/high16 v2, 0x4000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private createRefreshDataUsageDailyIntent()Landroid/app/PendingIntent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.miui.action.REFRESH_DATA_USAGE_DAILY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    const/high16 v2, 0x4000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private excuteCorrection(IZZIZI)Z
    .locals 8

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_INTERNATIONAL_BUILD:Z

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    return v4

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    if-nez v0, :cond_1

    return v4

    :cond_1
    const/4 v0, 0x1

    move v5, v4

    :goto_0
    iget-object v6, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    array-length v7, v6

    if-ge v5, v7, :cond_3

    aget-object v6, v6, v5

    if-eqz v6, :cond_2

    iget-object v6, v6, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    invoke-interface {v6}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;->isFinished()Z

    move-result v6

    if-nez v6, :cond_2

    move v0, v4

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    and-int/lit8 v6, p4, -0x5

    invoke-static {p1, p6, p2}, Lcom/miui/networkassistant/utils/AnalyticsHelperNew;->trackCorrectionTrigger(IIZ)V

    if-nez v0, :cond_4

    const-string v0, "is_correcting"

    :goto_1
    invoke-static {p1, p6, p2, v0}, Lcom/miui/networkassistant/utils/AnalyticsHelperNew;->trackStopReasonCorrection(IIZLjava/lang/String;)V

    return v4

    :cond_4
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    array-length v5, v0

    if-le v5, p1, :cond_6

    if-ltz p1, :cond_6

    aget-object v0, v0, p1

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    move v1, p1

    move v2, p6

    move v3, p2

    move v4, p3

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->startCorrectionFlow(IIZZZI)Z

    move-result v0

    return v0

    :cond_6
    :goto_2
    const-string v0, "invalid_slot_number"

    goto :goto_1
.end method

.method private handleAutoCorrectionMsg(II)V
    .locals 4

    const/4 v0, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p2, :cond_5

    const/4 v3, 0x1

    if-eq p2, v3, :cond_1

    if-eq p2, v2, :cond_0

    goto :goto_4

    :cond_0
    invoke-direct {p0, p1, v3, v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->startAutoCorrectionChecked(III)Z

    goto :goto_4

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lp4/d;->h(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_4

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    array-length p2, p1

    if-ge v1, p2, :cond_8

    :try_start_0
    aget-object p1, p1, v1

    iget-object p1, p1, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->isSimInserted()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x6

    invoke-direct {p0, v1, v3, p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->startAutoCorrectionChecked(III)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_4

    goto :goto_4

    :catch_0
    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    iget-object p2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    array-length v3, p2

    if-ge v1, v3, :cond_8

    :try_start_1
    aget-object p2, p2, v1

    iget-object p2, p2, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {p2}, Lcom/miui/networkassistant/config/SimUserInfo;->isSimInserted()Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_3

    :cond_6
    invoke-direct {p0, p1, v0, v2}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->startAutoCorrectionChecked(III)Z

    move-result p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz p2, :cond_7

    goto :goto_4

    :catch_1
    :cond_7
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    :goto_4
    return-void
.end method

.method private initFloatNotificationEnable()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/CommonConfig;->isFloatNotificationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lrg/a;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/CommonConfig;->setFloatNotificationEnabled(Z)Z

    :cond_0
    return-void
.end method

.method private initLockScreenMonitor()V
    .locals 2

    new-instance v0, Lcom/miui/networkassistant/service/tm/LockScreenManager;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    invoke-direct {v0, p0, v1}, Lcom/miui/networkassistant/service/tm/LockScreenManager;-><init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;[Lcom/miui/networkassistant/service/tm/TrafficSimManager;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mLockScreenManager:Lcom/miui/networkassistant/service/tm/LockScreenManager;

    return-void
.end method

.method private initMobileDataPolicyObserver()V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_policy"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mMobileDataPolicy:I

    return-void
.end method

.method private initMonthReport()V
    .locals 4

    new-instance v0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mMonthReportTrafficManager:Lcom/miui/networkassistant/service/tm/DataUsageReportManager;

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mBackgroundHandler:Landroid/os/Handler;

    const/16 v1, 0x16

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private initNetworkBackgroundRestrict()V
    .locals 1

    new-instance v0, Lcom/miui/networkassistant/service/tm/TrafficManageService$24;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService$24;-><init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private initNetworkStatsConfig()V
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "netstats_uid_bucket_duration"

    const-wide/32 v2, 0x36ee80

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "netstats_uid_tag_bucket_duration"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    return-void
.end method

.method private initRefreshDataUsageDaily()V
    .locals 7

    :try_start_0
    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v2

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->createRefreshDataUsageDailyIntent()Landroid/app/PendingIntent;

    move-result-object v6

    const/4 v1, 0x1

    const-wide/32 v4, 0x5265c00

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const-string v0, "TrafficManageService"

    const-string v1, "mina refresh data usage setted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initReturnBillParam()V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->setIsReturnBill(Z)V

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->setIsReturnBill(Z)V

    :cond_1
    return-void
.end method

.method private initSim(I)V
    .locals 5

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

    invoke-virtual {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->updateSimState()Z

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "init Sim clear data: isGetSimSuccess = %s, launchFrom = %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TrafficManageService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0, p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->reportSimInitResult(ZI)V

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->retryInitSim()V

    return-void

    :cond_0
    invoke-direct {p0, p1, v3}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->initTrafficManager(IZ)V

    return-void
.end method

.method private initTrackAnalyticsManager()V
    .locals 3

    new-instance v0, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    invoke-direct {v0, v1, v2}, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;-><init>(Landroid/content/Context;[Lcom/miui/networkassistant/service/tm/TrafficSimManager;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mAnalyticsManager:Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;

    return-void
.end method

.method private initTrafficManager(IZ)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "init Sim init TrafficManager: launchFrom = %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TrafficManageService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    aget-object v1, v1, v3

    iget-object v1, v1, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    invoke-interface {v1}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;->forceStop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    invoke-interface {v1}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;->forceStop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

    invoke-virtual {v2}, Lcom/miui/networkassistant/dual/SimCardHelper;->getSim1Imsi()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getInstance(Lcom/miui/networkassistant/service/tm/TrafficManageService;Ljava/lang/String;)Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficCornBinders:[Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;

    aget-object v1, v1, v3

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    invoke-virtual {v1, v2}, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;->setTrafficCorrection(Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;)V

    sget-boolean v1, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->updateActiveSlotNum()V

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

    invoke-virtual {v2}, Lcom/miui/networkassistant/dual/SimCardHelper;->getSim2Imsi()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getInstance(Lcom/miui/networkassistant/service/tm/TrafficManageService;Ljava/lang/String;)Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v2

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficCornBinders:[Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    invoke-virtual {v1, v2}, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;->setTrafficCorrection(Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;)V

    :cond_0
    if-eqz p2, :cond_1

    return-void

    :cond_1
    sget-boolean p2, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p2, :cond_2

    return-void

    :cond_2
    iget-object p2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

    invoke-virtual {p2}, Lcom/miui/networkassistant/dual/SimCardHelper;->isSim1Inserted()Z

    move-result p2

    const/4 v1, 0x7

    if-eqz p2, :cond_3

    invoke-direct {p0, v3, v1, p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->startAutoCorrectionChecked(III)Z

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

    invoke-virtual {p2}, Lcom/miui/networkassistant/dual/SimCardHelper;->isSim2Inserted()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-direct {p0, v0, v1, p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->startAutoCorrectionChecked(III)Z

    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->checkAutoCorrectionConfig()V

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->initDataUsageAutoCorrection()V

    return-void
.end method

.method private postTrackUserDataDaily()V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mBackgroundHandler:Landroid/os/Handler;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mBackgroundHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private postUpdateTrafficCorrectionEngine()V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mBackgroundHandler:Landroid/os/Handler;

    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mBackgroundHandler:Landroid/os/Handler;

    const-wide/32 v2, 0x927c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private postWifiToMobile()V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mBackgroundHandler:Landroid/os/Handler;

    const/16 v1, 0x60

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mBackgroundHandler:Landroid/os/Handler;

    const/16 v2, 0x61

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "TrafficManageService"

    const-string v2, "wifi2mobile: postWifiToMobile"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mBackgroundHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private registerArrearsBillReceiver()V
    .locals 6

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.android.phone.intent.action.ARREARS_SIM_RESULT"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mArrearsBillReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "miui.permission.EXTRA_NETWORK"

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lx4/v;->n(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    return-void
.end method

.method private registerAutoCorrectionReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.miui.action.DATA_USAGE_AUTO_CORRECTION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mAutoCorrectionReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    invoke-static {p0, v1, v0, v2}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private registerDeviceProvisionedObserver()V
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private registerDeviceProvisionedObserver1()V
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "user_setup_complete"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mDeviceProvisionedObserver1:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private registerMobileDataEnableObserver()V
    .locals 6

    const-string v0, "android.app.MobileDataUtils"

    invoke-static {v0}, Lbh/d$a;->d(Ljava/lang/String;)Lbh/d$a;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "getInstance"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Lbh/d$a;->c(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lbh/d$a;->l()Lbh/d$a;

    move-result-object v0

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v1

    const-class v4, Landroid/database/ContentObserver;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v2, v1

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mMobileDataEnableObserver:Landroid/database/ContentObserver;

    aput-object v1, v2, v5

    const-string v1, "registerContentObserver"

    invoke-virtual {v0, v1, v3, v2}, Lbh/d$a;->b(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;

    return-void
.end method

.method private registerMobileDataPolicyObserver()V
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_policy"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mMobileDataPolicyObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private registerMobileInitObserver()V
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "clause_agreed"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mDeviceInitObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private registerNetworkConnectivityReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mNetworkConnectivityReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    invoke-static {p0, v1, v0, v2}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private registerPackageReceiver()V
    .locals 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lx4/z1;->k()Landroid/os/UserHandle;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {p0, v1, v2, v0, v3}, Lx4/v;->o(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;I)V

    return-void
.end method

.method private registerPhoneStateListener()V
    .locals 7

    const-string v0, "miui.telephony.TelephonyManager"

    invoke-static {v0}, Lbh/d$a;->d(Ljava/lang/String;)Lbh/d$a;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "getDefault"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Lbh/d$a;->c(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lbh/d$a;->l()Lbh/d$a;

    move-result-object v0

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v1

    const-class v5, Landroid/telephony/PhoneStateListener;

    const/4 v6, 0x1

    aput-object v5, v3, v6

    const/4 v5, 0x2

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentActiveSlotNum()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    aput-object v1, v2, v6

    const/16 v1, 0x101

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v5

    const-string v1, "listenForSlot"

    invoke-virtual {v0, v1, v3, v2}, Lbh/d$a;->b(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;

    return-void
.end method

.method private registerPurchaseSuccessReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "miui.intent.action.PURCHASE_SUCCESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mPurchaseSuccessReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    invoke-static {p0, v1, v0, v2}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private registerQueryBillReceiver()V
    .locals 6

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.android.phone.intent.action.SIM_BILL_QUERY"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mQueryBillReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "miui.permission.EXTRA_NETWORK"

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lx4/v;->n(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    const-string v0, "TrafficManageService"

    const-string v1, "registerQueryBillReceiver: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private registerRefreshDataUsageDailyReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.miui.action.REFRESH_DATA_USAGE_DAILY"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mRefreshDataUsageDailyReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    invoke-static {p0, v1, v0, v2}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private registerScNetworkStatusReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "action_update_sc_network_allow"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mScNetworkStatusReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x4

    invoke-static {p0, v1, v0, v2}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private registerScreenReceiver()V
    .locals 6

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mLockScreenReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mBackgroundHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    const/4 v5, 0x2

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lx4/v;->n(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    return-void
.end method

.method private registerSimDataSlotStateReceiver()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    new-instance v1, Lcom/miui/networkassistant/service/tm/TrafficManageService$TelCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/networkassistant/service/tm/TrafficManageService$TelCallback;-><init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;Lcom/miui/networkassistant/service/tm/TrafficManageService$1;)V

    iput-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTelCallback:Lcom/miui/networkassistant/service/tm/TrafficManageService$TelCallback;

    invoke-static {}, Lcom/miui/networkassistant/ui/thread/ThreadPool;->getPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTelCallback:Lcom/miui/networkassistant/service/tm/TrafficManageService$TelCallback;

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/util/d;->a(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "miui.intent.action.ACTION_DEFAULT_DATA_SLOT_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mSimStateDataSlotReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x2

    invoke-static {v1, v2, v0, v3}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :goto_0
    return-void
.end method

.method private registerSimStateReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    invoke-static {p0, v1, v0, v2}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private registerSmsReceiver()V
    .locals 6

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const v0, 0x7fffffff

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mSmsReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "android.permission.BROADCAST_SMS"

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lx4/v;->n(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    return-void
.end method

.method private registerTrafficStatsReceiver()V
    .locals 6

    new-instance v2, Landroid/content/IntentFilter;

    const-string v0, "com.android.server.action.NETWORK_STATS_UPDATED"

    invoke-direct {v2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficStatsReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mBackgroundHandler:Landroid/os/Handler;

    const-string v3, "android.permission.READ_NETWORK_USAGE_HISTORY"

    const/4 v5, 0x2

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lx4/v;->n(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    return-void
.end method

.method private registerUserSwitchReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_FOREGROUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_BACKGROUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    invoke-static {p0, v1, v0, v2}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private registerWifiApReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mWifiApStateReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    invoke-static {p0, v1, v0, v2}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private registerWifiNetworkStatusReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mWifiNetworkStatusReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    invoke-static {p0, v1, v0, v2}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private registerXmanReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.miui.securitycenter.intent.action.SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.miui.securitycenter.intent.action.XMAN.SECURITY_SHARE_SETTINGS_SHOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mXmanShareReceiver:Lcom/miui/networkassistant/xman/XmanShareReceiver;

    const/4 v2, 0x2

    invoke-static {p0, v1, v0, v2}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private registerZmanReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.miui.zman.intent.action.SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.miui.zman.intent.action.VIEW_SHOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.miui.zman.intent.action.VIEW_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mZmanShareReceiver:Lcom/miui/networkassistant/zman/ZmanShareReceiver;

    const/4 v2, 0x2

    invoke-static {p0, v1, v0, v2}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private reportSimInitResult(ZI)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "result_type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "launch_from"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "init_sim"

    invoke-static {p1, v0}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private retryInitSim()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mRetryTime:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "retryInitSim, retryTime:%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrafficManageService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mRetryTime:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mRetryTime:I

    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private startAutoCorrectionChecked(III)Z
    .locals 11

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getNowTimeMillis()J

    move-result-wide v2

    const/16 v4, 0x8

    int-to-long v4, v4

    const-wide/32 v7, 0x36ee80

    mul-long/2addr v4, v7

    add-long/2addr v4, v0

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    if-ltz v4, :cond_4

    const/16 v4, 0x16

    int-to-long v9, v4

    mul-long/2addr v9, v7

    add-long/2addr v9, v0

    cmp-long v0, v0, v9

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    if-ne p3, v0, :cond_1

    :try_start_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    invoke-static {v2, v3}, Lcom/miui/networkassistant/utils/DateUtil;->getHourWithMillisTime(J)I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v7

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v7

    const/16 v4, 0x11

    int-to-double v9, v4

    sub-double/2addr v2, v9

    const/16 v4, 0xe

    int-to-double v9, v4

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    div-double/2addr v2, v7

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    return v5

    :catch_0
    :cond_1
    const/4 v7, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0, v7}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageAutoCorrectedTime(Ljava/lang/Integer;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->checkTimeEffective(J)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v0, :cond_2

    return v5

    :catch_1
    :cond_2
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v4, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->excuteCorrection(IZZIZI)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v7}, Lcom/miui/networkassistant/config/SimUserInfo;->saveDataUsageAutoCorrectedTime(JLjava/lang/Integer;)Z

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v5
.end method

.method private startTrafficCorrectionByWifiConnected()V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private unRegisterArrearsBillReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mArrearsBillReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unRegisterAutoCorrectionReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mAutoCorrectionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unRegisterDeviceProvisionedObserver()V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private unRegisterDeviceProvisionedObserver1()V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mDeviceProvisionedObserver1:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private unRegisterMobileDataEnableObserver()V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mMobileDataEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private unRegisterMobileDataPolicyObserver()V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mMobileDataPolicyObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private unRegisterNetworkConnectivityReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mNetworkConnectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unRegisterPackageReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unRegisterPhoneStateListener()V
    .locals 3

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method private unRegisterPurchaseSuccessReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mPurchaseSuccessReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unRegisterQueryBillReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mQueryBillReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unRegisterRefreshDataUsageDailyReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mRefreshDataUsageDailyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unRegisterScNetworkStatusReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mScNetworkStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unRegisterScreenReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mLockScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unRegisterSimDataSlotStateReceiver()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTelCallback:Lcom/miui/networkassistant/service/tm/TrafficManageService$TelCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTelCallback:Lcom/miui/networkassistant/service/tm/TrafficManageService$TelCallback;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/e;->a(Landroid/telephony/TelephonyManager;Landroid/telephony/TelephonyCallback;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mSimStateDataSlotReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private unRegisterSimStateReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unRegisterSmsReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mSmsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unRegisterTrafficStatsReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficStatsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unRegisterUserSwitchReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unRegisterWifiApReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mWifiApStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unRegisterWifiNetworkStatusReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mWifiNetworkStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unregisterMobileInitObserver()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mDeviceInitObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mDeviceInitObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TrafficManageService"

    const-string v2, "Failed to unregister mobile init observer."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private updateActiveSlotNum()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

    invoke-virtual {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->getCurrentMobileSlotNum()I

    move-result v0

    iget v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mActiveSlotNum:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mActiveSlotNum:I

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->cancelNotificationWhenSlotChanged()V

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    iget v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mActiveSlotNum:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getImsi()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;->updateSim(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private updateNormalTotalPackageSetted(Landroid/content/Intent;)V
    .locals 4

    iget-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mIsDeviceProvisioned:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    cmp-long p1, v0, v2

    const/4 v0, 0x0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    iget v2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mActiveSlotNum:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->checkNormalTotalPackageSetted()V

    iput-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mIsDeviceProvisioned:Z

    :cond_1
    return-void
.end method


# virtual methods
.method broadCastDataUsageUpdated()V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/utils/TrafficUpdateUtil;->broadCastTrafficUpdated(Landroid/content/Context;)V

    return-void
.end method

.method cancelDataUsageAutoCorrection()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isDataUsageAutoCorrectionEffective()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isDataUsageAutoCorrectionEffective()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->createDataUsageAutoCorrectionIntent()Landroid/app/PendingIntent;

    move-result-object v0

    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const-string v0, "TrafficManageService"

    const-string v1, "mina auto correction canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public getMobileDataPolicy()I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mMobileDataPolicy:I

    return v0
.end method

.method initDataUsageAutoCorrection()V
    .locals 11

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lef/x;->z()Z

    move-result v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "allow_network"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->cancelDataUsageAutoCorrection()V

    const-string v0, "correction_alarm_task"

    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isDataUsageAutoCorrectionOn()Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isDataUsageAutoCorrectionOn()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x1b77400

    add-long/2addr v0, v2

    const-wide v2, 0x4188085800000000L    # 5.04E7

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v4, v2

    double-to-long v2, v4

    add-long v6, v0, v2

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->createDataUsageAutoCorrectionIntent()Landroid/app/PendingIntent;

    move-result-object v10

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/app/AlarmManager;

    const/4 v5, 0x1

    const-wide/32 v8, 0x5265c00

    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    const-string v0, "TrafficManageService"

    const-string v1, "auto correction setted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method isDeviceProvisioned()Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public isScreenOn()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mLockScreenManager:Lcom/miui/networkassistant/service/tm/LockScreenManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/LockScreenManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficManageBinder:Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;

    invoke-virtual {p1}, Lcom/miui/networkassistant/service/ITrafficManageBinder$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 5

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mContext:Landroid/content/Context;

    const-string v0, "TrafficManageService"

    const-string v1, "TrafficManagerService onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->initGroupMap(Landroid/content/Context;)V

    invoke-static {}, Lcom/miui/networkassistant/ui/thread/ThreadPool;->startup()V

    invoke-static {}, Lx4/z1;->e()I

    move-result v1

    invoke-static {v1}, Lx4/z1;->i(I)I

    move-result v1

    iput v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mCurrentUserIndex:I

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mAppMonitor:[Lcom/miui/networkassistant/service/tm/AppMonitor;

    new-instance v2, Lcom/miui/networkassistant/service/tm/AppMonitor;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/miui/networkassistant/service/tm/AppMonitor;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mAppMonitor:[Lcom/miui/networkassistant/service/tm/AppMonitor;

    new-instance v2, Lcom/miui/networkassistant/service/tm/AppMonitor;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/miui/networkassistant/service/tm/AppMonitor;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "clause_agreed"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mAppMonitor:[Lcom/miui/networkassistant/service/tm/AppMonitor;

    iget v2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mCurrentUserIndex:I

    aget-object v1, v1, v2

    invoke-static {}, Lx4/z1;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/networkassistant/service/tm/AppMonitor;->initData(I)V

    const-string v1, "AppMonitor Init"

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->registerMobileInitObserver()V

    const-string v1, "AppMonitor will be initiated by Observer!"

    :goto_0
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/miui/networkassistant/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-static {p0}, Lcom/miui/networkassistant/dual/SimCardHelper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/dual/SimCardHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

    new-instance v0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;-><init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;Lcom/miui/networkassistant/service/tm/TrafficManageService$1;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficManageBinder:Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;

    new-instance v0, Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mPurchaseSmsManager:Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;

    new-instance v0, Lcom/miui/networkassistant/service/tm/TetherStatsManager;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/tm/TetherStatsManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTetherStatsManager:Lcom/miui/networkassistant/service/tm/TetherStatsManager;

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/TetherStatsManager;->initTetheringStatus()V

    invoke-direct {p0, v3, v4}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->initTrafficManager(IZ)V

    invoke-direct {p0, v3}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->initSim(I)V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->initNetworkStatsConfig()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->initMobileDataPolicyObserver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->initLockScreenMonitor()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->initMonthReport()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->initFloatNotificationEnable()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->initTrackAnalyticsManager()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->initRefreshDataUsageDaily()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->initNetworkBackgroundRestrict()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->initReturnBillParam()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->registerXmanReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->registerZmanReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->registerTrafficStatsReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->registerSimStateReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->registerSimDataSlotStateReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->registerAutoCorrectionReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->registerDeviceProvisionedObserver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->registerNetworkConnectivityReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->registerMobileDataEnableObserver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->registerMobileDataPolicyObserver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->registerScreenReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->registerRefreshDataUsageDailyReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->registerPackageReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->registerSmsReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->registerUserSwitchReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->registerScNetworkStatusReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->registerPurchaseSuccessReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->registerPhoneStateListener()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->registerWifiApReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->registerWifiNetworkStatusReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->registerDeviceProvisionedObserver1()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->registerArrearsBillReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->registerQueryBillReceiver()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->unRegisterXmanReceiver()V

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->unRegisterZmanReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->unRegisterTrafficStatsReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->unRegisterSimStateReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->unRegisterSimDataSlotStateReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->unRegisterAutoCorrectionReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->unregisterMobileInitObserver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->unRegisterDeviceProvisionedObserver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->unRegisterNetworkConnectivityReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->unRegisterMobileDataEnableObserver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->unRegisterMobileDataPolicyObserver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->unRegisterScreenReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->unRegisterRefreshDataUsageDailyReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->unRegisterPackageReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->unRegisterSmsReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->unRegisterUserSwitchReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->unRegisterScNetworkStatusReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->unRegisterPurchaseSuccessReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->unRegisterPhoneStateListener()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->unRegisterWifiApReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->unRegisterWifiNetworkStatusReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->unRegisterDeviceProvisionedObserver1()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->unRegisterArrearsBillReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->unRegisterQueryBillReceiver()V

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

    const-string v1, "lastEfficientBill"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p2, "correctionSuccess"

    const/4 p3, 0x0

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "isAutoCorrectionEnable"

    iget-object p3, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    aget-object p1, p3, p1

    iget-object p1, p1, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->isDataUsageAutoCorrectionOn()Z

    move-result p1

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    const-string p2, "miui.permission.EXTRA_NETWORK"

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const-string p1, "TrafficManageService"

    const-string p2, "returnLastBillToTelephone: "

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
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

.method unRegisterXmanReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mXmanShareReceiver:Lcom/miui/networkassistant/xman/XmanShareReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method unRegisterZmanReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mZmanShareReceiver:Lcom/miui/networkassistant/zman/ZmanShareReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
