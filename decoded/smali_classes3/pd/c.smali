.class public Lpd/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpd/c$k;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/continuity/channel/Channel;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/xiaomi/continuity/channel/PacketTransferProgressCallback;

.field private d:Landroid/os/Handler;

.field private e:Lpd/a;

.field private f:Lpd/f;

.field private final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private k:Lcom/xiaomi/continuity/messagecenter/PublisherManager$IPublishResult;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lpd/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lpd/c;->c:Lcom/xiaomi/continuity/channel/PacketTransferProgressCallback;

    iput-object v0, p0, Lpd/c;->d:Landroid/os/Handler;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lpd/c;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lpd/c;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lpd/c;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lpd/c;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lpd/c$f;

    invoke-direct {v0, p0}, Lpd/c$f;-><init>(Lpd/c;)V

    iput-object v0, p0, Lpd/c;->k:Lcom/xiaomi/continuity/messagecenter/PublisherManager$IPublishResult;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lpd/c;->a:Landroid/content/Context;

    invoke-static {}, Lde/i;->M()Lde/i;

    move-result-object p1

    invoke-virtual {p1}, Lde/i;->J()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lpd/c;->d:Landroid/os/Handler;

    new-instance p1, Lpd/a;

    iget-object v0, p0, Lpd/c;->a:Landroid/content/Context;

    invoke-direct {p1, v0}, Lpd/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lpd/c;->e:Lpd/a;

    new-instance p1, Lpd/f;

    iget-object v0, p0, Lpd/c;->a:Landroid/content/Context;

    invoke-direct {p1, v0}, Lpd/f;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lpd/c;->f:Lpd/f;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lpd/c$b;)V
    .locals 0

    invoke-direct {p0, p1}, Lpd/c;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private A()V
    .locals 8

    iget-object v0, p0, Lpd/c;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lpd/c;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string v0, "pref_key_connectivity_service_state"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "pref_key_connectivity_share_notification_state"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "pref_key_cross_notify_power_state"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Lpd/c$c;

    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v3, p0, v4}, Lpd/c$c;-><init>(Lpd/c;Landroid/os/Handler;)V

    new-instance v4, Lpd/c$d;

    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v4, p0, v5}, Lpd/c$d;-><init>(Lpd/c;Landroid/os/Handler;)V

    new-instance v5, Lpd/c$e;

    new-instance v6, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v5, p0, v6}, Lpd/c$e;-><init>(Lpd/c;Landroid/os/Handler;)V

    iget-object v6, p0, Lpd/c;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lpd/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1, v7, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lpd/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v2, v7, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private C(Ljava/lang/String;Lcom/xiaomi/continuity/channel/Packet;)V
    .locals 2

    iget-object v0, p0, Lpd/c;->c:Lcom/xiaomi/continuity/channel/PacketTransferProgressCallback;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lpd/c;->v()V

    :cond_0
    iget-object v0, p0, Lpd/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lpd/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/continuity/channel/Channel;

    iget-object v0, p0, Lpd/c;->c:Lcom/xiaomi/continuity/channel/PacketTransferProgressCallback;

    iget-object v1, p0, Lpd/c;->a:Landroid/content/Context;

    invoke-static {v1}, Landroidx/core/content/h;->a(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {p1, p2, v0, v1}, Lcom/xiaomi/continuity/channel/Channel;->send(Lcom/xiaomi/continuity/channel/Packet;Lcom/xiaomi/continuity/channel/PacketTransferProgressCallback;Ljava/util/concurrent/Executor;)V

    :cond_1
    return-void
.end method

.method public static synthetic a(Lpd/c;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lpd/c;->w(II)V

    return-void
.end method

.method static synthetic b(Lpd/c;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lpd/c;->o(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lpd/c;Ljava/lang/String;Lcom/xiaomi/continuity/channel/Packet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lpd/c;->C(Ljava/lang/String;Lcom/xiaomi/continuity/channel/Packet;)V

    return-void
.end method

.method static synthetic d(Lpd/c;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lpd/c;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic e(Lpd/c;)V
    .locals 0

    invoke-direct {p0}, Lpd/c;->m()V

    return-void
.end method

.method static synthetic f(Lpd/c;)V
    .locals 0

    invoke-direct {p0}, Lpd/c;->A()V

    return-void
.end method

.method static synthetic g(Lpd/c;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lpd/c;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic h(Lpd/c;)V
    .locals 0

    invoke-direct {p0}, Lpd/c;->n()V

    return-void
.end method

.method static synthetic i(Lpd/c;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lpd/c;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic j(Lpd/c;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lpd/c;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic k(Lpd/c;)Lpd/a;
    .locals 0

    iget-object p0, p0, Lpd/c;->e:Lpd/a;

    return-object p0
.end method

.method private m()V
    .locals 3

    iget-object v0, p0, Lpd/c;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lx4/y;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lpd/c;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lpd/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lj4/a;->d(Landroid/content/Context;)Lj4/a;

    move-result-object v0

    iget-object v1, p0, Lpd/c;->f:Lpd/f;

    const-string v2, "topic.name:power"

    invoke-virtual {v0, v2, v1}, Lj4/a;->e(Ljava/lang/String;Lcom/xiaomi/continuity/messagecenter/PublisherManager$SubscriberListener;)V

    :cond_1
    return-void
.end method

.method private n()V
    .locals 3

    iget-object v0, p0, Lpd/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/powercenter/continuity/PowerContinuityNoticeUtils;->d(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lpd/c;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lpd/c;->y()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lpd/c;->F()V

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkContinuityState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "power_channel_Manager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lpd/c;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private o(Ljava/lang/String;)V
    .locals 7

    if-eqz p1, :cond_1

    iget-object v0, p0, Lpd/c;->e:Lpd/a;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/xiaomi/continuity/ServiceName;

    iget-object v0, p0, Lpd/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "power_center"

    invoke-direct {v3, v0, v1}, Lcom/xiaomi/continuity/ServiceName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/xiaomi/continuity/channel/ClientChannelOptions;

    invoke-direct {v4}, Lcom/xiaomi/continuity/channel/ClientChannelOptions;-><init>()V

    const/16 v0, 0x10

    invoke-virtual {v4, v0}, Lcom/xiaomi/continuity/channel/ClientChannelOptions;->setTrustLevel(I)V

    const/16 v0, 0x2710

    invoke-virtual {v4, v0}, Lcom/xiaomi/continuity/channel/ClientChannelOptions;->setTimeout(I)V

    const/16 v0, 0x80

    invoke-virtual {v4, v0}, Lcom/xiaomi/continuity/channel/ClientChannelOptions;->setConnectMediumType(I)V

    iget-object v0, p0, Lpd/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lj4/b;->d(Landroid/content/Context;)Lj4/b;

    move-result-object v1

    iget-object v5, p0, Lpd/c;->e:Lpd/a;

    iget-object v0, p0, Lpd/c;->a:Landroid/content/Context;

    invoke-static {v0}, Landroidx/core/content/h;->a(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lj4/b;->b(Ljava/lang/String;Lcom/xiaomi/continuity/ServiceName;Lcom/xiaomi/continuity/channel/ClientChannelOptions;Lcom/xiaomi/continuity/channel/ChannelListener;Ljava/util/concurrent/Executor;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static declared-synchronized t(Landroid/content/Context;)Lpd/c;
    .locals 1

    const-class p0, Lpd/c;

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lpd/c$k;->a()Lpd/c;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private v()V
    .locals 1

    new-instance v0, Lpd/c$h;

    invoke-direct {v0, p0}, Lpd/c$h;-><init>(Lpd/c;)V

    iput-object v0, p0, Lpd/c;->c:Lcom/xiaomi/continuity/channel/PacketTransferProgressCallback;

    return-void
.end method

.method private synthetic w(II)V
    .locals 2

    if-nez p2, :cond_0

    iget-object p2, p0, Lpd/c;->a:Landroid/content/Context;

    const/4 v0, 0x1

    iget-object v1, p0, Lpd/c;->k:Lcom/xiaomi/continuity/messagecenter/PublisherManager$IPublishResult;

    invoke-static {p2, v0, p1, v1}, Lcom/miui/powercenter/continuity/PowerContinuityNoticeUtils;->f(Landroid/content/Context;IILcom/xiaomi/continuity/messagecenter/PublisherManager$IPublishResult;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public B(Lcom/xiaomi/continuity/channel/Channel;)V
    .locals 3

    iget-object v0, p0, Lpd/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Lcom/xiaomi/continuity/channel/Channel;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public D(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lpd/c;->d:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lpd/c$a;

    invoke-direct {v1, p0, p1}, Lpd/c$a;-><init>(Lpd/c;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public E(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lpd/c;->d:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lpd/c$j;

    invoke-direct {v1, p0, p1}, Lpd/c$j;-><init>(Lpd/c;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public F()V
    .locals 3

    invoke-static {}, Lx4/z1;->r()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lpd/c;->d:Landroid/os/Handler;

    if-eqz v0, :cond_1

    new-instance v1, Lpd/c$g;

    invoke-direct {v1, p0}, Lpd/c$g;-><init>(Lpd/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "power_channel_Manager"

    const-string v2, "unRegisterContinuity error:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public l(Lcom/xiaomi/continuity/channel/Channel;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lpd/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Lcom/xiaomi/continuity/channel/Channel;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public p(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lpd/c;->d:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lpd/c$i;

    invoke-direct {v1, p0, p1, p2}, Lpd/c$i;-><init>(Lpd/c;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public q()V
    .locals 2

    iget-object v0, p0, Lpd/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/continuity/channel/Channel;

    invoke-interface {v1}, Lcom/xiaomi/continuity/channel/Channel;->getChannelId()I

    move-result v1

    invoke-virtual {p0, v1}, Lpd/c;->r(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lpd/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public r(I)V
    .locals 1

    iget-object v0, p0, Lpd/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lj4/b;->d(Landroid/content/Context;)Lj4/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lj4/b;->c(I)I

    return-void
.end method

.method public s(I)V
    .locals 3

    iget-object v0, p0, Lpd/c;->d:Landroid/os/Handler;

    if-eqz v0, :cond_0

    add-int/lit16 v1, p1, 0x7d1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object p1, p0, Lpd/c;->d:Landroid/os/Handler;

    const-wide/32 v1, 0x493e0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public u(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lpd/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpd/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public x(I)V
    .locals 2

    invoke-static {}, Lx4/y;->s()Z

    move-result v0

    const-string v1, "power_channel_Manager"

    if-eqz v0, :cond_0

    const-string p1, "pad can\'t publish"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lx4/z1;->r()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lx4/z1;->e()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lpd/c;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p1, "can\'t publish not open"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v0, p0, Lpd/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lpd/c;->t(Landroid/content/Context;)Lpd/c;

    move-result-object v0

    new-instance v1, Lpd/b;

    invoke-direct {v1, p0, p1}, Lpd/b;-><init>(Lpd/c;I)V

    invoke-virtual {v0, v1}, Lpd/c;->z(Lj4/b$a;)V

    return-void

    :cond_3
    :goto_0
    const-string p1, "not in USER_OWNER"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public y()V
    .locals 2

    invoke-static {}, Lx4/z1;->r()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lpd/c;->d:Landroid/os/Handler;

    if-eqz v0, :cond_1

    new-instance v1, Lpd/c$b;

    invoke-direct {v1, p0}, Lpd/c$b;-><init>(Lpd/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public z(Lj4/b$a;)V
    .locals 9

    const-string v0, "power_channel_Manager"

    :try_start_0
    iget-object v1, p0, Lpd/c;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "registerChannelListener continuity not open!"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lpd/c;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lj4/b$a;->a(I)V

    const-string p1, "registerChannelListener has registered!"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lpd/c;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v4, Lcom/xiaomi/continuity/ServiceName;

    iget-object v1, p0, Lpd/c;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "power_center"

    invoke-direct {v4, v1, v2}, Lcom/xiaomi/continuity/ServiceName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/xiaomi/continuity/channel/ServerChannelOptions;

    const/16 v1, 0x10

    invoke-direct {v5, v1}, Lcom/xiaomi/continuity/channel/ServerChannelOptions;-><init>(I)V

    iget-object v1, p0, Lpd/c;->a:Landroid/content/Context;

    invoke-static {v1}, Lj4/b;->d(Landroid/content/Context;)Lj4/b;

    move-result-object v3

    new-instance v6, Lpd/d;

    iget-object v1, p0, Lpd/c;->a:Landroid/content/Context;

    invoke-direct {v6, v1}, Lpd/d;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lpd/c;->a:Landroid/content/Context;

    invoke-static {v1}, Landroidx/core/content/h;->a(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v7

    move-object v8, p1

    invoke-virtual/range {v3 .. v8}, Lj4/b;->e(Lcom/xiaomi/continuity/ServiceName;Lcom/xiaomi/continuity/channel/ServerChannelOptions;Lcom/xiaomi/continuity/channel/ChannelListener;Ljava/util/concurrent/Executor;Lj4/b$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "registerChannelListener: "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
