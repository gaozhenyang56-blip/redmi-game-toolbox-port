.class public abstract Llk/c1;
.super Llk/d0;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0008 \u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0006\u0010\u0006\u001a\u00020\u0002J\u0012\u0010\n\u001a\u00020\t2\n\u0010\u0008\u001a\u0006\u0012\u0002\u0008\u00030\u0007J\u0010\u0010\u000b\u001a\u00020\t2\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\u000c\u001a\u00020\t2\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002J\u0008\u0010\r\u001a\u00020\tH\u0016R\u0016\u0010\u0010\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0012\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0005R\"\u0010\u0016\u001a\u000e\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0007\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0019\u001a\u00020\u00048TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018R\u0011\u0010\u001c\u001a\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u001bR\u0011\u0010\u001e\u001a\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u001b\u00a8\u0006!"
    }
    d2 = {
        "Llk/c1;",
        "Llk/d0;",
        "",
        "unconfined",
        "",
        "Z",
        "g0",
        "Llk/t0;",
        "task",
        "Loj/t;",
        "a0",
        "c0",
        "Y",
        "shutdown",
        "c",
        "J",
        "useCount",
        "d",
        "shared",
        "Lkotlinx/coroutines/internal/a;",
        "e",
        "Lkotlinx/coroutines/internal/a;",
        "unconfinedQueue",
        "b0",
        "()J",
        "nextTime",
        "e0",
        "()Z",
        "isUnconfinedLoopActive",
        "f0",
        "isUnconfinedQueueEmpty",
        "<init>",
        "()V",
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
.field private c:J

.field private d:Z

.field private e:Lkotlinx/coroutines/internal/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/internal/a<",
            "Llk/t0<",
            "*>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Llk/d0;-><init>()V

    return-void
.end method

.method private final Z(Z)J
    .locals 2

    if-eqz p1, :cond_0

    const-wide v0, 0x100000000L

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1

    :goto_0
    return-wide v0
.end method

.method public static synthetic d0(Llk/c1;ZILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Llk/c1;->c0(Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: incrementUseCount"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final Y(Z)V
    .locals 4

    iget-wide v0, p0, Llk/c1;->c:J

    invoke-direct {p0, p1}, Llk/c1;->Z(Z)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Llk/c1;->c:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    return-void

    :cond_0
    iget-boolean p1, p0, Llk/c1;->d:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Llk/c1;->shutdown()V

    :cond_1
    return-void
.end method

.method public final a0(Llk/t0;)V
    .locals 1
    .param p1    # Llk/t0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llk/t0<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Llk/c1;->e:Lkotlinx/coroutines/internal/a;

    if-nez v0, :cond_0

    new-instance v0, Lkotlinx/coroutines/internal/a;

    invoke-direct {v0}, Lkotlinx/coroutines/internal/a;-><init>()V

    iput-object v0, p0, Llk/c1;->e:Lkotlinx/coroutines/internal/a;

    :cond_0
    invoke-virtual {v0, p1}, Lkotlinx/coroutines/internal/a;->a(Ljava/lang/Object;)V

    return-void
.end method

.method protected b0()J
    .locals 3

    iget-object v0, p0, Llk/c1;->e:Lkotlinx/coroutines/internal/a;

    const-wide v1, 0x7fffffffffffffffL

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x0

    :goto_0
    return-wide v1
.end method

.method public final c0(Z)V
    .locals 4

    iget-wide v0, p0, Llk/c1;->c:J

    invoke-direct {p0, p1}, Llk/c1;->Z(Z)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Llk/c1;->c:J

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Llk/c1;->d:Z

    :cond_0
    return-void
.end method

.method public final e0()Z
    .locals 5

    iget-wide v0, p0, Llk/c1;->c:J

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Llk/c1;->Z(Z)J

    move-result-wide v3

    cmp-long v0, v0, v3

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public final f0()Z
    .locals 1

    iget-object v0, p0, Llk/c1;->e:Lkotlinx/coroutines/internal/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/a;->c()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public final g0()Z
    .locals 2

    iget-object v0, p0, Llk/c1;->e:Lkotlinx/coroutines/internal/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llk/t0;

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Llk/t0;->run()V

    const/4 v0, 0x1

    return v0
.end method

.method public shutdown()V
    .locals 0

    return-void
.end method
