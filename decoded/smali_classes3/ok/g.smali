.class public final Lok/g;
.super Lok/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lok/f<",
        "TT;TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00000\u0002B3\u0012\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0010\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J&\u0010\n\u001a\u0008\u0012\u0004\u0012\u00028\u00000\t2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0014J!\u0010\u000e\u001a\u00020\r2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000bH\u0094@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0014"
    }
    d2 = {
        "Lok/g;",
        "T",
        "Lok/f;",
        "Ltj/g;",
        "context",
        "",
        "capacity",
        "Lnk/e;",
        "onBufferOverflow",
        "Lok/d;",
        "f",
        "Lkotlinx/coroutines/flow/f;",
        "collector",
        "Loj/t;",
        "m",
        "(Lkotlinx/coroutines/flow/f;Ltj/d;)Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/e;",
        "flow",
        "<init>",
        "(Lkotlinx/coroutines/flow/e;Ltj/g;ILnk/e;)V",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/e;Ltj/g;ILnk/e;)V
    .locals 0
    .param p1    # Lkotlinx/coroutines/flow/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ltj/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lnk/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/e<",
            "+TT;>;",
            "Ltj/g;",
            "I",
            "Lnk/e;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lok/f;-><init>(Lkotlinx/coroutines/flow/e;Ltj/g;ILnk/e;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/coroutines/flow/e;Ltj/g;ILnk/e;ILbk/g;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    sget-object p2, Ltj/h;->a:Ltj/h;

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    const/4 p3, -0x3

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    sget-object p4, Lnk/e;->a:Lnk/e;

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lok/g;-><init>(Lkotlinx/coroutines/flow/e;Ltj/g;ILnk/e;)V

    return-void
.end method


# virtual methods
.method protected f(Ltj/g;ILnk/e;)Lok/d;
    .locals 2
    .param p1    # Ltj/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lnk/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltj/g;",
            "I",
            "Lnk/e;",
            ")",
            "Lok/d<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lok/g;

    iget-object v1, p0, Lok/f;->d:Lkotlinx/coroutines/flow/e;

    invoke-direct {v0, v1, p1, p2, p3}, Lok/g;-><init>(Lkotlinx/coroutines/flow/e;Ltj/g;ILnk/e;)V

    return-object v0
.end method

.method protected m(Lkotlinx/coroutines/flow/f;Ltj/d;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lkotlinx/coroutines/flow/f;
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
            "Lkotlinx/coroutines/flow/f<",
            "-TT;>;",
            "Ltj/d<",
            "-",
            "Loj/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lok/f;->d:Lkotlinx/coroutines/flow/e;

    invoke-interface {v0, p1, p2}, Lkotlinx/coroutines/flow/e;->collect(Lkotlinx/coroutines/flow/f;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method
