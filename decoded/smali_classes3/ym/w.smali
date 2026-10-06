.class final Lym/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lym/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lym/w$b;
    }
.end annotation


# instance fields
.field final a:Lym/u;

.field final b:Lcn/j;

.field final c:Lin/a;

.field private d:Lym/o;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final e:Lym/x;

.field final f:Z

.field private g:Z


# direct methods
.method private constructor <init>(Lym/u;Lym/x;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lym/w;->a:Lym/u;

    iput-object p2, p0, Lym/w;->e:Lym/x;

    iput-boolean p3, p0, Lym/w;->f:Z

    new-instance p2, Lcn/j;

    invoke-direct {p2, p1, p3}, Lcn/j;-><init>(Lym/u;Z)V

    iput-object p2, p0, Lym/w;->b:Lcn/j;

    new-instance p2, Lym/w$a;

    invoke-direct {p2, p0}, Lym/w$a;-><init>(Lym/w;)V

    iput-object p2, p0, Lym/w;->c:Lin/a;

    invoke-virtual {p1}, Lym/u;->b()I

    move-result p1

    int-to-long v0, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v0, v1, p1}, Lin/u;->g(JLjava/util/concurrent/TimeUnit;)Lin/u;

    return-void
.end method

.method static synthetic a(Lym/w;)Lym/o;
    .locals 0

    iget-object p0, p0, Lym/w;->d:Lym/o;

    return-object p0
.end method

.method private c()V
    .locals 2

    invoke-static {}, Lfn/f;->j()Lfn/f;

    move-result-object v0

    const-string v1, "response.body().close()"

    invoke-virtual {v0, v1}, Lfn/f;->m(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lym/w;->b:Lcn/j;

    invoke-virtual {v1, v0}, Lcn/j;->j(Ljava/lang/Object;)V

    return-void
.end method

.method static g(Lym/u;Lym/x;Z)Lym/w;
    .locals 1

    new-instance v0, Lym/w;

    invoke-direct {v0, p0, p1, p2}, Lym/w;-><init>(Lym/u;Lym/x;Z)V

    invoke-virtual {p0}, Lym/u;->j()Lym/o$c;

    move-result-object p0

    invoke-interface {p0, v0}, Lym/o$c;->a(Lym/d;)Lym/o;

    move-result-object p0

    iput-object p0, v0, Lym/w;->d:Lym/o;

    return-object v0
.end method


# virtual methods
.method public J()Lym/z;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lym/w;->g:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lym/w;->g:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-direct {p0}, Lym/w;->c()V

    iget-object v0, p0, Lym/w;->c:Lin/a;

    invoke-virtual {v0}, Lin/a;->k()V

    iget-object v0, p0, Lym/w;->d:Lym/o;

    invoke-virtual {v0, p0}, Lym/o;->c(Lym/d;)V

    :try_start_1
    iget-object v0, p0, Lym/w;->a:Lym/u;

    invoke-virtual {v0}, Lym/u;->h()Lym/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lym/m;->a(Lym/w;)V

    invoke-virtual {p0}, Lym/w;->e()Lym/z;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lym/w;->a:Lym/u;

    invoke-virtual {v1}, Lym/u;->h()Lym/m;

    move-result-object v1

    invoke-virtual {v1, p0}, Lym/m;->e(Lym/w;)V

    return-object v0

    :cond_0
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {p0, v0}, Lym/w;->i(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    iget-object v1, p0, Lym/w;->d:Lym/o;

    invoke-virtual {v1, p0, v0}, Lym/o;->b(Lym/d;Ljava/io/IOException;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    iget-object v1, p0, Lym/w;->a:Lym/u;

    invoke-virtual {v1}, Lym/u;->h()Lym/m;

    move-result-object v1

    invoke-virtual {v1, p0}, Lym/m;->e(Lym/w;)V

    throw v0

    :cond_1
    :try_start_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lym/w;->b:Lcn/j;

    invoke-virtual {v0}, Lcn/j;->b()V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lym/w;->d()Lym/w;

    move-result-object v0

    return-object v0
.end method

.method public d()Lym/w;
    .locals 3

    iget-object v0, p0, Lym/w;->a:Lym/u;

    iget-object v1, p0, Lym/w;->e:Lym/x;

    iget-boolean v2, p0, Lym/w;->f:Z

    invoke-static {v0, v1, v2}, Lym/w;->g(Lym/u;Lym/x;Z)Lym/w;

    move-result-object v0

    return-object v0
.end method

.method e()Lym/z;
    .locals 13

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lym/w;->a:Lym/u;

    invoke-virtual {v0}, Lym/u;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lym/w;->b:Lcn/j;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcn/a;

    iget-object v2, p0, Lym/w;->a:Lym/u;

    invoke-virtual {v2}, Lym/u;->g()Lym/l;

    move-result-object v2

    invoke-direct {v0, v2}, Lcn/a;-><init>(Lym/l;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lan/a;

    iget-object v2, p0, Lym/w;->a:Lym/u;

    invoke-virtual {v2}, Lym/u;->o()Lan/d;

    move-result-object v2

    invoke-direct {v0, v2}, Lan/a;-><init>(Lan/d;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lbn/a;

    iget-object v2, p0, Lym/w;->a:Lym/u;

    invoke-direct {v0, v2}, Lbn/a;-><init>(Lym/u;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lym/w;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lym/w;->a:Lym/u;

    invoke-virtual {v0}, Lym/u;->p()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    new-instance v0, Lcn/b;

    iget-boolean v2, p0, Lym/w;->f:Z

    invoke-direct {v0, v2}, Lcn/b;-><init>(Z)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcn/g;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lym/w;->e:Lym/x;

    iget-object v8, p0, Lym/w;->d:Lym/o;

    iget-object v0, p0, Lym/w;->a:Lym/u;

    invoke-virtual {v0}, Lym/u;->d()I

    move-result v9

    iget-object v0, p0, Lym/w;->a:Lym/u;

    invoke-virtual {v0}, Lym/u;->x()I

    move-result v10

    iget-object v0, p0, Lym/w;->a:Lym/u;

    invoke-virtual {v0}, Lym/u;->B()I

    move-result v11

    move-object v0, v12

    move-object v7, p0

    invoke-direct/range {v0 .. v11}, Lcn/g;-><init>(Ljava/util/List;Lbn/g;Lcn/c;Lbn/c;ILym/x;Lym/d;Lym/o;III)V

    iget-object v0, p0, Lym/w;->e:Lym/x;

    invoke-interface {v12, v0}, Lym/s$a;->d(Lym/x;)Lym/z;

    move-result-object v0

    iget-object v1, p0, Lym/w;->b:Lcn/j;

    invoke-virtual {v1}, Lcn/j;->e()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-static {v0}, Lzm/c;->f(Ljava/io/Closeable;)V

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lym/w;->b:Lcn/j;

    invoke-virtual {v0}, Lcn/j;->e()Z

    move-result v0

    return v0
.end method

.method h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lym/w;->e:Lym/x;

    invoke-virtual {v0}, Lym/x;->h()Lym/r;

    move-result-object v0

    invoke-virtual {v0}, Lym/r;->z()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method i(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2
    .param p1    # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lym/w;->c:Lin/a;

    invoke-virtual {v0}, Lin/a;->n()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_1
    return-object v0
.end method

.method j()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lym/w;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "canceled "

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lym/w;->f:Z

    if-eqz v1, :cond_1

    const-string v1, "web socket"

    goto :goto_1

    :cond_1
    const-string v1, "call"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lym/w;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
