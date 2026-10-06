.class public final Lcom/xiaomi/continuity/netbus/NetBusManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/continuity/netbus/NetBusManager$MyWeakReference;,
        Lcom/xiaomi/continuity/netbus/NetBusManager$Version;,
        Lcom/xiaomi/continuity/netbus/NetBusManager$PayloadListenerImpl;,
        Lcom/xiaomi/continuity/netbus/NetBusManager$ServerConnectionListenerImpl;,
        Lcom/xiaomi/continuity/netbus/NetBusManager$ClientConnectionListenerImpl;,
        Lcom/xiaomi/continuity/netbus/NetBusManager$DiscoveryListenerImpl;
    }
.end annotation


# static fields
.field private static final NETBUS_SERVICE_CLASS_NAME:Ljava/lang/String; = "com.xiaomi.continuity.netbus.service.NetBusService"

.field private static final TAG:Ljava/lang/String; = "NetBusManager"

.field private static sInstance:Lcom/xiaomi/continuity/netbus/NetBusManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mErrMsgMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mExecutor:Lcom/xiaomi/continuity/netbus/ServiceExecutor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/continuity/netbus/ServiceExecutor<",
            "Lcom/xiaomi/continuity/netbus/INetBusService;",
            ">;"
        }
    .end annotation
.end field

.field private mIsUpdateErrMsgMaps:Z

.field private final mPackageName:Ljava/lang/String;

.field private mServiceVersion:Lcom/xiaomi/continuity/netbus/NetBusManager$Version;

.field private final mToken:Landroid/os/IBinder;

