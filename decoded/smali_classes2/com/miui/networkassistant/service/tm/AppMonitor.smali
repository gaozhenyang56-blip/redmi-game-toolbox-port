.class Lcom/miui/networkassistant/service/tm/AppMonitor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/networkassistant/service/tm/AppMonitor$AppMonitorBinder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AppMonitor"


# instance fields
.field private mAppMapLock:Ljava/lang/Object;

.field private mAppMonitorBinder:Lcom/miui/networkassistant/service/tm/AppMonitor$AppMonitorBinder;

.field private mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mFillAppLock:Ljava/lang/Object;

.field private mFilteredAppInfosMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/miui/networkassistant/model/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsInited:Z

.field private mIsOldDevice:Z

.field private mListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/miui/networkassistant/service/IAppMonitorBinderListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkAccessedAppsMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/miui/networkassistant/model/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNonSystemAppMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/miui/networkassistant/model/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPkgManager:Landroid/content/pm/PackageManager;

.field private mSecurityManager:Lmiui/security/SecurityManager;

.field private mSocketTaggerManager:Lcom/miui/networkassistant/service/tm/SocketTaggerManager;

.field private mSystemAppMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/miui/networkassistant/model/AppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mListeners:Landroid/os/RemoteCallbackList;

    new-instance v0, Lcom/miui/networkassistant/service/tm/AppMonitor$AppMonitorBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/networkassistant/service/tm/AppMonitor$AppMonitorBinder;-><init>(Lcom/miui/networkassistant/service/tm/AppMonitor;Lcom/miui/networkassistant/service/tm/AppMonitor$1;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mAppMonitorBinder:Lcom/miui/networkassistant/service/tm/AppMonitor$AppMonitorBinder;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mIsInited:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mAppMapLock:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mFillAppLock:Ljava/lang/Object;

    const/16 v1, -0x2710

    iput v1, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mCurrentUserId:I

    iput-boolean v0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mIsOldDevice:Z

    sget-object v0, Lcom/miui/networkassistant/service/tm/AppMonitor;->TAG:Ljava/lang/String;

    const-string v1, "mina MonitorCenter created"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mPkgManager:Landroid/content/pm/PackageManager;

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mContext:Landroid/content/Context;

    const-string v0, "security"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiui/security/SecurityManager;

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mSecurityManager:Lmiui/security/SecurityManager;

    return-void
.end method

.method static synthetic access$100(Lcom/miui/networkassistant/service/tm/AppMonitor;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mFillAppLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/miui/networkassistant/service/tm/AppMonitor;)Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mFilteredAppInfosMap:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/miui/networkassistant/service/tm/AppMonitor;)Landroid/os/RemoteCallbackList;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mListeners:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/networkassistant/service/tm/AppMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/AppMonitor;->fillNetworkAccessedApps()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/networkassistant/service/tm/AppMonitor;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mIsInited:Z

    return p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/networkassistant/service/tm/AppMonitor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/networkassistant/service/tm/AppMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/AppMonitor;->broadcastAppListUpdated()V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/networkassistant/service/tm/AppMonitor;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mAppMapLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/networkassistant/service/tm/AppMonitor;)Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mNetworkAccessedAppsMap:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static synthetic access$800(Lcom/miui/networkassistant/service/tm/AppMonitor;)Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mSystemAppMap:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static synthetic access$900(Lcom/miui/networkassistant/service/tm/AppMonitor;)Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mNonSystemAppMap:Landroid/util/ArrayMap;

    return-object p0
.end method

.method private addMiuiFirewallSharedUid(Lmiui/security/SecurityManager;I)V
    .locals 6

    iget-boolean v0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mIsOldDevice:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "addMiuiFirewallSharedUid"

    new-array v3, v1, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v5

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    sget-object p1, Lcom/miui/networkassistant/service/tm/AppMonitor;->TAG:Ljava/lang/String;

    const-string p2, "addMiuiFirewallSharedUid Exception"

    goto :goto_0

    :catch_1
    iput-boolean v1, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mIsOldDevice:Z

    sget-object p1, Lcom/miui/networkassistant/service/tm/AppMonitor;->TAG:Ljava/lang/String;

    const-string p2, "addMiuiFirewallSharedUid NoSuchMethodException"

    :goto_0
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private broadcastAppListUpdated()V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    :try_start_1
    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/miui/networkassistant/service/IAppMonitorBinderListener;

    invoke-interface {v2}, Lcom/miui/networkassistant/service/IAppMonitorBinderListener;->onAppListUpdated()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private buildAppInfo(Ljava/lang/String;IZ)Lcom/miui/networkassistant/model/AppInfo;
    .locals 1

    new-instance v0, Lcom/miui/networkassistant/model/AppInfo;

    invoke-direct {v0}, Lcom/miui/networkassistant/model/AppInfo;-><init>()V

    iput p2, v0, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    invoke-static {p1, p2}, Lcom/miui/networkassistant/utils/PackageUtil;->getPackageNameFormat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    iput-boolean p3, v0, Lcom/miui/networkassistant/model/AppInfo;->isSystemApp:Z

    return-object v0
.end method

