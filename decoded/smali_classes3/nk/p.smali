.class public Lnk/p;
.super Lnk/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lnk/a<",
        "TE;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0010\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u0002B)\u0012 \u0010(\u001a\u001c\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000c\u0018\u00010&j\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`\'\u00a2\u0006\u0004\u0008)\u0010*J\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0002J\u0017\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00028\u0000H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\n\u0010\t\u001a\u0004\u0018\u00010\u0003H\u0014J\u0010\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\nH\u0014J\u0016\u0010\u0010\u001a\u00020\n2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000eH\u0014R\u0018\u0010\u0015\u001a\u00060\u0011j\u0002`\u00128\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u001b\u001a\u00020\n8DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u001d\u001a\u00020\n8DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001aR\u0014\u0010\u001f\u001a\u00020\n8DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u001aR\u0014\u0010!\u001a\u00020\n8DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010\u001aR\u0014\u0010%\u001a\u00020\"8TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008#\u0010$\u00a8\u0006+"
    }
    d2 = {
        "Lnk/p;",
        "E",
        "Lnk/a;",
        "",
        "element",
        "Lkotlinx/coroutines/internal/j0;",
        "T",
        "y",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "Q",
        "",
        "wasClosed",
        "Loj/t;",
        "M",
        "Lnk/u;",
        "receive",
        "I",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "Lkotlinx/coroutines/internal/ReentrantLock;",
        "d",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "lock",
        "e",
        "Ljava/lang/Object;",
        "value",
        "J",
        "()Z",
        "isBufferAlwaysEmpty",
        "K",
        "isBufferEmpty",
        "s",
        "isBufferAlwaysFull",
        "v",
        "isBufferFull",
        "",
        "g",
        "()Ljava/lang/String;",
        "bufferDebugString",
        "Lkotlin/Function1;",
        "Lkotlinx/coroutines/internal/OnUndeliveredElement;",
        "onUndeliveredElement",
        "<init>",
        "(Lak/l;)V",
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
.field private final d:Ljava/util/concurrent/locks/ReentrantLock;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private e:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lak/l;)V
    .locals 0
    .param p1    # Lak/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lak/l<",
            "-TE;",
            "Loj/t;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lnk/a;-><init>(Lak/l;)V

    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lnk/p;->d:Ljava/util/concurrent/locks/ReentrantLock;

    sget-object p1, Lnk/b;->a:Lkotlinx/coroutines/internal/b0;

    iput-object p1, p0, Lnk/p;->e:Ljava/lang/Object;

    return-void
.end method

.method private final T(Ljava/lang/Object;)Lkotlinx/coroutines/internal/j0;
    .locals 4

    iget-object v0, p0, Lnk/p;->e:Ljava/lang/Object;

    sget-object v1, Lnk/b;->a:Lkotlinx/coroutines/internal/b0;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lnk/c;->a:Lak/l;

    if-eqz v1, :cond_1

    const/4 v3, 0x2

    invoke-static {v1, v0, v2, v3, v2}, Lkotlinx/coroutines/internal/v;->d(Lak/l;Ljava/lang/Object;Lkotlinx/coroutines/internal/j0;ILjava/lang/Object;)Lkotlinx/coroutines/internal/j0;

    move-result-object v2

    :cond_1
    :goto_0
    iput-object p1, p0, Lnk/p;->e:Ljava/lang/Object;

    return-object v2
.end method


# virtual methods
.method protected I(Lnk/u;)Z
    .locals 1
    .param p1    # Lnk/u;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnk/u<",
            "-TE;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lnk/p;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-super {p0, p1}, Lnk/a;->I(Lnk/u;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method protected final J()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final K()Z
    .locals 3

    iget-object v0, p0, Lnk/p;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v1, p0, Lnk/p;->e:Ljava/lang/Object;

    sget-object v2, Lnk/b;->a:Lkotlinx/coroutines/internal/b0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method protected M(Z)V
    .locals 3

    iget-object v0, p0, Lnk/p;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    sget-object v1, Lnk/b;->a:Lkotlinx/coroutines/internal/b0;

    invoke-direct {p0, v1}, Lnk/p;->T(Ljava/lang/Object;)Lkotlinx/coroutines/internal/j0;

    move-result-object v1

    sget-object v2, Loj/t;->a:Loj/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-super {p0, p1}, Lnk/a;->M(Z)V

    if-nez v1, :cond_0

    return-void

    :cond_0
    throw v1

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method protected Q()Ljava/lang/Object;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lnk/p;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v1, p0, Lnk/p;->e:Ljava/lang/Object;

    sget-object v2, Lnk/b;->a:Lkotlinx/coroutines/internal/b0;

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lnk/c;->i()Lnk/m;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lnk/b;->d:Lkotlinx/coroutines/internal/b0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    :cond_1
    :try_start_1
    iput-object v2, p0, Lnk/p;->e:Ljava/lang/Object;

    sget-object v2, Loj/t;->a:Loj/t;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method protected g()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lnk/p;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnk/p;->e:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method protected final s()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final v()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected y(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lnk/p;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lnk/c;->i()Lnk/m;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lnk/p;->e:Ljava/lang/Object;

    sget-object v2, Lnk/b;->a:Lkotlinx/coroutines/internal/b0;

    if-ne v1, v2, :cond_4

    :cond_1
    invoke-virtual {p0}, Lnk/a;->C()Lnk/w;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    instance-of v2, v1, Lnk/m;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    :cond_3
    :try_start_2
    invoke-static {v1}, Lbk/m;->b(Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lnk/w;->g(Ljava/lang/Object;Lkotlinx/coroutines/internal/o$b;)Lkotlinx/coroutines/internal/b0;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v2, Loj/t;->a:Loj/t;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-interface {v1, p1}, Lnk/w;->f(Ljava/lang/Object;)V

    invoke-interface {v1}, Lnk/w;->c()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_0
    :try_start_3
    invoke-direct {p0, p1}, Lnk/p;->T(Ljava/lang/Object;)Lkotlinx/coroutines/internal/j0;

    move-result-object p1

    if-nez p1, :cond_5

    sget-object p1, Lnk/b;->b:Lkotlinx/coroutines/internal/b0;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :cond_5
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method
