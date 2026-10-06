.class public final Lcom/gzy/redmiport/ForegroundMonitor;
.super Ljava/lang/Object;
.source "ForegroundMonitor.java"


# static fields
.field private static volatile current:Ljava/lang/Object;

.field private static final main:Landroid/os/Handler;

.field private static final subscriptions:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final worker:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 10
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/gzy/redmiport/ForegroundMonitor;->worker:Ljava/util/concurrent/ScheduledExecutorService;

    .line 11
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/gzy/redmiport/ForegroundMonitor;->main:Landroid/os/Handler;

    .line 12
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/gzy/redmiport/ForegroundMonitor;->subscriptions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Ljava/lang/Object;)V
    .registers 1

    .line 13
    sput-object p0, Lcom/gzy/redmiport/ForegroundMonitor;->current:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$1()Landroid/os/Handler;
    .registers 1

    .line 11
    sget-object v0, Lcom/gzy/redmiport/ForegroundMonitor;->main:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 12
    sget-object v0, Lcom/gzy/redmiport/ForegroundMonitor;->subscriptions:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static current()Ljava/lang/Object;
    .registers 1

    .line 14
    sget-object v0, Lcom/gzy/redmiport/ForegroundMonitor;->current:Ljava/lang/Object;

    return-object v0
.end method

.method public static declared-synchronized start(Ljava/lang/Object;)V
    .registers 10

    const-class v0, Lcom/gzy/redmiport/ForegroundMonitor;

    monitor-enter v0

    .line 16
    if-eqz p0, :cond_29

    :try_start_5
    sget-object v1, Lcom/gzy/redmiport/ForegroundMonitor;->subscriptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_29

    .line 17
    :cond_e
    sget-object v1, Lcom/gzy/redmiport/ForegroundMonitor;->subscriptions:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Lcom/gzy/redmiport/ForegroundMonitor;->worker:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lcom/gzy/redmiport/ForegroundMonitor$1;

    invoke-direct {v3, p0}, Lcom/gzy/redmiport/ForegroundMonitor$1;-><init>(Ljava/lang/Object;)V

    .line 32
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 17
    const-wide/16 v4, 0x1f4

    const-wide/16 v6, 0x3e8

    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_26

    .line 33
    monitor-exit v0

    return-void

    .line 15
    :catchall_26
    move-exception p0

    monitor-exit v0

    throw p0

    .line 16
    :cond_29
    :goto_29
    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized stop(Ljava/lang/Object;)V
    .registers 3

    const-class v0, Lcom/gzy/redmiport/ForegroundMonitor;

    monitor-enter v0

    .line 34
    :try_start_3
    sget-object v1, Lcom/gzy/redmiport/ForegroundMonitor;->subscriptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ScheduledFuture;

    if-eqz p0, :cond_11

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_13

    :cond_11
    monitor-exit v0

    return-void

    .line 34
    :catchall_13
    move-exception p0

    monitor-exit v0

    throw p0
.end method
