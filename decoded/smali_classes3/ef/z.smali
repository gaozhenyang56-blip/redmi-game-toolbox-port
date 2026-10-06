.class public Lef/z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static d:Lef/z;


# instance fields
.field private a:Ljava/util/concurrent/ExecutorService;

.field private b:Ljava/util/concurrent/ExecutorService;

.field private c:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lef/z$a;

    invoke-direct {v0, p0}, Lef/z$a;-><init>(Lef/z;)V

    const/4 v1, 0x4

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lef/z;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lef/z$b;

    invoke-direct {v0, p0}, Lef/z$b;-><init>(Lef/z;)V

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lef/z;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lef/z$c;

    invoke-direct {v0, p0}, Lef/z$c;-><init>(Lef/z;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lef/z;->c:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static declared-synchronized d()Lef/z;
    .locals 2

    const-class v0, Lef/z;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lef/z;->d:Lef/z;

    if-nez v1, :cond_0

    new-instance v1, Lef/z;

    invoke-direct {v1}, Lef/z;-><init>()V

    sput-object v1, Lef/z;->d:Lef/z;

    :cond_0
    sget-object v1, Lef/z;->d:Lef/z;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lef/z;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lef/z;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lef/z;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
