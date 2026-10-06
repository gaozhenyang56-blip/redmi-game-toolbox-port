.class public Lzi/r0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:J

.field private b:J

.field private c:J

.field private d:J

.field private e:J

.field private f:J

.field private g:J

.field private h:J

.field private final i:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0xf4240

    mul-long/2addr p1, v0

    iput-wide p1, p0, Lzi/r0;->i:J

    iput-wide p3, p0, Lzi/r0;->a:J

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lzi/r0;->c:J

    return-wide v0
.end method

.method public b(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-wide v0, p0, Lzi/r0;->b:J

    iget-wide v2, p0, Lzi/r0;->i:J

    cmp-long v4, v0, v2

    const-wide/16 v5, 0x0

    if-lez v4, :cond_0

    div-long/2addr v0, v2

    iget-wide v2, p0, Lzi/r0;->a:J

    mul-long/2addr v0, v2

    iput-wide v5, p0, Lzi/r0;->b:J

    cmp-long v2, v0, v5

    if-lez v2, :cond_0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lzi/r0;->g:J

    cmp-long v2, v2, v5

    if-gtz v2, :cond_1

    iput-wide v0, p0, Lzi/r0;->g:J

    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lzi/r0;->h:J

    iget-wide v0, p0, Lzi/r0;->e:J

    const-wide/16 v7, 0x1

    add-long/2addr v0, v7

    iput-wide v0, p0, Lzi/r0;->e:J

    iget-wide v0, p0, Lzi/r0;->c:J

    cmp-long p1, v0, v3

    if-gez p1, :cond_2

    iput-wide v3, p0, Lzi/r0;->c:J

    :cond_2
    cmp-long p1, v3, v5

    if-lez p1, :cond_4

    iget-wide v0, p0, Lzi/r0;->f:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lzi/r0;->f:J

    iget-wide v0, p0, Lzi/r0;->d:J

    cmp-long p1, v0, v5

    if-eqz p1, :cond_3

    cmp-long p1, v0, v3

    if-lez p1, :cond_4

    :cond_3
    iput-wide v3, p0, Lzi/r0;->d:J

    :cond_4
    iget-wide v0, p0, Lzi/r0;->b:J

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    add-long/2addr v0, v3

    iput-wide v0, p0, Lzi/r0;->b:J

    return-object v2
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lzi/r0;->d:J

    return-wide v0
.end method

.method public d()J
    .locals 7

    iget-wide v0, p0, Lzi/r0;->f:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-wide v4, p0, Lzi/r0;->e:J

    cmp-long v6, v4, v2

    if-lez v6, :cond_0

    div-long/2addr v0, v4

    return-wide v0

    :cond_0
    return-wide v2
.end method

.method public e()J
    .locals 5

    iget-wide v0, p0, Lzi/r0;->h:J

    iget-wide v2, p0, Lzi/r0;->g:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    sub-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method
