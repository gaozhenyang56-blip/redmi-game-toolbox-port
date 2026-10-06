.class final Ldn/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lin/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldn/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field private final a:Lin/i;

.field private b:Z

.field final synthetic c:Ldn/a;


# direct methods
.method constructor <init>(Ldn/a;)V
    .locals 1

    iput-object p1, p0, Ldn/a$c;->c:Ldn/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lin/i;

    iget-object p1, p1, Ldn/a;->d:Lin/d;

    invoke-interface {p1}, Lin/s;->b()Lin/u;

    move-result-object p1

    invoke-direct {v0, p1}, Lin/i;-><init>(Lin/u;)V

    iput-object v0, p0, Ldn/a$c;->a:Lin/i;

    return-void
.end method


# virtual methods
.method public K(Lin/c;J)V
    .locals 2

    iget-boolean v0, p0, Ldn/a$c;->b:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ldn/a$c;->c:Ldn/a;

    iget-object v0, v0, Ldn/a;->d:Lin/d;

    invoke-interface {v0, p2, p3}, Lin/d;->P(J)Lin/d;

    iget-object v0, p0, Ldn/a$c;->c:Ldn/a;

    iget-object v0, v0, Ldn/a;->d:Lin/d;

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lin/d;->m(Ljava/lang/String;)Lin/d;

    iget-object v0, p0, Ldn/a$c;->c:Ldn/a;

    iget-object v0, v0, Ldn/a;->d:Lin/d;

    invoke-interface {v0, p1, p2, p3}, Lin/s;->K(Lin/c;J)V

    iget-object p1, p0, Ldn/a$c;->c:Ldn/a;

    iget-object p1, p1, Ldn/a;->d:Lin/d;

    invoke-interface {p1, v1}, Lin/d;->m(Ljava/lang/String;)Lin/d;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Lin/u;
    .locals 1

    iget-object v0, p0, Ldn/a$c;->a:Lin/i;

    return-object v0
.end method

.method public declared-synchronized close()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldn/a$c;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Ldn/a$c;->b:Z

    iget-object v0, p0, Ldn/a$c;->c:Ldn/a;

    iget-object v0, v0, Ldn/a;->d:Lin/d;

    const-string v1, "0\r\n\r\n"

    invoke-interface {v0, v1}, Lin/d;->m(Ljava/lang/String;)Lin/d;

    iget-object v0, p0, Ldn/a$c;->c:Ldn/a;

    iget-object v1, p0, Ldn/a$c;->a:Lin/i;

    invoke-virtual {v0, v1}, Ldn/a;->g(Lin/i;)V

    iget-object v0, p0, Ldn/a$c;->c:Ldn/a;

    const/4 v1, 0x3

    iput v1, v0, Ldn/a;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldn/a$c;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Ldn/a$c;->c:Ldn/a;

    iget-object v0, v0, Ldn/a;->d:Lin/d;

    invoke-interface {v0}, Lin/d;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
