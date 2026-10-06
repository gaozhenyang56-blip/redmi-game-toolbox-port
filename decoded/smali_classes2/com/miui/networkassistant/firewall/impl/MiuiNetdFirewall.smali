.class public Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/firewall/IFirewall;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall$WorkHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NetdFirewall"

.field private static final TYPE_ALL:I = 0x3

.field private static final TYPE_MOBILE:I = 0x0

.field private static final TYPE_OTHER:I = 0x4

.field private static final TYPE_ROAMING:I = 0x2

.field private static final TYPE_WIFI:I = 0x1


# instance fields
.field private mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

.field private mContext:Landroid/content/Context;

.field private mCurrentNetworkState:Lp4/d$a;

.field private mCurrentRoamingState:Z

.field private mFirewallReceiver:Landroid/content/BroadcastReceiver;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIsDataRoamingWhiteListEnable:Z

.field private volatile mIsStarted:Z

.field private mListener:Lcom/miui/networkassistant/firewall/IFirewallListener;

.field private mLock:Ljava/lang/Object;

.field private mMobileRuleArrMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/miui/networkassistant/model/FirewallRule;",
            ">;>;"
        }
    .end annotation
.end field

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRoamingRuleMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/miui/networkassistant/model/FirewallRule;",
            ">;"
        }
    .end annotation
.end field

.field private mRuleMapLock:Ljava/lang/Object;

.field private mSecurityManager:Lmiui/security/SecurityManager;

.field private mSimInfoChangeListener:Lcom/miui/networkassistant/dual/DualSimInfoManager$ISimInfoChangeListener;

