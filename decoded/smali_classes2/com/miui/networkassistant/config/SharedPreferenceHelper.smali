.class public Lcom/miui/networkassistant/config/SharedPreferenceHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/networkassistant/config/SharedPreferenceHelper$IPreferences;,
        Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;,
        Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;
    }
.end annotation


# static fields
.field private static final MODE:I

.field private static sInstanceMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/miui/networkassistant/config/SharedPreferenceHelper;",
            ">;"
        }
    .end annotation
.end field

.field private static sTmConnection:Landroid/content/ServiceConnection;

.field private static sTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private final mBinderPreLock:Ljava/lang/Object;

.field private mBinderPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;

.field private mFileName:Ljava/lang/String;

.field private mPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/networkassistant/config/SharedPreferenceHelper$1;

    invoke-direct {v0}, Lcom/miui/networkassistant/config/SharedPreferenceHelper$1;-><init>()V

    sput-object v0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->sTmConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mBinderPreLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mBinderPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;

    iput-object p2, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mFileName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mAppContext:Landroid/content/Context;

    new-instance v0, Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;-><init>(Lcom/miui/networkassistant/config/SharedPreferenceHelper;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;

    sget-object p1, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->sTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    if-eqz p1, :cond_0

    :try_start_0
    new-instance p2, Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;

    iget-object v1, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mFileName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;->getBinderListener()Lcom/miui/networkassistant/service/ISharedPreBinderListener;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->getSharedPreBinder(Ljava/lang/String;Lcom/miui/networkassistant/service/ISharedPreBinderListener;)Lcom/miui/networkassistant/service/ISharedPreBinder;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;-><init>(Lcom/miui/networkassistant/config/SharedPreferenceHelper;Lcom/miui/networkassistant/service/ISharedPreBinder;)V

    iput-object p2, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mBinderPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic access$002(Lcom/miui/networkassistant/service/ITrafficManageBinder;)Lcom/miui/networkassistant/service/ITrafficManageBinder;
    .locals 0

    sput-object p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->sTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    return-object p0
.end method

.method static synthetic access$100()V
    .locals 0

    invoke-static {}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->onBinderAttach()V

    return-void
.end method

.method private attachBinder(Lcom/miui/networkassistant/service/ITrafficManageBinder;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mBinderPreLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v1, Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;

    iget-object v2, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mFileName:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;

    invoke-virtual {v3}, Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;->getBinderListener()Lcom/miui/networkassistant/service/ISharedPreBinderListener;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->getSharedPreBinder(Ljava/lang/String;Lcom/miui/networkassistant/service/ISharedPreBinderListener;)Lcom/miui/networkassistant/service/ISharedPreBinder;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;-><init>(Lcom/miui/networkassistant/config/SharedPreferenceHelper;Lcom/miui/networkassistant/service/ISharedPreBinder;)V

    iput-object v1, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mBinderPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/networkassistant/config/SharedPreferenceHelper;
    .locals 2

    const-class v0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->sInstanceMap:Landroid/util/ArrayMap;

    if-nez v1, :cond_0

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    sput-object v1, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->sInstanceMap:Landroid/util/ArrayMap;

    :cond_0
    sget-object v1, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->sInstanceMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    if-nez v1, :cond_1

    new-instance v1, Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    invoke-direct {v1, p0, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->sInstanceMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static initForUIProcess()V
    .locals 2

    invoke-static {}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->getInstance()Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;

    move-result-object v0

    sget-object v1, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->sTmConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->bindTmService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method private static declared-synchronized onBinderAttach()V
    .locals 4

    const-class v0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->sInstanceMap:Landroid/util/ArrayMap;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->sInstanceMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    sget-object v3, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->sTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    invoke-direct {v2, v3}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->attachBinder(Lcom/miui/networkassistant/service/ITrafficManageBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public attachBinderListener(Lcom/miui/networkassistant/service/ISharedPreBinderListener;)V
    .locals 0

    return-void
.end method

.method protected finalize()V
    .locals 2

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    invoke-static {}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->getInstance()Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;

    move-result-object v0

    sget-object v1, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->sTmConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->unbindTmService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public load(Ljava/lang/String;F)F
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mBinderPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mBinderPreLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mBinderPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;

    invoke-virtual {v1, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;->load(Ljava/lang/String;F)F

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;->load(Ljava/lang/String;F)F

    move-result p1

    return p1
.end method

.method public load(Ljava/lang/String;I)I
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mBinderPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mBinderPreLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mBinderPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;

    invoke-virtual {v1, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;->load(Ljava/lang/String;I)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;->load(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public load(Ljava/lang/String;J)J
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mBinderPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mBinderPreLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mBinderPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;

    invoke-virtual {v1, p1, p2, p3}, Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;->load(Ljava/lang/String;J)J

    move-result-wide p1

    monitor-exit v0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;->load(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public load(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mBinderPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mBinderPreLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mBinderPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;

    invoke-virtual {v1, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;->load(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;->load(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/lang/String;Z)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mBinderPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mBinderPreLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mBinderPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;

    invoke-virtual {v1, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;->load(Ljava/lang/String;Z)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;->load(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public save(Ljava/lang/String;F)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mBinderPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mBinderPreLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mBinderPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;

    invoke-virtual {v1, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;->save(Ljava/lang/String;F)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lx4/f1;->G(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;->save(Ljava/lang/String;F)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public save(Ljava/lang/String;I)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mBinderPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mBinderPreLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mBinderPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;

    invoke-virtual {v1, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;->save(Ljava/lang/String;I)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lx4/f1;->G(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;->save(Ljava/lang/String;I)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public save(Ljava/lang/String;J)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mBinderPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mBinderPreLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mBinderPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;

    invoke-virtual {v1, p1, p2, p3}, Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;->save(Ljava/lang/String;J)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lx4/f1;->G(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;->save(Ljava/lang/String;J)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public save(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mBinderPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mBinderPreLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mBinderPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;

    invoke-virtual {v1, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;->save(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lx4/f1;->G(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;->save(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public save(Ljava/lang/String;Z)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mBinderPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mBinderPreLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mBinderPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;

    invoke-virtual {v1, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;->save(Ljava/lang/String;Z)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lx4/f1;->G(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;->save(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
