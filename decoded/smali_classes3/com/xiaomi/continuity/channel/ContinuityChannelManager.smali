.class public Lcom/xiaomi/continuity/channel/ContinuityChannelManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/continuity/channel/ContinuityChannelManager$LyraWifiP2PPermission;,
        Lcom/xiaomi/continuity/channel/ContinuityChannelManager$LyraWifiPermission;,
        Lcom/xiaomi/continuity/channel/ContinuityChannelManager$LyraBluetoothPermission;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ContinuityChannel.Manager"

.field private static mConnManager:Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;

.field private static mInstance:Lcom/xiaomi/continuity/channel/ContinuityChannelManager;


# instance fields
.field private final mBinderRunnable:Ljava/lang/Runnable;

.field private final mDeathList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mNChMgr:Lcom/xiaomi/continuity/channel/NChannelManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/continuity/channel/ContinuityChannelManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/xiaomi/continuity/channel/c;

    invoke-direct {v0, p0}, Lcom/xiaomi/continuity/channel/c;-><init>(Lcom/xiaomi/continuity/channel/ContinuityChannelManager;)V

    iput-object v0, p0, Lcom/xiaomi/continuity/channel/ContinuityChannelManager;->mBinderRunnable:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/continuity/channel/ContinuityChannelManager;->mDeathList:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sput-object p2, Lcom/xiaomi/continuity/channel/ContinuityChannelManager;->mConnManager:Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;

    new-instance v0, Lcom/xiaomi/continuity/channel/NChannelManager;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/xiaomi/continuity/channel/NChannelManager;-><init>(Landroid/content/Context;Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;)V

    iput-object v0, p0, Lcom/xiaomi/continuity/channel/ContinuityChannelManager;->mNChMgr:Lcom/xiaomi/continuity/channel/NChannelManager;

    new-instance p1, Lcom/xiaomi/continuity/channel/ContinuityChannelManager$1;

    invoke-direct {p1, p0}, Lcom/xiaomi/continuity/channel/ContinuityChannelManager$1;-><init>(Lcom/xiaomi/continuity/channel/ContinuityChannelManager;)V

    invoke-virtual {p2, p1}, Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;->addServiceListener(Lcom/xiaomi/continuity/ContinuityServiceListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/xiaomi/continuity/channel/ContinuityChannelManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/continuity/channel/ContinuityChannelManager;->binderDied()V

    return-void
.end method

.method public static synthetic access$000(Lcom/xiaomi/continuity/channel/ContinuityChannelManager;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/continuity/channel/ContinuityChannelManager;->mBinderRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/xiaomi/continuity/channel/ContinuityChannelManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/continuity/channel/ContinuityChannelManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private declared-synchronized binderDied()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "binderDied need notify app.size="

    invoke-static {v0}, Lcom/xiaomi/continuity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/continuity/channel/ContinuityChannelManager;->mDeathList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContinuityChannel.Manager"

    invoke-static {v1, v0}, Lcom/xiaomi/continuity/netbus/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/continuity/channel/ContinuityChannelManager;->mDeathList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/xiaomi/continuity/channel/ContinuityChannelManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/xiaomi/continuity/channel/ContinuityChannelManager;
    .locals 3

    const-class v0, Lcom/xiaomi/continuity/channel/ContinuityChannelManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/continuity/channel/ContinuityChannelManager;->mInstance:Lcom/xiaomi/continuity/channel/ContinuityChannelManager;

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/continuity/channel/ContinuityChannelManager;

    invoke-direct {v2, p0, v1}, Lcom/xiaomi/continuity/channel/ContinuityChannelManager;-><init>(Landroid/content/Context;Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;)V

    sput-object v2, Lcom/xiaomi/continuity/channel/ContinuityChannelManager;->mInstance:Lcom/xiaomi/continuity/channel/ContinuityChannelManager;

    :cond_0
    sget-object p0, Lcom/xiaomi/continuity/channel/ContinuityChannelManager;->mInstance:Lcom/xiaomi/continuity/channel/ContinuityChannelManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public confirmChannel(II)I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/continuity/channel/ContinuityChannelManager;->mNChMgr:Lcom/xiaomi/continuity/channel/NChannelManager;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/continuity/channel/NChannelManager;->confirmChannel(II)I

    move-result p1

    return p1
.end method

.method public createChannel(Lcom/xiaomi/continuity/netbus/LinkAddress;Lcom/xiaomi/continuity/ServiceName;Lcom/xiaomi/continuity/channel/ClientChannelOptions;Lcom/xiaomi/continuity/channel/ChannelListener;Ljava/util/concurrent/Executor;)I
    .locals 6

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/xiaomi/continuity/channel/ContinuityChannelManager;->mNChMgr:Lcom/xiaomi/continuity/channel/NChannelManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/continuity/channel/NChannelManager;->createChannel2(Lcom/xiaomi/continuity/netbus/LinkAddress;Lcom/xiaomi/continuity/ServiceName;Lcom/xiaomi/continuity/channel/ClientChannelOptions;Lcom/xiaomi/continuity/channel/ChannelListener;Ljava/util/concurrent/Executor;)I

    move-result p1

    return p1
.end method

.method public createChannel(Ljava/lang/String;Lcom/xiaomi/continuity/ServiceName;Lcom/xiaomi/continuity/channel/ClientChannelOptions;Lcom/xiaomi/continuity/channel/ChannelListener;Ljava/util/concurrent/Executor;)I
    .locals 6

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/xiaomi/continuity/channel/ContinuityChannelManager;->mNChMgr:Lcom/xiaomi/continuity/channel/NChannelManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/continuity/channel/NChannelManager;->createChannel(Ljava/lang/String;Lcom/xiaomi/continuity/ServiceName;Lcom/xiaomi/continuity/channel/ClientChannelOptions;Lcom/xiaomi/continuity/channel/ChannelListener;Ljava/util/concurrent/Executor;)I

    move-result p1

    return p1
.end method

.method public destroyChannel(I)I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/continuity/channel/ContinuityChannelManager;->mNChMgr:Lcom/xiaomi/continuity/channel/NChannelManager;

    invoke-virtual {v0, p1}, Lcom/xiaomi/continuity/channel/NChannelManager;->destroyChannel(I)I

    move-result p1

    return p1
.end method

.method public getChannelInfoExt(II)Landroid/os/Bundle;
    .locals 1

    sget-object v0, Lcom/xiaomi/continuity/channel/ContinuityChannelManager;->mConnManager:Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;->getChannelInfoExt(II)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public registerChannelListener(Lcom/xiaomi/continuity/ServiceName;Lcom/xiaomi/continuity/channel/ServerChannelOptions;Lcom/xiaomi/continuity/channel/ChannelListener;Ljava/util/concurrent/Executor;)I
    .locals 2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "API\u63a5\u53e3\u5c42\u8c03\u7528\u6ce8\u518cregisterChannelListener, serviceName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/continuity/ServiceName;->toMergeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", trustLevel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/xiaomi/continuity/channel/ServerChannelOptions;->getTrustLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContinuityChannel.Manager"

    invoke-static {v1, v0}, Lcom/xiaomi/continuity/netbus/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/continuity/channel/ContinuityChannelManager;->mNChMgr:Lcom/xiaomi/continuity/channel/NChannelManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaomi/continuity/channel/NChannelManager;->registerChannelListener(Lcom/xiaomi/continuity/ServiceName;Lcom/xiaomi/continuity/channel/ServerChannelOptions;Lcom/xiaomi/continuity/channel/ChannelListener;Ljava/util/concurrent/Executor;)I

    move-result p1

    return p1
.end method

.method public declared-synchronized registerDeathCallback(Ljava/lang/Runnable;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/xiaomi/continuity/channel/ContinuityChannelManager;->mDeathList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/continuity/channel/ContinuityChannelManager;->mDeathList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string p1, "registerDeathCallback.size="

    invoke-static {p1}, Lcom/xiaomi/continuity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/continuity/channel/ContinuityChannelManager;->mDeathList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ContinuityChannel.Manager"

    invoke-static {v0, p1}, Lcom/xiaomi/continuity/netbus/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public unbindService()V
    .locals 1

    sget-object v0, Lcom/xiaomi/continuity/channel/ContinuityChannelManager;->mConnManager:Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;

    invoke-virtual {v0}, Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;->unbindService()V

    return-void
.end method

.method public unregisterChannelListener(Lcom/xiaomi/continuity/ServiceName;)I
    .locals 2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "API\u63a5\u53e3\u5c42\u8c03\u7528\u6ce8\u9500unregisterChannelListener, serviceName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContinuityChannel.Manager"

    invoke-static {v1, v0}, Lcom/xiaomi/continuity/netbus/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/continuity/channel/ContinuityChannelManager;->mNChMgr:Lcom/xiaomi/continuity/channel/NChannelManager;

    invoke-virtual {v0, p1}, Lcom/xiaomi/continuity/channel/NChannelManager;->unregisterChannelListener(Lcom/xiaomi/continuity/ServiceName;)I

    move-result p1

    return p1
.end method

.method public declared-synchronized unregisterDeathCallback(Ljava/lang/Runnable;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/xiaomi/continuity/channel/ContinuityChannelManager;->mDeathList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unregisterDeathCallback.size="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/continuity/channel/ContinuityChannelManager;->mDeathList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ContinuityChannel.Manager"

    invoke-static {v0, p1}, Lcom/xiaomi/continuity/netbus/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