.field private final mWeakReferenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaomi/continuity/netbus/DeathRecipient;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/continuity/netbus/NetBusManager;->mIsUpdateErrMsgMaps:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/continuity/netbus/NetBusManager;->mWeakReferenceList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/continuity/netbus/NetBusManager;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/xiaomi/continuity/netbus/NetBusUtils;->getServicePackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.xiaomi.continuity.netbus.service.NetBusService"

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v8, Lcom/xiaomi/continuity/netbus/ServiceExecutor;

    new-instance v6, Lcom/xiaomi/continuity/netbus/h1;

    invoke-direct {v6}, Lcom/xiaomi/continuity/netbus/h1;-><init>()V

    new-instance v7, Lcom/xiaomi/continuity/netbus/i1;

    invoke-direct {v7, p0}, Lcom/xiaomi/continuity/netbus/i1;-><init>(Lcom/xiaomi/continuity/netbus/NetBusManager;)V

    const-string v5, "NetBusManager"

    move-object v2, v8

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/xiaomi/continuity/netbus/ServiceExecutor;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/xiaomi/continuity/netbus/ServiceExecutor$AsInterface;Lcom/xiaomi/continuity/netbus/DeathRecipient;)V

    iput-object v8, p0, Lcom/xiaomi/continuity/netbus/NetBusManager;->mExecutor:Lcom/xiaomi/continuity/netbus/ServiceExecutor;

    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iput-object v2, p0, Lcom/xiaomi/continuity/netbus/NetBusManager;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaomi/continuity/netbus/NetBusManager;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/xiaomi/continuity/netbus/NetBusUtils;->getVersionCode(Landroid/content/Context;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1}, Lcom/xiaomi/continuity/netbus/NetBusUtils;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v2, v1

    invoke-static {p1}, Lcom/xiaomi/continuity/netbus/NetBusUtils;->isTestEnv(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v0, 0x2

    aput-object p1, v2, v0

    const-string p1, "sdk versionCode:%s, versionName:%s, isTestEnv:%s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "NetBusManager"

    invoke-static {v0, p1}, Lcom/xiaomi/continuity/netbus/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/xiaomi/continuity/netbus/NetBusManager;->checkErrMsgMaps()V

    return-void
.end method

.method public static synthetic A(Lcom/xiaomi/continuity/netbus/NetBusManager;Lcom/xiaomi/continuity/netbus/AsyncResult;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/continuity/netbus/NetBusManager;->lambda$setDiscoveryConfig$13(Lcom/xiaomi/continuity/netbus/AsyncResult;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic B(Lcom/xiaomi/continuity/netbus/NetBusManager;Lcom/xiaomi/continuity/netbus/AsyncResult;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/continuity/netbus/NetBusManager;->lambda$unregisterPayloadListener$43(Lcom/xiaomi/continuity/netbus/AsyncResult;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic C(Ljava/lang/String;Landroid/os/ResultReceiver;Lcom/xiaomi/continuity/netbus/INetBusService;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/xiaomi/continuity/netbus/NetBusManager;->lambda$disconnect$28(Ljava/lang/String;Landroid/os/ResultReceiver;Lcom/xiaomi/continuity/netbus/INetBusService;)V

    return-void
.end method

.method public static synthetic D(Lcom/xiaomi/continuity/netbus/NetBusManager;Lcom/xiaomi/continuity/netbus/AsyncResult;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/continuity/netbus/NetBusManager;->lambda$refreshHeartbeat$27(Lcom/xiaomi/continuity/netbus/AsyncResult;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic E(Landroid/os/ResultReceiver;Lcom/xiaomi/continuity/netbus/INetBusService;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/xiaomi/continuity/netbus/NetBusManager;->lambda$printVersion$46(Landroid/os/ResultReceiver;Lcom/xiaomi/continuity/netbus/INetBusService;)V

    return-void
.end method

.method public static synthetic F(Lcom/xiaomi/continuity/netbus/NetBusManager;Lcom/xiaomi/continuity/netbus/AsyncResult;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/continuity/netbus/NetBusManager;->lambda$registerService$1(Lcom/xiaomi/continuity/netbus/AsyncResult;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic G(Lcom/xiaomi/continuity/netbus/NetBusManager;IJLandroid/os/ResultReceiver;Lcom/xiaomi/continuity/netbus/INetBusService;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/xiaomi/continuity/netbus/NetBusManager;->lambda$setDiscoveryConfig$12(IJLandroid/os/ResultReceiver;Lcom/xiaomi/continuity/netbus/INetBusService;)V

    return-void
.end method

.method public static synthetic H(Lcom/xiaomi/continuity/netbus/NetBusManager;Ljava/lang/String;Lcom/xiaomi/continuity/netbus/PayloadListener;Landroid/os/ResultReceiver;Lcom/xiaomi/continuity/netbus/INetBusService;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/continuity/netbus/NetBusManager;->lambda$unregisterPayloadListener$42(Ljava/lang/String;Lcom/xiaomi/continuity/netbus/PayloadListener;Landroid/os/ResultReceiver;Lcom/xiaomi/continuity/netbus/INetBusService;)V

    return-void
.end method

.method public static synthetic I(Lcom/xiaomi/continuity/netbus/NetBusManager;Ljava/lang/String;ILandroid/os/ResultReceiver;Lcom/xiaomi/continuity/netbus/INetBusService;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/continuity/netbus/NetBusManager;->lambda$stopConnectionServer$36(Ljava/lang/String;ILandroid/os/ResultReceiver;Lcom/xiaomi/continuity/netbus/INetBusService;)V

    return-void
.end method

.method public static synthetic J(Lcom/xiaomi/continuity/netbus/NetBusManager;Lcom/xiaomi/continuity/netbus/AsyncResult;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/continuity/netbus/NetBusManager;->lambda$unregisterConnectionListener$33(Lcom/xiaomi/continuity/netbus/AsyncResult;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic K(Lcom/xiaomi/continuity/netbus/NetBusManager;Ljava/lang/String;Lcom/xiaomi/continuity/netbus/PayloadListener;Landroid/os/ResultReceiver;Lcom/xiaomi/continuity/netbus/INetBusService;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/continuity/netbus/NetBusManager;->lambda$registerPayloadListener$40(Ljava/lang/String;Lcom/xiaomi/continuity/netbus/PayloadListener;Landroid/os/ResultReceiver;Lcom/xiaomi/continuity/netbus/INetBusService;)V

    return-void
.end method

.method public static synthetic L(Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0}, Lcom/xiaomi/continuity/netbus/NetBusManager;->lambda$printVersion$47(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic M(Landroid/os/ResultReceiver;Lcom/xiaomi/continuity/netbus/INetBusService;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/xiaomi/continuity/netbus/NetBusManager;->lambda$getErrMsgMaps$44(Landroid/os/ResultReceiver;Lcom/xiaomi/continuity/netbus/INetBusService;)V

    return-void
.end method

.method public static synthetic N(Lcom/xiaomi/continuity/netbus/NetBusManager;Lcom/xiaomi/continuity/netbus/AsyncResult;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/continuity/netbus/NetBusManager;->lambda$startConnectionServer$35(Lcom/xiaomi/continuity/netbus/AsyncResult;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic O(Lcom/xiaomi/continuity/netbus/NetBusManager;Ljava/lang/String;Lcom/xiaomi/continuity/netbus/ServerConnectionListener;Landroid/os/ResultReceiver;Lcom/xiaomi/continuity/netbus/INetBusService;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/continuity/netbus/NetBusManager;->lambda$unregisterConnectionListener$32(Ljava/lang/String;Lcom/xiaomi/continuity/netbus/ServerConnectionListener;Landroid/os/ResultReceiver;Lcom/xiaomi/continuity/netbus/INetBusService;)V

    return-void
.end method

.method public static synthetic P(Lcom/xiaomi/continuity/netbus/NetBusManager;Lcom/xiaomi/continuity/netbus/AsyncResult;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/continuity/netbus/NetBusManager;->lambda$startDiscovery$9(Lcom/xiaomi/continuity/netbus/AsyncResult;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic Q(Lcom/xiaomi/continuity/netbus/DeathRecipient;Ljava/lang/ref/WeakReference;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/xiaomi/continuity/netbus/NetBusManager;->lambda$registerDeathRecipient$48(Lcom/xiaomi/continuity/netbus/DeathRecipient;Ljava/lang/ref/WeakReference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic R(Ljava/lang/String;[BLcom/xiaomi/continuity/netbus/PayloadOptions;Landroid/os/ResultReceiver;Lcom/xiaomi/continuity/netbus/INetBusService;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/xiaomi/continuity/netbus/NetBusManager;->lambda$sendPayload$38(Ljava/lang/String;[BLcom/xiaomi/continuity/netbus/PayloadOptions;Landroid/os/ResultReceiver;Lcom/xiaomi/continuity/netbus/INetBusService;)V

    return-void
.end method

.method public static synthetic S(Lcom/xiaomi/continuity/netbus/NetBusManager;Ljava/lang/String;Lcom/xiaomi/continuity/netbus/ServerConnectionOptions;Lcom/xiaomi/continuity/netbus/ServerConnectionListener;Landroid/os/ResultReceiver;Lcom/xiaomi/continuity/netbus/INetBusService;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/xiaomi/continuity/netbus/NetBusManager;->lambda$registerConnectionListener$30(Ljava/lang/String;Lcom/xiaomi/continuity/netbus/ServerConnectionOptions;Lcom/xiaomi/continuity/netbus/ServerConnectionListener;Landroid/os/ResultReceiver;Lcom/xiaomi/continuity/netbus/INetBusService;)V

    return-void
.end method

.method public static synthetic T(Lcom/xiaomi/continuity/netbus/LinkAddress;Ljava/lang/String;Lcom/xiaomi/continuity/netbus/ClientConnectionOptions;Lcom/xiaomi/continuity/netbus/ClientConnectionListener;Landroid/os/ResultReceiver;Lcom/xiaomi/continuity/netbus/INetBusService;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/xiaomi/continuity/netbus/NetBusManager;->lambda$requestConnection$20(Lcom/xiaomi/continuity/netbus/LinkAddress;Ljava/lang/String;Lcom/xiaomi/continuity/netbus/ClientConnectionOptions;Lcom/xiaomi/continuity/netbus/ClientConnectionListener;Landroid/os/ResultReceiver;Lcom/xiaomi/continuity/netbus/INetBusService;)V

    return-void
.end method

.method public static synthetic U(Lcom/xiaomi/continuity/netbus/NetBusManager;Ljava/lang/String;Landroid/os/ResultReceiver;Lcom/xiaomi/continuity/netbus/INetBusService;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/continuity/netbus/NetBusManager;->lambda$registerService$0(Ljava/lang/String;Landroid/os/ResultReceiver;Lcom/xiaomi/continuity/netbus/INetBusService;)V

    return-void
.end method

.method public static synthetic V(Lcom/xiaomi/continuity/netbus/NetBusManager;Lcom/xiaomi/continuity/netbus/AsyncResult;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/continuity/netbus/NetBusManager;->lambda$stopAdvertising$5(Lcom/xiaomi/continuity/netbus/AsyncResult;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic W(Lcom/xiaomi/continuity/netbus/NetBusManager;Lcom/xiaomi/continuity/netbus/AsyncResult;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/continuity/netbus/NetBusManager;->lambda$setAdvertisingConfig$7(Lcom/xiaomi/continuity/netbus/AsyncResult;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic X(Lcom/xiaomi/continuity/netbus/NetBusManager;Lcom/xiaomi/continuity/netbus/AsyncResult;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/continuity/netbus/NetBusManager;->lambda$requestConnection$21(Lcom/xiaomi/continuity/netbus/AsyncResult;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic Y(Lcom/xiaomi/continuity/netbus/NetBusManager;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/continuity/netbus/ClientConnectionOptions;Lcom/xiaomi/continuity/netbus/ClientConnectionListener;Landroid/os/ResultReceiver;Lcom/xiaomi/continuity/netbus/INetBusService;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/xiaomi/continuity/netbus/NetBusManager;->lambda$requestConnection$18(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/continuity/netbus/ClientConnectionOptions;Lcom/xiaomi/continuity/netbus/ClientConnectionListener;Landroid/os/ResultReceiver;Lcom/xiaomi/continuity/netbus/INetBusService;)V

    return-void
.end method

.method public static synthetic a(Lcom/xiaomi/continuity/netbus/NetBusManager;Lcom/xiaomi/continuity/netbus/AsyncResult;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/continuity/netbus/NetBusManager;->lambda$unregisterDiscoveryListener$17(Lcom/xiaomi/continuity/netbus/AsyncResult;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/xiaomi/continuity/netbus/NetBusManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/continuity/netbus/NetBusManager;->printVersion()V

    return-void
.end method

.method public static synthetic access$102(Lcom/xiaomi/continuity/netbus/NetBusManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/continuity/netbus/NetBusManager;->mIsUpdateErrMsgMaps:Z

    return p1
.end method

.method public static synthetic access$200(Lcom/xiaomi/continuity/netbus/NetBusManager;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/continuity/netbus/NetBusManager;->mErrMsgMaps:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/xiaomi/continuity/netbus/NetBusManager;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/continuity/netbus/NetBusManager;->mErrMsgMaps:Ljava/util/Map;

    return-object p1
.end method

.method public static synthetic access$302(Lcom/xiaomi/continuity/netbus/NetBusManager;Lcom/xiaomi/continuity/netbus/NetBusManager$Version;)Lcom/xiaomi/continuity/netbus/NetBusManager$Version;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/continuity/netbus/NetBusManager;->mServiceVersion:Lcom/xiaomi/continuity/netbus/NetBusManager$Version;

    return-object p1
.end method

.method public static synthetic b(Lcom/xiaomi/continuity/netbus/NetBusManager;Ljava/lang/String;Lcom/xiaomi/continuity/netbus/StartAdvertisingOptions;[B[BLandroid/os/ResultReceiver;Lcom/xiaomi/continuity/netbus/INetBusService;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/xiaomi/continuity/netbus/NetBusManager;->lambda$startAdvertising$2(Ljava/lang/String;Lcom/xiaomi/continuity/netbus/StartAdvertisingOptions;[B[BLandroid/os/ResultReceiver;Lcom/xiaomi/continuity/netbus/INetBusService;)V

    return-void
.end method

.method private declared-synchronized binderDied()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/continuity/netbus/NetBusManager;->mWeakReferenceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/continuity/netbus/DeathRecipient;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/xiaomi/continuity/netbus/DeathRecipient;->binderDied()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static synthetic c(Lcom/xiaomi/continuity/netbus/NetBusManager;Lcom/xiaomi/continuity/netbus/AsyncResult;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/continuity/netbus/NetBusManager;->lambda$sendPayload$39(Lcom/xiaomi/continuity/netbus/AsyncResult;Ljava/lang/Exception;)V

    return-void
.end method

.method private checkErrMsgMaps()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/continuity/netbus/NetBusManager;->mErrMsgMaps:Ljava/util/Map;

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/xiaomi/continuity/netbus/NetBusManager;->mIsUpdateErrMsgMaps:Z

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/continuity/netbus/NetBusManager;->mIsUpdateErrMsgMaps:Z

    invoke-direct {p0}, Lcom/xiaomi/continuity/netbus/NetBusManager;->getErrMsgMaps()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private createResultReceiver(Lcom/xiaomi/continuity/netbus/AsyncResult;)Landroid/os/ResultReceiver;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/xiaomi/continuity/netbus/AsyncResult<",
            "TT;>;)",
            "Landroid/os/ResultReceiver;"
        }
    .end annotation

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/continuity/netbus/NetBusManager$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0, p1}, Lcom/xiaomi/continuity/netbus/NetBusManager$1;-><init>(Lcom/xiaomi/continuity/netbus/NetBusManager;Landroid/os/Handler;Ljava/lang/String;Lcom/xiaomi/continuity/netbus/AsyncResult;)V

    return-object v1
.end method

.method public static synthetic d(Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0}, Lcom/xiaomi/continuity/netbus/NetBusManager;->lambda$getErrMsgMaps$45(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic e(Lcom/xiaomi/continuity/netbus/NetBusManager;Lcom/xiaomi/continuity/netbus/AsyncResult;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/continuity/netbus/NetBusManager;->lambda$registerConnectionListener$31(Lcom/xiaomi/continuity/netbus/AsyncResult;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic f(Lcom/xiaomi/continuity/netbus/NetBusManager;Lcom/xiaomi/continuity/netbus/AsyncResult;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/continuity/netbus/NetBusManager;->lambda$disconnect$29(Lcom/xiaomi/continuity/netbus/AsyncResult;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic g(Lcom/xiaomi/continuity/netbus/NetBusManager;Ljava/lang/String;Lcom/xiaomi/continuity/netbus/StopAdvertisingOptions;Landroid/os/ResultReceiver;Lcom/xiaomi/continuity/netbus/INetBusService;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/continuity/netbus/NetBusManager;->lambda$stopAdvertising$4(Ljava/lang/String;Lcom/xiaomi/continuity/netbus/StopAdvertisingOptions;Landroid/os/ResultReceiver;Lcom/xiaomi/continuity/netbus/INetBusService;)V

    return-void
.end method

.method private getErrMsgMaps()V
    .locals 3

    new-instance v0, Lcom/xiaomi/continuity/netbus/NetBusManager$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/continuity/netbus/NetBusManager$2;-><init>(Lcom/xiaomi/continuity/netbus/NetBusManager;Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/xiaomi/continuity/netbus/NetBusManager;->mExecutor:Lcom/xiaomi/continuity/netbus/ServiceExecutor;

    new-instance v2, Lcom/xiaomi/continuity/netbus/y0;

    invoke-direct {v2, v0}, Lcom/xiaomi/continuity/netbus/y0;-><init>(Landroid/os/ResultReceiver;)V

    new-instance v0, Lcom/xiaomi/continuity/netbus/z0;

    invoke-direct {v0}, Lcom/xiaomi/continuity/netbus/z0;-><init>()V

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/continuity/netbus/ServiceExecutor;->execute(Lcom/xiaomi/continuity/netbus/ServiceExecutor$Task;Lcom/xiaomi/continuity/netbus/ServiceExecutor$ExceptionHandler;)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/xiaomi/continuity/netbus/NetBusManager;
    .locals 2

    const-class v0, Lcom/xiaomi/continuity/netbus/NetBusManager;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/continuity/netbus/NetBusManager;->sInstance:Lcom/xiaomi/continuity/netbus/NetBusManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/xiaomi/continuity/netbus/NetBusManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/xiaomi/continuity/netbus/NetBusManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaomi/continuity/netbus/NetBusManager;->sInstance:Lcom/xiaomi/continuity/netbus/NetBusManager;

    :cond_0
    sget-object p0, Lcom/xiaomi/continuity/netbus/NetBusManager;->sInstance:Lcom/xiaomi/continuity/netbus/NetBusManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static synthetic h(Lcom/xiaomi/continuity/netbus/NetBusManager;Ljava/lang/String;Lcom/xiaomi/continuity/netbus/StopDiscoveryOptions;Landroid/os/ResultReceiver;Lcom/xiaomi/continuity/netbus/INetBusService;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/continuity/netbus/NetBusManager;->lambda$stopDiscovery$10(Ljava/lang/String;Lcom/xiaomi/continuity/netbus/StopDiscoveryOptions;Landroid/os/ResultReceiver;Lcom/xiaomi/continuity/netbus/INetBusService;)V

    return-void
.end method

.method private handleException(Ljava/lang/Exception;Lcom/xiaomi/continuity/netbus/AsyncResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Exception;",
            "Lcom/xiaomi/continuity/netbus/AsyncResult<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetBusManager"

    invoke-static {v1, v0, p1}, Lcom/xiaomi/continuity/netbus/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p2, v0, p1}, Lcom/xiaomi/continuity/netbus/AsyncResult;->error(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic i(Lcom/xiaomi/continuity/netbus/NetBusManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/continuity/netbus/NetBusManager;->binderDied()V

    return-void
.end method

.method public static synthetic j(Ljava/lang/String;I[BLandroid/os/ResultReceiver;Lcom/xiaomi/continuity/netbus/INetBusService;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/xiaomi/continuity/netbus/NetBusManager;->lambda$confirmConnection$22(Ljava/lang/String;I[BLandroid/os/ResultReceiver;Lcom/xiaomi/continuity/netbus/INetBusService;)V

    return-void
.end method

.method public static synthetic k(Lcom/xiaomi/continuity/netbus/NetBusManager;Lcom/xiaomi/continuity/netbus/AsyncResult;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/continuity/netbus/NetBusManager;->lambda$registerPayloadListener$41(Lcom/xiaomi/continuity/netbus/AsyncResult;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic l(Lcom/xiaomi/continuity/netbus/NetBusManager;Lcom/xiaomi/continuity/netbus/AsyncResult;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/continuity/netbus/NetBusManager;->lambda$stopDiscovery$11(Lcom/xiaomi/continuity/netbus/AsyncResult;Ljava/lang/Exception;)V

    return-void
.end method

.method private static synthetic lambda$confirmConnection$22(Ljava/lang/String;I[BLandroid/os/ResultReceiver;Lcom/xiaomi/continuity/netbus/INetBusService;)V
    .locals 0

    invoke-interface {p4, p0, p1, p2, p3}, Lcom/xiaomi/continuity/netbus/INetBusService;->confirmConnection(Ljava/lang/String;I[BLandroid/os/ResultReceiver;)V

    return-void
.end method

.method private synthetic lambda$confirmConnection$23(Lcom/xiaomi/continuity/netbus/AsyncResult;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lcom/xiaomi/continuity/netbus/NetBusManager;->handleException(Ljava/lang/Exception;Lcom/xiaomi/continuity/netbus/AsyncResult;)V

    return-void
.end method

.method private static synthetic lambda$disconnect$28(Ljava/lang/String;Landroid/os/ResultReceiver;Lcom/xiaomi/continuity/netbus/INetBusService;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lcom/xiaomi/continuity/netbus/INetBusService;->disconnect(Ljava/lang/String;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method private synthetic lambda$disconnect$29(Lcom/xiaomi/continuity/netbus/AsyncResult;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lcom/xiaomi/continuity/netbus/NetBusManager;->handleException(Ljava/lang/Exception;Lcom/xiaomi/continuity/netbus/AsyncResult;)V

    return-void
.end method

.method private static synthetic lambda$getErrMsgMaps$44(Landroid/os/ResultReceiver;Lcom/xiaomi/continuity/netbus/INetBusService;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/xiaomi/continuity/netbus/INetBusService;->getErrMsgMaps(Landroid/os/ResultReceiver;)V

    return-void
.end method

.method private static synthetic lambda$getErrMsgMaps$45(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$printVersion$46(Landroid/os/ResultReceiver;Lcom/xiaomi/continuity/netbus/INetBusService;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/xiaomi/continuity/netbus/INetBusService;->getVersion(Landroid/os/ResultReceiver;)V

    return-void
.end method

.method private static synthetic lambda$printVersion$47(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$refreshHeartbeat$26(Ljava/lang/String;Landroid/os/ResultReceiver;Lcom/xiaomi/continuity/netbus/INetBusService;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lcom/xiaomi/continuity/netbus/INetBusService;->refreshHeartbeat(Ljava/lang/String;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method private synthetic lambda$refreshHeartbeat$27(Lcom/xiaomi/continuity/netbus/AsyncResult;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lcom/xiaomi/continuity/netbus/NetBusManager;->handleException(Ljava/lang/Exception;Lcom/xiaomi/continuity/netbus/AsyncResult;)V

    return-void
.end method

.method private synthetic lambda$registerConnectionListener$30(Ljava/lang/String;Lcom/xiaomi/continuity/netbus/ServerConnectionOptions;Lcom/xiaomi/continuity/netbus/ServerConnectionListener;Landroid/os/ResultReceiver;Lcom/xiaomi/continuity/netbus/INetBusService;)V
    .locals 7

    iget-object v1, p0, Lcom/xiaomi/continuity/netbus/NetBusManager;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/xiaomi/continuity/netbus/NetBusManager;->mPackageName:Ljava/lang/String;

    new-instance v5, Lcom/xiaomi/continuity/netbus/NetBusManager$ServerConnectionListenerImpl;

    invoke-direct {v5, p3}, Lcom/xiaomi/continuity/netbus/NetBusManager$ServerConnectionListenerImpl;-><init>(Lcom/xiaomi/continuity/netbus/ServerConnectionListener;)V

    move-object v0, p5

    move-object v2, p1

    move-object v4, p2

    move-object v6, p4

    invoke-interface/range {v0 .. v6}, Lcom/xiaomi/continuity/netbus/INetBusService;->registerConnectionListener(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/continuity/netbus/ServerConnectionOptions;Lcom/xiaomi/continuity/netbus/IServerConnectionListener;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method private synthetic lambda$registerConnectionListener$31(Lcom/xiaomi/continuity/netbus/AsyncResult;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lcom/xiaomi/continuity/netbus/NetBusManager;->handleException(Ljava/lang/Exception;Lcom/xiaomi/continuity/netbus/AsyncResult;)V

    return-void
.end method

.method private static synthetic lambda$registerDeathRecipient$48(Lcom/xiaomi/continuity/netbus/DeathRecipient;Ljava/lang/ref/WeakReference;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$registerDiscoveryListener$14(Ljava/lang/String;Lcom/xiaomi/continuity/netbus/DiscoveryListener;Landroid/os/ResultReceiver;Lcom/xiaomi/continuity/netbus/INetBusService;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/continuity/netbus/NetBusManager;->mToken:Landroid/os/IBinder;

    new-instance v1, Lcom/xiaomi/continuity/netbus/NetBusManager$DiscoveryListenerImpl;

    invoke-direct {v1, p2}, Lcom/xiaomi/continuity/netbus/NetBusManager$DiscoveryListenerImpl;-><init>(Lcom/xiaomi/continuity/netbus/DiscoveryListener;)V

    invoke-interface {p4, v0, p1, v1, p3}, Lcom/xiaomi/continuity/netbus/INetBusService;->registerDiscoveryListener(Landroid/os/IBinder;Ljava/lang/String;Lcom/xiaomi/continuity/netbus/IDiscoveryListener;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method private synthetic lambda$registerDiscoveryListener$15(Lcom/xiaomi/continuity/netbus/AsyncResult;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lcom/xiaomi/continuity/netbus/NetBusManager;->handleException(Ljava/lang/Exception;Lcom/xiaomi/continuity/netbus/AsyncResult;)V

    return-void
.end method

.method private synthetic lambda$registerPayloadListener$40(Ljava/lang/String;Lcom/xiaomi/continuity/netbus/PayloadListener;Landroid/os/ResultReceiver;Lcom/xiaomi/continuity/netbus/INetBusService;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/continuity/netbus/NetBusManager;->mToken:Landroid/os/IBinder;

    new-instance v1, Lcom/xiaomi/continuity/netbus/NetBusManager$PayloadListenerImpl;

    invoke-direct {v1, p2}, Lcom/xiaomi/continuity/netbus/NetBusManager$PayloadListenerImpl;-><init>(Lcom/xiaomi/continuity/netbus/PayloadListener;)V

    invoke-interface {p4, v0, p1, v1, p3}, Lcom/xiaomi/continuity/netbus/INetBusService;->registerPayloadListener(Landroid/os/IBinder;Ljava/lang/String;Lcom/xiaomi/continuity/netbus/IPayloadListener;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method private synthetic lambda$registerPayloadListener$41(Lcom/xiaomi/continuity/netbus/AsyncResult;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lcom/xiaomi/continuity/netbus/NetBusManager;->handleException(Ljava/lang/Exception;Lcom/xiaomi/continuity/netbus/AsyncResult;)V

    return-void
.end method

.method private synthetic lambda$registerService$0(Ljava/lang/String;Landroid/os/ResultReceiver;Lcom/xiaomi/continuity/netbus/INetBusService;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/continuity/netbus/NetBusManager;->mToken:Landroid/os/IBinder;

    iget-object v1, p0, Lcom/xiaomi/continuity/netbus/NetBusManager;->mPackageName:Ljava/lang/String;

    invoke-interface {p3, v0, p1, v1, p2}, Lcom/xiaomi/continuity/netbus/INetBusService;->RegisterService(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method private synthetic lambda$registerService$1(Lcom/xiaomi/continuity/netbus/AsyncResult;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lcom/xiaomi/continuity/netbus/NetBusManager;->handleException(Ljava/lang/Exception;Lcom/xiaomi/continuity/netbus/AsyncResult;)V

    return-void
.end method

.method private synthetic lambda$requestConnection$18(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/continuity/netbus/ClientConnectionOptions;Lcom/xiaomi/continuity/netbus/ClientConnectionListener;Landroid/os/ResultReceiver;Lcom/xiaomi/continuity/netbus/INetBusService;)V
    .locals 7

    iget-object v3, p0, Lcom/xiaomi/continuity/netbus/NetBusManager;->mPackageName:Ljava/lang/String;

    new-instance v5, Lcom/xiaomi/continuity/netbus/NetBusManager$ClientConnectionListenerImpl;

    invoke-direct {v5, p4}, Lcom/xiaomi/continuity/netbus/NetBusManager$ClientConnectionListenerImpl;-><init>(Lcom/xiaomi/continuity/netbus/ClientConnectionListener;)V

    move-object v0, p6

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/xiaomi/continuity/netbus/INetBusService;->requestConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/continuity/netbus/ClientConnectionOptions;Lcom/xiaomi/continuity/netbus/IClientConnectionListener;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method private synthetic lambda$requestConnection$19(Lcom/xiaomi/continuity/netbus/AsyncResult;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lcom/xiaomi/continuity/netbus/NetBusManager;->handleException(Ljava/lang/Exception;Lcom/xiaomi/continuity/netbus/AsyncResult;)V

    return-void
.end method

.method private static synthetic lambda$requestConnection$20(Lcom/xiaomi/continuity/netbus/LinkAddress;Ljava/lang/String;Lcom/xiaomi/continuity/netbus/ClientConnectionOptions;Lcom/xiaomi/continuity/netbus/ClientConnectionListener;Landroid/os/ResultReceiver;Lcom/xiaomi/continuity/netbus/INetBusService;)V
    .locals 6

    new-instance v4, Lcom/xiaomi/continuity/netbus/NetBusManager$ClientConnectionListenerImpl;

    invoke-direct {v4, p3}, Lcom/xiaomi/continuity/netbus/NetBusManager$ClientConnectionListenerImpl;-><init>(Lcom/xiaomi/continuity/netbus/ClientConnectionListener;)V

    move-object v0, p5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/xiaomi/continuity/netbus/INetBusService;->requestConnectionbyAddress(Lcom/xiaomi/continuity/netbus/LinkAddress;Ljava/lang/String;Lcom/xiaomi/continuity/netbus/ClientConnectionOptions;Lcom/xiaomi/continuity/netbus/IClientConnectionListener;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method private synthetic lambda$requestConnection$21(Lcom/xiaomi/continuity/netbus/AsyncResult;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lcom/xiaomi/continuity/netbus/NetBusManager;->handleException(Ljava/lang/Exception;Lcom/xiaomi/continuity/netbus/AsyncResult;)V

    return-void
.end method

.method private static synthetic lambda$sendPayload$38(Ljava/lang/String;[BLcom/xiaomi/continuity/netbus/PayloadOptions;Landroid/os/ResultReceiver;Lcom/xiaomi/continuity/netbus/INetBusService;)V
    .locals 0

    invoke-interface {p4, p0, p1, p2, p3}, Lcom/xiaomi/continuity/netbus/INetBusService;->sendPayload(Ljava/lang/String;[BLcom/xiaomi/continuity/netbus/PayloadOptions;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method private synthetic lambda$sendPayload$39(Lcom/xiaomi/continuity/netbus/AsyncResult;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lcom/xiaomi/continuity/netbus/NetBusManager;->handleException(Ljava/lang/Exception;Lcom/xiaomi/continuity/netbus/AsyncResult;)V

    return-void
.end method

.method private synthetic lambda$setAdvertisingConfig$6(IJLandroid/os/ResultReceiver;Lcom/xiaomi/continuity/netbus/INetBusService;)V
    .locals 6

    iget-object v1, p0, Lcom/xiaomi/continuity/netbus/NetBusManager;->mToken:Landroid/os/IBinder;

    move-object v0, p5

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/xiaomi/continuity/netbus/INetBusService;->setAdvertisingConfig(Landroid/os/IBinder;IJLandroid/os/ResultReceiver;)V

    return-void
.end method

.method private synthetic lambda$setAdvertisingConfig$7(Lcom/xiaomi/continuity/netbus/AsyncResult;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lcom/xiaomi/continuity/netbus/NetBusManager;->handleException(Ljava/lang/Exception;Lcom/xiaomi/continuity/netbus/AsyncResult;)V

    return-void
.end method

.method private synthetic lambda$setDiscoveryConfig$12(IJLandroid/os/ResultReceiver;Lcom/xiaomi/continuity/netbus/INetBusService;)V
    .locals 6

    iget-object v1, p0, Lcom/xiaomi/continuity/netbus/NetBusManager;->mToken:Landroid/os/IBinder;

    move-object v0, p5

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/xiaomi/continuity/netbus/INetBusService;->setDiscoveryConfig(Landroid/os/IBinder;IJLandroid/os/ResultReceiver;)V

    return-void
.end method

.method private synthetic lambda$setDiscoveryConfig$13(Lcom/xiaomi/continuity/netbus/AsyncResult;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lcom/xiaomi/continuity/netbus/NetBusManager;->handleException(Ljava/lang/Exception;Lcom/xiaomi/continuity/netbus/AsyncResult;)V

    return-void
.end method

.method private static synthetic lambda$setHeartbeatMode$24(Ljava/lang/String;Lcom/xiaomi/continuity/netbus/HeartbeatMode;Landroid/os/ResultReceiver;Lcom/xiaomi/continuity/netbus/INetBusService;)V
    .locals 0

    invoke-virtual {p1}, Lcom/xiaomi/continuity/netbus/HeartbeatMode;->getType()I

    move-result p1

    invoke-interface {p3, p0, p1, p2}, Lcom/xiaomi/continuity/netbus/INetBusService;->setHeartbeatMode(Ljava/lang/String;ILandroid/os/ResultReceiver;)V

    return-void
.end method

.method private synthetic lambda$setHeartbeatMode$25(Lcom/xiaomi/continuity/netbus/AsyncResult;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lcom/xiaomi/continuity/netbus/NetBusManager;->handleException(Ljava/lang/Exception;Lcom/xiaomi/continuity/netbus/AsyncResult;)V

    return-void
.end method

.method private synthetic lambda$startAdvertising$2(Ljava/lang/String;Lcom/xiaomi/continuity/netbus/StartAdvertisingOptions;[B[BLandroid/os/ResultReceiver;Lcom/xiaomi/continuity/netbus/INetBusService;)V
    .locals 8

    iget-object v1, p0, Lcom/xiaomi/continuity/netbus/NetBusManager;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/xiaomi/continuity/netbus/NetBusManager;->mPackageName:Ljava/lang/String;

    move-object v0, p6

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v0 .. v7}, Lcom/xiaomi/continuity/netbus/INetBusService;->startAdvertising(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/continuity/netbus/StartAdvertisingOptions;[B[BLandroid/os/ResultReceiver;)V

    return-void
.end method

.method private synthetic lambda$startAdvertising$3(Lcom/xiaomi/continuity/netbus/AsyncResult;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lcom/xiaomi/continuity/netbus/NetBusManager;->handleException(Ljava/lang/Exception;Lcom/xiaomi/continuity/netbus/AsyncResult;)V

    return-void
.end method

.method private synthetic lambda$startConnectionServer$34(Ljava/lang/String;ILandroid/os/ResultReceiver;Lcom/xiaomi/continuity/netbus/INetBusService;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/continuity/netbus/NetBusManager;->mToken:Landroid/os/IBinder;

    invoke-interface {p4, v0, p1, p2, p3}, Lcom/xiaomi/continuity/netbus/INetBusService;->startConnectionServer(Landroid/os/IBinder;Ljava/lang/String;ILandroid/os/ResultReceiver;)V

    return-void
.end method

.method private synthetic lambda$startConnectionServer$35(Lcom/xiaomi/continuity/netbus/AsyncResult;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lcom/xiaomi/continuity/netbus/NetBusManager;->handleException(Ljava/lang/Exception;Lcom/xiaomi/continuity/netbus/AsyncResult;)V

    return-void
.end method

.method private synthetic lambda$startDiscovery$8(Ljava/lang/String;Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;Landroid/os/ResultReceiver;Lcom/xiaomi/continuity/netbus/INetBusService;)V
    .locals 6

    iget-object v1, p0, Lcom/xiaomi/continuity/netbus/NetBusManager;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/xiaomi/continuity/netbus/NetBusManager;->mPackageName:Ljava/lang/String;

    move-object v0, p4

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/xiaomi/continuity/netbus/INetBusService;->startDiscovery(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method private synthetic lambda$startDiscovery$9(Lcom/xiaomi/continuity/netbus/AsyncResult;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lcom/xiaomi/continuity/netbus/NetBusManager;->handleException(Ljava/lang/Exception;Lcom/xiaomi/continuity/netbus/AsyncResult;)V

    return-void
.end method

.method private synthetic lambda$stopAdvertising$4(Ljava/lang/String;Lcom/xiaomi/continuity/netbus/StopAdvertisingOptions;Landroid/os/ResultReceiver;Lcom/xiaomi/continuity/netbus/INetBusService;)V
    .locals 6

    iget-object v1, p0, Lcom/xiaomi/continuity/netbus/NetBusManager;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/xiaomi/continuity/netbus/NetBusManager;->mPackageName:Ljava/lang/String;

    move-object v0, p4

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/xiaomi/continuity/netbus/INetBusService;->stopAdvertising(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/continuity/netbus/StopAdvertisingOptions;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method private synthetic lambda$stopAdvertising$5(Lcom/xiaomi/continuity/netbus/AsyncResult;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lcom/xiaomi/continuity/netbus/NetBusManager;->handleException(Ljava/lang/Exception;Lcom/xiaomi/continuity/netbus/AsyncResult;)V

    return-void
.end method

.method private synthetic lambda$stopConnectionServer$36(Ljava/lang/String;ILandroid/os/ResultReceiver;Lcom/xiaomi/continuity/netbus/INetBusService;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/continuity/netbus/NetBusManager;->mToken:Landroid/os/IBinder;

    invoke-interface {p4, v0, p1, p2, p3}, Lcom/xiaomi/continuity/netbus/INetBusService;->stopConnectionServer(Landroid/os/IBinder;Ljava/lang/String;ILandroid/os/ResultReceiver;)V

    return-void
.end method

.method private synthetic lambda$stopConnectionServer$37(Lcom/xiaomi/continuity/netbus/AsyncResult;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lcom/xiaomi/continuity/netbus/NetBusManager;->handleException(Ljava/lang/Exception;Lcom/xiaomi/continuity/netbus/AsyncResult;)V

    return-void
.end method

.method private synthetic lambda$stopDiscovery$10(Ljava/lang/String;Lcom/xiaomi/continuity/netbus/StopDiscoveryOptions;Landroid/os/ResultReceiver;Lcom/xiaomi/continuity/netbus/INetBusService;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/continuity/netbus/NetBusManager;->mToken:Landroid/os/IBinder;

    invoke-interface {p4, v0, p1, p2, p3}, Lcom/xiaomi/continuity/netbus/INetBusService;->stopDiscovery(Landroid/os/IBinder;Ljava/lang/String;Lcom/xiaomi/continuity/netbus/StopDiscoveryOptions;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method private synthetic lambda$stopDiscovery$11(Lcom/xiaomi/continuity/netbus/AsyncResult;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lcom/xiaomi/continuity/netbus/NetBusManager;->handleException(Ljava/lang/Exception;Lcom/xiaomi/continuity/netbus/AsyncResult;)V

    return-void
.end method

.method private synthetic lambda$unregisterConnectionListener$32(Ljava/lang/String;Lcom/xiaomi/continuity/netbus/ServerConnectionListener;Landroid/os/ResultReceiver;Lcom/xiaomi/continuity/netbus/INetBusService;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/continuity/netbus/NetBusManager;->mToken:Landroid/os/IBinder;

    new-instance v1, Lcom/xiaomi/continuity/netbus/NetBusManager$ServerConnectionListenerImpl;

    invoke-direct {v1, p2}, Lcom/xiaomi/continuity/netbus/NetBusManager$ServerConnectionListenerImpl;-><init>(Lcom/xiaomi/continuity/netbus/ServerConnectionListener;)V

    invoke-interface {p4, v0, p1, v1, p3}, Lcom/xiaomi/continuity/netbus/INetBusService;->unregisterConnectionListener(Landroid/os/IBinder;Ljava/lang/String;Lcom/xiaomi/continuity/netbus/IServerConnectionListener;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method private synthetic lambda$unregisterConnectionListener$33(Lcom/xiaomi/continuity/netbus/AsyncResult;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lcom/xiaomi/continuity/netbus/NetBusManager;->handleException(Ljava/lang/Exception;Lcom/xiaomi/continuity/netbus/AsyncResult;)V

    return-void
.end method

.method private static synthetic lambda$unregisterDeathRecipient$49(Lcom/xiaomi/continuity/netbus/DeathRecipient;Ljava/lang/ref/WeakReference;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$unregisterDiscoveryListener$16(Ljava/lang/String;Lcom/xiaomi/continuity/netbus/DiscoveryListener;Landroid/os/ResultReceiver;Lcom/xiaomi/continuity/netbus/INetBusService;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/continuity/netbus/NetBusManager;->mToken:Landroid/os/IBinder;

    new-instance v1, Lcom/xiaomi/continuity/netbus/NetBusManager$DiscoveryListenerImpl;

    invoke-direct {v1, p2}, Lcom/xiaomi/continuity/netbus/NetBusManager$DiscoveryListenerImpl;-><init>(Lcom/xiaomi/continuity/netbus/DiscoveryListener;)V

    invoke-interface {p4, v0, p1, v1, p3}, Lcom/xiaomi/continuity/netbus/INetBusService;->unregisterDiscoveryListener(Landroid/os/IBinder;Ljava/lang/String;Lcom/xiaomi/continuity/netbus/IDiscoveryListener;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method private synthetic lambda$unregisterDiscoveryListener$17(Lcom/xiaomi/continuity/netbus/AsyncResult;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lcom/xiaomi/continuity/netbus/NetBusManager;->handleException(Ljava/lang/Exception;Lcom/xiaomi/continuity/netbus/AsyncResult;)V

    return-void
.end method

.method private synthetic lambda$unregisterPayloadListener$42(Ljava/lang/String;Lcom/xiaomi/continuity/netbus/PayloadListener;Landroid/os/ResultReceiver;Lcom/xiaomi/continuity/netbus/INetBusService;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/continuity/netbus/NetBusManager;->mToken:Landroid/os/IBinder;

    new-instance v1, Lcom/xiaomi/continuity/netbus/NetBusManager$PayloadListenerImpl;

    invoke-direct {v1, p2}, Lcom/xiaomi/continuity/netbus/NetBusManager$PayloadListenerImpl;-><init>(Lcom/xiaomi/continuity/netbus/PayloadListener;)V

    invoke-interface {p4, v0, p1, v1, p3}, Lcom/xiaomi/continuity/netbus/INetBusService;->unregisterPayloadListener(Landroid/os/IBinder;Ljava/lang/String;Lcom/xiaomi/continuity/netbus/IPayloadListener;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method private synthetic lambda$unregisterPayloadListener$43(Lcom/xiaomi/continuity/netbus/AsyncResult;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lcom/xiaomi/continuity/netbus/NetBusManager;->handleException(Ljava/lang/Exception;Lcom/xiaomi/continuity/netbus/AsyncResult;)V

    return-void
.end method

.method public static synthetic m(Lcom/xiaomi/continuity/netbus/NetBusManager;Ljava/lang/String;ILandroid/os/ResultReceiver;Lcom/xiaomi/continuity/netbus/INetBusService;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/continuity/netbus/NetBusManager;->lambda$startConnectionServer$34(Ljava/lang/String;ILandroid/os/ResultReceiver;Lcom/xiaomi/continuity/netbus/INetBusService;)V

    return-void
.end method

.method public static synthetic n(Ljava/lang/String;Lcom/xiaomi/continuity/netbus/HeartbeatMode;Landroid/os/ResultReceiver;Lcom/xiaomi/continuity/netbus/INetBusService;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/xiaomi/continuity/netbus/NetBusManager;->lambda$setHeartbeatMode$24(Ljava/lang/String;Lcom/xiaomi/continuity/netbus/HeartbeatMode;Landroid/os/ResultReceiver;Lcom/xiaomi/continuity/netbus/INetBusService;)V

    return-void
.end method

.method public static synthetic o(Lcom/xiaomi/continuity/netbus/NetBusManager;Lcom/xiaomi/continuity/netbus/AsyncResult;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/continuity/netbus/NetBusManager;->lambda$requestConnection$19(Lcom/xiaomi/continuity/netbus/AsyncResult;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic p(Lcom/xiaomi/continuity/netbus/NetBusManager;Lcom/xiaomi/continuity/netbus/AsyncResult;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/continuity/netbus/NetBusManager;->lambda$startAdvertising$3(Lcom/xiaomi/continuity/netbus/AsyncResult;Ljava/lang/Exception;)V

    return-void
.end method

.method private printVersion()V
    .locals 6

    invoke-static {}, Lcom/xiaomi/continuity/netbus/utils/Log;->isDebug()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/xiaomi/continuity/netbus/NetBusManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/continuity/netbus/NetBusUtils;->getVersionCode(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/xiaomi/continuity/netbus/NetBusManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/continuity/netbus/NetBusUtils;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "NetBusManager"

    const-string v5, "sdk versionCode:%s, versionName:%s"

    invoke-static {v2, v5, v1}, Lcom/xiaomi/continuity/netbus/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/continuity/netbus/NetBusManager;->mServiceVersion:Lcom/xiaomi/continuity/netbus/NetBusManager$Version;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    new-array v0, v0, [Ljava/lang/Object;

    iget v2, v1, Lcom/xiaomi/continuity/netbus/NetBusManager$Version;->mVersionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    iget-object v1, v1, Lcom/xiaomi/continuity/netbus/NetBusManager$Version;->mVersionName:Ljava/lang/String;

    aput-object v1, v0, v4

    const-string v1, "service versionCode:%s, versionName:%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetBusManager"

    invoke-static {v1, v0}, Lcom/xiaomi/continuity/netbus/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Lcom/xiaomi/continuity/netbus/NetBusManager$3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/continuity/netbus/NetBusManager$3;-><init>(Lcom/xiaomi/continuity/netbus/NetBusManager;Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/xiaomi/continuity/netbus/NetBusManager;->mExecutor:Lcom/xiaomi/continuity/netbus/ServiceExecutor;

    new-instance v2, Lcom/xiaomi/continuity/netbus/x1;

    invoke-direct {v2, v0}, Lcom/xiaomi/continuity/netbus/x1;-><init>(Landroid/os/ResultReceiver;)V

    new-instance v0, Lcom/xiaomi/continuity/netbus/y1;

    invoke-direct {v0}, Lcom/xiaomi/continuity/netbus/y1;-><init>()V

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/continuity/netbus/ServiceExecutor;->execute(Lcom/xiaomi/continuity/netbus/ServiceExecutor$Task;Lcom/xiaomi/continuity/netbus/ServiceExecutor$ExceptionHandler;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static synthetic q(Lcom/xiaomi/continuity/netbus/NetBusManager;IJLandroid/os/ResultReceiver;Lcom/xiaomi/continuity/netbus/INetBusService;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/xiaomi/continuity/netbus/NetBusManager;->lambda$setAdvertisingConfig$6(IJLandroid/os/ResultReceiver;Lcom/xiaomi/continuity/netbus/INetBusService;)V

    return-void
.end method

.method public static synthetic r(Lcom/xiaomi/continuity/netbus/NetBusManager;Lcom/xiaomi/continuity/netbus/AsyncResult;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/continuity/netbus/NetBusManager;->lambda$stopConnectionServer$37(Lcom/xiaomi/continuity/netbus/AsyncResult;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic s(Lcom/xiaomi/continuity/netbus/NetBusManager;Lcom/xiaomi/continuity/netbus/AsyncResult;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/continuity/netbus/NetBusManager;->lambda$registerDiscoveryListener$15(Lcom/xiaomi/continuity/netbus/AsyncResult;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic t(Lcom/xiaomi/continuity/netbus/NetBusManager;Ljava/lang/String;Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;Landroid/os/ResultReceiver;Lcom/xiaomi/continuity/netbus/INetBusService;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/continuity/netbus/NetBusManager;->lambda$startDiscovery$8(Ljava/lang/String;Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;Landroid/os/ResultReceiver;Lcom/xiaomi/continuity/netbus/INetBusService;)V

    return-void
.end method

.method public static synthetic u(Ljava/lang/String;Landroid/os/ResultReceiver;Lcom/xiaomi/continuity/netbus/INetBusService;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/xiaomi/continuity/netbus/NetBusManager;->lambda$refreshHeartbeat$26(Ljava/lang/String;Landroid/os/ResultReceiver;Lcom/xiaomi/continuity/netbus/INetBusService;)V

    return-void
.end method

.method public static synthetic v(Lcom/xiaomi/continuity/netbus/NetBusManager;Ljava/lang/String;Lcom/xiaomi/continuity/netbus/DiscoveryListener;Landroid/os/ResultReceiver;Lcom/xiaomi/continuity/netbus/INetBusService;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/continuity/netbus/NetBusManager;->lambda$registerDiscoveryListener$14(Ljava/lang/String;Lcom/xiaomi/continuity/netbus/DiscoveryListener;Landroid/os/ResultReceiver;Lcom/xiaomi/continuity/netbus/INetBusService;)V

    return-void
.end method

.method public static synthetic w(Lcom/xiaomi/continuity/netbus/DeathRecipient;Ljava/lang/ref/WeakReference;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/xiaomi/continuity/netbus/NetBusManager;->lambda$unregisterDeathRecipient$49(Lcom/xiaomi/continuity/netbus/DeathRecipient;Ljava/lang/ref/WeakReference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic x(Lcom/xiaomi/continuity/netbus/NetBusManager;Ljava/lang/String;Lcom/xiaomi/continuity/netbus/DiscoveryListener;Landroid/os/ResultReceiver;Lcom/xiaomi/continuity/netbus/INetBusService;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/continuity/netbus/NetBusManager;->lambda$unregisterDiscoveryListener$16(Ljava/lang/String;Lcom/xiaomi/continuity/netbus/DiscoveryListener;Landroid/os/ResultReceiver;Lcom/xiaomi/continuity/netbus/INetBusService;)V

    return-void
.end method

.method public static synthetic y(Lcom/xiaomi/continuity/netbus/NetBusManager;Lcom/xiaomi/continuity/netbus/AsyncResult;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/continuity/netbus/NetBusManager;->lambda$setHeartbeatMode$25(Lcom/xiaomi/continuity/netbus/AsyncResult;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic z(Lcom/xiaomi/continuity/netbus/NetBusManager;Lcom/xiaomi/continuity/netbus/AsyncResult;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/continuity/netbus/NetBusManager;->lambda$confirmConnection$23(Lcom/xiaomi/continuity/netbus/AsyncResult;Ljava/lang/Exception;)V

    return-void
.end method


# virtual methods
.method public confirmConnection(Ljava/lang/String;I[B)Lcom/xiaomi/continuity/netbus/AsyncResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[B)",
            "Lcom/xiaomi/continuity/netbus/AsyncResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "NetBusManager"

    const-string v2, "confirmConnection connectionId:%s, accept:%s"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/continuity/netbus/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/xiaomi/continuity/netbus/AsyncResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/continuity/netbus/NetBusManager;->createResultReceiver(Lcom/xiaomi/continuity/netbus/AsyncResult;)Landroid/os/ResultReceiver;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/continuity/netbus/NetBusManager;->mExecutor:Lcom/xiaomi/continuity/netbus/ServiceExecutor;

    new-instance v3, Lcom/xiaomi/continuity/netbus/c1;

    invoke-direct {v3, p1, p2, p3, v1}, Lcom/xiaomi/continuity/netbus/c1;-><init>(Ljava/lang/String;I[BLandroid/os/ResultReceiver;)V

    new-instance p1, Lcom/xiaomi/continuity/netbus/d1;

    invoke-direct {p1, p0, v0}, Lcom/xiaomi/continuity/netbus/d1;-><init>(Lcom/xiaomi/continuity/netbus/NetBusManager;Lcom/xiaomi/continuity/netbus/AsyncResult;)V

    invoke-virtual {v2, v3, p1}, Lcom/xiaomi/continuity/netbus/ServiceExecutor;->execute(Lcom/xiaomi/continuity/netbus/ServiceExecutor$Task;Lcom/xiaomi/continuity/netbus/ServiceExecutor$ExceptionHandler;)V

    return-object v0
.end method

.method public debugEnabled(Z)V
    .locals 0

    invoke-static {p1}, Lcom/xiaomi/continuity/netbus/utils/Log;->debugEnabled(Z)V

    return-void
.end method

.method public disconnect(Ljava/lang/String;)Lcom/xiaomi/continuity/netbus/AsyncResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaomi/continuity/netbus/AsyncResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "NetBusManager"

    const-string v2, "disconnect connectionId:%s"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/continuity/netbus/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/xiaomi/continuity/netbus/AsyncResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/continuity/netbus/NetBusManager;->createResultReceiver(Lcom/xiaomi/continuity/netbus/AsyncResult;)Landroid/os/ResultReceiver;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/continuity/netbus/NetBusManager;->mExecutor:Lcom/xiaomi/continuity/netbus/ServiceExecutor;

    new-instance v3, Lcom/xiaomi/continuity/netbus/u0;

    invoke-direct {v3, p1, v1}, Lcom/xiaomi/continuity/netbus/u0;-><init>(Ljava/lang/String;Landroid/os/ResultReceiver;)V

    new-instance p1, Lcom/xiaomi/continuity/netbus/f1;

    invoke-direct {p1, p0, v0}, Lcom/xiaomi/continuity/netbus/f1;-><init>(Lcom/xiaomi/continuity/netbus/NetBusManager;Lcom/xiaomi/continuity/netbus/AsyncResult;)V

    invoke-virtual {v2, v3, p1}, Lcom/xiaomi/continuity/netbus/ServiceExecutor;->execute(Lcom/xiaomi/continuity/netbus/ServiceExecutor$Task;Lcom/xiaomi/continuity/netbus/ServiceExecutor$ExceptionHandler;)V

    return-object v0
.end method

.method public getErrMsg(I)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/continuity/netbus/NetBusManager;->mErrMsgMaps:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/continuity/netbus/NetBusManager;->checkErrMsgMaps()V

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    if-nez p1, :cond_2

    const-string p1, "success"

    goto :goto_1

    :cond_2
    const-string p1, "failed"

    :goto_1
    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public refreshHeartbeat(Ljava/lang/String;)Lcom/xiaomi/continuity/netbus/AsyncResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaomi/continuity/netbus/AsyncResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "NetBusManager"

    const-string v2, "refreshHeartbeat connectionId:%s"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/continuity/netbus/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/xiaomi/continuity/netbus/AsyncResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/continuity/netbus/NetBusManager;->createResultReceiver(Lcom/xiaomi/continuity/netbus/AsyncResult;)Landroid/os/ResultReceiver;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/continuity/netbus/NetBusManager;->mExecutor:Lcom/xiaomi/continuity/netbus/ServiceExecutor;

    new-instance v3, Lcom/xiaomi/continuity/netbus/c2;

    invoke-direct {v3, p1, v1}, Lcom/xiaomi/continuity/netbus/c2;-><init>(Ljava/lang/String;Landroid/os/ResultReceiver;)V

    new-instance p1, Lcom/xiaomi/continuity/netbus/d2;

    invoke-direct {p1, p0, v0}, Lcom/xiaomi/continuity/netbus/d2;-><init>(Lcom/xiaomi/continuity/netbus/NetBusManager;Lcom/xiaomi/continuity/netbus/AsyncResult;)V

    invoke-virtual {v2, v3, p1}, Lcom/xiaomi/continuity/netbus/ServiceExecutor;->execute(Lcom/xiaomi/continuity/netbus/ServiceExecutor$Task;Lcom/xiaomi/continuity/netbus/ServiceExecutor$ExceptionHandler;)V

    return-object v0
.end method

.method public registerConnectionListener(Ljava/lang/String;Lcom/xiaomi/continuity/netbus/ServerConnectionOptions;Lcom/xiaomi/continuity/netbus/ServerConnectionListener;)Lcom/xiaomi/continuity/netbus/AsyncResult;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaomi/continuity/netbus/ServerConnectionOptions;",
            "Lcom/xiaomi/continuity/netbus/ServerConnectionListener;",
            ")",
            "Lcom/xiaomi/continuity/netbus/AsyncResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string v1, "NetBusManager"

    const-string v2, "registerConnectionListener serviceId:%s, options:%s"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/continuity/netbus/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/xiaomi/continuity/netbus/AsyncResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/continuity/netbus/NetBusManager;->createResultReceiver(Lcom/xiaomi/continuity/netbus/AsyncResult;)Landroid/os/ResultReceiver;

    move-result-object v6

    iget-object v7, p0, Lcom/xiaomi/continuity/netbus/NetBusManager;->mExecutor:Lcom/xiaomi/continuity/netbus/ServiceExecutor;

    new-instance v8, Lcom/xiaomi/continuity/netbus/l1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/continuity/netbus/l1;-><init>(Lcom/xiaomi/continuity/netbus/NetBusManager;Ljava/lang/String;Lcom/xiaomi/continuity/netbus/ServerConnectionOptions;Lcom/xiaomi/continuity/netbus/ServerConnectionListener;Landroid/os/ResultReceiver;)V

    new-instance p1, Lcom/xiaomi/continuity/netbus/m1;

    invoke-direct {p1, p0, v0}, Lcom/xiaomi/continuity/netbus/m1;-><init>(Lcom/xiaomi/continuity/netbus/NetBusManager;Lcom/xiaomi/continuity/netbus/AsyncResult;)V

    invoke-virtual {v7, v8, p1}, Lcom/xiaomi/continuity/netbus/ServiceExecutor;->execute(Lcom/xiaomi/continuity/netbus/ServiceExecutor$Task;Lcom/xiaomi/continuity/netbus/ServiceExecutor$ExceptionHandler;)V

    return-object v0
.end method

.method public declared-synchronized registerDeathRecipient(Lcom/xiaomi/continuity/netbus/DeathRecipient;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/xiaomi/continuity/netbus/NetBusManager;->mWeakReferenceList:Ljava/util/List;

    new-instance v2, Lcom/xiaomi/continuity/netbus/w1;

    invoke-direct {v2, p1}, Lcom/xiaomi/continuity/netbus/w1;-><init>(Lcom/xiaomi/continuity/netbus/DeathRecipient;)V

    invoke-static {v1, v2}, Lcom/xiaomi/continuity/netbus/j0;->a(Ljava/util/List;Ljava/util/function/Predicate;)Z

    iget-object p1, p0, Lcom/xiaomi/continuity/netbus/NetBusManager;->mWeakReferenceList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public registerDiscoveryListener(Ljava/lang/String;Lcom/xiaomi/continuity/netbus/DiscoveryListener;)Lcom/xiaomi/continuity/netbus/AsyncResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaomi/continuity/netbus/DiscoveryListener;",
            ")",
            "Lcom/xiaomi/continuity/netbus/AsyncResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string v1, "NetBusManager"

    const-string v2, "registerDiscoveryListener serviceId:%s, listener:%s"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/continuity/netbus/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/xiaomi/continuity/netbus/AsyncResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/continuity/netbus/NetBusManager;->createResultReceiver(Lcom/xiaomi/continuity/netbus/AsyncResult;)Landroid/os/ResultReceiver;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/continuity/netbus/NetBusManager;->mExecutor:Lcom/xiaomi/continuity/netbus/ServiceExecutor;

    new-instance v3, Lcom/xiaomi/continuity/netbus/f2;

    invoke-direct {v3, p0, p1, p2, v1}, Lcom/xiaomi/continuity/netbus/f2;-><init>(Lcom/xiaomi/continuity/netbus/NetBusManager;Ljava/lang/String;Lcom/xiaomi/continuity/netbus/DiscoveryListener;Landroid/os/ResultReceiver;)V

    new-instance p1, Lcom/xiaomi/continuity/netbus/g2;

    invoke-direct {p1, p0, v0}, Lcom/xiaomi/continuity/netbus/g2;-><init>(Lcom/xiaomi/continuity/netbus/NetBusManager;Lcom/xiaomi/continuity/netbus/AsyncResult;)V

    invoke-virtual {v2, v3, p1}, Lcom/xiaomi/continuity/netbus/ServiceExecutor;->execute(Lcom/xiaomi/continuity/netbus/ServiceExecutor$Task;Lcom/xiaomi/continuity/netbus/ServiceExecutor$ExceptionHandler;)V

    return-object v0
.end method

.method public registerPayloadListener(Ljava/lang/String;Lcom/xiaomi/continuity/netbus/PayloadListener;)Lcom/xiaomi/continuity/netbus/AsyncResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaomi/continuity/netbus/PayloadListener;",
            ")",
            "Lcom/xiaomi/continuity/netbus/AsyncResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "NetBusManager"

    const-string v2, "registerPayloadListener serviceId:%s"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/continuity/netbus/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/xiaomi/continuity/netbus/AsyncResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/continuity/netbus/NetBusManager;->createResultReceiver(Lcom/xiaomi/continuity/netbus/AsyncResult;)Landroid/os/ResultReceiver;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/continuity/netbus/NetBusManager;->mExecutor:Lcom/xiaomi/continuity/netbus/ServiceExecutor;

    new-instance v3, Lcom/xiaomi/continuity/netbus/n0;

    invoke-direct {v3, p0, p1, p2, v1}, Lcom/xiaomi/continuity/netbus/n0;-><init>(Lcom/xiaomi/continuity/netbus/NetBusManager;Ljava/lang/String;Lcom/xiaomi/continuity/netbus/PayloadListener;Landroid/os/ResultReceiver;)V

    new-instance p1, Lcom/xiaomi/continuity/netbus/o0;

    invoke-direct {p1, p0, v0}, Lcom/xiaomi/continuity/netbus/o0;-><init>(Lcom/xiaomi/continuity/netbus/NetBusManager;Lcom/xiaomi/continuity/netbus/AsyncResult;)V

    invoke-virtual {v2, v3, p1}, Lcom/xiaomi/continuity/netbus/ServiceExecutor;->execute(Lcom/xiaomi/continuity/netbus/ServiceExecutor$Task;Lcom/xiaomi/continuity/netbus/ServiceExecutor$ExceptionHandler;)V

    return-object v0
.end method

.method public registerService(Ljava/lang/String;)Lcom/xiaomi/continuity/netbus/AsyncResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaomi/continuity/netbus/AsyncResult<",
            "Lcom/xiaomi/continuity/netbus/RegisterServiceResultData;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "NetBusManager"

    const-string v2, "registerService %s"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/continuity/netbus/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/xiaomi/continuity/netbus/AsyncResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/continuity/netbus/NetBusManager;->createResultReceiver(Lcom/xiaomi/continuity/netbus/AsyncResult;)Landroid/os/ResultReceiver;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/continuity/netbus/NetBusManager;->mExecutor:Lcom/xiaomi/continuity/netbus/ServiceExecutor;

    new-instance v3, Lcom/xiaomi/continuity/netbus/n1;

    invoke-direct {v3, p0, p1, v1}, Lcom/xiaomi/continuity/netbus/n1;-><init>(Lcom/xiaomi/continuity/netbus/NetBusManager;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    new-instance p1, Lcom/xiaomi/continuity/netbus/o1;

    invoke-direct {p1, p0, v0}, Lcom/xiaomi/continuity/netbus/o1;-><init>(Lcom/xiaomi/continuity/netbus/NetBusManager;Lcom/xiaomi/continuity/netbus/AsyncResult;)V

    invoke-virtual {v2, v3, p1}, Lcom/xiaomi/continuity/netbus/ServiceExecutor;->execute(Lcom/xiaomi/continuity/netbus/ServiceExecutor$Task;Lcom/xiaomi/continuity/netbus/ServiceExecutor$ExceptionHandler;)V

    return-object v0
.end method

.method public requestConnection(Lcom/xiaomi/continuity/netbus/LinkAddress;Ljava/lang/String;Lcom/xiaomi/continuity/netbus/ClientConnectionOptions;Lcom/xiaomi/continuity/netbus/ClientConnectionListener;)Lcom/xiaomi/continuity/netbus/AsyncResult;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/continuity/netbus/LinkAddress;",
            "Ljava/lang/String;",
            "Lcom/xiaomi/continuity/netbus/ClientConnectionOptions;",
            "Lcom/xiaomi/continuity/netbus/ClientConnectionListener;",
            ")",
            "Lcom/xiaomi/continuity/netbus/AsyncResult<",
            "Lcom/xiaomi/continuity/netbus/RequestConnectionResultData;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/xiaomi/continuity/netbus/LinkAddress;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const-string v1, "NetBusManager"

    const-string v2, "requestConnection address:%s, serviceId:%s, options:%s"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/continuity/netbus/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/xiaomi/continuity/netbus/AsyncResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/continuity/netbus/NetBusManager;->createResultReceiver(Lcom/xiaomi/continuity/netbus/AsyncResult;)Landroid/os/ResultReceiver;

    move-result-object v6

    iget-object v7, p0, Lcom/xiaomi/continuity/netbus/NetBusManager;->mExecutor:Lcom/xiaomi/continuity/netbus/ServiceExecutor;

    new-instance v8, Lcom/xiaomi/continuity/netbus/s1;

    move-object v1, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/continuity/netbus/s1;-><init>(Lcom/xiaomi/continuity/netbus/LinkAddress;Ljava/lang/String;Lcom/xiaomi/continuity/netbus/ClientConnectionOptions;Lcom/xiaomi/continuity/netbus/ClientConnectionListener;Landroid/os/ResultReceiver;)V

    new-instance p1, Lcom/xiaomi/continuity/netbus/t1;

    invoke-direct {p1, p0, v0}, Lcom/xiaomi/continuity/netbus/t1;-><init>(Lcom/xiaomi/continuity/netbus/NetBusManager;Lcom/xiaomi/continuity/netbus/AsyncResult;)V

    invoke-virtual {v7, v8, p1}, Lcom/xiaomi/continuity/netbus/ServiceExecutor;->execute(Lcom/xiaomi/continuity/netbus/ServiceExecutor$Task;Lcom/xiaomi/continuity/netbus/ServiceExecutor$ExceptionHandler;)V

    return-object v0
.end method

.method public requestConnection(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/continuity/netbus/ClientConnectionOptions;Lcom/xiaomi/continuity/netbus/ClientConnectionListener;)Lcom/xiaomi/continuity/netbus/AsyncResult;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/xiaomi/continuity/netbus/ClientConnectionOptions;",
            "Lcom/xiaomi/continuity/netbus/ClientConnectionListener;",
            ")",
            "Lcom/xiaomi/continuity/netbus/AsyncResult<",
            "Lcom/xiaomi/continuity/netbus/RequestConnectionResultData;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const-string v1, "NetBusManager"

    const-string v2, "requestConnection deviceId:%s, serviceId:%s, options:%s"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/continuity/netbus/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/xiaomi/continuity/netbus/AsyncResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/continuity/netbus/NetBusManager;->createResultReceiver(Lcom/xiaomi/continuity/netbus/AsyncResult;)Landroid/os/ResultReceiver;

    move-result-object v7

    iget-object v8, p0, Lcom/xiaomi/continuity/netbus/NetBusManager;->mExecutor:Lcom/xiaomi/continuity/netbus/ServiceExecutor;

    new-instance v9, Lcom/xiaomi/continuity/netbus/p1;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/xiaomi/continuity/netbus/p1;-><init>(Lcom/xiaomi/continuity/netbus/NetBusManager;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/continuity/netbus/ClientConnectionOptions;Lcom/xiaomi/continuity/netbus/ClientConnectionListener;Landroid/os/ResultReceiver;)V

    new-instance p1, Lcom/xiaomi/continuity/netbus/r1;

    invoke-direct {p1, p0, v0}, Lcom/xiaomi/continuity/netbus/r1;-><init>(Lcom/xiaomi/continuity/netbus/NetBusManager;Lcom/xiaomi/continuity/netbus/AsyncResult;)V

    invoke-virtual {v8, v9, p1}, Lcom/xiaomi/continuity/netbus/ServiceExecutor;->execute(Lcom/xiaomi/continuity/netbus/ServiceExecutor$Task;Lcom/xiaomi/continuity/netbus/ServiceExecutor$ExceptionHandler;)V

    return-object v0
.end method

.method public sendPayload(Ljava/lang/String;[BLcom/xiaomi/continuity/netbus/PayloadOptions;)Lcom/xiaomi/continuity/netbus/AsyncResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Lcom/xiaomi/continuity/netbus/PayloadOptions;",
            ")",
            "Lcom/xiaomi/continuity/netbus/AsyncResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    array-length v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "NetBusManager"

    const-string v2, "sendPayload connectionId:%s, data.len:%s"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/continuity/netbus/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/xiaomi/continuity/netbus/AsyncResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/continuity/netbus/NetBusManager;->createResultReceiver(Lcom/xiaomi/continuity/netbus/AsyncResult;)Landroid/os/ResultReceiver;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/continuity/netbus/NetBusManager;->mExecutor:Lcom/xiaomi/continuity/netbus/ServiceExecutor;

    new-instance v3, Lcom/xiaomi/continuity/netbus/h2;

    invoke-direct {v3, p1, p2, p3, v1}, Lcom/xiaomi/continuity/netbus/h2;-><init>(Ljava/lang/String;[BLcom/xiaomi/continuity/netbus/PayloadOptions;Landroid/os/ResultReceiver;)V

    new-instance p1, Lcom/xiaomi/continuity/netbus/i2;

    invoke-direct {p1, p0, v0}, Lcom/xiaomi/continuity/netbus/i2;-><init>(Lcom/xiaomi/continuity/netbus/NetBusManager;Lcom/xiaomi/continuity/netbus/AsyncResult;)V

    invoke-virtual {v2, v3, p1}, Lcom/xiaomi/continuity/netbus/ServiceExecutor;->execute(Lcom/xiaomi/continuity/netbus/ServiceExecutor$Task;Lcom/xiaomi/continuity/netbus/ServiceExecutor$ExceptionHandler;)V

    return-object v0
.end method

.method public setAdvertisingConfig(IJ)Lcom/xiaomi/continuity/netbus/AsyncResult;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Lcom/xiaomi/continuity/netbus/AsyncResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/continuity/netbus/AsyncResult;

    invoke-direct {v0}, Lcom/xiaomi/continuity/netbus/AsyncResult;-><init>()V

    invoke-direct {p0, v0}, Lcom/xiaomi/continuity/netbus/NetBusManager;->createResultReceiver(Lcom/xiaomi/continuity/netbus/AsyncResult;)Landroid/os/ResultReceiver;

    move-result-object v6

    iget-object v7, p0, Lcom/xiaomi/continuity/netbus/NetBusManager;->mExecutor:Lcom/xiaomi/continuity/netbus/ServiceExecutor;

    new-instance v8, Lcom/xiaomi/continuity/netbus/q1;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/continuity/netbus/q1;-><init>(Lcom/xiaomi/continuity/netbus/NetBusManager;IJLandroid/os/ResultReceiver;)V

    new-instance p1, Lcom/xiaomi/continuity/netbus/b2;

    invoke-direct {p1, p0, v0}, Lcom/xiaomi/continuity/netbus/b2;-><init>(Lcom/xiaomi/continuity/netbus/NetBusManager;Lcom/xiaomi/continuity/netbus/AsyncResult;)V

    invoke-virtual {v7, v8, p1}, Lcom/xiaomi/continuity/netbus/ServiceExecutor;->execute(Lcom/xiaomi/continuity/netbus/ServiceExecutor$Task;Lcom/xiaomi/continuity/netbus/ServiceExecutor$ExceptionHandler;)V

    return-object v0
.end method

.method public setDiscoveryConfig(IJ)Lcom/xiaomi/continuity/netbus/AsyncResult;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Lcom/xiaomi/continuity/netbus/AsyncResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/continuity/netbus/AsyncResult;

    invoke-direct {v0}, Lcom/xiaomi/continuity/netbus/AsyncResult;-><init>()V

    invoke-direct {p0, v0}, Lcom/xiaomi/continuity/netbus/NetBusManager;->createResultReceiver(Lcom/xiaomi/continuity/netbus/AsyncResult;)Landroid/os/ResultReceiver;

    move-result-object v6

    iget-object v7, p0, Lcom/xiaomi/continuity/netbus/NetBusManager;->mExecutor:Lcom/xiaomi/continuity/netbus/ServiceExecutor;

    new-instance v8, Lcom/xiaomi/continuity/netbus/a1;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/continuity/netbus/a1;-><init>(Lcom/xiaomi/continuity/netbus/NetBusManager;IJLandroid/os/ResultReceiver;)V

    new-instance p1, Lcom/xiaomi/continuity/netbus/b1;

    invoke-direct {p1, p0, v0}, Lcom/xiaomi/continuity/netbus/b1;-><init>(Lcom/xiaomi/continuity/netbus/NetBusManager;Lcom/xiaomi/continuity/netbus/AsyncResult;)V

    invoke-virtual {v7, v8, p1}, Lcom/xiaomi/continuity/netbus/ServiceExecutor;->execute(Lcom/xiaomi/continuity/netbus/ServiceExecutor$Task;Lcom/xiaomi/continuity/netbus/ServiceExecutor$ExceptionHandler;)V

    return-object v0
.end method

.method public setHeartbeatMode(Ljava/lang/String;Lcom/xiaomi/continuity/netbus/HeartbeatMode;)Lcom/xiaomi/continuity/netbus/AsyncResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaomi/continuity/netbus/HeartbeatMode;",
            ")",
            "Lcom/xiaomi/continuity/netbus/AsyncResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p2}, Lcom/xiaomi/continuity/netbus/HeartbeatMode;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "NetBusManager"

    const-string v2, "setHeartbeatMode connectionId:%s, heartbeatMode:%s"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/continuity/netbus/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/xiaomi/continuity/netbus/AsyncResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/continuity/netbus/NetBusManager;->createResultReceiver(Lcom/xiaomi/continuity/netbus/AsyncResult;)Landroid/os/ResultReceiver;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/continuity/netbus/NetBusManager;->mExecutor:Lcom/xiaomi/continuity/netbus/ServiceExecutor;

    new-instance v3, Lcom/xiaomi/continuity/netbus/j1;

    invoke-direct {v3, p1, p2, v1}, Lcom/xiaomi/continuity/netbus/j1;-><init>(Ljava/lang/String;Lcom/xiaomi/continuity/netbus/HeartbeatMode;Landroid/os/ResultReceiver;)V

    new-instance p1, Lcom/xiaomi/continuity/netbus/k1;

    invoke-direct {p1, p0, v0}, Lcom/xiaomi/continuity/netbus/k1;-><init>(Lcom/xiaomi/continuity/netbus/NetBusManager;Lcom/xiaomi/continuity/netbus/AsyncResult;)V

    invoke-virtual {v2, v3, p1}, Lcom/xiaomi/continuity/netbus/ServiceExecutor;->execute(Lcom/xiaomi/continuity/netbus/ServiceExecutor$Task;Lcom/xiaomi/continuity/netbus/ServiceExecutor$ExceptionHandler;)V

    return-object v0
.end method

.method public startAdvertising(Ljava/lang/String;Lcom/xiaomi/continuity/netbus/StartAdvertisingOptions;[B[B)Lcom/xiaomi/continuity/netbus/AsyncResult;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaomi/continuity/netbus/StartAdvertisingOptions;",
            "[B[B)",
            "Lcom/xiaomi/continuity/netbus/AsyncResult<",
            "Lcom/xiaomi/continuity/netbus/AdvertisingResultData;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    if-eqz p3, :cond_0

    array-length v2, p3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v0, v3

    const/4 v2, 0x3

    if-eqz p4, :cond_1

    array-length v1, p4

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "NetBusManager"

    const-string v2, "startAdvertising serviceId:%s, options:%s, data.len:%s, extend.len:%s"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/continuity/netbus/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/xiaomi/continuity/netbus/AsyncResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/continuity/netbus/NetBusManager;->createResultReceiver(Lcom/xiaomi/continuity/netbus/AsyncResult;)Landroid/os/ResultReceiver;

    move-result-object v7

    iget-object v8, p0, Lcom/xiaomi/continuity/netbus/NetBusManager;->mExecutor:Lcom/xiaomi/continuity/netbus/ServiceExecutor;

    new-instance v9, Lcom/xiaomi/continuity/netbus/t0;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/xiaomi/continuity/netbus/t0;-><init>(Lcom/xiaomi/continuity/netbus/NetBusManager;Ljava/lang/String;Lcom/xiaomi/continuity/netbus/StartAdvertisingOptions;[B[BLandroid/os/ResultReceiver;)V

    new-instance p1, Lcom/xiaomi/continuity/netbus/v0;

    invoke-direct {p1, p0, v0}, Lcom/xiaomi/continuity/netbus/v0;-><init>(Lcom/xiaomi/continuity/netbus/NetBusManager;Lcom/xiaomi/continuity/netbus/AsyncResult;)V

    invoke-virtual {v8, v9, p1}, Lcom/xiaomi/continuity/netbus/ServiceExecutor;->execute(Lcom/xiaomi/continuity/netbus/ServiceExecutor$Task;Lcom/xiaomi/continuity/netbus/ServiceExecutor$ExceptionHandler;)V

    return-object v0
.end method

.method public startConnectionServer(Ljava/lang/String;I)Lcom/xiaomi/continuity/netbus/AsyncResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/xiaomi/continuity/netbus/AsyncResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "NetBusManager"

    const-string v2, "startConnectionServer serviceId:%s, mediumType:%s"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/continuity/netbus/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/xiaomi/continuity/netbus/AsyncResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/continuity/netbus/NetBusManager;->createResultReceiver(Lcom/xiaomi/continuity/netbus/AsyncResult;)Landroid/os/ResultReceiver;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/continuity/netbus/NetBusManager;->mExecutor:Lcom/xiaomi/continuity/netbus/ServiceExecutor;

    new-instance v3, Lcom/xiaomi/continuity/netbus/z1;

    invoke-direct {v3, p0, p1, p2, v1}, Lcom/xiaomi/continuity/netbus/z1;-><init>(Lcom/xiaomi/continuity/netbus/NetBusManager;Ljava/lang/String;ILandroid/os/ResultReceiver;)V

    new-instance p1, Lcom/xiaomi/continuity/netbus/a2;

    invoke-direct {p1, p0, v0}, Lcom/xiaomi/continuity/netbus/a2;-><init>(Lcom/xiaomi/continuity/netbus/NetBusManager;Lcom/xiaomi/continuity/netbus/AsyncResult;)V

    invoke-virtual {v2, v3, p1}, Lcom/xiaomi/continuity/netbus/ServiceExecutor;->execute(Lcom/xiaomi/continuity/netbus/ServiceExecutor$Task;Lcom/xiaomi/continuity/netbus/ServiceExecutor$ExceptionHandler;)V

    return-object v0
.end method

.method public startDiscovery(Ljava/lang/String;Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;)Lcom/xiaomi/continuity/netbus/AsyncResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;",
            ")",
            "Lcom/xiaomi/continuity/netbus/AsyncResult<",
            "Lcom/xiaomi/continuity/netbus/DiscoveryResultData;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string v1, "NetBusManager"

    const-string v2, "startDiscovery serviceId:%s, options:%s"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/continuity/netbus/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/xiaomi/continuity/netbus/AsyncResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/continuity/netbus/NetBusManager;->createResultReceiver(Lcom/xiaomi/continuity/netbus/AsyncResult;)Landroid/os/ResultReceiver;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/continuity/netbus/NetBusManager;->mExecutor:Lcom/xiaomi/continuity/netbus/ServiceExecutor;

    new-instance v3, Lcom/xiaomi/continuity/netbus/l0;

    invoke-direct {v3, p0, p1, p2, v1}, Lcom/xiaomi/continuity/netbus/l0;-><init>(Lcom/xiaomi/continuity/netbus/NetBusManager;Ljava/lang/String;Lcom/xiaomi/continuity/netbus/StartDiscoveryOptions;Landroid/os/ResultReceiver;)V

    new-instance p1, Lcom/xiaomi/continuity/netbus/m0;

    invoke-direct {p1, p0, v0}, Lcom/xiaomi/continuity/netbus/m0;-><init>(Lcom/xiaomi/continuity/netbus/NetBusManager;Lcom/xiaomi/continuity/netbus/AsyncResult;)V

    invoke-virtual {v2, v3, p1}, Lcom/xiaomi/continuity/netbus/ServiceExecutor;->execute(Lcom/xiaomi/continuity/netbus/ServiceExecutor$Task;Lcom/xiaomi/continuity/netbus/ServiceExecutor$ExceptionHandler;)V

    return-object v0
.end method

.method public stopAdvertising(Ljava/lang/String;Lcom/xiaomi/continuity/netbus/StopAdvertisingOptions;)Lcom/xiaomi/continuity/netbus/AsyncResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaomi/continuity/netbus/StopAdvertisingOptions;",
            ")",
            "Lcom/xiaomi/continuity/netbus/AsyncResult<",
            "Lcom/xiaomi/continuity/netbus/AdvertisingResultData;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string v1, "NetBusManager"

    const-string v2, "stopAdvertising serviceId:%s, options:%s"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/continuity/netbus/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/xiaomi/continuity/netbus/AsyncResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/continuity/netbus/NetBusManager;->createResultReceiver(Lcom/xiaomi/continuity/netbus/AsyncResult;)Landroid/os/ResultReceiver;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/continuity/netbus/NetBusManager;->mExecutor:Lcom/xiaomi/continuity/netbus/ServiceExecutor;

    new-instance v3, Lcom/xiaomi/continuity/netbus/p0;

    invoke-direct {v3, p0, p1, p2, v1}, Lcom/xiaomi/continuity/netbus/p0;-><init>(Lcom/xiaomi/continuity/netbus/NetBusManager;Ljava/lang/String;Lcom/xiaomi/continuity/netbus/StopAdvertisingOptions;Landroid/os/ResultReceiver;)V

    new-instance p1, Lcom/xiaomi/continuity/netbus/q0;

    invoke-direct {p1, p0, v0}, Lcom/xiaomi/continuity/netbus/q0;-><init>(Lcom/xiaomi/continuity/netbus/NetBusManager;Lcom/xiaomi/continuity/netbus/AsyncResult;)V

    invoke-virtual {v2, v3, p1}, Lcom/xiaomi/continuity/netbus/ServiceExecutor;->execute(Lcom/xiaomi/continuity/netbus/ServiceExecutor$Task;Lcom/xiaomi/continuity/netbus/ServiceExecutor$ExceptionHandler;)V

    return-object v0
.end method

.method public stopConnectionServer(Ljava/lang/String;I)Lcom/xiaomi/continuity/netbus/AsyncResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/xiaomi/continuity/netbus/AsyncResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "NetBusManager"

    const-string v2, "stopConnectionServer serviceId:%s, mediumType:%s"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/continuity/netbus/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/xiaomi/continuity/netbus/AsyncResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/continuity/netbus/NetBusManager;->createResultReceiver(Lcom/xiaomi/continuity/netbus/AsyncResult;)Landroid/os/ResultReceiver;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/continuity/netbus/NetBusManager;->mExecutor:Lcom/xiaomi/continuity/netbus/ServiceExecutor;

    new-instance v3, Lcom/xiaomi/continuity/netbus/u1;

    invoke-direct {v3, p0, p1, p2, v1}, Lcom/xiaomi/continuity/netbus/u1;-><init>(Lcom/xiaomi/continuity/netbus/NetBusManager;Ljava/lang/String;ILandroid/os/ResultReceiver;)V

    new-instance p1, Lcom/xiaomi/continuity/netbus/v1;

    invoke-direct {p1, p0, v0}, Lcom/xiaomi/continuity/netbus/v1;-><init>(Lcom/xiaomi/continuity/netbus/NetBusManager;Lcom/xiaomi/continuity/netbus/AsyncResult;)V

    invoke-virtual {v2, v3, p1}, Lcom/xiaomi/continuity/netbus/ServiceExecutor;->execute(Lcom/xiaomi/continuity/netbus/ServiceExecutor$Task;Lcom/xiaomi/continuity/netbus/ServiceExecutor$ExceptionHandler;)V

    return-object v0
.end method

.method public stopDiscovery(Ljava/lang/String;Lcom/xiaomi/continuity/netbus/StopDiscoveryOptions;)Lcom/xiaomi/continuity/netbus/AsyncResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaomi/continuity/netbus/StopDiscoveryOptions;",
            ")",
            "Lcom/xiaomi/continuity/netbus/AsyncResult<",
            "Lcom/xiaomi/continuity/netbus/DiscoveryResultData;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string v1, "NetBusManager"

    const-string v2, "stopDiscovery serviceId:%s, options:%s"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/continuity/netbus/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/xiaomi/continuity/netbus/AsyncResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/continuity/netbus/NetBusManager;->createResultReceiver(Lcom/xiaomi/continuity/netbus/AsyncResult;)Landroid/os/ResultReceiver;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/continuity/netbus/NetBusManager;->mExecutor:Lcom/xiaomi/continuity/netbus/ServiceExecutor;

    new-instance v3, Lcom/xiaomi/continuity/netbus/w0;

    invoke-direct {v3, p0, p1, p2, v1}, Lcom/xiaomi/continuity/netbus/w0;-><init>(Lcom/xiaomi/continuity/netbus/NetBusManager;Ljava/lang/String;Lcom/xiaomi/continuity/netbus/StopDiscoveryOptions;Landroid/os/ResultReceiver;)V

    new-instance p1, Lcom/xiaomi/continuity/netbus/x0;

    invoke-direct {p1, p0, v0}, Lcom/xiaomi/continuity/netbus/x0;-><init>(Lcom/xiaomi/continuity/netbus/NetBusManager;Lcom/xiaomi/continuity/netbus/AsyncResult;)V

    invoke-virtual {v2, v3, p1}, Lcom/xiaomi/continuity/netbus/ServiceExecutor;->execute(Lcom/xiaomi/continuity/netbus/ServiceExecutor$Task;Lcom/xiaomi/continuity/netbus/ServiceExecutor$ExceptionHandler;)V

    return-object v0
.end method

.method public unbindService()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/continuity/netbus/NetBusManager;->mExecutor:Lcom/xiaomi/continuity/netbus/ServiceExecutor;

    invoke-virtual {v0}, Lcom/xiaomi/continuity/netbus/ServiceExecutor;->unbindService()V

    return-void
.end method

.method public unregisterConnectionListener(Ljava/lang/String;Lcom/xiaomi/continuity/netbus/ServerConnectionListener;)Lcom/xiaomi/continuity/netbus/AsyncResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaomi/continuity/netbus/ServerConnectionListener;",
            ")",
            "Lcom/xiaomi/continuity/netbus/AsyncResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "NetBusManager"

    const-string v2, "unregisterConnectionListener serviceId:%s"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/continuity/netbus/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/xiaomi/continuity/netbus/AsyncResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/continuity/netbus/NetBusManager;->createResultReceiver(Lcom/xiaomi/continuity/netbus/AsyncResult;)Landroid/os/ResultReceiver;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/continuity/netbus/NetBusManager;->mExecutor:Lcom/xiaomi/continuity/netbus/ServiceExecutor;

    new-instance v3, Lcom/xiaomi/continuity/netbus/e1;

    invoke-direct {v3, p0, p1, p2, v1}, Lcom/xiaomi/continuity/netbus/e1;-><init>(Lcom/xiaomi/continuity/netbus/NetBusManager;Ljava/lang/String;Lcom/xiaomi/continuity/netbus/ServerConnectionListener;Landroid/os/ResultReceiver;)V

    new-instance p1, Lcom/xiaomi/continuity/netbus/g1;

    invoke-direct {p1, p0, v0}, Lcom/xiaomi/continuity/netbus/g1;-><init>(Lcom/xiaomi/continuity/netbus/NetBusManager;Lcom/xiaomi/continuity/netbus/AsyncResult;)V

    invoke-virtual {v2, v3, p1}, Lcom/xiaomi/continuity/netbus/ServiceExecutor;->execute(Lcom/xiaomi/continuity/netbus/ServiceExecutor$Task;Lcom/xiaomi/continuity/netbus/ServiceExecutor$ExceptionHandler;)V

    return-object v0
.end method

.method public declared-synchronized unregisterDeathRecipient(Lcom/xiaomi/continuity/netbus/DeathRecipient;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/xiaomi/continuity/netbus/NetBusManager;->mWeakReferenceList:Ljava/util/List;

    new-instance v1, Lcom/xiaomi/continuity/netbus/e2;

    invoke-direct {v1, p1}, Lcom/xiaomi/continuity/netbus/e2;-><init>(Lcom/xiaomi/continuity/netbus/DeathRecipient;)V

    invoke-static {v0, v1}, Lcom/xiaomi/continuity/netbus/j0;->a(Ljava/util/List;Ljava/util/function/Predicate;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public unregisterDiscoveryListener(Ljava/lang/String;Lcom/xiaomi/continuity/netbus/DiscoveryListener;)Lcom/xiaomi/continuity/netbus/AsyncResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaomi/continuity/netbus/DiscoveryListener;",
            ")",
            "Lcom/xiaomi/continuity/netbus/AsyncResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string v1, "NetBusManager"

    const-string v2, "unregisterDiscoveryListener serviceId:%s, listener:%s"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/continuity/netbus/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/xiaomi/continuity/netbus/AsyncResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/continuity/netbus/NetBusManager;->createResultReceiver(Lcom/xiaomi/continuity/netbus/AsyncResult;)Landroid/os/ResultReceiver;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/continuity/netbus/NetBusManager;->mExecutor:Lcom/xiaomi/continuity/netbus/ServiceExecutor;

    new-instance v3, Lcom/xiaomi/continuity/netbus/r0;

    invoke-direct {v3, p0, p1, p2, v1}, Lcom/xiaomi/continuity/netbus/r0;-><init>(Lcom/xiaomi/continuity/netbus/NetBusManager;Ljava/lang/String;Lcom/xiaomi/continuity/netbus/DiscoveryListener;Landroid/os/ResultReceiver;)V

    new-instance p1, Lcom/xiaomi/continuity/netbus/s0;

    invoke-direct {p1, p0, v0}, Lcom/xiaomi/continuity/netbus/s0;-><init>(Lcom/xiaomi/continuity/netbus/NetBusManager;Lcom/xiaomi/continuity/netbus/AsyncResult;)V

    invoke-virtual {v2, v3, p1}, Lcom/xiaomi/continuity/netbus/ServiceExecutor;->execute(Lcom/xiaomi/continuity/netbus/ServiceExecutor$Task;Lcom/xiaomi/continuity/netbus/ServiceExecutor$ExceptionHandler;)V

    return-object v0
.end method

.method public unregisterPayloadListener(Ljava/lang/String;Lcom/xiaomi/continuity/netbus/PayloadListener;)Lcom/xiaomi/continuity/netbus/AsyncResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaomi/continuity/netbus/PayloadListener;",
            ")",
            "Lcom/xiaomi/continuity/netbus/AsyncResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "NetBusManager"

    const-string v2, "unregisterPayloadListener serviceId:%s"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/continuity/netbus/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/xiaomi/continuity/netbus/AsyncResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/continuity/netbus/NetBusManager;->createResultReceiver(Lcom/xiaomi/continuity/netbus/AsyncResult;)Landroid/os/ResultReceiver;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/continuity/netbus/NetBusManager;->mExecutor:Lcom/xiaomi/continuity/netbus/ServiceExecutor;

    new-instance v3, Lcom/xiaomi/continuity/netbus/j2;

    invoke-direct {v3, p0, p1, p2, v1}, Lcom/xiaomi/continuity/netbus/j2;-><init>(Lcom/xiaomi/continuity/netbus/NetBusManager;Ljava/lang/String;Lcom/xiaomi/continuity/netbus/PayloadListener;Landroid/os/ResultReceiver;)V

    new-instance p1, Lcom/xiaomi/continuity/netbus/k0;

    invoke-direct {p1, p0, v0}, Lcom/xiaomi/continuity/netbus/k0;-><init>(Lcom/xiaomi/continuity/netbus/NetBusManager;Lcom/xiaomi/continuity/netbus/AsyncResult;)V

    invoke-virtual {v2, v3, p1}, Lcom/xiaomi/continuity/netbus/ServiceExecutor;->execute(Lcom/xiaomi/continuity/netbus/ServiceExecutor$Task;Lcom/xiaomi/continuity/netbus/ServiceExecutor$ExceptionHandler;)V

    return-object v0
.end method
