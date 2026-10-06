.class public final Llk/n0;
.super Llk/d1;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0002\u0008\u000c\u0008\u00c0\u0002\u0018\u00002\u00020\u00012\u00060\u0002j\u0002`\u0003B\t\u0008\u0002\u00a2\u0006\u0004\u0008,\u0010 J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u0008\u0010\u0007\u001a\u00020\u0006H\u0002J\u0008\u0010\t\u001a\u00020\u0008H\u0002J\u0008\u0010\n\u001a\u00020\u0004H\u0002J\u0014\u0010\u000c\u001a\u00020\u00042\n\u0010\u000b\u001a\u00060\u0002j\u0002`\u0003H\u0016J\u0018\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fH\u0014J\u0008\u0010\u0012\u001a\u00020\u0004H\u0016J$\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0013\u001a\u00020\r2\n\u0010\u0014\u001a\u00060\u0002j\u0002`\u00032\u0006\u0010\u0016\u001a\u00020\u0015H\u0016J\u0008\u0010\u0019\u001a\u00020\u0004H\u0016R\u0014\u0010\u001c\u001a\u00020\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u001e\u0010\u001d\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u001e\u0012\u0004\u0008\u001f\u0010 R\u0016\u0010\"\u001a\u00020!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u0014\u0010&\u001a\u00020\u00088BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008$\u0010%R\u0014\u0010(\u001a\u00020\u00088BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\'\u0010%R\u0014\u0010+\u001a\u00020\u00068TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008)\u0010*\u00a8\u0006-"
    }
    d2 = {
        "Llk/n0;",
        "Llk/d1;",
        "Ljava/lang/Runnable;",
        "Lkotlinx/coroutines/Runnable;",
        "Loj/t;",
        "E0",
        "Ljava/lang/Thread;",
        "A0",
        "",
        "D0",
        "z0",
        "task",
        "n0",
        "",
        "now",
        "Llk/d1$c;",
        "delayedTask",
        "i0",
        "shutdown",
        "timeMillis",
        "block",
        "Ltj/g;",
        "context",
        "Llk/y0;",
        "t",
        "run",
        "i",
        "J",
        "KEEP_ALIVE_NANOS",
        "_thread",
        "Ljava/lang/Thread;",
        "get_thread$annotations",
        "()V",
        "",
        "debugStatus",
        "I",
        "B0",
        "()Z",
        "isShutDown",
        "C0",
        "isShutdownRequested",
        "h0",
        "()Ljava/lang/Thread;",
        "thread",
        "<init>",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# static fields
.field private static volatile _thread:Ljava/lang/Thread;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static volatile debugStatus:I

.field public static final h:Llk/n0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final i:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Llk/n0;

    invoke-direct {v0}, Llk/n0;-><init>()V

    sput-object v0, Llk/n0;->h:Llk/n0;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Llk/c1;->d0(Llk/c1;ZILjava/lang/Object;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3e8

    :try_start_0
    const-string v3, "kotlinx.coroutines.DefaultExecutor.keepAlive"

    invoke-static {v3, v1, v2}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Llk/n0;->i:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Llk/d1;-><init>()V

    return-void
.end method

.method private final declared-synchronized A0()Ljava/lang/Thread;
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Llk/n0;->_thread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "kotlinx.coroutines.DefaultExecutor"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v0, Llk/n0;->_thread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final B0()Z
    .locals 2

    sget v0, Llk/n0;->debugStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final C0()Z
    .locals 2

    sget v0, Llk/n0;->debugStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private final declared-synchronized D0()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Llk/n0;->C0()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    sput v0, Llk/n0;->debugStatus:I

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final E0()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    const-string v1, "DefaultExecutor was shut down. This error indicates that Dispatchers.shutdown() was invoked prior to completion of exiting coroutines, leaving coroutines in incomplete state. Please refer to Dispatchers.shutdown documentation for more details"

    invoke-direct {v0, v1}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final declared-synchronized z0()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Llk/n0;->C0()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x3

    :try_start_1
    sput v0, Llk/n0;->debugStatus:I

    invoke-virtual {p0}, Llk/d1;->t0()V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected h0()Ljava/lang/Thread;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Llk/n0;->_thread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    invoke-direct {p0}, Llk/n0;->A0()Ljava/lang/Thread;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected i0(JLlk/d1$c;)V
    .locals 0
    .param p3    # Llk/d1$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-direct {p0}, Llk/n0;->E0()V

    return-void
.end method

.method public n0(Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-direct {p0}, Llk/n0;->B0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Llk/n0;->E0()V

    :cond_0
    invoke-super {p0, p1}, Llk/d1;->n0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public run()V
    .locals 12

    sget-object v0, Llk/p2;->a:Llk/p2;

    invoke-virtual {v0, p0}, Llk/p2;->c(Llk/c1;)V

    invoke-static {}, Llk/c;->a()Llk/b;

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Llk/n0;->D0()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    sput-object v0, Llk/n0;->_thread:Ljava/lang/Thread;

    invoke-direct {p0}, Llk/n0;->z0()V

    invoke-static {}, Llk/c;->a()Llk/b;

    invoke-virtual {p0}, Llk/d1;->q0()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Llk/n0;->h0()Ljava/lang/Thread;

    :cond_0
    return-void

    :cond_1
    const-wide v1, 0x7fffffffffffffffL

    move-wide v3, v1

    :cond_2
    :goto_0
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    invoke-virtual {p0}, Llk/d1;->r0()J

    move-result-wide v5

    cmp-long v7, v5, v1

    const-wide/16 v8, 0x0

    if-nez v7, :cond_6

    invoke-static {}, Llk/c;->a()Llk/b;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    cmp-long v7, v3, v1

    if-nez v7, :cond_3

    sget-wide v3, Llk/n0;->i:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-long/2addr v3, v10

    :cond_3
    sub-long v10, v3, v10

    cmp-long v7, v10, v8

    if-gtz v7, :cond_5

    sput-object v0, Llk/n0;->_thread:Ljava/lang/Thread;

    invoke-direct {p0}, Llk/n0;->z0()V

    invoke-static {}, Llk/c;->a()Llk/b;

    invoke-virtual {p0}, Llk/d1;->q0()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Llk/n0;->h0()Ljava/lang/Thread;

    :cond_4
    return-void

    :cond_5
    :try_start_2
    invoke-static {v5, v6, v10, v11}, Lgk/g;->d(JJ)J

    move-result-wide v5

    goto :goto_1

    :cond_6
    move-wide v3, v1

    :goto_1
    cmp-long v7, v5, v8

    if-lez v7, :cond_2

    invoke-direct {p0}, Llk/n0;->C0()Z

    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_8

    sput-object v0, Llk/n0;->_thread:Ljava/lang/Thread;

    invoke-direct {p0}, Llk/n0;->z0()V

    invoke-static {}, Llk/c;->a()Llk/b;

    invoke-virtual {p0}, Llk/d1;->q0()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Llk/n0;->h0()Ljava/lang/Thread;

    :cond_7
    return-void

    :cond_8
    :try_start_3
    invoke-static {}, Llk/c;->a()Llk/b;

    invoke-static {p0, v5, v6}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    sput-object v0, Llk/n0;->_thread:Ljava/lang/Thread;

    invoke-direct {p0}, Llk/n0;->z0()V

    invoke-static {}, Llk/c;->a()Llk/b;

    invoke-virtual {p0}, Llk/d1;->q0()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Llk/n0;->h0()Ljava/lang/Thread;

    :cond_9
    throw v1
.end method

.method public shutdown()V
    .locals 1

    const/4 v0, 0x4

    sput v0, Llk/n0;->debugStatus:I

    invoke-super {p0}, Llk/d1;->shutdown()V

    return-void
.end method

.method public t(JLjava/lang/Runnable;Ltj/g;)Llk/y0;
    .locals 0
    .param p3    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ltj/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Llk/d1;->w0(JLjava/lang/Runnable;)Llk/y0;

    move-result-object p1

    return-object p1
.end method
