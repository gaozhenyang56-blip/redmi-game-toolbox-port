.class public Lcom/miui/networkassistant/ui/thread/ThreadPool;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sDynamicPool:Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;

.field private static sUiHandler:Landroid/os/Handler;

.field private static sWorkerHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized ensurePoolInit()V
    .locals 6

    const-class v0, Lcom/miui/networkassistant/ui/thread/ThreadPool;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/networkassistant/ui/thread/ThreadPool;->sDynamicPool:Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    new-instance v2, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;

    new-instance v3, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v1, v5}, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;-><init>(Ljava/util/Queue;III)V

    sput-object v2, Lcom/miui/networkassistant/ui/thread/ThreadPool;->sDynamicPool:Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized ensureUIHandlerInit()V
    .locals 3

    const-class v0, Lcom/miui/networkassistant/ui/thread/ThreadPool;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/networkassistant/ui/thread/ThreadPool;->sUiHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/miui/networkassistant/ui/thread/ThreadPool;->sUiHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getPoolExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    invoke-static {}, Lcom/miui/networkassistant/ui/thread/ThreadPool;->ensurePoolInit()V

    sget-object v0, Lcom/miui/networkassistant/ui/thread/ThreadPool;->sDynamicPool:Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;

    return-object v0
.end method

.method public static postOnUiDelayed(Ljava/lang/Runnable;I)V
    .locals 3

    invoke-static {}, Lcom/miui/networkassistant/ui/thread/ThreadPool;->ensureUIHandlerInit()V

    sget-object v0, Lcom/miui/networkassistant/ui/thread/ThreadPool;->sUiHandler:Landroid/os/Handler;

    int-to-long v1, p1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static runOnPool(Ljava/lang/Runnable;)V
    .locals 2

    invoke-static {}, Lcom/miui/networkassistant/ui/thread/ThreadPool;->ensurePoolInit()V

    sget-object v0, Lcom/miui/networkassistant/ui/thread/ThreadPool;->sDynamicPool:Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;

    new-instance v1, Lcom/miui/networkassistant/ui/thread/ShowExceptionRunnable;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/ui/thread/ShowExceptionRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static runOnUi(Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {}, Lcom/miui/networkassistant/ui/thread/ThreadPool;->ensureUIHandlerInit()V

    sget-object v0, Lcom/miui/networkassistant/ui/thread/ThreadPool;->sUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static shutdown()V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/miui/networkassistant/ui/thread/ThreadPool;->sDynamicPool:Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;->shutdown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static startup()V
    .locals 0

    invoke-static {}, Lcom/miui/networkassistant/utils/ThreadUtilsByTraffic;->ensureUiThread()V

    invoke-static {}, Lcom/miui/networkassistant/ui/thread/ThreadPool;->ensurePoolInit()V

    invoke-static {}, Lcom/miui/networkassistant/ui/thread/ThreadPool;->ensureUIHandlerInit()V

    return-void
.end method
