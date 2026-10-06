.class public Lj4/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj4/b$a;
    }
.end annotation


# static fields
.field private static b:Lj4/b;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lj4/b;->a:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized d(Landroid/content/Context;)Lj4/b;
    .locals 2

    const-class v0, Lj4/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lj4/b;->b:Lj4/b;

    if-nez v1, :cond_0

    new-instance v1, Lj4/b;

    invoke-direct {v1, p0}, Lj4/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lj4/b;->b:Lj4/b;

    :cond_0
    sget-object p0, Lj4/b;->b:Lj4/b;
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
.method public a(II)V
    .locals 1

    iget-object v0, p0, Lj4/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/continuity/channel/ContinuityChannelManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/continuity/channel/ContinuityChannelManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/continuity/channel/ContinuityChannelManager;->confirmChannel(II)I

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/xiaomi/continuity/ServiceName;Lcom/xiaomi/continuity/channel/ClientChannelOptions;Lcom/xiaomi/continuity/channel/ChannelListener;Ljava/util/concurrent/Executor;)V
    .locals 7

    iget-object v0, p0, Lj4/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/continuity/channel/ContinuityChannelManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/continuity/channel/ContinuityChannelManager;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/xiaomi/continuity/channel/ContinuityChannelManager;->createChannel(Ljava/lang/String;Lcom/xiaomi/continuity/ServiceName;Lcom/xiaomi/continuity/channel/ClientChannelOptions;Lcom/xiaomi/continuity/channel/ChannelListener;Ljava/util/concurrent/Executor;)I

    return-void
.end method

.method public c(I)I
    .locals 1

    iget-object v0, p0, Lj4/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/continuity/channel/ContinuityChannelManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/continuity/channel/ContinuityChannelManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/continuity/channel/ContinuityChannelManager;->destroyChannel(I)I

    move-result p1

    return p1
.end method

.method public e(Lcom/xiaomi/continuity/ServiceName;Lcom/xiaomi/continuity/channel/ServerChannelOptions;Lcom/xiaomi/continuity/channel/ChannelListener;Ljava/util/concurrent/Executor;Lj4/b$a;)V
    .locals 1

    iget-object v0, p0, Lj4/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/continuity/channel/ContinuityChannelManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/continuity/channel/ContinuityChannelManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaomi/continuity/channel/ContinuityChannelManager;->registerChannelListener(Lcom/xiaomi/continuity/ServiceName;Lcom/xiaomi/continuity/channel/ServerChannelOptions;Lcom/xiaomi/continuity/channel/ChannelListener;Ljava/util/concurrent/Executor;)I

    move-result p1

    if-eqz p5, :cond_0

    invoke-interface {p5, p1}, Lj4/b$a;->a(I)V

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "registerChannelListener code :"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SecurityChannelManager"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public f(Lcom/xiaomi/continuity/ServiceName;)V
    .locals 1

    iget-object v0, p0, Lj4/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/continuity/channel/ContinuityChannelManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/continuity/channel/ContinuityChannelManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/continuity/channel/ContinuityChannelManager;->unregisterChannelListener(Lcom/xiaomi/continuity/ServiceName;)I

    return-void
.end method
