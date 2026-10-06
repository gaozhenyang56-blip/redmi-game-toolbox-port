.class public final Lkotlinx/coroutines/flow/p$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/p$a;->collect(Lkotlinx/coroutines/flow/f;Ltj/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/f;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000c\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0006\u001a\u00020\u0003\"\u0004\u0008\u0000\u0010\u0000\"\u0004\u0008\u0001\u0010\u00012\u0006\u0010\u0002\u001a\u00028\u0000H\u008a@\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "T",
        "R",
        "value",
        "Loj/t;",
        "emit",
        "(Ljava/lang/Object;Ltj/d;)Ljava/lang/Object;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlinx/coroutines/flow/f;

.field final synthetic b:Lak/p;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/f;Lak/p;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/flow/p$a$a;->a:Lkotlinx/coroutines/flow/f;

    iput-object p2, p0, Lkotlinx/coroutines/flow/p$a$a;->b:Lak/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Ltj/d;)Ljava/lang/Object;
    .locals 5
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

    instance-of v0, p2, Lkotlinx/coroutines/flow/p$a$a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/p$a$a$a;

    iget v1, v0, Lkotlinx/coroutines/flow/p$a$a$a;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/flow/p$a$a$a;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/p$a$a$a;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/p$a$a$a;-><init>(Lkotlinx/coroutines/flow/p$a$a;Ltj/d;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/flow/p$a$a$a;->a:Ljava/lang/Object;

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lkotlinx/coroutines/flow/p$a$a$a;->b:I

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
    iget-object p1, v0, Lkotlinx/coroutines/flow/p$a$a$a;->e:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/f;

    iget-object v2, v0, Lkotlinx/coroutines/flow/p$a$a$a;->d:Ljava/lang/Object;

    invoke-static {p2}, Loj/n;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Loj/n;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Lkotlinx/coroutines/flow/p$a$a;->a:Lkotlinx/coroutines/flow/f;

    iget-object v2, p0, Lkotlinx/coroutines/flow/p$a$a;->b:Lak/p;

    iput-object p1, v0, Lkotlinx/coroutines/flow/p$a$a$a;->d:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/flow/p$a$a$a;->e:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/flow/p$a$a$a;->b:I

    const/4 v4, 0x6

    invoke-static {v4}, Lbk/l;->a(I)V

    invoke-interface {v2, p1, v0}, Lak/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x7

    invoke-static {v4}, Lbk/l;->a(I)V

    if-ne v2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p1

    move-object p1, p2

    :goto_1
    const/4 p2, 0x0

    iput-object p2, v0, Lkotlinx/coroutines/flow/p$a$a$a;->d:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/flow/p$a$a$a;->e:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/flow/p$a$a$a;->b:I

    invoke-interface {p1, v2, v0}, Lkotlinx/coroutines/flow/f;->emit(Ljava/lang/Object;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method
