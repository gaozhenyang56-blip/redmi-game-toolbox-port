.class abstract Lq0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq0/d$e;,
        Lq0/d$h;,
        Lq0/d$f;,
        Lq0/d$g;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final f:Ljava/util/concurrent/ThreadFactory;

.field private static final g:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Ljava/util/concurrent/Executor;

.field private static i:Lq0/d$f;

.field private static volatile j:Ljava/util/concurrent/Executor;


# instance fields
.field private final a:Lq0/d$h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq0/d$h<",
            "TParams;TResult;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "TResult;>;"
        }
    .end annotation
.end field

.field private volatile c:Lq0/d$g;

.field final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final e:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v7, Lq0/d$a;

    invoke-direct {v7}, Lq0/d$a;-><init>()V

    sput-object v7, Lq0/d;->f:Ljava/util/concurrent/ThreadFactory;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v0, 0xa

    invoke-direct {v6, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v6, Lq0/d;->g:Ljava/util/concurrent/BlockingQueue;

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v1, 0x5

    const/16 v2, 0x80

    const-wide/16 v3, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v8, Lq0/d;->h:Ljava/util/concurrent/Executor;

    sput-object v8, Lq0/d;->j:Ljava/util/concurrent/Executor;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lq0/d$g;->a:Lq0/d$g;

    iput-object v0, p0, Lq0/d;->c:Lq0/d$g;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lq0/d;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lq0/d;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lq0/d$b;

    invoke-direct {v0, p0}, Lq0/d$b;-><init>(Lq0/d;)V

    iput-object v0, p0, Lq0/d;->a:Lq0/d$h;

    new-instance v1, Lq0/d$c;

    invoke-direct {v1, p0, v0}, Lq0/d$c;-><init>(Lq0/d;Ljava/util/concurrent/Callable;)V

    iput-object v1, p0, Lq0/d;->b:Ljava/util/concurrent/FutureTask;

    return-void
.end method

.method private static e()Landroid/os/Handler;
    .locals 2

    const-class v0, Lq0/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lq0/d;->i:Lq0/d$f;

    if-nez v1, :cond_0

    new-instance v1, Lq0/d$f;

    invoke-direct {v1}, Lq0/d$f;-><init>()V

    sput-object v1, Lq0/d;->i:Lq0/d$f;

    :cond_0
    sget-object v1, Lq0/d;->i:Lq0/d$f;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final a(Z)Z
    .locals 2

    iget-object v0, p0, Lq0/d;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lq0/d;->b:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result p1

    return p1
.end method

.method protected varargs abstract b([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method public final varargs c(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lq0/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Lq0/d<",
            "TParams;TProgress;TResult;>;"
        }
    .end annotation

    iget-object v0, p0, Lq0/d;->c:Lq0/d$g;

    sget-object v1, Lq0/d$g;->a:Lq0/d$g;

    if-eq v0, v1, :cond_2

    sget-object p1, Lq0/d$d;->a:[I

    iget-object p2, p0, Lq0/d;->c:Lq0/d$g;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "We should never reach this state"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot execute task: the task is already running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    sget-object v0, Lq0/d$g;->b:Lq0/d$g;

    iput-object v0, p0, Lq0/d;->c:Lq0/d$g;

    invoke-virtual {p0}, Lq0/d;->j()V

    iget-object v0, p0, Lq0/d;->a:Lq0/d$h;

    iput-object p2, v0, Lq0/d$h;->a:[Ljava/lang/Object;

    iget-object p2, p0, Lq0/d;->b:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method d(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lq0/d;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lq0/d;->h(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lq0/d;->i(Ljava/lang/Object;)V

    :goto_0
    sget-object p1, Lq0/d$g;->c:Lq0/d$g;

    iput-object p1, p0, Lq0/d;->c:Lq0/d$g;

    return-void
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Lq0/d;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method protected g()V
    .locals 0

    return-void
.end method

.method protected h(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lq0/d;->g()V

    return-void
.end method

.method protected i(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    return-void
.end method

.method protected j()V
    .locals 0

    return-void
.end method

.method protected varargs k([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    return-void
.end method

.method l(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    invoke-static {}, Lq0/d;->e()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lq0/d$e;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v3}, Lq0/d$e;-><init>(Lq0/d;[Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-object p1
.end method

.method m(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    iget-object v0, p0, Lq0/d;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lq0/d;->l(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
