.class public Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/gnss/polaris/sdk/IPolarisManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/gnss/polaris/sdk/PolarisManager$PolarisDeathRecipient;,
        Lcom/xiaomi/gnss/polaris/sdk/PolarisManager$PolarisServiceConnection;,
        Lcom/xiaomi/gnss/polaris/sdk/PolarisManager$ServiceConnectCallback;,
        Lcom/xiaomi/gnss/polaris/sdk/PolarisManager$ServiceType;
    }
.end annotation


# static fields
.field private static mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private static managerInstance:Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;

.field private static sPolarisService:Lcom/xiaomi/gnss/polaris/IPolarisService;


# instance fields
.field private final MAX_RECONNECT_TIME:I

.field private final POLARIS_SDK_VERSION:Ljava/lang/String;

.field private final SERVICE_COMPONENT_CLS:Ljava/lang/String;

.field private final SERVICE_COMPONENT_PKG:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private deathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private iMiGeoManagerService:Lcom/xiaomi/gnss/polaris/geofence/IMiGeoManagerService;

.field private polarisGeofenceService:Lcom/xiaomi/gnss/polaris/sdk/geofence/PolarisGeofenceService;

.field private final serviceConnection:Lcom/xiaomi/gnss/polaris/sdk/PolarisManager$PolarisServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;->managerInstance:Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "PolarisManager"

    iput-object v0, p0, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;->TAG:Ljava/lang/String;

    const-string v0, "1.0.3-RELEASE"

    iput-object v0, p0, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;->POLARIS_SDK_VERSION:Ljava/lang/String;

    const-string v0, "com.xiaomi.gnss.polaris"

    iput-object v0, p0, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;->SERVICE_COMPONENT_PKG:Ljava/lang/String;

    const-string v0, "com.xiaomi.gnss.polaris.PolarisService"

    iput-object v0, p0, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;->SERVICE_COMPONENT_CLS:Ljava/lang/String;

    const/4 v0, 0x5

    iput v0, p0, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;->MAX_RECONNECT_TIME:I

    new-instance v0, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager$PolarisServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager$PolarisServiceConnection;-><init>(Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;Lcom/xiaomi/gnss/polaris/sdk/PolarisManager$1;)V

    iput-object v0, p0, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;->serviceConnection:Lcom/xiaomi/gnss/polaris/sdk/PolarisManager$PolarisServiceConnection;

    new-instance v0, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager$PolarisDeathRecipient;

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager$PolarisDeathRecipient;-><init>(Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;Lcom/xiaomi/gnss/polaris/sdk/PolarisManager$1;)V

    iput-object v0, p0, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    iput-object p1, p0, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;->context:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    invoke-static {p0}, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;->lambda$connectPolarisServiceSync$0(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-void
.end method

.method static synthetic access$002(Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;Lcom/xiaomi/gnss/polaris/geofence/IMiGeoManagerService;)Lcom/xiaomi/gnss/polaris/geofence/IMiGeoManagerService;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;->iMiGeoManagerService:Lcom/xiaomi/gnss/polaris/geofence/IMiGeoManagerService;

    return-object p1
.end method

.method static synthetic access$100()Lcom/xiaomi/gnss/polaris/IPolarisService;
    .locals 1

    sget-object v0, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;->sPolarisService:Lcom/xiaomi/gnss/polaris/IPolarisService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/xiaomi/gnss/polaris/IPolarisService;)Lcom/xiaomi/gnss/polaris/IPolarisService;
    .locals 0

    sput-object p0, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;->sPolarisService:Lcom/xiaomi/gnss/polaris/IPolarisService;

    return-object p0
.end method

.method static synthetic access$202(Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;Lcom/xiaomi/gnss/polaris/sdk/geofence/PolarisGeofenceService;)Lcom/xiaomi/gnss/polaris/sdk/geofence/PolarisGeofenceService;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;->polarisGeofenceService:Lcom/xiaomi/gnss/polaris/sdk/geofence/PolarisGeofenceService;

    return-object p1
.end method

.method static synthetic access$300(Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;)Lcom/xiaomi/gnss/polaris/sdk/geofence/PolarisGeofenceService;
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;->getGeofenceService()Lcom/xiaomi/gnss/polaris/sdk/geofence/PolarisGeofenceService;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;)Lcom/xiaomi/gnss/polaris/sdk/PolarisManager$PolarisServiceConnection;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;->serviceConnection:Lcom/xiaomi/gnss/polaris/sdk/PolarisManager$PolarisServiceConnection;

    return-object p0
