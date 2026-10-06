.class public final Len/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Len/g$h;,
        Len/g$j;,
        Len/g$g;,
        Len/g$i;
    }
.end annotation


# static fields
.field private static final u:Ljava/util/concurrent/ExecutorService;


# instance fields
.field final a:Z

.field final b:Len/g$h;

.field final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Len/i;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/lang/String;

.field e:I

.field f:I

.field g:Z

.field private final h:Ljava/util/concurrent/ScheduledExecutorService;

.field private final i:Ljava/util/concurrent/ExecutorService;

.field final j:Len/l;

.field private k:Z

.field l:J

.field m:J

.field n:Len/m;

.field final o:Len/m;

.field p:Z

.field final q:Ljava/net/Socket;

.field final r:Len/j;

.field final s:Len/g$j;

.field final t:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-class v0, Len/g;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const/4 v1, 0x1

    const-string v8, "OkHttp Http2Connection"

    invoke-static {v8, v1}, Lzm/c;->F(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Len/g;->u:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method constructor <init>(Len/g$g;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v0, Len/g;->c:Ljava/util/Map;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Len/g;->l:J

    new-instance v2, Len/m;

    invoke-direct {v2}, Len/m;-><init>()V

    iput-object v2, v0, Len/g;->n:Len/m;

    new-instance v2, Len/m;

    invoke-direct {v2}, Len/m;-><init>()V

    iput-object v2, v0, Len/g;->o:Len/m;

    const/4 v3, 0x0

    iput-boolean v3, v0, Len/g;->p:Z

    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v4, v0, Len/g;->t:Ljava/util/Set;

    iget-object v4, v1, Len/g$g;->f:Len/l;

    iput-object v4, v0, Len/g;->j:Len/l;

    iget-boolean v4, v1, Len/g$g;->g:Z

    iput-boolean v4, v0, Len/g;->a:Z

    iget-object v5, v1, Len/g$g;->e:Len/g$h;

    iput-object v5, v0, Len/g;->b:Len/g$h;

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    move v7, v6

    goto :goto_0

    :cond_0
    move v7, v5

    :goto_0
    iput v7, v0, Len/g;->f:I

    if-eqz v4, :cond_1

    add-int/2addr v7, v5

    iput v7, v0, Len/g;->f:I

    :cond_1
    const/4 v5, 0x7

    if-eqz v4, :cond_2

    iget-object v7, v0, Len/g;->n:Len/m;

    const/high16 v8, 0x1000000

    invoke-virtual {v7, v5, v8}, Len/m;->i(II)Len/m;

    :cond_2
    iget-object v7, v1, Len/g$g;->b:Ljava/lang/String;

    iput-object v7, v0, Len/g;->d:Ljava/lang/String;

    new-instance v8, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-array v9, v6, [Ljava/lang/Object;

    aput-object v7, v9, v3

    const-string v10, "OkHttp %s Writer"

    invoke-static {v10, v9}, Lzm/c;->q(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v3}, Lzm/c;->F(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v9

    invoke-direct {v8, v6, v9}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object v8, v0, Len/g;->h:Ljava/util/concurrent/ScheduledExecutorService;

    iget v9, v1, Len/g$g;->h:I

    if-eqz v9, :cond_3

    new-instance v9, Len/g$i;

    invoke-direct {v9, v0, v3, v3, v3}, Len/g$i;-><init>(Len/g;ZII)V

    iget v10, v1, Len/g$g;->h:I

    int-to-long v11, v10

    int-to-long v13, v10

    sget-object v15, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v10, v11

    move-wide v12, v13

    move-object v14, v15

    invoke-interface/range {v8 .. v14}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :cond_3
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    const/16 v17, 0x0

    const/16 v18, 0x1

    const-wide/16 v19, 0x3c

    sget-object v21, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v22, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct/range {v22 .. v22}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-array v9, v6, [Ljava/lang/Object;

    aput-object v7, v9, v3

    const-string v3, "OkHttp %s Push Observer"

    invoke-static {v3, v9}, Lzm/c;->q(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Lzm/c;->F(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v23

    move-object/from16 v16, v8

    invoke-direct/range {v16 .. v23}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v8, v0, Len/g;->i:Ljava/util/concurrent/ExecutorService;

    const v3, 0xffff

    invoke-virtual {v2, v5, v3}, Len/m;->i(II)Len/m;

    const/4 v3, 0x5

    const/16 v5, 0x4000

    invoke-virtual {v2, v3, v5}, Len/m;->i(II)Len/m;

    invoke-virtual {v2}, Len/m;->d()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, Len/g;->m:J

    iget-object v2, v1, Len/g$g;->a:Ljava/net/Socket;

    iput-object v2, v0, Len/g;->q:Ljava/net/Socket;

    new-instance v2, Len/j;

    iget-object v3, v1, Len/g$g;->d:Lin/d;

    invoke-direct {v2, v3, v4}, Len/j;-><init>(Lin/d;Z)V

    iput-object v2, v0, Len/g;->r:Len/j;

    new-instance v2, Len/g$j;

    new-instance v3, Len/h;

    iget-object v1, v1, Len/g$g;->c:Lin/e;

    invoke-direct {v3, v1, v4}, Len/h;-><init>(Lin/e;Z)V

    invoke-direct {v2, v0, v3}, Len/g$j;-><init>(Len/g;Len/h;)V

    iput-object v2, v0, Len/g;->s:Len/g$j;

    return-void
.end method

.method static synthetic c(Len/g;)V
    .locals 0

    invoke-direct {p0}, Len/g;->j()V

    return-void
.end method

.method static synthetic d()Ljava/util/concurrent/ExecutorService;
    .locals 1

    sget-object v0, Len/g;->u:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic e(Len/g;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    iget-object p0, p0, Len/g;->h:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method static synthetic f(Len/g;Z)Z
    .locals 0

    iput-boolean p1, p0, Len/g;->k:Z

    return p1
.end method

.method private j()V
    .locals 1

    :try_start_0
    sget-object v0, Len/b;->c:Len/b;

    invoke-virtual {p0, v0, v0}, Len/g;->g(Len/b;Len/b;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private p(ILjava/util/List;Z)Len/i;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Len/c;",
            ">;Z)",
            "Len/i;"
        }
    .end annotation

    xor-int/lit8 v6, p3, 0x1

    const/4 v4, 0x0

    iget-object v7, p0, Len/g;->r:Len/j;

    monitor-enter v7

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget v0, p0, Len/g;->f:I

    const v1, 0x3fffffff    # 1.9999999f

    if-le v0, v1, :cond_0

    sget-object v0, Len/b;->f:Len/b;

    invoke-virtual {p0, v0}, Len/g;->L(Len/b;)V

    :cond_0
    iget-boolean v0, p0, Len/g;->g:Z

    if-nez v0, :cond_7

    iget v8, p0, Len/g;->f:I

    add-int/lit8 v0, v8, 0x2

    iput v0, p0, Len/g;->f:I

    new-instance v9, Len/i;

    const/4 v5, 0x0

    move-object v0, v9

    move v1, v8

    move-object v2, p0

    move v3, v6

    invoke-direct/range {v0 .. v5}, Len/i;-><init>(ILen/g;ZZLym/q;)V

    if-eqz p3, :cond_2

    iget-wide v0, p0, Len/g;->m:J

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-eqz p3, :cond_2

    iget-wide v0, v9, Len/i;->b:J

    cmp-long p3, v0, v2

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p3, 0x1

    :goto_1
    invoke-virtual {v9}, Len/i;->m()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Len/g;->c:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_4

    :try_start_2
    iget-object v0, p0, Len/g;->r:Len/j;

    invoke-virtual {v0, v6, v8, p1, p2}, Len/j;->y(ZIILjava/util/List;)V

    goto :goto_2

    :cond_4
    iget-boolean v0, p0, Len/g;->a:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Len/g;->r:Len/j;

    invoke-virtual {v0, p1, v8, p2}, Len/j;->p(IILjava/util/List;)V

    :goto_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p3, :cond_5

    iget-object p1, p0, Len/g;->r:Len/j;

    invoke-virtual {p1}, Len/j;->flush()V

    :cond_5
    return-object v9

    :cond_6
    :try_start_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "client streams shouldn\'t have associated stream IDs"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_7
    :try_start_4
    new-instance p1, Len/a;

    invoke-direct {p1}, Len/a;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1

    :catchall_1
    move-exception p1

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1
.end method

.method private declared-synchronized y(Lzm/b;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Len/g;->n()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Len/g;->i:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method A(ILjava/util/List;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Len/c;",
            ">;Z)V"
        }
    .end annotation

    :try_start_0
    new-instance v7, Len/g$d;

    const-string v2, "OkHttp %s Push Headers[%s]"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v1, p0, Len/g;->d:Ljava/lang/String;

    aput-object v1, v3, v0

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    move-object v0, v7

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Len/g$d;-><init>(Len/g;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V

    invoke-direct {p0, v7}, Len/g;->y(Lzm/b;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method D(ILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Len/c;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Len/g;->t:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p2, Len/b;->c:Len/b;

    invoke-virtual {p0, p1, p2}, Len/g;->Y(ILen/b;)V

    monitor-exit p0

    return-void

    :cond_0
    iget-object v0, p0, Len/g;->t:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v0, Len/g$c;

    const-string v4, "OkHttp %s Push Request[%s]"

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Len/g;->d:Ljava/lang/String;

    aput-object v2, v5, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    move-object v2, v0

    move-object v3, p0

    move v6, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Len/g$c;-><init>(Len/g;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V

    invoke-direct {p0, v0}, Len/g;->y(Lzm/b;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method F(ILen/b;)V
    .locals 7

    new-instance v6, Len/g$f;

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v0, p0, Len/g;->d:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, v3, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v3, v1

    const-string v2, "OkHttp %s Push Reset[%s]"

    move-object v0, v6

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Len/g$f;-><init>(Len/g;Ljava/lang/String;[Ljava/lang/Object;ILen/b;)V

    invoke-direct {p0, v6}, Len/g;->y(Lzm/b;)V

    return-void
.end method

.method H(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    and-int/2addr p1, v0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method declared-synchronized J(I)Len/i;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Len/g;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Len/i;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public L(Len/b;)V
    .locals 4

    iget-object v0, p0, Len/g;->r:Len/j;

    monitor-enter v0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v1, p0, Len/g;->g:Z

    if-eqz v1, :cond_0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :cond_0
    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, p0, Len/g;->g:Z

    iget v1, p0, Len/g;->e:I

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v2, p0, Len/g;->r:Len/j;

    sget-object v3, Lzm/c;->a:[B

    invoke-virtual {v2, v1, p1, v3}, Len/j;->j(ILen/b;[B)V

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1
.end method

.method public M()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Len/g;->O(Z)V

    return-void
.end method

.method O(Z)V
    .locals 5

    if-eqz p1, :cond_0

    iget-object p1, p0, Len/g;->r:Len/j;

    invoke-virtual {p1}, Len/j;->d()V

    iget-object p1, p0, Len/g;->r:Len/j;

    iget-object v0, p0, Len/g;->n:Len/m;

    invoke-virtual {p1, v0}, Len/j;->t(Len/m;)V

    iget-object p1, p0, Len/g;->n:Len/m;

    invoke-virtual {p1}, Len/m;->d()I

    move-result p1

    const v0, 0xffff

    if-eq p1, v0, :cond_0

    iget-object v1, p0, Len/g;->r:Len/j;

    const/4 v2, 0x0

    sub-int/2addr p1, v0

    int-to-long v3, p1

    invoke-virtual {v1, v2, v3, v4}, Len/j;->A(IJ)V

    :cond_0
    new-instance p1, Ljava/lang/Thread;

    iget-object v0, p0, Len/g;->s:Len/g$j;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method declared-synchronized U(J)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Len/g;->l:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Len/g;->l:J

    iget-object p1, p0, Len/g;->n:Len/m;

    invoke-virtual {p1}, Len/m;->d()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-long p1, p1

    cmp-long p1, v0, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x0

    iget-wide v0, p0, Len/g;->l:J

    invoke-virtual {p0, p1, v0, v1}, Len/g;->Z(IJ)V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Len/g;->l:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public V(IZLin/c;J)V
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iget-object p4, p0, Len/g;->r:Len/j;

    invoke-virtual {p4, p2, p1, p3, v3}, Len/j;->e(ZILin/c;I)V

    return-void

    :cond_0
    :goto_0
    cmp-long v2, p4, v0

    if-lez v2, :cond_4

    monitor-enter p0

    :goto_1
    :try_start_0
    iget-wide v4, p0, Len/g;->m:J

    cmp-long v2, v4, v0

    if-gtz v2, :cond_2

    iget-object v2, p0, Len/g;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :try_start_1
    invoke-static {p4, p5, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v2, v4

    iget-object v4, p0, Len/g;->r:Len/j;

    invoke-virtual {v4}, Len/j;->n()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-wide v4, p0, Len/g;->m:J

    int-to-long v6, v2

    sub-long/2addr v4, v6

    iput-wide v4, p0, Len/g;->m:J

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long/2addr p4, v6

    iget-object v4, p0, Len/g;->r:Len/j;

    if-eqz p2, :cond_3

    cmp-long v5, p4, v0

    if-nez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    move v5, v3

    :goto_2
    invoke-virtual {v4, v5, p1, p3, v2}, Len/j;->e(ZILin/c;I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    :goto_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_4
    return-void
.end method

.method W(ZII)V
    .locals 2

    if-nez p1, :cond_0

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Len/g;->k:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Len/g;->k:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Len/g;->j()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    :try_start_2
    iget-object v0, p0, Len/g;->r:Len/j;

    invoke-virtual {v0, p1, p2, p3}, Len/j;->o(ZII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    invoke-direct {p0}, Len/g;->j()V

    :goto_0
    return-void
.end method

.method X(ILen/b;)V
    .locals 1

    iget-object v0, p0, Len/g;->r:Len/j;

    invoke-virtual {v0, p1, p2}, Len/j;->s(ILen/b;)V

    return-void
.end method

.method Y(ILen/b;)V
    .locals 8

    :try_start_0
    iget-object v0, p0, Len/g;->h:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v7, Len/g$a;

    const-string v3, "OkHttp %s stream %d"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Len/g;->d:Ljava/lang/String;

    aput-object v2, v4, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Len/g$a;-><init>(Len/g;Ljava/lang/String;[Ljava/lang/Object;ILen/b;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method Z(IJ)V
    .locals 9

    :try_start_0
    iget-object v0, p0, Len/g;->h:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v8, Len/g$b;

    const-string v3, "OkHttp Window Update %s stream %d"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Len/g;->d:Ljava/lang/String;

    aput-object v2, v4, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    move-object v1, v8

    move-object v2, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Len/g$b;-><init>(Len/g;Ljava/lang/String;[Ljava/lang/Object;IJ)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public close()V
    .locals 2

    sget-object v0, Len/b;->b:Len/b;

    sget-object v1, Len/b;->g:Len/b;

    invoke-virtual {p0, v0, v1}, Len/g;->g(Len/b;Len/b;)V

    return-void
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Len/g;->r:Len/j;

    invoke-virtual {v0}, Len/j;->flush()V

    return-void
.end method

.method g(Len/b;Len/b;)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Len/g;->L(Len/b;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    goto :goto_0

    :catch_0
    move-exception p1

    :goto_0
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Len/g;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Len/g;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Len/g;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Len/i;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Len/i;

    iget-object v1, p0, Len/g;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    :try_start_2
    invoke-virtual {v3, p2}, Len/i;->f(Len/b;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    if-eqz p1, :cond_1

    move-object p1, v3

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :try_start_3
    iget-object p2, p0, Len/g;->r:Len/j;

    invoke-virtual {p2}, Len/j;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception p2

    if-nez p1, :cond_3

    move-object p1, p2

    :cond_3
    :goto_3
    :try_start_4
    iget-object p2, p0, Len/g;->q:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception p1

    :goto_4
    iget-object p2, p0, Len/g;->h:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    iget-object p2, p0, Len/g;->i:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    if-nez p1, :cond_4

    return-void

    :cond_4
    throw p1

    :catchall_0
    move-exception p1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method declared-synchronized l(I)Len/i;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Len/g;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Len/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized n()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Len/g;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized o()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Len/g;->o:Len/m;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Len/m;->e(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public s(Ljava/util/List;Z)Len/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Len/c;",
            ">;Z)",
            "Len/i;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Len/g;->p(ILjava/util/List;Z)Len/i;

    move-result-object p1

    return-object p1
.end method

.method t(ILin/e;IZ)V
    .locals 8

    new-instance v5, Lin/c;

    invoke-direct {v5}, Lin/c;-><init>()V

    int-to-long v0, p3

    invoke-interface {p2, v0, v1}, Lin/e;->B(J)V

    invoke-interface {p2, v5, v0, v1}, Lin/t;->E(Lin/c;J)J

    invoke-virtual {v5}, Lin/c;->size()J

    move-result-wide v2

    cmp-long p2, v2, v0

    if-nez p2, :cond_0

    new-instance p2, Len/g$e;

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v1, p0, Len/g;->d:Ljava/lang/String;

    aput-object v1, v3, v0

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    const-string v2, "OkHttp %s Push Data[%s]"

    move-object v0, p2

    move-object v1, p0

    move v4, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Len/g$e;-><init>(Len/g;Ljava/lang/String;[Ljava/lang/Object;ILin/c;IZ)V

    invoke-direct {p0, p2}, Len/g;->y(Lzm/b;)V

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lin/c;->size()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, " != "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
