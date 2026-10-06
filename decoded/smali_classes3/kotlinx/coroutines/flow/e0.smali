.class public final Lkotlinx/coroutines/flow/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/f<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u0002J\u001b\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00028\u0000H\u0096A\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0013\u0010\u0007\u001a\u00020\u0004H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\n\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\tR>\u0010\u0011\u001a)\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u000c\u0012\u0006\u0012\u0004\u0018\u00010\r0\u000b\u00a2\u0006\u0002\u0008\u000e8\u0002X\u0082\u0004\u00f8\u0001\u0000\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0012"
    }
    d2 = {
        "Lkotlinx/coroutines/flow/e0;",
        "T",
        "Lkotlinx/coroutines/flow/f;",
        "value",
        "Loj/t;",
        "emit",
        "(Ljava/lang/Object;Ltj/d;)Ljava/lang/Object;",
        "a",
        "(Ltj/d;)Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/f;",
        "collector",
        "Lkotlin/Function2;",
        "Ltj/d;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "b",
        "Lak/p;",
        "action",
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
.field private final a:Lkotlinx/coroutines/flow/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/f<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lak/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lak/p<",
            "Lkotlinx/coroutines/flow/f<",
            "-TT;>;",
            "Ltj/d<",
            "-",
            "Loj/t;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# virtual methods
.method public final a(Ltj/d;)Ljava/lang/Object;
    .locals 6
    .param p1    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltj/d<",
            "-",
            "Loj/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p1, Lkotlinx/coroutines/flow/e0$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/flow/e0$a;

    iget v1, v0, Lkotlinx/coroutines/flow/e0$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/flow/e0$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/e0$a;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/flow/e0$a;-><init>(Lkotlinx/coroutines/flow/e0;Ltj/d;)V

    :goto_0
    iget-object p1, v0, Lkotlinx/coroutines/flow/e0$a;->c:Ljava/lang/Object;

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lkotlinx/coroutines/flow/e0$a;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Lkotlinx/coroutines/flow/e0$a;->b:Ljava/lang/Object;

    check-cast v2, Lok/p;

    iget-object v4, v0, Lkotlinx/coroutines/flow/e0$a;->a:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/flow/e0;

    :try_start_0
    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_3
    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    new-instance v2, Lok/p;

    iget-object p1, p0, Lkotlinx/coroutines/flow/e0;->a:Lkotlinx/coroutines/flow/f;

    invoke-interface {v0}, Ltj/d;->getContext()Ltj/g;

    move-result-object v5

    invoke-direct {v2, p1, v5}, Lok/p;-><init>(Lkotlinx/coroutines/flow/f;Ltj/g;)V

    :try_start_1
    iget-object p1, p0, Lkotlinx/coroutines/flow/e0;->b:Lak/p;

    iput-object p0, v0, Lkotlinx/coroutines/flow/e0$a;->a:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/flow/e0$a;->b:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/flow/e0$a;->e:I

    invoke-interface {p1, v2, v0}, Lak/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v4, p0

    :goto_1
    invoke-virtual {v2}, Lok/p;->releaseIntercepted()V

    iget-object p1, v4, Lkotlinx/coroutines/flow/e0;->a:Lkotlinx/coroutines/flow/f;

    instance-of v2, p1, Lkotlinx/coroutines/flow/e0;

    if-eqz v2, :cond_6

    check-cast p1, Lkotlinx/coroutines/flow/e0;

    const/4 v2, 0x0

    iput-object v2, v0, Lkotlinx/coroutines/flow/e0$a;->a:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/flow/e0$a;->b:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/flow/e0$a;->e:I

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/flow/e0;->a(Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1

    :cond_6
    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v2}, Lok/p;->releaseIntercepted()V

    throw p1
.end method

.method public emit(Ljava/lang/Object;Ltj/d;)Ljava/lang/Object;
    .locals 1
    .param p2    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ltj/d<",
            "-",
            "Loj/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/flow/e0;->a:Lkotlinx/coroutines/flow/f;

    invoke-interface {v0, p1, p2}, Lkotlinx/coroutines/flow/f;->emit(Ljava/lang/Object;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
