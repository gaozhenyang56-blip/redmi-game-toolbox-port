.class public Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceCallback;,
        Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnPackageMonitor;,
        Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceBinder;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String;

.field private static final CONTENT_URI_GET_SETTINGS_YUNYOU:Landroid/net/Uri;

.field private static final MIUI_VPN_INFOS:Ljava/lang/String; = "miui_vpn_infos"

.field private static final MIUI_VPN_NAME_XUNYOU:Ljava/lang/String; = "xunyou"

.field private static final MIUI_VPN_TYPE_UNKNOWN:I = 0x0

.field private static final MIUI_VPN_TYPE_XUNYOU:I = 0x4

.field private static final MSG_RESTART_SERVICE:I = 0x106

.field private static final MSG_STOP_VPN:I = 0x107

.field protected static TAG:Ljava/lang/String; = "MiuiVpnManageService"

.field private static final VPN_PROC_NAME:Ljava/lang/String;

.field private static final VPN_STATE_CONNECTED:I = 0x1

.field private static final VPN_STATE_DISCONNECTED:I = 0x3

.field private static final VPN_STATE_NONE:I = 0x0

.field private static final VPN_STATE_PAUSE:I = 0x2


# instance fields
.field private mAppUid:I

.field private final mBackgroundHandler:Landroid/os/Handler;

.field private mBackgroundHandlerCallback:Landroid/os/Handler$Callback;

.field private mCallbackList:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mCloudDataObserver:Landroid/database/ContentObserver;

.field private mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

.field private mContext:Landroid/content/Context;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mMiuiVpnDetailInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$MiuiVpnDetailInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMiuiVpnInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/miui/networkassistant/vpn/miui/MiuiVpnInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMiuiVpnManageServiceBinder:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceBinder;

.field private mMiuiVpnManageServiceCallback:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceCallback;

.field private mMiuiVpnSdkService:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

.field private mMiuiVpnSdkServiceConnection:Landroid/content/ServiceConnection;

.field private mNetworkConnectivityReceiver:Landroid/content/BroadcastReceiver;

.field private mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mPendingDestAppInfo:Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;

.field private mProcessObserver:Landroid/app/IProcessObserver;

.field private mScNetworkStatusReceiver:Landroid/content/BroadcastReceiver;

.field private mSuportVpn:Z

.field private mVpnInfoLock:Ljava/lang/Object;

.field private mVpnPkgUid:I

.field private mVpnProcPid:I

.field private mVpnSdkServiceLocker:Ljava/lang/Object;

.field private mVpnState:I

.field private mVpnType:I