.end method

.method static synthetic access$600(Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method static synthetic access$800(Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;->reconnectPolarisService()V

    return-void
.end method

.method static synthetic access$900(Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;->context:Landroid/content/Context;

    return-object p0
.end method

.method private checkPolarisServiceConnect()V
    .locals 2

    sget-object v0, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;->sPolarisService:Lcom/xiaomi/gnss/polaris/IPolarisService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/xiaomi/gnss/polaris/sdk/exception/PolarisException;

    const-string v1, "polaris service not connect"

    invoke-direct {v0, v1}, Lcom/xiaomi/gnss/polaris/sdk/exception/PolarisException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getBooleanSystemProperties(Ljava/lang/String;Z)Z
    .locals 7

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getBoolean"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return p2
.end method

.method private declared-synchronized getGeofenceService()Lcom/xiaomi/gnss/polaris/sdk/geofence/PolarisGeofenceService;
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;->checkPolarisServiceConnect()V

    iget-object v0, p0, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;->polarisGeofenceService:Lcom/xiaomi/gnss/polaris/sdk/geofence/PolarisGeofenceService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;->iMiGeoManagerService:Lcom/xiaomi/gnss/polaris/geofence/IMiGeoManagerService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    :try_start_2
    sget-object v0, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;->sPolarisService:Lcom/xiaomi/gnss/polaris/IPolarisService;

    invoke-interface {v0}, Lcom/xiaomi/gnss/polaris/IPolarisService;->getGeoManagerService()Lcom/xiaomi/gnss/polaris/geofence/IMiGeoManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;->iMiGeoManagerService:Lcom/xiaomi/gnss/polaris/geofence/IMiGeoManagerService;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "PolarisManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not get the IMiGeoManagerService : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :cond_1
    :goto_1
    :try_start_4
    iget-object v0, p0, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;->iMiGeoManagerService:Lcom/xiaomi/gnss/polaris/geofence/IMiGeoManagerService;

    invoke-static {v0, v1}, Lcom/xiaomi/gnss/polaris/sdk/PolarisGeofenceServiceImpl;->getInstance(Landroid/content/Context;Lcom/xiaomi/gnss/polaris/geofence/IMiGeoManagerService;)Lcom/xiaomi/gnss/polaris/sdk/PolarisGeofenceServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;->polarisGeofenceService:Lcom/xiaomi/gnss/polaris/sdk/geofence/PolarisGeofenceService;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;
    .locals 2

    const-class v0, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;->managerInstance:Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;

    invoke-direct {v1, p0}, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;->managerInstance:Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;

    :cond_0
    sget-object p0, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-nez p0, :cond_1

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    sput-object p0, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    :cond_1
    sget-object p0, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;->managerInstance:Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private isSupportGeofenceService()Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_0

    const-string v0, "persist.sys.gps.fence"

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;->getBooleanSystemProperties(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static synthetic lambda$connectPolarisServiceSync$0(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private reconnectPolarisService()V
    .locals 5
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;->sPolarisService:Lcom/xiaomi/gnss/polaris/IPolarisService;

    iput-object v0, p0, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;->iMiGeoManagerService:Lcom/xiaomi/gnss/polaris/geofence/IMiGeoManagerService;

    iput-object v0, p0, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;->polarisGeofenceService:Lcom/xiaomi/gnss/polaris/sdk/geofence/PolarisGeofenceService;

    const-string v0, "PolarisManager"

    const-string v1, "try to reconnect polarisService"

    invoke-static {v0, v1}, Lcom/xiaomi/gnss/polaris/sdk/utils/PLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.xiaomi.gnss.polaris"

    const-string v4, "com.xiaomi.gnss.polaris.PolarisService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const-string v2, "reconnecting polaris service async"

    invoke-static {v0, v2}, Lcom/xiaomi/gnss/polaris/sdk/utils/PLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;->serviceConnection:Lcom/xiaomi/gnss/polaris/sdk/PolarisManager$PolarisServiceConnection;

    new-instance v2, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager$1;

    invoke-direct {v2, p0}, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager$1;-><init>(Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;)V

    invoke-virtual {v0, v2}, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager$PolarisServiceConnection;->setConnectSuccessCb(Lcom/xiaomi/gnss/polaris/sdk/PolarisManager$ServiceConnectCallback;)V

    iget-object v0, p0, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;->context:Landroid/content/Context;

    sget-object v2, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    iget-object v3, p0, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;->serviceConnection:Lcom/xiaomi/gnss/polaris/sdk/PolarisManager$PolarisServiceConnection;

    const/4 v4, 0x1

    invoke-static {v0, v1, v4, v2, v3}, Lbi/j;->a(Landroid/content/Context;Landroid/content/Intent;ILjava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z

    return-void
.end method


# virtual methods
.method public declared-synchronized connectPolarisServiceSync()V
    .locals 7
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.xiaomi.gnss.polaris"

    const-string v3, "com.xiaomi.gnss.polaris.PolarisService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    sget-object v1, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;->sPolarisService:Lcom/xiaomi/gnss/polaris/IPolarisService;

    if-nez v1, :cond_2

    const-string v1, "PolarisManager"

    const-string v2, "connecting polaris service sync"

    invoke-static {v1, v2}, Lcom/xiaomi/gnss/polaris/sdk/utils/PLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iget-object v3, p0, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;->serviceConnection:Lcom/xiaomi/gnss/polaris/sdk/PolarisManager$PolarisServiceConnection;

    new-instance v4, Lcom/xiaomi/gnss/polaris/sdk/a;

    invoke-direct {v4, v1}, Lcom/xiaomi/gnss/polaris/sdk/a;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v3, v4}, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager$PolarisServiceConnection;->setConnectSuccessCb(Lcom/xiaomi/gnss/polaris/sdk/PolarisManager$ServiceConnectCallback;)V

    iget-object v3, p0, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;->context:Landroid/content/Context;

    sget-object v4, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    iget-object v5, p0, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;->serviceConnection:Lcom/xiaomi/gnss/polaris/sdk/PolarisManager$PolarisServiceConnection;

    const/4 v6, 0x1

    invoke-static {v3, v0, v6, v4, v5}, Lbi/j;->a(Landroid/content/Context;Landroid/content/Intent;ILjava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z

    move-result v0

    :goto_0
    const/16 v3, 0xa

    if-ge v2, v3, :cond_1

    const-string v3, "PolarisManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wait connect time "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", bindResult: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const-wide/16 v3, 0xc8

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :try_start_2
    new-instance v0, Lcom/xiaomi/gnss/polaris/sdk/exception/PolarisException;

    const-string v1, "connect polaris service timeout"

    invoke-direct {v0, v1}, Lcom/xiaomi/gnss/polaris/sdk/exception/PolarisException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPolarisSdkVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.0.3-RELEASE"

    return-object v0
.end method

.method public getPolarisServerVersion()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;->checkPolarisServiceConnect()V

    :try_start_0
    sget-object v0, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;->sPolarisService:Lcom/xiaomi/gnss/polaris/IPolarisService;

    invoke-interface {v0}, Lcom/xiaomi/gnss/polaris/IPolarisService;->getPolarisVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail in getPolarisServerVersion() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PolarisManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubService(Lcom/xiaomi/gnss/polaris/sdk/PolarisManager$ServiceType;)Lcom/xiaomi/gnss/polaris/sdk/IChildService;
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;->checkPolarisServiceConnect()V

    sget-object v0, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager$ServiceType;->Geofence:Lcom/xiaomi/gnss/polaris/sdk/PolarisManager$ServiceType;

    if-ne p1, v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;->getGeofenceService()Lcom/xiaomi/gnss/polaris/sdk/geofence/PolarisGeofenceService;

    move-result-object p1
    :try_end_0
    .catch Lcom/xiaomi/gnss/polaris/sdk/exception/PolarisException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public isPolarisSupport()Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_0

    const-string v0, "persist.sys.gps.polaris"

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;->getBooleanSystemProperties(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isSubServiceSupport(Lcom/xiaomi/gnss/polaris/sdk/PolarisManager$ServiceType;)Z
    .locals 1

    sget-object v0, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager$ServiceType;->Geofence:Lcom/xiaomi/gnss/polaris/sdk/PolarisManager$ServiceType;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;->isSupportGeofenceService()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
