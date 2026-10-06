.class public Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AppMonitorWrapper"

.field private static sInstance:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;


# instance fields
.field private mAppMonitorBinder:Lcom/miui/networkassistant/service/IAppMonitorBinder;

.field private mAppMonitorBinderListener:Lcom/miui/networkassistant/service/IAppMonitorBinderListener$Stub;

.field private mContext:Landroid/content/Context;

.field private mIsInited:Z

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

.field private mTrafficManageServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mIsInited:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mListeners:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iput-object v0, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mAppMonitorBinder:Lcom/miui/networkassistant/service/IAppMonitorBinder;

    new-instance v0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$2;-><init>(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mAppMonitorBinderListener:Lcom/miui/networkassistant/service/IAppMonitorBinderListener$Stub;

    new-instance v0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$3;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$3;-><init>(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mTrafficManageServiceConnection:Landroid/content/ServiceConnection;

    sget-object v0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->TAG:Ljava/lang/String;

    const-string v1, "mina MonitorCenter created"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->bindTrafficManageService()V

    return-void
.end method

.method static synthetic access$002(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mIsInited:Z

    return p1
.end method

.method static synthetic access$100(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->broadcastAppListUpdated()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;)Lcom/miui/networkassistant/service/ITrafficManageBinder;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    return-object p0
.end method

.method static synthetic access$202(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;Lcom/miui/networkassistant/service/ITrafficManageBinder;)Lcom/miui/networkassistant/service/ITrafficManageBinder;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    return-object p1
.end method

.method static synthetic access$300(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;)Lcom/miui/networkassistant/service/IAppMonitorBinder;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mAppMonitorBinder:Lcom/miui/networkassistant/service/IAppMonitorBinder;

    return-object p0
.end method

.method static synthetic access$302(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;Lcom/miui/networkassistant/service/IAppMonitorBinder;)Lcom/miui/networkassistant/service/IAppMonitorBinder;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mAppMonitorBinder:Lcom/miui/networkassistant/service/IAppMonitorBinder;

    return-object p1
.end method

.method static synthetic access$400(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;)Lcom/miui/networkassistant/service/IAppMonitorBinderListener$Stub;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mAppMonitorBinderListener:Lcom/miui/networkassistant/service/IAppMonitorBinderListener$Stub;

    return-object p0
.end method

.method private bindTrafficManageService()V
    .locals 5

    iget-object v0, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mContext:Landroid/content/Context;

    const-class v3, Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mTrafficManageServiceConnection:Landroid/content/ServiceConnection;

    invoke-static {}, Lx4/z1;->A()Landroid/os/UserHandle;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v4, v3}, Lx4/v;->b(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    return-void
.end method

.method private broadcastAppListUpdated()V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;

    invoke-interface {v2}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;->onAppListUpdated()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;
    .locals 2

    const-class v0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->sInstance:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->sInstance:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    :cond_0
    sget-object p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->sInstance:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private unBindTrafficManageService()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mAppMonitorBinder:Lcom/miui/networkassistant/service/IAppMonitorBinder;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mAppMonitorBinderListener:Lcom/miui/networkassistant/service/IAppMonitorBinderListener$Stub;

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/service/IAppMonitorBinder;->unRegisterLisener(Lcom/miui/networkassistant/service/IAppMonitorBinderListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mTrafficManageServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->unBindTrafficManageService()V

    return-void
.end method

.method public getAppInfoByPackageName(Ljava/lang/String;)Lcom/miui/networkassistant/model/AppInfo;
    .locals 1

    iget-boolean v0, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mIsInited:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mAppMonitorBinder:Lcom/miui/networkassistant/service/IAppMonitorBinder;

    invoke-interface {v0, p1}, Lcom/miui/networkassistant/service/IAppMonitorBinder;->getAppInfoByPackageName(Ljava/lang/String;)Lcom/miui/networkassistant/model/AppInfo;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFilteredAppInfosList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/networkassistant/model/AppInfo;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mIsInited:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mAppMonitorBinder:Lcom/miui/networkassistant/service/IAppMonitorBinder;

    invoke-interface {v0}, Lcom/miui/networkassistant/service/IAppMonitorBinder;->getFilteredAppInfosList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNetworkAccessedAppList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/networkassistant/model/AppInfo;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mIsInited:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mAppMonitorBinder:Lcom/miui/networkassistant/service/IAppMonitorBinder;

    invoke-interface {v0}, Lcom/miui/networkassistant/service/IAppMonitorBinder;->getNetworkAccessedAppList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNetworkAccessedAppsMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/networkassistant/model/AppInfo;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mIsInited:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mAppMonitorBinder:Lcom/miui/networkassistant/service/IAppMonitorBinder;

    invoke-interface {v0}, Lcom/miui/networkassistant/service/IAppMonitorBinder;->getNetworkAccessedAppsMap()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNonSystemAppList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/networkassistant/model/AppInfo;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mIsInited:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mAppMonitorBinder:Lcom/miui/networkassistant/service/IAppMonitorBinder;

    invoke-interface {v0}, Lcom/miui/networkassistant/service/IAppMonitorBinder;->getNonSystemAppList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSystemAppList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/networkassistant/model/AppInfo;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mIsInited:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mAppMonitorBinder:Lcom/miui/networkassistant/service/IAppMonitorBinder;

    invoke-interface {v0}, Lcom/miui/networkassistant/service/IAppMonitorBinder;->getSystemAppList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerLisener(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v1, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mIsInited:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$1;-><init>(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;)V

    invoke-static {v1}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public unRegisterLisener(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
