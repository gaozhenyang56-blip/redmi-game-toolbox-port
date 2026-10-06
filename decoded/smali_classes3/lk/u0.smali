.class public final Llk/u0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\u001a \u0010\u0005\u001a\u00020\u0004\"\u0004\u0008\u0000\u0010\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\u0000\u001a.\u0010\n\u001a\u00020\u0004\"\u0004\u0008\u0000\u0010\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u00012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0000\u001a\u0010\u0010\u000b\u001a\u00020\u0004*\u0006\u0012\u0002\u0008\u00030\u0001H\u0002\"\u0018\u0010\u000e\u001a\u00020\u0008*\u00020\u00028@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\r\"\u0018\u0010\u0010\u001a\u00020\u0008*\u00020\u00028@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\r\u00a8\u0006\u0011"
    }
    d2 = {
        "T",
        "Llk/t0;",
        "",
        "mode",
        "Loj/t;",
        "a",
        "Ltj/d;",
        "delegate",
        "",
        "undispatched",
        "d",
        "e",
        "b",
        "(I)Z",
        "isCancellableMode",
        "c",
        "isReusableMode",
        "kotlinx-coroutines-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# direct methods
.method public static final a(Llk/t0;I)V
    .locals 3
    .param p0    # Llk/t0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Llk/t0<",
            "-TT;>;I)V"
        }
    .end annotation

    invoke-virtual {p0}, Llk/t0;->c()Ltj/d;

    move-result-object v0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    instance-of v2, v0, Lkotlinx/coroutines/internal/f;

    if-eqz v2, :cond_2

    invoke-static {p1}, Llk/u0;->b(I)Z

    move-result p1

    iget v2, p0, Llk/t0;->c:I

    invoke-static {v2}, Llk/u0;->b(I)Z

    move-result v2

    if-ne p1, v2, :cond_2

    move-object p1, v0

    check-cast p1, Lkotlinx/coroutines/internal/f;

    iget-object p1, p1, Lkotlinx/coroutines/internal/f;->d:Llk/d0;

    invoke-interface {v0}, Ltj/d;->getContext()Ltj/g;

    move-result-object v0

    invoke-virtual {p1, v0}, Llk/d0;->W(Ltj/g;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0, p0}, Llk/d0;->L(Ltj/g;Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    invoke-static {p0}, Llk/u0;->e(Llk/t0;)V

    goto :goto_1

    :cond_2
    invoke-static {p0, v0, v1}, Llk/u0;->d(Llk/t0;Ltj/d;Z)V

    :goto_1
    return-void
.end method

.method public static final b(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static final c(I)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final d(Llk/t0;Ltj/d;Z)V
    .locals 3
    .param p0    # Llk/t0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Llk/t0<",
            "-TT;>;",
            "Ltj/d<",
            "-TT;>;Z)V"
        }
    .end annotation

    invoke-virtual {p0}, Llk/t0;->g()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Llk/t0;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object p0, Loj/m;->b:Loj/m$a;

    invoke-static {v1}, Loj/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object v1, Loj/m;->b:Loj/m$a;

    invoke-virtual {p0, v0}, Llk/t0;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Loj/m;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p2, :cond_5

    check-cast p1, Lkotlinx/coroutines/internal/f;

    iget-object p2, p1, Lkotlinx/coroutines/internal/f;->e:Ltj/d;

    iget-object v0, p1, Lkotlinx/coroutines/internal/f;->g:Ljava/lang/Object;

    invoke-interface {p2}, Ltj/d;->getContext()Ltj/g;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlinx/coroutines/internal/f0;->c(Ltj/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lkotlinx/coroutines/internal/f0;->a:Lkotlinx/coroutines/internal/b0;

    if-eq v0, v2, :cond_1

    invoke-static {p2, v1, v0}, Llk/c0;->g(Ltj/d;Ltj/g;Ljava/lang/Object;)Llk/u2;

    move-result-object p2

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    :try_start_0
    iget-object p1, p1, Lkotlinx/coroutines/internal/f;->e:Ltj/d;

    invoke-interface {p1, p0}, Ltj/d;->resumeWith(Ljava/lang/Object;)V

    sget-object p0, Loj/t;->a:Loj/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Llk/u2;->Q0()Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_2
    invoke-static {v1, v0}, Lkotlinx/coroutines/internal/f0;->a(Ltj/g;Ljava/lang/Object;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Llk/u2;->Q0()Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    invoke-static {v1, v0}, Lkotlinx/coroutines/internal/f0;->a(Ltj/g;Ljava/lang/Object;)V

    :cond_4
    throw p0

    :cond_5
    invoke-interface {p1, p0}, Ltj/d;->resumeWith(Ljava/lang/Object;)V

    :cond_6
    :goto_2
    return-void
.end method

.method private static final e(Llk/t0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llk/t0<",
            "*>;)V"
        }
    .end annotation

    sget-object v0, Llk/p2;->a:Llk/p2;

    invoke-virtual {v0}, Llk/p2;->a()Llk/c1;

    move-result-object v0

    invoke-virtual {v0}, Llk/c1;->e0()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Llk/c1;->a0(Llk/t0;)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Llk/c1;->c0(Z)V

    :try_start_0
    invoke-virtual {p0}, Llk/t0;->c()Ltj/d;

    move-result-object v2

    invoke-static {p0, v2, v1}, Llk/u0;->d(Llk/t0;Ltj/d;Z)V

    :cond_1
    invoke-virtual {v0}, Llk/c1;->g0()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v2

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0, v2, v3}, Llk/t0;->f(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    invoke-virtual {v0, v1}, Llk/c1;->Y(Z)V

    :goto_1
    return-void

    :catchall_1
    move-exception p0

    invoke-virtual {v0, v1}, Llk/c1;->Y(Z)V

    throw p0
.end method
