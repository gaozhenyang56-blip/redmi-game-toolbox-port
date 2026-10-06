.class public final Lcom/gzy/redmiport/ForegroundMonitor;
.super Ljava/lang/Object;
.source "ForegroundMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gzy/redmiport/ForegroundMonitor$Listener;
    }
.end annotation


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

    .line 14
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/gzy/redmiport/ForegroundMonitor;->worker:Ljava/util/concurrent/ScheduledExecutorService;

    .line 15
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/gzy/redmiport/ForegroundMonitor;->main:Landroid/os/Handler;

    .line 16
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/gzy/redmiport/ForegroundMonitor;->subscriptions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 2

    .line 41
    invoke-static {p0, p1}, Lcom/gzy/redmiport/ForegroundMonitor;->unavailable(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1()Landroid/os/Handler;
    .registers 1

    .line 15
    sget-object v0, Lcom/gzy/redmiport/ForegroundMonitor;->main:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 16
    sget-object v0, Lcom/gzy/redmiport/ForegroundMonitor;->subscriptions:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$3(Ljava/lang/Object;)V
    .registers 1

    .line 17
    sput-object p0, Lcom/gzy/redmiport/ForegroundMonitor;->current:Ljava/lang/Object;

    return-void
.end method

.method public static current()Ljava/lang/Object;
    .registers 1

    .line 18
    sget-object v0, Lcom/gzy/redmiport/ForegroundMonitor;->current:Ljava/lang/Object;

    return-object v0
.end method

.method public static declared-synchronized start(Ljava/lang/Object;)V
    .registers 10

    const-class v0, Lcom/gzy/redmiport/ForegroundMonitor;

    monitor-enter v0

    .line 20
    if-eqz p0, :cond_29

    :try_start_5
    sget-object v1, Lcom/gzy/redmiport/ForegroundMonitor;->subscriptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_29

    .line 21
    :cond_e
    sget-object v1, Lcom/gzy/redmiport/ForegroundMonitor;->subscriptions:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Lcom/gzy/redmiport/ForegroundMonitor;->worker:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lcom/gzy/redmiport/ForegroundMonitor$1;

    invoke-direct {v3, p0}, Lcom/gzy/redmiport/ForegroundMonitor$1;-><init>(Ljava/lang/Object;)V

    .line 38
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 21
    const-wide/16 v4, 0x1f4

    const-wide/16 v6, 0x3e8

    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_26

    .line 39
    monitor-exit v0

    return-void

    .line 19
    :catchall_26
    move-exception p0

    monitor-exit v0

    throw p0

    .line 20
    :cond_29
    :goto_29
    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized stop(Ljava/lang/Object;)V
    .registers 3

    const-class v0, Lcom/gzy/redmiport/ForegroundMonitor;

    monitor-enter v0

    .line 40
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

    .line 40
    :catchall_13
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static unavailable(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4

    .line 41
    instance-of v0, p0, Lcom/gzy/redmiport/ForegroundMonitor$Listener;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/gzy/redmiport/ForegroundMonitor;->main:Landroid/os/Handler;

    new-instance v1, Lcom/gzy/redmiport/ForegroundMonitor$2;

    invoke-direct {v1, p0, p1}, Lcom/gzy/redmiport/ForegroundMonitor$2;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_e
    return-void
.end method
