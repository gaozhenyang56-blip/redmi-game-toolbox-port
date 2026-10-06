.class Len/g$j;
.super Lzm/b;
.source "SourceFile"

# interfaces
.implements Len/h$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Len/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "j"
.end annotation


# instance fields
.field final b:Len/h;

.field final synthetic c:Len/g;


# direct methods
.method constructor <init>(Len/g;Len/h;)V
    .locals 2

    iput-object p1, p0, Len/g$j;->c:Len/g;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object p1, p1, Len/g;->d:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OkHttp %s"

    invoke-direct {p0, p1, v0}, Lzm/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p2, p0, Len/g$j;->b:Len/h;

    return-void
.end method

.method private l(Len/m;)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Len/g$j;->c:Len/g;

    invoke-static {v0}, Len/g;->e(Len/g;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Len/g$j$c;

    const-string v2, "OkHttp %s ACK Settings"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Len/g$j;->c:Len/g;

    iget-object v5, v5, Len/g;->d:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, v3, p1}, Len/g$j$c;-><init>(Len/g$j;Ljava/lang/String;[Ljava/lang/Object;Len/m;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public a(ZIILjava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/List<",
            "Len/c;",
            ">;)V"
        }
    .end annotation

    iget-object p3, p0, Len/g$j;->c:Len/g;

    invoke-virtual {p3, p2}, Len/g;->H(I)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Len/g$j;->c:Len/g;

    invoke-virtual {p3, p2, p4, p1}, Len/g;->A(ILjava/util/List;Z)V

    return-void

    :cond_0
    iget-object p3, p0, Len/g$j;->c:Len/g;

    monitor-enter p3

    :try_start_0
    iget-object v0, p0, Len/g$j;->c:Len/g;

    invoke-virtual {v0, p2}, Len/g;->l(I)Len/i;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Len/g$j;->c:Len/g;

    iget-boolean v1, v0, Len/g;->g:Z

    if-eqz v1, :cond_1

    monitor-exit p3

    return-void

    :cond_1
    iget v1, v0, Len/g;->e:I

    if-gt p2, v1, :cond_2

    monitor-exit p3

    return-void

    :cond_2
    rem-int/lit8 v1, p2, 0x2

    iget v0, v0, Len/g;->f:I

    const/4 v2, 0x2

    rem-int/2addr v0, v2

    if-ne v1, v0, :cond_3

    monitor-exit p3

    return-void

    :cond_3
    invoke-static {p4}, Lzm/c;->G(Ljava/util/List;)Lym/q;

    move-result-object v8

    new-instance p4, Len/i;

    iget-object v5, p0, Len/g$j;->c:Len/g;

    const/4 v6, 0x0

    move-object v3, p4

    move v4, p2

    move v7, p1

    invoke-direct/range {v3 .. v8}, Len/i;-><init>(ILen/g;ZZLym/q;)V

    iget-object p1, p0, Len/g$j;->c:Len/g;

    iput p2, p1, Len/g;->e:I

    iget-object p1, p1, Len/g;->c:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Len/g;->d()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Len/g$j$a;

    const-string v1, "OkHttp %s stream %d"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Len/g$j;->c:Len/g;

    iget-object v4, v4, Len/g;->d:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v3

    invoke-direct {v0, p0, v1, v2, p4}, Len/g$j$a;-><init>(Len/g$j;Ljava/lang/String;[Ljava/lang/Object;Len/i;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    monitor-exit p3

    return-void

    :cond_4
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, p4}, Len/i;->q(Ljava/util/List;)V

    if-eqz p1, :cond_5

    invoke-virtual {v0}, Len/i;->p()V

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public b(IJ)V
    .locals 3

    iget-object v0, p0, Len/g$j;->c:Len/g;

    if-nez p1, :cond_0

    monitor-enter v0

    :try_start_0
    iget-object p1, p0, Len/g$j;->c:Len/g;

    iget-wide v1, p1, Len/g;->m:J

    add-long/2addr v1, p2

    iput-wide v1, p1, Len/g;->m:J

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    invoke-virtual {v0, p1}, Len/g;->l(I)Len/i;

    move-result-object p1

    if-eqz p1, :cond_1

    monitor-enter p1

    :try_start_1
    invoke-virtual {p1, p2, p3}, Len/i;->c(J)V

    monitor-exit p1

    goto :goto_0

    :catchall_1
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p2

    :cond_1
    :goto_0
    return-void
.end method

.method public c(ILen/b;)V
    .locals 1

    iget-object v0, p0, Len/g$j;->c:Len/g;

    invoke-virtual {v0, p1}, Len/g;->H(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Len/g$j;->c:Len/g;

    invoke-virtual {v0, p1, p2}, Len/g;->F(ILen/b;)V

    return-void

    :cond_0
    iget-object v0, p0, Len/g$j;->c:Len/g;

    invoke-virtual {v0, p1}, Len/g;->J(I)Len/i;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Len/i;->r(Len/b;)V

    :cond_1
    return-void
.end method

.method public d(ILen/b;Lin/f;)V
    .locals 3

    invoke-virtual {p3}, Lin/f;->q()I

    iget-object p2, p0, Len/g$j;->c:Len/g;

    monitor-enter p2

    :try_start_0
    iget-object p3, p0, Len/g$j;->c:Len/g;

    iget-object p3, p3, Len/g;->c:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    iget-object v0, p0, Len/g$j;->c:Len/g;

    iget-object v0, v0, Len/g;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Len/i;

    invoke-interface {p3, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Len/i;

    iget-object v0, p0, Len/g$j;->c:Len/g;

    const/4 v1, 0x1

    iput-boolean v1, v0, Len/g;->g:Z

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    array-length p2, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    aget-object v1, p3, v0

    invoke-virtual {v1}, Len/i;->i()I

    move-result v2

    if-le v2, p1, :cond_0

    invoke-virtual {v1}, Len/i;->l()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Len/b;->f:Len/b;

    invoke-virtual {v1, v2}, Len/i;->r(Len/b;)V

    iget-object v2, p0, Len/g$j;->c:Len/g;

    invoke-virtual {v1}, Len/i;->i()I

    move-result v1

    invoke-virtual {v2, v1}, Len/g;->J(I)Len/i;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public e(IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Len/c;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Len/g$j;->c:Len/g;

    invoke-virtual {p1, p2, p3}, Len/g;->D(ILjava/util/List;)V

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public g(ZLen/m;)V
    .locals 10

    iget-object v0, p0, Len/g$j;->c:Len/g;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Len/g$j;->c:Len/g;

    iget-object v1, v1, Len/g;->o:Len/m;

    invoke-virtual {v1}, Len/m;->d()I

    move-result v1

    if-eqz p1, :cond_0

    iget-object p1, p0, Len/g$j;->c:Len/g;

    iget-object p1, p1, Len/g;->o:Len/m;

    invoke-virtual {p1}, Len/m;->a()V

    :cond_0
    iget-object p1, p0, Len/g$j;->c:Len/g;

    iget-object p1, p1, Len/g;->o:Len/m;

    invoke-virtual {p1, p2}, Len/m;->h(Len/m;)V

    invoke-direct {p0, p2}, Len/g$j;->l(Len/m;)V

    iget-object p1, p0, Len/g$j;->c:Len/g;

    iget-object p1, p1, Len/g;->o:Len/m;

    invoke-virtual {p1}, Len/m;->d()I

    move-result p1

    const/4 p2, -0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq p1, p2, :cond_2

    if-eq p1, v1, :cond_2

    sub-int/2addr p1, v1

    int-to-long p1, p1

    iget-object v1, p0, Len/g$j;->c:Len/g;

    iget-boolean v6, v1, Len/g;->p:Z

    if-nez v6, :cond_1

    iput-boolean v4, v1, Len/g;->p:Z

    :cond_1
    iget-object v1, v1, Len/g;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Len/g$j;->c:Len/g;

    iget-object v1, v1, Len/g;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v5, p0, Len/g$j;->c:Len/g;

    iget-object v5, v5, Len/g;->c:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    new-array v5, v5, [Len/i;

    invoke-interface {v1, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, [Len/i;

    goto :goto_0

    :cond_2
    move-wide p1, v2

    :cond_3
    :goto_0
    invoke-static {}, Len/g;->d()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v6, Len/g$j$b;

    const-string v7, "OkHttp %s settings"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v8, p0, Len/g$j;->c:Len/g;

    iget-object v8, v8, Len/g;->d:Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v4, v9

    invoke-direct {v6, p0, v7, v4}, Len/g$j$b;-><init>(Len/g$j;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v1, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v5, :cond_4

    cmp-long v0, p1, v2

    if-eqz v0, :cond_4

    array-length v0, v5

    :goto_1
    if-ge v9, v0, :cond_4

    aget-object v1, v5, v9

    monitor-enter v1

    :try_start_1
    invoke-virtual {v1, p1, p2}, Len/i;->c(J)V

    monitor-exit v1

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_4
    return-void

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public h(ZII)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object p1, p0, Len/g$j;->c:Len/g;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Len/g$j;->c:Len/g;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Len/g;->f(Len/g;Z)Z

    iget-object p2, p0, Len/g$j;->c:Len/g;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_0
    :try_start_1
    iget-object p1, p0, Len/g$j;->c:Len/g;

    invoke-static {p1}, Len/g;->e(Len/g;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    new-instance v0, Len/g$i;

    iget-object v1, p0, Len/g$j;->c:Len/g;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p2, p3}, Len/g$i;-><init>(Len/g;ZII)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public i(ZILin/e;I)V
    .locals 2

    iget-object v0, p0, Len/g$j;->c:Len/g;

    invoke-virtual {v0, p2}, Len/g;->H(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Len/g$j;->c:Len/g;

    invoke-virtual {v0, p2, p3, p4, p1}, Len/g;->t(ILin/e;IZ)V

    return-void

    :cond_0
    iget-object v0, p0, Len/g$j;->c:Len/g;

    invoke-virtual {v0, p2}, Len/g;->l(I)Len/i;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p1, p0, Len/g$j;->c:Len/g;

    sget-object v0, Len/b;->c:Len/b;

    invoke-virtual {p1, p2, v0}, Len/g;->Y(ILen/b;)V

    iget-object p1, p0, Len/g$j;->c:Len/g;

    int-to-long v0, p4

    invoke-virtual {p1, v0, v1}, Len/g;->U(J)V

    invoke-interface {p3, v0, v1}, Lin/e;->skip(J)V

    return-void

    :cond_1
    invoke-virtual {v0, p3, p4}, Len/i;->o(Lin/e;I)V

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Len/i;->p()V

    :cond_2
    return-void
.end method

.method public j(IIIZ)V
    .locals 0

    return-void
.end method

.method protected k()V
    .locals 4

    sget-object v0, Len/b;->d:Len/b;

    :try_start_0
    iget-object v1, p0, Len/g$j;->b:Len/h;

    invoke-virtual {v1, p0}, Len/h;->e(Len/h$b;)V

    :goto_0
    iget-object v1, p0, Len/g$j;->b:Len/h;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Len/h;->d(ZLen/h$b;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Len/b;->b:Len/b;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v0, Len/b;->g:Len/b;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v2, p0, Len/g$j;->c:Len/g;

    invoke-virtual {v2, v1, v0}, Len/g;->g(Len/b;Len/b;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catchall_0
    move-exception v2

    move-object v1, v0

    goto :goto_2

    :catch_0
    move-object v1, v0

    :catch_1
    :try_start_3
    sget-object v0, Len/b;->c:Len/b;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v1, p0, Len/g$j;->c:Len/g;

    invoke-virtual {v1, v0, v0}, Len/g;->g(Len/b;Len/b;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :goto_1
    iget-object v0, p0, Len/g$j;->b:Len/h;

    invoke-static {v0}, Lzm/c;->f(Ljava/io/Closeable;)V

    return-void

    :catchall_1
    move-exception v2

    :goto_2
    :try_start_5
    iget-object v3, p0, Len/g$j;->c:Len/g;

    invoke-virtual {v3, v1, v0}, Len/g;->g(Len/b;Len/b;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    iget-object v0, p0, Len/g$j;->b:Len/h;

    invoke-static {v0}, Lzm/c;->f(Ljava/io/Closeable;)V

    throw v2
.end method
