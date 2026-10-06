.class public final Llk/u2;
.super Lkotlinx/coroutines/internal/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/internal/z<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0002B\u001d\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0012\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0018\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0006\u0010\n\u001a\u00020\tJ\u0012\u0010\u000c\u001a\u00020\u00072\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0005H\u0014R*\u0010\u0011\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u000e0\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0016"
    }
    d2 = {
        "Llk/u2;",
        "T",
        "Lkotlinx/coroutines/internal/z;",
        "Ltj/g;",
        "context",
        "",
        "oldValue",
        "Loj/t;",
        "R0",
        "",
        "Q0",
        "state",
        "L0",
        "Ljava/lang/ThreadLocal;",
        "Loj/l;",
        "d",
        "Ljava/lang/ThreadLocal;",
        "threadStateToRecover",
        "Ltj/d;",
        "uCont",
        "<init>",
        "(Ltj/g;Ltj/d;)V",
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
.field private d:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Loj/l<",
            "Ltj/g;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ltj/g;Ltj/d;)V
    .locals 2
    .param p1    # Ltj/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltj/g;",
            "Ltj/d<",
            "-TT;>;)V"
        }
    .end annotation

    sget-object v0, Llk/v2;->a:Llk/v2;

    invoke-interface {p1, v0}, Ltj/g;->d(Ltj/g$c;)Ltj/g$b;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-interface {p1, v0}, Ltj/g;->g(Ltj/g;)Ltj/g;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    invoke-direct {p0, v0, p2}, Lkotlinx/coroutines/internal/z;-><init>(Ltj/g;Ltj/d;)V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Llk/u2;->d:Ljava/lang/ThreadLocal;

    invoke-interface {p2}, Ltj/d;->getContext()Ltj/g;

    move-result-object p2

    sget-object v0, Ltj/e;->e0:Ltj/e$b;

    invoke-interface {p2, v0}, Ltj/g;->d(Ltj/g$c;)Ltj/g$b;

    move-result-object p2

    instance-of p2, p2, Llk/d0;

    if-nez p2, :cond_1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lkotlinx/coroutines/internal/f0;->c(Ltj/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlinx/coroutines/internal/f0;->a(Ltj/g;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Llk/u2;->R0(Ltj/g;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected L0(Ljava/lang/Object;)V
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Llk/u2;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loj/l;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Loj/l;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltj/g;

    invoke-virtual {v0}, Loj/l;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lkotlinx/coroutines/internal/f0;->a(Ltj/g;Ljava/lang/Object;)V

    iget-object v0, p0, Llk/u2;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/z;->c:Ltj/d;

    invoke-static {p1, v0}, Llk/a0;->a(Ljava/lang/Object;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lkotlinx/coroutines/internal/z;->c:Ltj/d;

    invoke-interface {v0}, Ltj/d;->getContext()Ltj/g;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlinx/coroutines/internal/f0;->c(Ltj/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lkotlinx/coroutines/internal/f0;->a:Lkotlinx/coroutines/internal/b0;

    if-eq v3, v4, :cond_1

    invoke-static {v0, v2, v3}, Llk/c0;->g(Ltj/d;Ltj/g;Ljava/lang/Object;)Llk/u2;

    move-result-object v1

    :cond_1
    :try_start_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/z;->c:Ltj/d;

    invoke-interface {v0, p1}, Ltj/d;->resumeWith(Ljava/lang/Object;)V

    sget-object p1, Loj/t;->a:Loj/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Llk/u2;->Q0()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    invoke-static {v2, v3}, Lkotlinx/coroutines/internal/f0;->a(Ltj/g;Ljava/lang/Object;)V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Llk/u2;->Q0()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    invoke-static {v2, v3}, Lkotlinx/coroutines/internal/f0;->a(Ltj/g;Ljava/lang/Object;)V

    :cond_5
    throw p1
.end method

.method public final Q0()Z
    .locals 2

    iget-object v0, p0, Llk/u2;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Llk/u2;->d:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final R0(Ltj/g;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ltj/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Llk/u2;->d:Ljava/lang/ThreadLocal;

    invoke-static {p1, p2}, Loj/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Loj/l;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method
