.class final synthetic Llk/y1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u001a\u0012\u0010\u0003\u001a\u00020\u00022\n\u0008\u0002\u0010\u0001\u001a\u0004\u0018\u00010\u0000\u001a\u0014\u0010\u0006\u001a\u00020\u0004*\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0004H\u0000\u001a\u0017\u0010\u0008\u001a\u00020\u0007*\u00020\u0000H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0008\u0010\t\u001a\u001c\u0010\u000e\u001a\u00020\u0007*\u00020\n2\u0010\u0008\u0002\u0010\r\u001a\n\u0018\u00010\u000bj\u0004\u0018\u0001`\u000c\u001a\n\u0010\u000f\u001a\u00020\u0007*\u00020\u0000\u001a\n\u0010\u0010\u001a\u00020\u0007*\u00020\n\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0011"
    }
    d2 = {
        "Llk/s1;",
        "parent",
        "Llk/u;",
        "a",
        "Llk/y0;",
        "handle",
        "f",
        "Loj/t;",
        "e",
        "(Llk/s1;Ltj/d;)Ljava/lang/Object;",
        "Ltj/g;",
        "Ljava/util/concurrent/CancellationException;",
        "Lkotlinx/coroutines/CancellationException;",
        "cause",
        "c",
        "g",
        "h",
        "kotlinx-coroutines-core"
    }
    k = 0x5
    mv = {
        0x1,
        0x6,
        0x0
    }
    xs = "kotlinx/coroutines/JobKt"
.end annotation


# direct methods
.method public static final a(Llk/s1;)Llk/u;
    .locals 1
    .param p0    # Llk/s1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Llk/v1;

    invoke-direct {v0, p0}, Llk/v1;-><init>(Llk/s1;)V

    return-object v0
.end method

.method public static synthetic b(Llk/s1;ILjava/lang/Object;)Llk/u;
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0}, Llk/w1;->a(Llk/s1;)Llk/u;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Ltj/g;Ljava/util/concurrent/CancellationException;)V
    .locals 1
    .param p0    # Ltj/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/concurrent/CancellationException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sget-object v0, Llk/s1;->c0:Llk/s1$b;

    invoke-interface {p0, v0}, Ltj/g;->d(Ltj/g$c;)Ltj/g$b;

    move-result-object p0

    check-cast p0, Llk/s1;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Llk/s1;->c(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    return-void
.end method

.method public static synthetic d(Ltj/g;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Llk/w1;->c(Ltj/g;Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public static final e(Llk/s1;Ltj/d;)Ljava/lang/Object;
    .locals 2
    .param p0    # Llk/s1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llk/s1;",
            "Ltj/d<",
            "-",
            "Loj/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Llk/s1$a;->a(Llk/s1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    invoke-interface {p0, p1}, Llk/s1;->D(Ltj/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Loj/t;->a:Loj/t;

    return-object p0
.end method

.method public static final f(Llk/s1;Llk/y0;)Llk/y0;
    .locals 1
    .param p0    # Llk/s1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Llk/y0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Llk/a1;

    invoke-direct {v0, p1}, Llk/a1;-><init>(Llk/y0;)V

    invoke-interface {p0, v0}, Llk/s1;->U(Lak/l;)Llk/y0;

    move-result-object p0

    return-object p0
.end method

.method public static final g(Llk/s1;)V
    .locals 1
    .param p0    # Llk/s1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-interface {p0}, Llk/s1;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Llk/s1;->j()Ljava/util/concurrent/CancellationException;

    move-result-object p0

    throw p0
.end method

.method public static final h(Ltj/g;)V
    .locals 1
    .param p0    # Ltj/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    sget-object v0, Llk/s1;->c0:Llk/s1$b;

    invoke-interface {p0, v0}, Ltj/g;->d(Ltj/g$c;)Ltj/g$b;

    move-result-object p0

    check-cast p0, Llk/s1;

    if-eqz p0, :cond_0

    invoke-static {p0}, Llk/w1;->h(Llk/s1;)V

    :cond_0
    return-void
.end method
