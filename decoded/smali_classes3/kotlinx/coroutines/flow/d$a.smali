.class final Lkotlinx/coroutines/flow/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/d;->collect(Lkotlinx/coroutines/flow/f;Ltj/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
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
        "\u0000\u000c\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0005\u001a\u00020\u0002\"\u0004\u0008\u0000\u0010\u00002\u0006\u0010\u0001\u001a\u00028\u0000H\u008a@\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "T",
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
.field final synthetic a:Lkotlinx/coroutines/flow/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/d<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lbk/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbk/y<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Lkotlinx/coroutines/flow/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/f<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlinx/coroutines/flow/d;Lbk/y;Lkotlinx/coroutines/flow/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/d<",
            "TT;>;",
            "Lbk/y<",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlinx/coroutines/flow/f<",
            "-TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/flow/d$a;->a:Lkotlinx/coroutines/flow/d;

    iput-object p2, p0, Lkotlinx/coroutines/flow/d$a;->b:Lbk/y;

    iput-object p3, p0, Lkotlinx/coroutines/flow/d$a;->c:Lkotlinx/coroutines/flow/f;

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

    instance-of v0, p2, Lkotlinx/coroutines/flow/d$a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/d$a$a;

    iget v1, v0, Lkotlinx/coroutines/flow/d$a$a;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/flow/d$a$a;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/d$a$a;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/d$a$a;-><init>(Lkotlinx/coroutines/flow/d$a;Ltj/d;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/flow/d$a$a;->a:Ljava/lang/Object;

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lkotlinx/coroutines/flow/d$a$a;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Loj/n;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Loj/n;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Lkotlinx/coroutines/flow/d$a;->a:Lkotlinx/coroutines/flow/d;

    iget-object p2, p2, Lkotlinx/coroutines/flow/d;->b:Lak/l;

    invoke-interface {p2, p1}, Lak/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iget-object v2, p0, Lkotlinx/coroutines/flow/d$a;->b:Lbk/y;

    iget-object v2, v2, Lbk/y;->a:Ljava/lang/Object;

    sget-object v4, Lok/o;->a:Lkotlinx/coroutines/internal/b0;

    if-eq v2, v4, :cond_4

    iget-object v4, p0, Lkotlinx/coroutines/flow/d$a;->a:Lkotlinx/coroutines/flow/d;

    iget-object v4, v4, Lkotlinx/coroutines/flow/d;->c:Lak/p;

    invoke-interface {v4, v2, p2}, Lak/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1

    :cond_4
    :goto_1
    iget-object v2, p0, Lkotlinx/coroutines/flow/d$a;->b:Lbk/y;

    iput-object p2, v2, Lbk/y;->a:Ljava/lang/Object;

    iget-object p2, p0, Lkotlinx/coroutines/flow/d$a;->c:Lkotlinx/coroutines/flow/f;

    iput v3, v0, Lkotlinx/coroutines/flow/d$a$a;->c:I

    invoke-interface {p2, p1, v0}, Lkotlinx/coroutines/flow/f;->emit(Ljava/lang/Object;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method
