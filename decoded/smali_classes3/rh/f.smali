.class Lrh/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lrh/e;

.field private b:Ljava/util/concurrent/Executor;

.field private c:Ljava/util/concurrent/Executor;

.field private d:Ljava/util/concurrent/Executor;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/locks/ReentrantLock;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final j:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lrh/e;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lrh/f;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lrh/f;->f:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lrh/f;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lrh/f;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lrh/f;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lrh/f;->j:Ljava/lang/Object;

    iput-object p1, p0, Lrh/f;->a:Lrh/e;

    iget-object v0, p1, Lrh/e;->g:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lrh/f;->b:Ljava/util/concurrent/Executor;

    iget-object p1, p1, Lrh/e;->h:Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lrh/f;->c:Ljava/util/concurrent/Executor;

    invoke-static {}, Lrh/a;->i()Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Lrh/f;->d:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic a(Lrh/f;)V
    .locals 0

    invoke-direct {p0}, Lrh/f;->l()V

    return-void
.end method

.method static synthetic b(Lrh/f;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lrh/f;->c:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic c(Lrh/f;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lrh/f;->b:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method private e()Ljava/util/concurrent/Executor;
    .locals 3

    iget-object v0, p0, Lrh/f;->a:Lrh/e;

    iget v1, v0, Lrh/e;->k:I

    iget v2, v0, Lrh/e;->l:I

    iget-object v0, v0, Lrh/e;->m:Lsh/g;

    invoke-static {v1, v2, v0}, Lrh/a;->c(IILsh/g;)Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method private l()V
    .locals 1

    iget-object v0, p0, Lrh/f;->a:Lrh/e;

    iget-boolean v0, v0, Lrh/e;->i:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lrh/f;->b:Ljava/util/concurrent/Executor;

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lrh/f;->e()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lrh/f;->b:Ljava/util/concurrent/Executor;

    :cond_0
    iget-object v0, p0, Lrh/f;->a:Lrh/e;

    iget-boolean v0, v0, Lrh/e;->j:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lrh/f;->c:Ljava/util/concurrent/Executor;

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lrh/f;->e()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lrh/f;->c:Ljava/util/concurrent/Executor;

    :cond_1
    return-void
.end method


# virtual methods
.method d(Lxh/b;)V
    .locals 1

    iget-object v0, p0, Lrh/f;->e:Ljava/util/Map;

    invoke-interface {p1}, Lxh/b;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method f(Z)V
    .locals 1

    iget-object v0, p0, Lrh/f;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method g(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lrh/f;->d:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method h(Lxh/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lrh/f;->e:Ljava/util/Map;

    invoke-interface {p1}, Lxh/b;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method i(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 2

    iget-object v0, p0, Lrh/f;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/locks/ReentrantLock;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iget-object v1, p0, Lrh/f;->f:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method j()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lrh/f;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method k()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lrh/f;->j:Ljava/lang/Object;

    return-object v0
.end method

.method m()Z
    .locals 1

    iget-object v0, p0, Lrh/f;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method n()Z
    .locals 1

    iget-object v0, p0, Lrh/f;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method o()V
    .locals 2

    iget-object v0, p0, Lrh/f;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method p(Lxh/b;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lrh/f;->e:Ljava/util/Map;

    invoke-interface {p1}, Lxh/b;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method q()V
    .locals 2

    iget-object v0, p0, Lrh/f;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lrh/f;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lrh/f;->j:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method r(Lrh/h;)V
    .locals 2

    iget-object v0, p0, Lrh/f;->d:Ljava/util/concurrent/Executor;

    new-instance v1, Lrh/f$a;

    invoke-direct {v1, p0, p1}, Lrh/f$a;-><init>(Lrh/f;Lrh/h;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method s(Lrh/i;)V
    .locals 1

    invoke-direct {p0}, Lrh/f;->l()V

    iget-object v0, p0, Lrh/f;->c:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
