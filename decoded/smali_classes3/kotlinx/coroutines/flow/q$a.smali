.class public final Lkotlinx/coroutines/flow/q$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/q;->b(Lkotlinx/coroutines/flow/e;Lkotlinx/coroutines/flow/e;Lak/q;)Lkotlinx/coroutines/flow/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/e<",
        "TR;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J!\u0010\u0005\u001a\u00020\u00042\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0007"
    }
    d2 = {
        "kotlinx/coroutines/flow/q$a",
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
.field final synthetic a:Lkotlinx/coroutines/flow/e;

.field final synthetic b:Lkotlinx/coroutines/flow/e;

.field final synthetic c:Lak/q;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/e;Lkotlinx/coroutines/flow/e;Lak/q;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/flow/q$a;->a:Lkotlinx/coroutines/flow/e;

    iput-object p2, p0, Lkotlinx/coroutines/flow/q$a;->b:Lkotlinx/coroutines/flow/e;

    iput-object p3, p0, Lkotlinx/coroutines/flow/q$a;->c:Lak/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collect(Lkotlinx/coroutines/flow/f;Ltj/d;)Ljava/lang/Object;
    .locals 5
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
            "-TR;>;",
            "Ltj/d<",
            "-",
            "Loj/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlinx/coroutines/flow/e;

    iget-object v1, p0, Lkotlinx/coroutines/flow/q$a;->a:Lkotlinx/coroutines/flow/e;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lkotlinx/coroutines/flow/q$a;->b:Lkotlinx/coroutines/flow/e;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {}, Lkotlinx/coroutines/flow/q;->a()Lak/a;

    move-result-object v1

    new-instance v2, Lkotlinx/coroutines/flow/q$b;

    iget-object v3, p0, Lkotlinx/coroutines/flow/q$a;->c:Lak/q;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lkotlinx/coroutines/flow/q$b;-><init>(Lak/q;Ltj/d;)V

    invoke-static {p1, v0, v1, v2, p2}, Lok/h;->a(Lkotlinx/coroutines/flow/f;[Lkotlinx/coroutines/flow/e;Lak/a;Lak/q;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method
