.class public final Lnk/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a+\u0010\u0004\u001a\u00020\u0002*\u0006\u0012\u0002\u0008\u00030\u00002\u000e\u0008\u0002\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u001a\u00aa\u0001\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001b\"\u0004\u0008\u0000\u0010\u0006*\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u000e2-\u0008\u0002\u0010\u0016\u001a\'\u0012\u0015\u0012\u0013\u0018\u00010\u0011\u00a2\u0006\u000c\u0008\u0012\u0012\u0008\u0008\u0013\u0012\u0004\u0008\u0008(\u0014\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0010j\u0004\u0018\u0001`\u00152/\u0008\u0001\u0010\u0003\u001a)\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u0017\u00a2\u0006\u0002\u0008\u001aH\u0000\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001c\u0010\u001d\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001e"
    }
    d2 = {
        "Lnk/t;",
        "Lkotlin/Function0;",
        "Loj/t;",
        "block",
        "a",
        "(Lnk/t;Lak/a;Ltj/d;)Ljava/lang/Object;",
        "E",
        "Llk/i0;",
        "Ltj/g;",
        "context",
        "",
        "capacity",
        "Lnk/e;",
        "onBufferOverflow",
        "Llk/k0;",
        "start",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "cause",
        "Lkotlinx/coroutines/CompletionHandler;",
        "onCompletion",
        "Lkotlin/Function2;",
        "Ltj/d;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "Lnk/v;",
        "b",
        "(Llk/i0;Ltj/g;ILnk/e;Llk/k0;Lak/l;Lak/p;)Lnk/v;",
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
.method public static final a(Lnk/t;Lak/a;Ltj/d;)Ljava/lang/Object;
    .locals 4
    .param p0    # Lnk/t;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lak/a;
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
            "Lnk/t<",
            "*>;",
            "Lak/a<",
            "Loj/t;",
            ">;",
            "Ltj/d<",
            "-",
            "Loj/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p2, Lnk/r$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lnk/r$a;

    iget v1, v0, Lnk/r$a;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lnk/r$a;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lnk/r$a;

    invoke-direct {v0, p2}, Lnk/r$a;-><init>(Ltj/d;)V

    :goto_0
    iget-object p2, v0, Lnk/r$a;->c:Ljava/lang/Object;

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lnk/r$a;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lnk/r$a;->b:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lak/a;

    iget-object p0, v0, Lnk/r$a;->a:Ljava/lang/Object;

    check-cast p0, Lnk/t;

    :try_start_0
    invoke-static {p2}, Loj/n;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Loj/n;->b(Ljava/lang/Object;)V

    invoke-interface {v0}, Ltj/d;->getContext()Ltj/g;

    move-result-object p2

    sget-object v2, Llk/s1;->c0:Llk/s1$b;

    invoke-interface {p2, v2}, Ltj/g;->d(Ltj/g$c;)Ltj/g$b;

    move-result-object p2

    if-ne p2, p0, :cond_3

    move p2, v3

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_6

    :try_start_1
    iput-object p0, v0, Lnk/r$a;->a:Ljava/lang/Object;

    iput-object p1, v0, Lnk/r$a;->b:Ljava/lang/Object;

    iput v3, v0, Lnk/r$a;->d:I

    new-instance p2, Llk/m;

    invoke-static {v0}, Luj/b;->b(Ltj/d;)Ltj/d;

    move-result-object v2

    invoke-direct {p2, v2, v3}, Llk/m;-><init>(Ltj/d;I)V

    invoke-virtual {p2}, Llk/m;->A()V

    new-instance v2, Lnk/r$b;

    invoke-direct {v2, p2}, Lnk/r$b;-><init>(Llk/l;)V

    invoke-interface {p0, v2}, Lnk/z;->p(Lak/l;)V

    invoke-virtual {p2}, Llk/m;->w()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object p2

    if-ne p0, p2, :cond_4

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/g;->c(Ltj/d;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    if-ne p0, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    invoke-interface {p1}, Lak/a;->invoke()Ljava/lang/Object;

    sget-object p0, Loj/t;->a:Loj/t;

    return-object p0

    :goto_3
    invoke-interface {p1}, Lak/a;->invoke()Ljava/lang/Object;

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "awaitClose() can only be invoked from the producer context"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final b(Llk/i0;Ltj/g;ILnk/e;Llk/k0;Lak/l;Lak/p;)Lnk/v;
    .locals 2
    .param p0    # Llk/i0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ltj/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lnk/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Llk/k0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lak/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lak/p;
        .annotation build Lkotlin/BuilderInference;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Llk/i0;",
            "Ltj/g;",
            "I",
            "Lnk/e;",
            "Llk/k0;",
            "Lak/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Loj/t;",
            ">;",
            "Lak/p<",
            "-",
            "Lnk/t<",
            "-TE;>;-",
            "Ltj/d<",
            "-",
            "Loj/t;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lnk/v<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p2, p3, v0, v1, v0}, Lnk/i;->b(ILnk/e;Lak/l;ILjava/lang/Object;)Lnk/f;

    move-result-object p2

    invoke-static {p0, p1}, Llk/c0;->d(Llk/i0;Ltj/g;)Ltj/g;

    move-result-object p0

    new-instance p1, Lnk/s;

    invoke-direct {p1, p0, p2}, Lnk/s;-><init>(Ltj/g;Lnk/f;)V

    if-eqz p5, :cond_0

    invoke-virtual {p1, p5}, Llk/a2;->U(Lak/l;)Llk/y0;

    :cond_0
    invoke-virtual {p1, p4, p1, p6}, Llk/a;->O0(Llk/k0;Ljava/lang/Object;Lak/p;)V

    return-object p1
.end method

.method public static synthetic c(Llk/i0;Ltj/g;ILnk/e;Llk/k0;Lak/l;Lak/p;ILjava/lang/Object;)Lnk/v;
    .locals 7

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    sget-object p1, Ltj/h;->a:Ltj/h;

    :cond_0
    move-object v1, p1

    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    :cond_1
    move v2, p2

    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    sget-object p3, Lnk/e;->a:Lnk/e;

    :cond_2
    move-object v3, p3

    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_3

    sget-object p4, Llk/k0;->a:Llk/k0;

    :cond_3
    move-object v4, p4

    and-int/lit8 p1, p7, 0x10

    if-eqz p1, :cond_4

    const/4 p5, 0x0

    :cond_4
    move-object v5, p5

    move-object v0, p0

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lnk/r;->b(Llk/i0;Ltj/g;ILnk/e;Llk/k0;Lak/l;Lak/p;)Lnk/v;

    move-result-object p0

    return-object p0
.end method
