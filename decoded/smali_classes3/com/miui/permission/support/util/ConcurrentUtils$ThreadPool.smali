.class public Lcom/miui/permission/support/util/ConcurrentUtils$ThreadPool;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/permission/support/util/ConcurrentUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThreadPool"
.end annotation


# static fields
.field private static final THREAD_POOL_COUNT:I = 0xa

.field private static volatile sExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 2

    sget-object v0, Lcom/miui/permission/support/util/ConcurrentUtils$ThreadPool;->sExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    const-class v0, Lcom/miui/permission/support/util/ConcurrentUtils$ThreadPool;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/permission/support/util/ConcurrentUtils$ThreadPool;->sExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_0

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Lcom/miui/permission/support/util/ConcurrentUtils$ThreadPool;->sExecutor:Ljava/util/concurrent/ExecutorService;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object v0, Lcom/miui/permission/support/util/ConcurrentUtils$ThreadPool;->sExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
