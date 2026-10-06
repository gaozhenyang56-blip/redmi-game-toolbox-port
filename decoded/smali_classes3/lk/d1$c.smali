.class public abstract Llk/d1$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;
.implements Llk/y0;
.implements Lkotlinx/coroutines/internal/h0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llk/d1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Comparable<",
        "Llk/d1$c;",
        ">;",
        "Llk/y0;",
        "Lkotlinx/coroutines/internal/h0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008 \u0018\u00002\u00060\u0001j\u0002`\u00022\u0008\u0012\u0004\u0012\u00020\u00000\u00032\u00020\u00042\u00020\u0005B\u000f\u0012\u0006\u0010\u0017\u001a\u00020\t\u00a2\u0006\u0004\u0008(\u0010)J\u0011\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0000H\u0096\u0002J\u000e\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tJ\u001e\u0010\u0011\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fJ\u0006\u0010\u0013\u001a\u00020\u0012J\u0008\u0010\u0015\u001a\u00020\u0014H\u0016R\u0016\u0010\u0017\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0016R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\"\u0010!\u001a\u00020\u00078\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R0\u0010\'\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\"2\u000c\u0010#\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\"8V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008$\u0010%\"\u0004\u0008\u001b\u0010&\u00a8\u0006*"
    }
    d2 = {
        "Llk/d1$c;",
        "Ljava/lang/Runnable;",
        "Lkotlinx/coroutines/Runnable;",
        "",
        "Llk/y0;",
        "Lkotlinx/coroutines/internal/h0;",
        "other",
        "",
        "e",
        "",
        "now",
        "",
        "g",
        "Llk/d1$d;",
        "delayed",
        "Llk/d1;",
        "eventLoop",
        "f",
        "Loj/t;",
        "a",
        "",
        "toString",
        "J",
        "nanoTime",
        "",
        "_heap",
        "Ljava/lang/Object;",
        "b",
        "I",
        "getIndex",
        "()I",
        "setIndex",
        "(I)V",
        "index",
        "Lkotlinx/coroutines/internal/g0;",
        "value",
        "c",
        "()Lkotlinx/coroutines/internal/g0;",
        "(Lkotlinx/coroutines/internal/g0;)V",
        "heap",
        "<init>",
        "(J)V",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field private volatile _heap:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public a:J
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private b:I


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Llk/d1$c;->a:J

    const/4 p1, -0x1

    iput p1, p0, Llk/d1$c;->b:I

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Llk/d1$c;->_heap:Ljava/lang/Object;

    invoke-static {}, Llk/g1;->b()Lkotlinx/coroutines/internal/b0;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    instance-of v1, v0, Llk/d1$d;

    if-eqz v1, :cond_1

    check-cast v0, Llk/d1$d;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/g0;->g(Lkotlinx/coroutines/internal/h0;)Z

    :cond_2
    invoke-static {}, Llk/g1;->b()Lkotlinx/coroutines/internal/b0;

    move-result-object v0

    iput-object v0, p0, Llk/d1$c;->_heap:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Lkotlinx/coroutines/internal/g0;)V
    .locals 2
    .param p1    # Lkotlinx/coroutines/internal/g0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/internal/g0<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Llk/d1$c;->_heap:Ljava/lang/Object;

    invoke-static {}, Llk/g1;->b()Lkotlinx/coroutines/internal/b0;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iput-object p1, p0, Llk/d1$c;->_heap:Ljava/lang/Object;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()Lkotlinx/coroutines/internal/g0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/internal/g0<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Llk/d1$c;->_heap:Ljava/lang/Object;

    instance-of v1, v0, Lkotlinx/coroutines/internal/g0;

    if-eqz v1, :cond_0

    check-cast v0, Lkotlinx/coroutines/internal/g0;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Llk/d1$c;

    invoke-virtual {p0, p1}, Llk/d1$c;->e(Llk/d1$c;)I

    move-result p1

    return p1
.end method

.method public e(Llk/d1$c;)I
    .locals 4
    .param p1    # Llk/d1$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget-wide v0, p0, Llk/d1$c;->a:J

    iget-wide v2, p1, Llk/d1$c;->a:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final declared-synchronized f(JLlk/d1$d;Llk/d1;)I
    .locals 7
    .param p3    # Llk/d1$d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Llk/d1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Llk/d1$c;->_heap:Ljava/lang/Object;

    invoke-static {}, Llk/g1;->b()Lkotlinx/coroutines/internal/b0;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x2

    :goto_0
    monitor-exit p0

    return p1

    :cond_0
    :try_start_1
    monitor-enter p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p3}, Lkotlinx/coroutines/internal/g0;->b()Lkotlinx/coroutines/internal/h0;

    move-result-object v0

    check-cast v0, Llk/d1$c;

    invoke-static {p4}, Llk/d1;->k0(Llk/d1;)Z

    move-result p4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p4, :cond_1

    const/4 p1, 0x1

    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return p1

    :cond_1
    const-wide/16 v1, 0x0

    if-nez v0, :cond_2

    :goto_1
    :try_start_4
    iput-wide p1, p3, Llk/d1$d;->b:J

    goto :goto_3

    :cond_2
    iget-wide v3, v0, Llk/d1$c;->a:J

    sub-long v5, v3, p1

    cmp-long p4, v5, v1

    if-ltz p4, :cond_3

    goto :goto_2

    :cond_3
    move-wide p1, v3

    :goto_2
    iget-wide v3, p3, Llk/d1$d;->b:J

    sub-long v3, p1, v3

    cmp-long p4, v3, v1

    if-lez p4, :cond_4

    goto :goto_1

    :cond_4
    :goto_3
    iget-wide p1, p0, Llk/d1$c;->a:J

    iget-wide v3, p3, Llk/d1$d;->b:J

    sub-long/2addr p1, v3

    cmp-long p1, p1, v1

    if-gez p1, :cond_5

    iput-wide v3, p0, Llk/d1$c;->a:J

    :cond_5
    invoke-virtual {p3, p0}, Lkotlinx/coroutines/internal/g0;->a(Lkotlinx/coroutines/internal/h0;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    monitor-exit p3

    const/4 p1, 0x0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p3

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final g(J)Z
    .locals 2

    iget-wide v0, p0, Llk/d1$c;->a:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Llk/d1$c;->b:I

    return v0
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Llk/d1$c;->b:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Delayed[nanos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Llk/d1$c;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
