.class public final Lok/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a&\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\u0008\u0000\u0010\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\u0002\u001a]\u0010\r\u001a\u00028\u0000\"\u0004\u0008\u0000\u0010\u0000\"\u0004\u0008\u0001\u0010\u00052\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00028\u00012\u0008\u0008\u0002\u0010\t\u001a\u00020\u00082\"\u0010\u000c\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00028\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u00080\nH\u0080@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\r\u0010\u000e\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000f"
    }
    d2 = {
        "T",
        "Lkotlinx/coroutines/flow/f;",
        "Ltj/g;",
        "emitContext",
        "d",
        "V",
        "newContext",
        "value",
        "",
        "countOrElement",
        "Lkotlin/Function2;",
        "Ltj/d;",
        "block",
        "b",
        "(Ltj/g;Ljava/lang/Object;Ljava/lang/Object;Lak/p;Ltj/d;)Ljava/lang/Object;",
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
.method public static final synthetic a(Lkotlinx/coroutines/flow/f;Ltj/g;)Lkotlinx/coroutines/flow/f;
    .locals 0

    invoke-static {p0, p1}, Lok/e;->d(Lkotlinx/coroutines/flow/f;Ltj/g;)Lkotlinx/coroutines/flow/f;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Ltj/g;Ljava/lang/Object;Ljava/lang/Object;Lak/p;Ltj/d;)Ljava/lang/Object;
    .locals 2
    .param p0    # Ltj/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lak/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ltj/g;",
            "TV;",
            "Ljava/lang/Object;",
            "Lak/p<",
            "-TV;-",
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

    invoke-static {p0, p2}, Lkotlinx/coroutines/internal/f0;->c(Ltj/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :try_start_0
    new-instance v0, Lok/t;

    invoke-direct {v0, p4, p0}, Lok/t;-><init>(Ltj/d;Ltj/g;)V

    const/4 v1, 0x2

    invoke-static {p3, v1}, Lbk/c0;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lak/p;

    invoke-interface {p3, p1, v0}, Lak/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0, p2}, Lkotlinx/coroutines/internal/f0;->a(Ltj/g;Ljava/lang/Object;)V

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object p0

    if-ne p1, p0, :cond_0

    invoke-static {p4}, Lkotlin/coroutines/jvm/internal/g;->c(Ltj/d;)V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {p0, p2}, Lkotlinx/coroutines/internal/f0;->a(Ltj/g;Ljava/lang/Object;)V

    throw p1
.end method

.method public static synthetic c(Ltj/g;Ljava/lang/Object;Ljava/lang/Object;Lak/p;Ltj/d;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    invoke-static {p0}, Lkotlinx/coroutines/internal/f0;->b(Ltj/g;)Ljava/lang/Object;

    move-result-object p2

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lok/e;->b(Ltj/g;Ljava/lang/Object;Ljava/lang/Object;Lak/p;Ltj/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final d(Lkotlinx/coroutines/flow/f;Ltj/g;)Lkotlinx/coroutines/flow/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/f<",
            "-TT;>;",
            "Ltj/g;",
            ")",
            "Lkotlinx/coroutines/flow/f<",
            "TT;>;"
        }
    .end annotation

    instance-of v0, p0, Lok/s;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lok/n;

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Lok/u;

    invoke-direct {v0, p0, p1}, Lok/u;-><init>(Lkotlinx/coroutines/flow/f;Ltj/g;)V

    move-object p0, v0

    :goto_1
    return-object p0
.end method
