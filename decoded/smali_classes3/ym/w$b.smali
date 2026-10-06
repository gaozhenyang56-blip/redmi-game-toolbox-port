.class final Lym/w$b;
.super Lzm/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lym/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field private final b:Lym/e;

.field final synthetic c:Lym/w;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lym/w;

    return-void
.end method


# virtual methods
.method protected k()V
    .locals 6

    iget-object v0, p0, Lym/w$b;->c:Lym/w;

    iget-object v0, v0, Lym/w;->c:Lin/a;

    invoke-virtual {v0}, Lin/a;->k()V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lym/w$b;->c:Lym/w;

    invoke-virtual {v1}, Lym/w;->e()Lym/z;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    :try_start_1
    iget-object v2, p0, Lym/w$b;->b:Lym/e;

    iget-object v3, p0, Lym/w$b;->c:Lym/w;

    invoke-interface {v2, v3, v0}, Lym/e;->b(Lym/d;Lym/z;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object v0, p0, Lym/w$b;->c:Lym/w;

    iget-object v0, v0, Lym/w;->a:Lym/u;

    invoke-virtual {v0}, Lym/u;->h()Lym/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lym/m;->d(Lym/w$b;)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v5, v1

    move v1, v0

    move-object v0, v5

    :goto_1
    :try_start_2
    iget-object v2, p0, Lym/w$b;->c:Lym/w;

    invoke-virtual {v2, v0}, Lym/w;->i(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    if-eqz v1, :cond_0

    invoke-static {}, Lfn/f;->j()Lfn/f;

    move-result-object v1

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback failure for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lym/w$b;->c:Lym/w;

    invoke-virtual {v4}, Lym/w;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lfn/f;->p(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lym/w$b;->c:Lym/w;

    invoke-static {v1}, Lym/w;->a(Lym/w;)Lym/o;

    move-result-object v1

    iget-object v2, p0, Lym/w$b;->c:Lym/w;

    invoke-virtual {v1, v2, v0}, Lym/o;->b(Lym/d;Ljava/io/IOException;)V

    iget-object v1, p0, Lym/w$b;->b:Lym/e;

    iget-object v2, p0, Lym/w$b;->c:Lym/w;

    invoke-interface {v1, v2, v0}, Lym/e;->a(Lym/d;Ljava/io/IOException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_2
    return-void

    :goto_3
    iget-object v1, p0, Lym/w$b;->c:Lym/w;

    iget-object v1, v1, Lym/w;->a:Lym/u;

    invoke-virtual {v1}, Lym/u;->h()Lym/m;

    move-result-object v1

    invoke-virtual {v1, p0}, Lym/m;->d(Lym/w$b;)V

    throw v0
.end method

.method l(Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "executor rejected"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    iget-object p1, p0, Lym/w$b;->c:Lym/w;

    invoke-static {p1}, Lym/w;->a(Lym/w;)Lym/o;

    move-result-object p1

    iget-object v1, p0, Lym/w$b;->c:Lym/w;

    invoke-virtual {p1, v1, v0}, Lym/o;->b(Lym/d;Ljava/io/IOException;)V

    iget-object p1, p0, Lym/w$b;->b:Lym/e;

    iget-object v1, p0, Lym/w$b;->c:Lym/w;

    invoke-interface {p1, v1, v0}, Lym/e;->a(Lym/d;Ljava/io/IOException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lym/w$b;->c:Lym/w;

    iget-object p1, p1, Lym/w;->a:Lym/u;

    invoke-virtual {p1}, Lym/u;->h()Lym/m;

    move-result-object p1

    invoke-virtual {p1, p0}, Lym/m;->d(Lym/w$b;)V

    :goto_0
    return-void

    :goto_1
    iget-object v0, p0, Lym/w$b;->c:Lym/w;

    iget-object v0, v0, Lym/w;->a:Lym/u;

    invoke-virtual {v0}, Lym/u;->h()Lym/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lym/m;->d(Lym/w$b;)V

    throw p1
.end method

.method m()Lym/w;
    .locals 1

    iget-object v0, p0, Lym/w$b;->c:Lym/w;

    return-object v0
.end method

.method n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lym/w$b;->c:Lym/w;

    iget-object v0, v0, Lym/w;->e:Lym/x;

    invoke-virtual {v0}, Lym/x;->h()Lym/r;

    move-result-object v0

    invoke-virtual {v0}, Lym/r;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