.field private mTempMobileRule:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/miui/networkassistant/model/TempFirewallRule;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTempWifiRule:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/miui/networkassistant/model/TempFirewallRule;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiRuleMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/miui/networkassistant/model/FirewallRule;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkHandler:Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall$WorkHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mRuleMapLock:Ljava/lang/Object;

    sget-object v0, Lp4/d$a;->a:Lp4/d$a;

    iput-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mCurrentNetworkState:Lp4/d$a;

    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mMobileRuleArrMap:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mWifiRuleMap:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mRoamingRuleMap:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mTempMobileRule:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mTempWifiRule:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mCurrentRoamingState:Z

    new-instance v1, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall$1;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall$1;-><init>(Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;)V

    iput-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall$2;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall$2;-><init>(Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;)V

    iput-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    new-instance v1, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall$3;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall$3;-><init>(Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;)V

    iput-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mSimInfoChangeListener:Lcom/miui/networkassistant/dual/DualSimInfoManager$ISimInfoChangeListener;

    new-instance v1, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall$4;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall$4;-><init>(Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;)V

    iput-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mFirewallReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/networkassistant/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    iget-object p1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mContext:Landroid/content/Context;

    const-string v1, "security"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiui/security/SecurityManager;

    iput-object p1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mSecurityManager:Lmiui/security/SecurityManager;

    iget-object p1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mMobileRuleArrMap:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mTempMobileRule:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-boolean p1, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mMobileRuleArrMap:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mTempMobileRule:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->setCurrentNetworkState(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->refreshNetworkType()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;)Lp4/d$a;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mCurrentNetworkState:Lp4/d$a;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;)Lcom/miui/networkassistant/firewall/IFirewallListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mListener:Lcom/miui/networkassistant/firewall/IFirewallListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;)Lmiui/security/SecurityManager;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mSecurityManager:Lmiui/security/SecurityManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->getUid(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private getCurrentRoamingState()Z
    .locals 5

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentActiveSlotNum()I

    move-result v0

    iget-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lah/d;->d(Landroid/content/Context;)Z

    move-result v1

    iget-object v2, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lah/d;->c(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lah/d;->b(Landroid/content/Context;)I

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/miui/networkassistant/utils/TelephonyUtil;->isNetworkRoaming(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mIsDataRoamingWhiteListEnable:Z

    if-eqz v0, :cond_2

    move v3, v4

    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "virtual sim disabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetdFirewall"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private getPackagesByRules(Landroid/util/ArrayMap;Lcom/miui/networkassistant/model/FirewallRule;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/miui/networkassistant/model/FirewallRule;",
            ">;",
            "Lcom/miui/networkassistant/model/FirewallRule;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/networkassistant/model/FirewallRule;

    if-ne v3, p2, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getPackagesByTempRules(Landroid/util/ArrayMap;Lcom/miui/networkassistant/model/FirewallRule;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/miui/networkassistant/model/TempFirewallRule;",
            ">;",
            "Lcom/miui/networkassistant/model/FirewallRule;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/networkassistant/model/TempFirewallRule;

    if-eqz v3, :cond_0

    iget-object v3, v3, Lcom/miui/networkassistant/model/TempFirewallRule;->rule:Lcom/miui/networkassistant/model/FirewallRule;

    if-ne v3, p2, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getUid(Ljava/lang/String;)I
    .locals 1

    invoke-static {p1}, Lcom/miui/networkassistant/utils/PackageUtil;->parseUidByPackageName(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/miui/networkassistant/utils/PackageUtil;->getUidByPackageName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method private refreshNetworkType()V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->shouldUpdateNetworkType()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall$5;->$SwitchMap$com$miui$common$network$NetworkUtils$NetworkState:[I

    iget-object v2, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mCurrentNetworkState:Lp4/d$a;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :cond_0
    :goto_0
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->setCurrentNetworkState(I)V

    goto :goto_1

    :pswitch_1
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->setCurrentNetworkState(I)V

    goto :goto_1

    :pswitch_2
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->setCurrentNetworkState(I)V

    goto :goto_1

    :pswitch_3
    invoke-direct {p0}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->showRoamingStateNotification()V

    iget-boolean v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mCurrentRoamingState:Z

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private registerFirewallReceiver()V
    .locals 5

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "miui.intent.action.FIREWALL"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mFirewallReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lx4/z1;->A()Landroid/os/UserHandle;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v1, v2, v3, v0, v4}, Lx4/v;->o(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;I)V

    return-void
.end method

.method private registerNetworkReceiver()V
    .locals 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sget-object v1, Lcom/miui/networkassistant/config/Constants$System;->CONNECTIVITY_ACTION_IMMEDIATE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x4

    invoke-static {v1, v2, v0, v3}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_0
    return-void
.end method

.method private registerSimStateReceiver()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mSimInfoChangeListener:Lcom/miui/networkassistant/dual/DualSimInfoManager$ISimInfoChangeListener;

    invoke-static {v0, v1}, Lcom/miui/networkassistant/dual/DualSimInfoManager;->registerChangeListener(Landroid/content/Context;Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$ISimInfoChangeWrapperListener;)V

    return-void
.end method

.method private setCurrentNetworkState(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mWorkHandler:Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall$WorkHandler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xb

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mWorkHandler:Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall$WorkHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private setMiuiFirewallRule(Ljava/lang/String;II)V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mWorkHandler:Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall$WorkHandler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xc

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "package_name"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "rule"

    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "type"

    invoke-virtual {v1, p1, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mWorkHandler:Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall$WorkHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private shouldUpdateNetworkType()Z
    .locals 5

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lp4/d;->b(Landroid/content/Context;)Lp4/d$a;

    move-result-object v0

    invoke-direct {p0}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->getCurrentRoamingState()Z

    move-result v1

    iget-object v2, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mCurrentNetworkState:Lp4/d$a;

    const/4 v3, 0x1

    if-ne v2, v0, :cond_1

    iget-boolean v2, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mCurrentRoamingState:Z

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v2, v4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "network: %s, roaming:%b"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetdFirewall"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mCurrentNetworkState:Lp4/d$a;

    iput-boolean v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mCurrentRoamingState:Z

    return v3
.end method

.method private showRoamingStateNotification()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mCurrentRoamingState:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/CommonConfig;->isRoamingWhiteListNotifyEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->sendOpenRoamingWhiteListNotify(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/CommonConfig;->setRoamingWhiteListNotifyEnable(Z)Z

    :cond_0
    return-void
.end method

.method private startWorkHandler()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NetdFirewall"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall$WorkHandler;

    iget-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall$WorkHandler;-><init>(Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mWorkHandler:Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall$WorkHandler;

    return-void
.end method

.method private stopWorkHandler()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mWorkHandler:Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall$WorkHandler;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iput-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mWorkHandler:Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall$WorkHandler;

    iput-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mHandlerThread:Landroid/os/HandlerThread;

    :cond_1
    :goto_0
    return-void
.end method

.method private unRegisterFirewallReceiver()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mFirewallReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unRegisterNetworkReceiver()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_0
    return-void
.end method

.method private unRegisterSimStateReceiver()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mSimInfoChangeListener:Lcom/miui/networkassistant/dual/DualSimInfoManager$ISimInfoChangeListener;

    invoke-static {v0, v1}, Lcom/miui/networkassistant/dual/DualSimInfoManager;->unRegisterChangeListener(Landroid/content/Context;Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$ISimInfoChangeWrapperListener;)V

    return-void
.end method


# virtual methods
.method public getMobileRestrictPackages(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mMobileRuleArrMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    sget-object v2, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    invoke-direct {p0, v1, v2}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->getPackagesByRules(Landroid/util/ArrayMap;Lcom/miui/networkassistant/model/FirewallRule;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mTempMobileRule:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArrayMap;

    invoke-direct {p0, p1, v2}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->getPackagesByTempRules(Landroid/util/ArrayMap;Lcom/miui/networkassistant/model/FirewallRule;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method public getMobileRule(Ljava/lang/String;I)Lcom/miui/networkassistant/model/FirewallRule;
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mRuleMapLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->getTempMobileRule(Ljava/lang/String;I)Lcom/miui/networkassistant/model/FirewallRule;

    move-result-object v1

    sget-object v2, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    if-ne v1, v2, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mMobileRuleArrMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/networkassistant/model/FirewallRule;

    if-eqz p1, :cond_1

    monitor-exit v0

    return-object p1

    :cond_1
    sget-object p1, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getRoamingRule(Ljava/lang/String;)Lcom/miui/networkassistant/model/FirewallRule;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mRuleMapLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mRoamingRuleMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/networkassistant/model/FirewallRule;

    if-eqz p1, :cond_0

    monitor-exit v0

    return-object p1

    :cond_0
    sget-object p1, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getRoamingWhiteListEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mIsDataRoamingWhiteListEnable:Z

    return v0
.end method

.method public getTempMobileRule(Ljava/lang/String;I)Lcom/miui/networkassistant/model/FirewallRule;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mRuleMapLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mTempMobileRule:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/networkassistant/model/TempFirewallRule;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    sget-object p1, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    return-object p1

    :cond_0
    iget-object p1, p1, Lcom/miui/networkassistant/model/TempFirewallRule;->rule:Lcom/miui/networkassistant/model/FirewallRule;

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getTempMobileRuleSrcPkgName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mRuleMapLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mTempMobileRule:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/networkassistant/model/TempFirewallRule;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p1, p1, Lcom/miui/networkassistant/model/TempFirewallRule;->srcPkgName:Ljava/lang/String;

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getTempWifiRule(Ljava/lang/String;)Lcom/miui/networkassistant/model/FirewallRule;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mRuleMapLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mTempWifiRule:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/networkassistant/model/TempFirewallRule;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    sget-object p1, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    return-object p1

    :cond_0
    iget-object p1, p1, Lcom/miui/networkassistant/model/TempFirewallRule;->rule:Lcom/miui/networkassistant/model/FirewallRule;

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getTempWifiRuleSrcPkgName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mRuleMapLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mTempWifiRule:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/networkassistant/model/TempFirewallRule;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p1, p1, Lcom/miui/networkassistant/model/TempFirewallRule;->srcPkgName:Ljava/lang/String;

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getWifiRestrictPackages()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mWifiRuleMap:Landroid/util/ArrayMap;

    sget-object v2, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    invoke-direct {p0, v1, v2}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->getPackagesByRules(Landroid/util/ArrayMap;Lcom/miui/networkassistant/model/FirewallRule;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mTempWifiRule:Landroid/util/ArrayMap;

    invoke-direct {p0, v1, v2}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->getPackagesByTempRules(Landroid/util/ArrayMap;Lcom/miui/networkassistant/model/FirewallRule;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public getWifiRule(Ljava/lang/String;)Lcom/miui/networkassistant/model/FirewallRule;
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mRuleMapLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->getTempWifiRule(Ljava/lang/String;)Lcom/miui/networkassistant/model/FirewallRule;

    move-result-object v1

    sget-object v2, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    if-ne v1, v2, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mWifiRuleMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/networkassistant/model/FirewallRule;

    if-eqz p1, :cond_1

    monitor-exit v0

    return-object p1

    :cond_1
    sget-object p1, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isStarted()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mIsStarted:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public loadMobileRules(Landroid/util/ArrayMap;IZZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/miui/networkassistant/model/FirewallRule;",
            ">;IZZ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mRuleMapLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "NetdFirewall"

    const-string v2, "slotNum:%d, update: %b, revert:%b"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const/4 v4, 0x2

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mMobileRuleArrMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    move v2, v5

    :goto_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/networkassistant/model/FirewallRule;

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    sget-object v6, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    if-ne v4, v6, :cond_0

    sget-object v4, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    invoke-virtual {v4}, Lcom/miui/networkassistant/model/FirewallRule;->value()I

    move-result v4

    :goto_1
    invoke-direct {p0, v3, v4, v5}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->setMiuiFirewallRule(Ljava/lang/String;II)V

    goto :goto_2

    :cond_0
    sget-object v6, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    if-ne v4, v6, :cond_1

    invoke-virtual {v4}, Lcom/miui/networkassistant/model/FirewallRule;->value()I

    move-result v4

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mTempMobileRule:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mTempMobileRule:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    invoke-virtual {v2, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/networkassistant/model/TempFirewallRule;

    iget-object v2, v2, Lcom/miui/networkassistant/model/TempFirewallRule;->rule:Lcom/miui/networkassistant/model/FirewallRule;

    sget-object v3, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    if-ne v2, v3, :cond_3

    if-eqz p4, :cond_4

    sget-object v2, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    invoke-virtual {v2}, Lcom/miui/networkassistant/model/FirewallRule;->value()I

    move-result v2

    :goto_4
    invoke-direct {p0, p3, v2, v5}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->setMiuiFirewallRule(Ljava/lang/String;II)V

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Lcom/miui/networkassistant/model/FirewallRule;->value()I

    move-result v2

    goto :goto_4

    :cond_5
    iget-object p1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mMobileRuleArrMap:Landroid/util/SparseArray;

    invoke-virtual {p1, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public loadRoamingRules(Landroid/util/ArrayMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/miui/networkassistant/model/FirewallRule;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mRuleMapLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/networkassistant/model/FirewallRule;

    iget-object v4, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mRoamingRuleMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    if-ne v3, v4, :cond_0

    invoke-virtual {v3}, Lcom/miui/networkassistant/model/FirewallRule;->value()I

    move-result v3

    const/4 v4, 0x2

    invoke-direct {p0, v2, v3, v4}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->setMiuiFirewallRule(Ljava/lang/String;II)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public loadWifiRules(Landroid/util/ArrayMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/miui/networkassistant/model/FirewallRule;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mRuleMapLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/networkassistant/model/FirewallRule;

    iget-object v4, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mWifiRuleMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    if-ne v3, v4, :cond_0

    invoke-virtual {v3}, Lcom/miui/networkassistant/model/FirewallRule;->value()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->setMiuiFirewallRule(Ljava/lang/String;II)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removePackage(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mRuleMapLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mMobileRuleArrMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mWifiRuleMap:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mRoamingRuleMap:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setListener(Lcom/miui/networkassistant/firewall/IFirewallListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mListener:Lcom/miui/networkassistant/firewall/IFirewallListener;

    return-void
.end method

.method public setMobileRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;IZ)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mRuleMapLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mMobileRuleArrMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/ArrayMap;

    invoke-virtual {p3, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mMobileRuleArrMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/ArrayMap;

    invoke-virtual {p3, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    if-eqz p4, :cond_1

    invoke-virtual {p2}, Lcom/miui/networkassistant/model/FirewallRule;->value()I

    move-result p2

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->setMiuiFirewallRule(Ljava/lang/String;II)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setRoamingRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mRuleMapLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mRoamingRuleMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mRoamingRuleMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-virtual {p2}, Lcom/miui/networkassistant/model/FirewallRule;->value()I

    move-result p2

    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, v1}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->setMiuiFirewallRule(Ljava/lang/String;II)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setRoamingWhiteListEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mIsDataRoamingWhiteListEnable:Z

    invoke-direct {p0}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->refreshNetworkType()V

    return-void
.end method

.method public setTempMobileRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;Ljava/lang/String;IZ)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mRuleMapLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mTempMobileRule:Landroid/util/SparseArray;

    invoke-virtual {v1, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mTempMobileRule:Landroid/util/SparseArray;

    invoke-virtual {v1, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/networkassistant/model/TempFirewallRule;

    iget-object v1, v1, Lcom/miui/networkassistant/model/TempFirewallRule;->srcPkgName:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p2, "NetdFirewall"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Package "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " cannot set temp mobile rule, because it exists another rule. Set by package:"

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mTempMobileRule:Landroid/util/SparseArray;

    invoke-virtual {p5, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/util/ArrayMap;

    invoke-virtual {p4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/networkassistant/model/TempFirewallRule;

    iget-object p1, p1, Lcom/miui/networkassistant/model/TempFirewallRule;->srcPkgName:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return v2

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    sget-object v0, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mRuleMapLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mTempMobileRule:Landroid/util/SparseArray;

    invoke-virtual {v1, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/util/ArrayMap;

    new-instance v1, Lcom/miui/networkassistant/model/TempFirewallRule;

    invoke-direct {v1, p2, p3}, Lcom/miui/networkassistant/model/TempFirewallRule;-><init>(Lcom/miui/networkassistant/model/FirewallRule;Ljava/lang/String;)V

    invoke-virtual {p4, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    if-eqz p5, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    iget-object p2, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mRuleMapLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_2
    iget-object p3, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mTempMobileRule:Landroid/util/SparseArray;

    invoke-virtual {p3, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/ArrayMap;

    invoke-virtual {p3, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p5, :cond_2

    invoke-virtual {p0, p1, p4}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->getMobileRule(Ljava/lang/String;I)Lcom/miui/networkassistant/model/FirewallRule;

    move-result-object p2

    :goto_0
    invoke-virtual {p2}, Lcom/miui/networkassistant/model/FirewallRule;->value()I

    move-result p2

    invoke-direct {p0, p1, p2, v2}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->setMiuiFirewallRule(Ljava/lang/String;II)V

    :cond_2
    const/4 p1, 0x1

    return p1

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method

.method public setTempWifiRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mRuleMapLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mTempWifiRule:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mTempWifiRule:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/networkassistant/model/TempFirewallRule;

    iget-object v1, v1, Lcom/miui/networkassistant/model/TempFirewallRule;->srcPkgName:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p2, "NetdFirewall"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cannot set temp wifi rule, because it exists another rule. Set by package:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mTempWifiRule:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/networkassistant/model/TempFirewallRule;

    iget-object p1, p1, Lcom/miui/networkassistant/model/TempFirewallRule;->srcPkgName:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    monitor-exit v0

    return p1

    :cond_0
    sget-object v1, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    const/4 v2, 0x1

    if-ne p2, v1, :cond_1

    iget-object p2, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mTempWifiRule:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->getWifiRule(Ljava/lang/String;)Lcom/miui/networkassistant/model/FirewallRule;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/networkassistant/model/FirewallRule;->value()I

    move-result p2

    :goto_0
    invoke-direct {p0, p1, p2, v2}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->setMiuiFirewallRule(Ljava/lang/String;II)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mTempWifiRule:Landroid/util/ArrayMap;

    new-instance v3, Lcom/miui/networkassistant/model/TempFirewallRule;

    invoke-direct {v3, p2, p3}, Lcom/miui/networkassistant/model/TempFirewallRule;-><init>(Lcom/miui/networkassistant/model/FirewallRule;Ljava/lang/String;)V

    invoke-virtual {v1, p1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/miui/networkassistant/model/FirewallRule;->value()I

    move-result p2

    goto :goto_0

    :goto_1
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setWifiRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mRuleMapLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mWifiRuleMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mWifiRuleMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-virtual {p2}, Lcom/miui/networkassistant/model/FirewallRule;->value()I

    move-result p2

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->setMiuiFirewallRule(Ljava/lang/String;II)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public start()Z
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mIsStarted:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iput-boolean v2, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mIsStarted:Z

    invoke-direct {p0}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->registerNetworkReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->registerSimStateReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->registerFirewallReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->startWorkHandler()V

    const-string v1, "NetdFirewall"

    const-string v3, "netd firewall start"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stop()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mIsStarted:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mIsStarted:Z

    invoke-direct {p0}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->unRegisterNetworkReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->unRegisterSimStateReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->unRegisterFirewallReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->stopWorkHandler()V

    const-string v1, "NetdFirewall"

    const-string v2, "netd firewall stop"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
