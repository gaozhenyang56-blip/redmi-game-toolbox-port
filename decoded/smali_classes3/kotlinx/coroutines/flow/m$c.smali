.class public final Lkotlinx/coroutines/flow/m$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/m;->e(Lkotlinx/coroutines/flow/e;Lak/p;)Lkotlinx/coroutines/flow/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/e<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J!\u0010\u0005\u001a\u00020\u00042\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0007"
    }
    d2 = {
        "kotlinx/coroutines/flow/m$c",
        "Lkotlinx/coroutines/flow/e;",
        "Lkotlinx/coroutines/flow/f;",
        "collector",
        "Loj/t;",
        "collect",
        "(Lkotlinx/coroutines/flow/f;Ltj/d;)Ljava/lang/Object;",
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
.field final synthetic a:Lak/p;

.field final synthetic b:Lkotlinx/coroutines/flow/e;


# direct methods
.method public constructor <init>(Lak/p;Lkotlinx/coroutines/flow/e;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/flow/m$c;->a:Lak/p;

    iput-object p2, p0, Lkotlinx/coroutines/flow/m$c;->b:Lkotlinx/coroutines/flow/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collect(Lkotlinx/coroutines/flow/f;Ltj/d;)Ljava/lang/Object;
    .locals 6
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

    instance-of v0, p2, Lkotlinx/coroutines/flow/m$c$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/m$c$a;

    iget v1, v0, Lkotlinx/coroutines/flow/m$c$a;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/flow/m$c$a;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/m$c$a;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/m$c$a;-><init>(Lkotlinx/coroutines/flow/m$c;Ltj/d;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/flow/m$c$a;->a:Ljava/lang/Object;

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lkotlinx/coroutines/flow/m$c$a;->b:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Loj/n;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lkotlinx/coroutines/flow/m$c$a;->f:Ljava/lang/Object;

    check-cast p1, Lok/p;

    iget-object v2, v0, Lkotlinx/coroutines/flow/m$c$a;->e:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/f;

    iget-object v4, v0, Lkotlinx/coroutines/flow/m$c$a;->d:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/flow/m$c;

    :try_start_0
    invoke-static {p2}, Loj/n;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_3

    :cond_3
    invoke-static {p2}, Loj/n;->b(Ljava/lang/Object;)V

    new-instance p2, Lok/p;

    invoke-interface {v0}, Ltj/d;->getContext()Ltj/g;

    move-result-object v2

    invoke-direct {p2, p1, v2}, Lok/p;-><init>(Lkotlinx/coroutines/flow/f;Ltj/g;)V

    :try_start_1
    iget-object v2, p0, Lkotlinx/coroutines/flow/m$c;->a:Lak/p;

    iput-object p0, v0, Lkotlinx/coroutines/flow/m$c$a;->d:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/flow/m$c$a;->e:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/flow/m$c$a;->f:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/flow/m$c$a;->b:I

    const/4 v4, 0x6

    invoke-static {v4}, Lbk/l;->a(I)V

    invoke-interface {v2, p2, v0}, Lak/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x7

    invoke-static {v4}, Lbk/l;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v4, p0

    move-object v2, p1

    move-object p1, p2

    :goto_1
    invoke-virtual {p1}, Lok/p;->releaseIntercepted()V

    iget-object p1, v4, Lkotlinx/coroutines/flow/m$c;->b:Lkotlinx/coroutines/flow/e;

    const/4 p2, 0x0

    iput-object p2, v0, Lkotlinx/coroutines/flow/m$c$a;->d:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/flow/m$c$a;->e:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/flow/m$c$a;->f:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/flow/m$c$a;->b:I

    invoke-interface {p1, v2, v0}, Lkotlinx/coroutines/flow/e;->collect(Lkotlinx/coroutines/flow/f;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1

    :catchall_1
    move-exception p1

    move-object v5, p2

    move-object p2, p1

    move-object p1, v5

    :goto_3
    invoke-virtual {p1}, Lok/p;->releaseIntercepted()V

    throw p2
.end method
