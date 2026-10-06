.class public final Llk/c0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u001a\u0014\u0010\u0003\u001a\u00020\u0001*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0007\u001a\u0014\u0010\u0005\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0001H\u0007\u001a\u000c\u0010\u0007\u001a\u00020\u0006*\u00020\u0001H\u0002\u001a \u0010\u000b\u001a\u00020\u00012\u0006\u0010\u0008\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020\u0006H\u0002\u001a(\u0010\u0010\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u000f*\u0006\u0012\u0002\u0008\u00030\u000c2\u0006\u0010\u0002\u001a\u00020\u00012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0000\u001a\u0013\u0010\u0012\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u000f*\u00020\u0011H\u0080\u0010\"\u001a\u0010\u0016\u001a\u0004\u0018\u00010\u0013*\u00020\u00018@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0017"
    }
    d2 = {
        "Llk/i0;",
        "Ltj/g;",
        "context",
        "d",
        "addedContext",
        "e",
        "",
        "c",
        "originalContext",
        "appendContext",
        "isNewCoroutine",
        "a",
        "Ltj/d;",
        "",
        "oldValue",
        "Llk/u2;",
        "g",
        "Lkotlin/coroutines/jvm/internal/e;",
        "f",
        "",
        "b",
        "(Ltj/g;)Ljava/lang/String;",
        "coroutineName",
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
.method private static final a(Ltj/g;Ltj/g;Z)Ltj/g;
    .locals 3

    invoke-static {p0}, Llk/c0;->c(Ltj/g;)Z

    move-result v0

    invoke-static {p1}, Llk/c0;->c(Ltj/g;)Z

    move-result v1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    invoke-interface {p0, p1}, Ltj/g;->g(Ltj/g;)Ltj/g;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lbk/y;

    invoke-direct {v0}, Lbk/y;-><init>()V

    iput-object p1, v0, Lbk/y;->a:Ljava/lang/Object;

    sget-object p1, Ltj/h;->a:Ltj/h;

    new-instance v2, Llk/c0$b;

    invoke-direct {v2, v0, p2}, Llk/c0$b;-><init>(Lbk/y;Z)V

    invoke-interface {p0, p1, v2}, Ltj/g;->o(Ljava/lang/Object;Lak/p;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltj/g;

    if-eqz v1, :cond_1

    iget-object p2, v0, Lbk/y;->a:Ljava/lang/Object;

    check-cast p2, Ltj/g;

    sget-object v1, Llk/c0$a;->a:Llk/c0$a;

    invoke-interface {p2, p1, v1}, Ltj/g;->o(Ljava/lang/Object;Lak/p;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lbk/y;->a:Ljava/lang/Object;

    :cond_1
    iget-object p1, v0, Lbk/y;->a:Ljava/lang/Object;

    check-cast p1, Ltj/g;

    invoke-interface {p0, p1}, Ltj/g;->g(Ltj/g;)Ltj/g;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Ltj/g;)Ljava/lang/String;
    .locals 0
    .param p0    # Ltj/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method private static final c(Ltj/g;)Z
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Llk/c0$c;->a:Llk/c0$c;

    invoke-interface {p0, v0, v1}, Ltj/g;->o(Ljava/lang/Object;Lak/p;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final d(Llk/i0;Ltj/g;)Ltj/g;
    .locals 1
    .param p0    # Llk/i0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ltj/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlinx/coroutines/ExperimentalCoroutinesApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-interface {p0}, Llk/i0;->L()Ltj/g;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Llk/c0;->a(Ltj/g;Ltj/g;Z)Ltj/g;

    move-result-object p0

    invoke-static {}, Llk/w0;->a()Llk/d0;

    move-result-object p1

    if-eq p0, p1, :cond_0

    sget-object p1, Ltj/e;->e0:Ltj/e$b;

    invoke-interface {p0, p1}, Ltj/g;->d(Ltj/g$c;)Ltj/g$b;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Llk/w0;->a()Llk/d0;

    move-result-object p1

    invoke-interface {p0, p1}, Ltj/g;->g(Ltj/g;)Ltj/g;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static final e(Ltj/g;Ltj/g;)Ltj/g;
    .locals 1
    .param p0    # Ltj/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ltj/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlinx/coroutines/InternalCoroutinesApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p1}, Llk/c0;->c(Ltj/g;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0, p1}, Ltj/g;->g(Ltj/g;)Ltj/g;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Llk/c0;->a(Ltj/g;Ltj/g;Z)Ltj/g;

    move-result-object p0

    return-object p0
.end method

.method public static final f(Lkotlin/coroutines/jvm/internal/e;)Llk/u2;
    .locals 2
    .param p0    # Lkotlin/coroutines/jvm/internal/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/jvm/internal/e;",
            ")",
            "Llk/u2<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    :cond_0
    instance-of v0, p0, Llk/s0;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    invoke-interface {p0}, Lkotlin/coroutines/jvm/internal/e;->getCallerFrame()Lkotlin/coroutines/jvm/internal/e;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v1

    :cond_2
    instance-of v0, p0, Llk/u2;

    if-eqz v0, :cond_0

    check-cast p0, Llk/u2;

    return-object p0
.end method

.method public static final g(Ltj/d;Ltj/g;Ljava/lang/Object;)Llk/u2;
    .locals 2
    .param p0    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ltj/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltj/d<",
            "*>;",
            "Ltj/g;",
            "Ljava/lang/Object;",
            ")",
            "Llk/u2<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p0, Lkotlin/coroutines/jvm/internal/e;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Llk/v2;->a:Llk/v2;

    invoke-interface {p1, v0}, Ltj/g;->d(Ltj/g$c;)Ltj/g$b;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    return-object v1

    :cond_2
    check-cast p0, Lkotlin/coroutines/jvm/internal/e;

    invoke-static {p0}, Llk/c0;->f(Lkotlin/coroutines/jvm/internal/e;)Llk/u2;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1, p2}, Llk/u2;->R0(Ltj/g;Ljava/lang/Object;)V

    :cond_3
    return-object p0
.end method
