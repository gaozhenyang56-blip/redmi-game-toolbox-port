.class final synthetic Llk/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u001aQ\u0010\u000c\u001a\u00020\u000b*\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\'\u0010\n\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u0005\u00a2\u0006\u0002\u0008\t\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000c\u0010\r\u001aW\u0010\u000f\u001a\u00028\u0000\"\u0004\u0008\u0000\u0010\u000e2\u0006\u0010\u0002\u001a\u00020\u00012\'\u0010\n\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u0005\u00a2\u0006\u0002\u0008\tH\u0086@\u00f8\u0001\u0000\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0002 \u0001\u00a2\u0006\u0004\u0008\u000f\u0010\u0010\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0011"
    }
    d2 = {
        "Llk/i0;",
        "Ltj/g;",
        "context",
        "Llk/k0;",
        "start",
        "Lkotlin/Function2;",
        "Ltj/d;",
        "Loj/t;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "block",
        "Llk/s1;",
        "a",
        "(Llk/i0;Ltj/g;Llk/k0;Lak/p;)Llk/s1;",
        "T",
        "c",
        "(Ltj/g;Lak/p;Ltj/d;)Ljava/lang/Object;",
        "kotlinx-coroutines-core"
    }
    k = 0x5
    mv = {
        0x1,
        0x6,
        0x0
    }
    xs = "kotlinx/coroutines/BuildersKt"
.end annotation


# direct methods
.method public static final a(Llk/i0;Ltj/g;Llk/k0;Lak/p;)Llk/s1;
    .locals 1
    .param p0    # Llk/i0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ltj/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Llk/k0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lak/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llk/i0;",
            "Ltj/g;",
            "Llk/k0;",
            "Lak/p<",
            "-",
            "Llk/i0;",
            "-",
            "Ltj/d<",
            "-",
            "Loj/t;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Llk/s1;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Llk/c0;->d(Llk/i0;Ltj/g;)Ltj/g;

    move-result-object p0

    invoke-virtual {p2}, Llk/k0;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Llk/c2;

    invoke-direct {p1, p0, p3}, Llk/c2;-><init>(Ltj/g;Lak/p;)V

    goto :goto_0

    :cond_0
    new-instance p1, Llk/l2;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Llk/l2;-><init>(Ltj/g;Z)V

    :goto_0
    invoke-virtual {p1, p2, p1, p3}, Llk/a;->O0(Llk/k0;Ljava/lang/Object;Lak/p;)V

    return-object p1
.end method

.method public static synthetic b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    sget-object p1, Ltj/h;->a:Ltj/h;

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    sget-object p2, Llk/k0;->a:Llk/k0;

    :cond_1
    invoke-static {p0, p1, p2, p3}, Llk/g;->a(Llk/i0;Ltj/g;Llk/k0;Lak/p;)Llk/s1;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Ltj/g;Lak/p;Ltj/d;)Ljava/lang/Object;
    .locals 8
    .param p0    # Ltj/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lak/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ltj/g;",
            "Lak/p<",
            "-",
            "Llk/i0;",
            "-",
            "Ltj/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Ltj/d<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-interface {p2}, Ltj/d;->getContext()Ltj/g;

    move-result-object v0

    invoke-static {v0, p0}, Llk/c0;->e(Ltj/g;Ltj/g;)Ltj/g;

    move-result-object p0

    invoke-static {p0}, Llk/w1;->i(Ltj/g;)V

    if-ne p0, v0, :cond_0

    new-instance v0, Lkotlinx/coroutines/internal/z;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/internal/z;-><init>(Ltj/g;Ltj/d;)V

    invoke-static {v0, v0, p1}, Lpk/b;->b(Lkotlinx/coroutines/internal/z;Ljava/lang/Object;Lak/p;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object v1, Ltj/e;->e0:Ltj/e$b;

    invoke-interface {p0, v1}, Ltj/g;->d(Ltj/g$c;)Ltj/g$b;

    move-result-object v2

    invoke-interface {v0, v1}, Ltj/g;->d(Ltj/g$c;)Ltj/g$b;

    move-result-object v0

    invoke-static {v2, v0}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Llk/u2;

    invoke-direct {v0, p0, p2}, Llk/u2;-><init>(Ltj/g;Ltj/d;)V

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lkotlinx/coroutines/internal/f0;->c(Ltj/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :try_start_0
    invoke-static {v0, v0, p1}, Lpk/b;->b(Lkotlinx/coroutines/internal/z;Ljava/lang/Object;Lak/p;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0, v1}, Lkotlinx/coroutines/internal/f0;->a(Ltj/g;Ljava/lang/Object;)V

    move-object p0, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p0, v1}, Lkotlinx/coroutines/internal/f0;->a(Ltj/g;Ljava/lang/Object;)V

    throw p1

    :cond_1
    new-instance v0, Llk/s0;

    invoke-direct {v0, p0, p2}, Llk/s0;-><init>(Ltj/g;Ltj/d;)V

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, v0

    move-object v4, v0

    invoke-static/range {v2 .. v7}, Lpk/a;->d(Lak/p;Ljava/lang/Object;Ltj/d;Lak/l;ILjava/lang/Object;)V

    invoke-virtual {v0}, Llk/s0;->Q0()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_2

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/g;->c(Ltj/d;)V

    :cond_2
    return-object p0
.end method