.method private fillNetworkAccessedApps()V
    .locals 11

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iget v6, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mCurrentUserId:I

    const/4 v7, 0x0

    invoke-static {v7, v6}, Ltg/a;->c(II)Ljava/util/List;

    move-result-object v6

    if-nez v6, :cond_0

    return-void

    :cond_0
    iget v8, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mCurrentUserId:I

    if-nez v8, :cond_1

    const/16 v8, 0x3e7

    invoke-static {v7, v8}, Ltg/a;->c(II)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ApplicationInfo;

    iget-object v8, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mContext:Landroid/content/Context;

    iget-object v9, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v10, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v10}, Lx4/z1;->m(I)I

    move-result v10

    invoke-static {v8, v9, v10}, Lug/a;->b(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "Enterprise"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Net config is restricted for package"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v8, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v9, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mCurrentUserId:I

    invoke-static {v8, v9}, Lcom/miui/networkassistant/utils/PackageUtil;->getAppEnable(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_0

    :cond_4
    iget-object v8, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mPkgManager:Landroid/content/pm/PackageManager;

    iget-object v9, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/miui/networkassistant/utils/PackageUtil;->hasInternetPermission(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v9, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Lcom/miui/networkassistant/utils/PackageUtil;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v10

    invoke-direct {p0, v8, v9, v10}, Lcom/miui/networkassistant/service/tm/AppMonitor;->buildAppInfo(Ljava/lang/String;IZ)Lcom/miui/networkassistant/model/AppInfo;

    move-result-object v8

    iget-boolean v9, v8, Lcom/miui/networkassistant/model/AppInfo;->isSystemApp:Z

    if-eqz v9, :cond_6

    iget v9, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    iget v9, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v9, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v10, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mContext:Landroid/content/Context;

    invoke-static {v9, v10}, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->isGroupHead(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_8

    iget v9, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/networkassistant/model/AppInfo;

    iget-object v10, v9, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v10}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, v9, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-virtual {v3, v9}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v9, v8, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, v8, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    iget v9, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    iget-object v9, v8, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_7
    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v7, v8, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :goto_2
    iget-object v7, v8, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    iget-object v7, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mSecurityManager:Lmiui/security/SecurityManager;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v7, v6}, Lcom/miui/networkassistant/service/tm/AppMonitor;->addMiuiFirewallSharedUid(Lmiui/security/SecurityManager;I)V

    goto :goto_3

    :cond_a
    invoke-interface {v5}, Ljava/util/Set;->clear()V

    iget-object v4, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mAppMapLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mNetworkAccessedAppsMap:Landroid/util/ArrayMap;

    iput-object v1, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mSystemAppMap:Landroid/util/ArrayMap;

    iput-object v2, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mNonSystemAppMap:Landroid/util/ArrayMap;

    iput-object v3, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mFilteredAppInfosMap:Landroid/util/ArrayMap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mIsInited:Z

    monitor-exit v4

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isShouldRefreshAppList(I)Z
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mCurrentUserId:I

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method getBinder()Lcom/miui/networkassistant/service/IAppMonitorBinder;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mAppMonitorBinder:Lcom/miui/networkassistant/service/tm/AppMonitor$AppMonitorBinder;

    return-object v0
.end method

.method initData(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/service/tm/AppMonitor;->isShouldRefreshAppList(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/miui/networkassistant/service/tm/AppMonitor;->TAG:Ljava/lang/String;

    const-string v1, "init app list"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mCurrentUserId:I

    new-instance p1, Lcom/miui/networkassistant/service/tm/AppMonitor$1;

    invoke-direct {p1, p0}, Lcom/miui/networkassistant/service/tm/AppMonitor$1;-><init>(Lcom/miui/networkassistant/service/tm/AppMonitor;)V

    invoke-static {p1}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method onPackageChanged(Landroid/content/Intent;)V
    .locals 3

    if-eqz p1, :cond_7

    iget-boolean v0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mIsInited:Z

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    :cond_1
    const-string v0, "android.intent.extra.UID"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    if-nez v0, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/miui/networkassistant/utils/PackageUtil;->isSystemApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->isGroupUid(ILandroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->isGroupHead(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    return-void

    :cond_3
    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mPkgManager:Landroid/content/pm/PackageManager;

    invoke-static {v2, v1}, Lcom/miui/networkassistant/utils/PackageUtil;->hasInternetPermission(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0, v1, v0, p1}, Lcom/miui/networkassistant/service/tm/AppMonitor;->buildAppInfo(Ljava/lang/String;IZ)Lcom/miui/networkassistant/model/AppInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mAppMapLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mNetworkAccessedAppsMap:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p1, Lcom/miui/networkassistant/model/AppInfo;->isSystemApp:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mSystemAppMap:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mNonSystemAppMap:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mFilteredAppInfosMap:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_5
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mAppMapLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1
    invoke-static {v1, v0}, Lcom/miui/networkassistant/utils/PackageUtil;->getPackageNameFormat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mNetworkAccessedAppsMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mSystemAppMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mNonSystemAppMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mFilteredAppInfosMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p1

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_6
    :goto_2
    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/AppMonitor;->broadcastAppListUpdated()V

    :cond_7
    :goto_3
    return-void
.end method