.field private mWatchPackages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lcom/miui/common/c;->e:Ljava/lang/String;

    sput-object v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->VPN_PROC_NAME:Ljava/lang/String;

    sput-object v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->AUTHORITY:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/settings/xunyou"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->CONTENT_URI_GET_SETTINGS_YUNYOU:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnType:I

    iput v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnState:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mAppUid:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mWatchPackages:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnInfos:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnDetailInfos:Ljava/util/List;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnInfoLock:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnSdkServiceLocker:Ljava/lang/Object;

    iput v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnProcPid:I

    iput v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnPkgUid:I

    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mCallbackList:Landroid/os/RemoteCallbackList;

    new-instance v1, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$1;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$1;-><init>(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)V

    iput-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mNetworkConnectivityReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$2;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$2;-><init>(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)V

    iput-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mScNetworkStatusReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$3;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$3;-><init>(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mCloudDataObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$5;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$5;-><init>(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)V

    iput-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mProcessObserver:Landroid/app/IProcessObserver;

    new-instance v1, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$7;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$7;-><init>(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)V

    iput-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mBackgroundHandlerCallback:Landroid/os/Handler$Callback;

    new-instance v1, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnPackageMonitor;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnPackageMonitor;-><init>(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$1;)V

    iput-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    new-instance v1, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$10;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$10;-><init>(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)V

    iput-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnSdkServiceConnection:Landroid/content/ServiceConnection;

    new-instance v1, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceCallback;

    invoke-direct {v1, p0, v2}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceCallback;-><init>(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$1;)V

    iput-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnManageServiceCallback:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceCallback;

    new-instance v1, Landroid/os/HandlerThread;

    sget-object v2, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mBackgroundHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v2, v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mBackgroundHandler:Landroid/os/Handler;

    sget-boolean v1, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_L_OR_LATER:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mSuportVpn:Z

    return-void
.end method

.method static synthetic access$100(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Lcom/miui/networkassistant/config/CommonConfig;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->init(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->connectVpn(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->getSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->getSettingEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->setSettingEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->getCoupons()V

    return-void
.end method

.method static synthetic access$1700(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mBackgroundHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->detectTimeDelay(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->setDSDASwitch(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->forceUpdateCloudData()V

    return-void
.end method

.method static synthetic access$2000(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->getSetting(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2100(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)I
    .locals 0

    iget p0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnType:I

    return p0
.end method

.method static synthetic access$2200(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)I
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->disconnectVpn()I

    move-result p0

    return p0
.end method

.method static synthetic access$2300(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;I)Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$MiuiVpnDetailInfo;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->getMiuiVpnDetailInfo(I)Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$MiuiVpnDetailInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2400(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->connectVpn(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$2600(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mWatchPackages:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)I
    .locals 0

    iget p0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnState:I

    return p0
.end method

.method static synthetic access$2800(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->onVpnStateChanged(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)I
    .locals 0

    iget p0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnProcPid:I

    return p0
.end method

.method static synthetic access$2902(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;I)I
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnProcPid:I

    return p1
.end method

.method static synthetic access$300(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->updateMiuiVpnInfos(Z)V

    return-void
.end method

.method static synthetic access$3000(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)I
    .locals 0

    iget p0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnPkgUid:I

    return p0
.end method

.method static synthetic access$3100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->VPN_PROC_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mPendingDestAppInfo:Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;

    return-object p0
.end method

.method static synthetic access$3202(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;)Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mPendingDestAppInfo:Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->onWatchPackageDied(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->restartService()V

    return-void
.end method

.method static synthetic access$3600(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnInfoLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnDetailInfos:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnSdkServiceLocker:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnSdkService:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    return-object p0
.end method

.method static synthetic access$3902(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;)Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnSdkService:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    return-object p1
.end method

.method static synthetic access$400(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->getVpnEnabled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$4000(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnInfos:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->parseMiuiVpnInfos(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->init(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$4300(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceCallback;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnManageServiceCallback:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceCallback;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)I
    .locals 0

    iget p0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mAppUid:I

    return p0
.end method

.method static synthetic access$4500(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->unbindVpnSdkService()V

    return-void
.end method

.method static synthetic access$4700(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;ILjava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->onQueryCouponsResult(ILjava/util/List;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->onTimeDelay(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->setVpnEnabled(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->getSupportVpn()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->getSupportApps(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageServiceCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->registerCallback(Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageServiceCallback;)V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageServiceCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->unregisterCallback(Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageServiceCallback;)V

    return-void
.end method

.method private bindVpnSdkService()V
    .locals 5

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils;->shieldVpnService(Landroid/content/Context;)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils;->isVpnServiceEnable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string v1, "bindVpnSdkService: vpnservice is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mSuportVpn:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnSdkServiceLocker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnSdkService:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string v2, "Vpn sdk service already bound"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string v1, "bindVpnSdkService running"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.vpnsdkmanager.SDK_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/miui/common/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnSdkServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-static {}, Lx4/z1;->A()Landroid/os/UserHandle;

    move-result-object v4

    invoke-static {v1, v0, v2, v3, v4}, Lx4/v;->b(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private checkNetworkPolicy(I)Z
    .locals 3

    invoke-static {}, Lcom/miui/networkassistant/utils/PrivacyDeclareAndAllowNetworkUtil;->isAllowNetwork()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-object p1, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string v1, "checkNetworkPolicy. SecurityCenter is not allow connect network"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    sget-object p1, Lcom/miui/common/c;->e:Ljava/lang/String;

    invoke-static {p1}, Lmiui/securitycenter/NetworkUtils;->vpnPrepareAndAuthorize(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/miui/networkassistant/utils/PackageUtil;->getUidByPackageName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnPkgUid:I

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/networkassistant/firewall/BackgroundPolicyService;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/firewall/BackgroundPolicyService;

    move-result-object v1

    iget v2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnPkgUid:I

    invoke-virtual {v1, p1, v2}, Lcom/miui/networkassistant/firewall/BackgroundPolicyService;->isAppRestrictBackground(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnPkgUid:I

    invoke-virtual {v1, v2, v0}, Lcom/miui/networkassistant/firewall/BackgroundPolicyService;->setAppRestrictBackground(IZ)V

    :cond_1
    iget-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lmiui/provider/ExtraNetwork;->isMobileRestrict(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lmiui/provider/ExtraNetwork;->setMobileRestrict(Landroid/content/Context;Ljava/lang/String;Z)Z

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private connectVpn(I)I
    .locals 5

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mBackgroundHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x107

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    sget-object v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectVpn. uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput p1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mAppUid:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnState:I

    iget-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnSdkServiceLocker:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnSdkService:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    if-nez v2, :cond_1

    sget-object p1, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string v2, "connectVpn. sdkService is null. please call init first."

    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    iget v3, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnType:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v2, p1}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->q2(I)I

    move-result v0

    sget-object p1, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parpareApp. ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0

    :cond_3
    :goto_0
    :try_start_2
    iget-object p1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnSdkService:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    invoke-interface {p1}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->M4()I

    move-result v0

    sget-object p1, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectVpn. ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_3
    sget-object v2, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string v3, "connectVpn"

    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    monitor-exit v1

    return v0

    :goto_2
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method private connectVpn(Ljava/lang/String;)I
    .locals 8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnType:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    sget-object p1, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string v0, "connectVpn: vpnSdkService is null. please call init first."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-direct {p0, v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->getMiuiVpnDetailInfo(I)Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$MiuiVpnDetailInfo;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lx4/f1;->n(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-nez v2, :cond_3

    sget-object v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectVpn. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not installed."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$MiuiVpnDetailInfo;->addPackage(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mWatchPackages:Ljava/util/Map;

    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mWatchPackages:Ljava/util/Map;

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7, v7}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;-><init>(ILjava/lang/String;ZI)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p1, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->connectVpn(I)I

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return p1

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string v2, "connectVpn. An exception occurred!"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method private convertVpnNameToType(Ljava/lang/String;)I
    .locals 1

    const-string v0, "xunyou"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private detectTimeDelay(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnSdkService:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->detectTimeDelay(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p2, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string v0, "detectTimeDelay: An exception occurred!"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string p2, "detectTimeDelay: vpnSdkService is null!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private disconnectVpn()I
    .locals 3

    sget-object v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnectVpn. mVpnType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    iput v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnState:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnType:I

    invoke-direct {p0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->unbindVpnSdkService()V

    return v0
.end method

.method private forceUpdateCloudData()V
    .locals 4

    invoke-static {}, Lef/x;->z()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lp4/d;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/miui/networkassistant/webapi/WebApiAccessHelper;->updateMiuiVpnInfos()Lcom/miui/networkassistant/webapi/CloudModuleResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/webapi/CloudModuleResult;->getContentJson()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forceUpdateCloudData:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v1, v0}, Lcom/miui/networkassistant/config/CommonConfig;->setMiuiVpnInfos(Ljava/lang/String;)Z

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->parseMiuiVpnInfos(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private getCoupons()V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnSdkService:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->getCoupons()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string v2, "getCoupons: An exception occurred!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string v1, "getCoupons: vpnSdkService is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private getMiuiVpnDetailInfo(I)Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$MiuiVpnDetailInfo;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnInfoLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnDetailInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnDetailInfos:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$MiuiVpnDetailInfo;

    invoke-virtual {v3}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$MiuiVpnDetailInfo;->getType()I

    move-result v4

    if-ne v4, p1, :cond_1

    move-object v0, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_3

    sget-object v1, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported VPN. type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private getSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->getSetting(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getSetting(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnSdkService:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    if-eqz v0, :cond_1

    :try_start_0
    sget-object v0, Lcom/miui/common/c;->e:Ljava/lang/String;

    invoke-static {v0}, Lw8/k;->u(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnSdkService:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    invoke-interface {v0, p1, p2, p3}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->getSettingWithChannel(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p3, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnSdkService:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    invoke-interface {p3, p1, p2}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->getSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    sget-object p3, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string v0, "getSetting: An exception occurred!"

    invoke-static {p3, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string p3, "getSetting: vpnSdkService is null!"

    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p2
.end method

.method private getSettingEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->convertVpnNameToType(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->getMiuiVpnDetailInfo(I)Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$MiuiVpnDetailInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->CONTENT_URI_GET_SETTINGS_YUNYOU:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_2

    sget-object p1, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string p2, "getSettingEx return null!!"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p3

    :cond_2
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2

    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p3

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw p2
.end method

.method private getSupportApps(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->convertVpnNameToType(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnInfoLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnDetailInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnDetailInfos:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$MiuiVpnDetailInfo;

    invoke-virtual {v3}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$MiuiVpnDetailInfo;->getType()I

    move-result v4

    if-ne v4, p1, :cond_1

    invoke-virtual {v3}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$MiuiVpnDetailInfo;->getPackages()Ljava/util/List;

    move-result-object p1

    monitor-exit v1

    return-object p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private getSupportVpn()Ljava/lang/String;
    .locals 5

    const-string v0, ""

    iget-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnInfoLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnInfos:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_0

    const-string v0, ""

    monitor-exit v1

    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnInfos:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/networkassistant/vpn/miui/MiuiVpnInfo;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnInfo;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getVpnEnabled(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/config/CommonConfig;->getVpnState(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private init(I)I
    .locals 4

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->checkNetworkPolicy(I)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->getMiuiVpnDetailInfo(I)Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$MiuiVpnDetailInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iput p1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnType:I

    iget-object p1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnSdkServiceLocker:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnSdkService:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    :try_start_1
    invoke-virtual {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$MiuiVpnDetailInfo;->getPackages()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnSdkService:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    iget v2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnType:I

    invoke-interface {v1, v2, v0}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->b2(ILjava/util/List;)I

    move-result v0

    sget-object v1, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareVpn. ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p1

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string v2, "init: An exception occurred!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->bindVpnSdkService()V

    :goto_0
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private init(Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->convertVpnNameToType(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->init(I)I

    move-result p1

    return p1
.end method

.method private onQueryCouponsResult(ILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mCallbackList:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    :try_start_1
    iget-object v2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageServiceCallback;

    invoke-interface {v2, p1, p2}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageServiceCallback;->onQueryCouponsResult(ILjava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    sget-object v3, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string v4, "onQueryCouponsResult. an exception occurred!"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private onTimeDelay(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mCallbackList:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    :try_start_1
    iget-object v2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageServiceCallback;

    invoke-interface {v2, p1}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageServiceCallback;->onTimeDelay(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    sget-object v3, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string v4, "onQueryCouponsResult. an exception occurred!"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private onVpnStateChanged(IILjava/lang/String;)V
    .locals 5

    iget v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnType:I

    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_0

    iput p2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnState:I

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mCallbackList:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    sget-object v2, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onVpnStateChanged dispatch, total : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-lez v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    :try_start_1
    iget-object v2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageServiceCallback;

    invoke-interface {v2, p1, p2, p3}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageServiceCallback;->onVpnStateChanged(IILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    sget-object v3, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string v4, "onVpnStateChanged. an exception occurred!"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private onWatchPackageDied(ILjava/lang/String;)V
    .locals 0

    iget p2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnType:I

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance p2, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$6;

    invoke-direct {p2, p0, p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$6;-><init>(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;I)V

    invoke-static {p2}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private parseMiuiVpnInfos(Ljava/lang/String;)V
    .locals 2

    const-string v0, "version"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    :cond_2
    invoke-direct {p0, v1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->parseMiuiVpnInfos(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    invoke-static {}, Lcom/miui/networkassistant/utils/DeviceUtil;->getMiuiVersionType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_2

    return-void

    :catch_0
    move-exception p1

    sget-object v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string v1, "parseMiuiVpnInfos"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_0
    return-void
.end method

.method private parseMiuiVpnInfos(Lorg/json/JSONObject;)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    :try_start_0
    const-string v2, "miuiVpnInfos"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-string v2, "miuiVpnInfos"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_10

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    if-nez v7, :cond_4

    :cond_2
    :goto_1
    move-object/from16 v21, v0

    move/from16 v17, v6

    :cond_3
    const/4 v13, 0x0

    goto/16 :goto_8

    :cond_4
    const-string v8, "id"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "name"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    goto :goto_1

    :cond_5
    const-string v8, "id"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, "name"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/4 v9, 0x4

    if-eq v8, v9, :cond_6

    goto :goto_1

    :cond_6
    const-string v9, "xunyou"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    goto :goto_1

    :cond_7
    const-string v9, "describe"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v9, "detailInfoUrl"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v9, "operator"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v16

    const-string v9, "supportPkgs"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_8

    goto :goto_1

    :cond_8
    const-string v9, "minAndroidSdk"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    const-string v9, "minAndroidSdk"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    move/from16 v17, v9

    goto :goto_2

    :cond_9
    const/16 v17, 0x0

    :goto_2
    const-string v9, "purchaseNotificationTitle"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_a

    const-string v9, "purchaseNotificationTitle"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v18, v9

    goto :goto_3

    :cond_a
    move-object/from16 v18, v10

    :goto_3
    const-string v9, "purchaseNotificationSummary"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    const-string v9, "purchaseNotificationSummary"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v19, v9

    goto :goto_4

    :cond_b
    move-object/from16 v19, v10

    :goto_4
    const-string v9, "autoStart"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    const-string v9, "autoStart"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    goto :goto_5

    :cond_c
    const/4 v7, 0x1

    :goto_5
    new-instance v11, Lcom/miui/networkassistant/vpn/miui/MiuiVpnInfo;

    const/16 v20, 0x0

    move-object v9, v11

    move v10, v8

    move-object v5, v11

    move-object v11, v15

    move-object/from16 v21, v0

    move-object v0, v14

    move/from16 v14, v20

    invoke-direct/range {v9 .. v14}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v9, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parseMiuiVpnInfos. id="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " name="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, ","

    invoke-static {v0, v9}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v15, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$MiuiVpnDetailInfo;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    move-object v9, v15

    move v10, v8

    move/from16 v11, v16

    move/from16 v13, v17

    move v14, v7

    move/from16 v17, v6

    move-object v6, v15

    move-object/from16 v15, v18

    move-object/from16 v16, v19

    invoke-direct/range {v9 .. v16}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$MiuiVpnDetailInfo;-><init>(IILjava/util/List;IZLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v3, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v7, :cond_3

    iget-object v5, v1, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "second_user_id"

    const/16 v7, -0x2710

    invoke-static {v5, v6, v7}, Lah/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iget-object v6, v1, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "xspace_enabled"

    const/4 v9, 0x0

    invoke-static {v6, v8, v9}, Lah/c;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v6

    const/4 v9, 0x0

    :goto_6
    array-length v8, v0

    if-ge v9, v8, :cond_3

    aget-object v8, v0, v9

    iget-object v10, v1, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mContext:Landroid/content/Context;

    invoke-static {v10, v8}, Lx4/f1;->n(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v10

    if-eqz v10, :cond_d

    iget-object v11, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-instance v12, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;

    iget-object v13, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v10, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v14, 0x0

    invoke-direct {v12, v13, v10, v14, v14}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;-><init>(ILjava/lang/String;ZI)V

    invoke-interface {v2, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    if-eq v5, v7, :cond_e

    const/4 v10, 0x0

    invoke-static {v8, v10, v5}, Ltg/a;->d(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v11

    if-eqz v11, :cond_e

    iget-object v10, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-instance v12, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;

    iget-object v13, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v11, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v14, 0x0

    invoke-direct {v12, v13, v11, v14, v14}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;-><init>(ILjava/lang/String;ZI)V

    invoke-interface {v2, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    if-eqz v6, :cond_f

    const/16 v10, 0x3e7

    const/4 v11, 0x0

    invoke-static {v8, v11, v10}, Ltg/a;->d(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v8

    if-eqz v8, :cond_f

    iget-object v10, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-instance v11, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;

    iget-object v12, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-direct {v11, v12, v8, v13, v13}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;-><init>(ILjava/lang/String;ZI)V

    invoke-interface {v2, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_f
    const/4 v13, 0x0

    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :goto_8
    add-int/lit8 v6, v17, 0x1

    move-object/from16 v0, v21

    goto/16 :goto_0

    :cond_10
    iget-object v5, v1, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnInfoLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, v1, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnInfos:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v0, v1, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnDetailInfos:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v3, v1, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mWatchPackages:Ljava/util/Map;

    monitor-enter v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v0, v1, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mWatchPackages:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    monitor-exit v3

    goto :goto_9

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string v3, "parseMiuiVpnInfos"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_9
    return-void
.end method

.method private registerCallback(Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageServiceCallback;)V
    .locals 2

    sget-object v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string v1, "registerCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mCallbackList:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private registerCloudDataObserver()V
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/miui/support/provider/MiuiSettingsCompat$SettingsCloudData;->d()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mCloudDataObserver:Landroid/database/ContentObserver;

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

    iget-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mNetworkConnectivityReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x4

    invoke-static {p0, v1, v0, v2}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private registerProcessObserver()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-static {v0}, Lcom/miui/networkassistant/vpn/miui/ActivityManagerCompat;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    return-void
.end method

.method private registerScNetworkStatusReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "action_update_sc_network_allow"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mScNetworkStatusReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x4

    invoke-static {p0, v1, v0, v2}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private restartService()V
    .locals 2

    sget-object v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string v1, "restartService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$9;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$9;-><init>(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setDSDASwitch(Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnSdkService:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->setDSDASwitch(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string v1, "setDSDASwitch: An exception occurred!"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string v0, "setDSDASwitch: vpnSdkService is null!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setSetting(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnSdkService:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    sget-object p2, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string v0, "setSetting: An exception occurred!"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string p2, "setSetting: vpnSdkService is null!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private setSettingEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->convertVpnNameToType(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->getMiuiVpnDetailInfo(I)Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$MiuiVpnDetailInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    return v1

    :cond_1
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    sget-object p3, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->CONTENT_URI_GET_SETTINGS_YUNYOU:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-virtual {p2, p3, p1, v0, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private setVpnEnabled(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    if-eqz p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v0, p1, p2, v1}, Lcom/miui/networkassistant/config/CommonConfig;->setVpnState(Ljava/lang/String;Ljava/lang/String;I)Z

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->convertVpnNameToType(Ljava/lang/String;)I

    move-result p1

    new-instance p2, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$4;

    invoke-direct {p2, p0, p3, p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$4;-><init>(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;ZI)V

    invoke-static {p2}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return p1
.end method

.method private unRegisterNetworkConnectivityReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mNetworkConnectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unRegisterProcessObserver()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-static {v0}, Lcom/miui/networkassistant/vpn/miui/ActivityManagerCompat;->unRegisterProcessObserver(Landroid/app/IProcessObserver;)V

    return-void
.end method

.method private unRegisterScNetworkStatusReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mScNetworkStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unbindVpnSdkService()V
    .locals 6

    iget-boolean v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mSuportVpn:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnSdkServiceLocker:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnSdkService:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    :try_start_1
    invoke-interface {v3, v2}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->registerCallback(Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageServiceCallback;)V

    iget-object v3, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnSdkService:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    invoke-interface {v3}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->H0()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    sget-object v4, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string v5, "unbindVpnSdkService"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v3, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnSdkServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :try_start_3
    iput v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnProcPid:I

    iput-object v2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mPendingDestAppInfo:Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;

    :goto_1
    iput-object v2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnSdkService:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception v3

    goto :goto_3

    :catch_1
    move-exception v3

    :try_start_4
    sget-object v4, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string v5, "unbindVpnSdkService"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iput v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnProcPid:I

    iput-object v2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mPendingDestAppInfo:Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;

    goto :goto_1

    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    iput v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnProcPid:I

    iput-object v2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mPendingDestAppInfo:Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;

    iput-object v2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnSdkService:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    throw v3

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1
.end method

.method private unregisterCallback(Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageServiceCallback;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mCallbackList:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private updateMiuiVpnInfos(Z)V
    .locals 2

    sget-object v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string v1, "updateMiuiVpnInfos"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$8;

    invoke-direct {v0, p0, p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$8;-><init>(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Z)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-boolean p1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mSuportVpn:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnManageServiceBinder:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceBinder;

    invoke-virtual {p1}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 5

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sget-object v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/miui/networkassistant/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    new-instance v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceBinder;-><init>(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$1;)V

    iput-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnManageServiceBinder:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceBinder;

    iget-boolean v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mSuportVpn:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->registerProcessObserver()V

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mContext:Landroid/content/Context;

    invoke-static {}, Lx4/z1;->k()Landroid/os/UserHandle;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->updateMiuiVpnInfos(Z)V

    invoke-direct {p0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->registerCloudDataObserver()V

    :cond_0
    invoke-direct {p0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->registerNetworkConnectivityReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->registerScNetworkStatusReceiver()V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    :try_start_0
    invoke-direct {p0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->unbindVpnSdkService()V

    invoke-direct {p0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->unRegisterNetworkConnectivityReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->unRegisterScNetworkStatusReceiver()V

    iget-boolean v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mSuportVpn:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->unRegisterProcessObserver()V

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string v2, "destroy error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public refreshUserState()I
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnSdkService:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->refreshUserState()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string v2, "refreshUserState: An exception occurred!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string v1, "refreshUserState: vpnSdkService is null. please call init first."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    return v0
.end method
