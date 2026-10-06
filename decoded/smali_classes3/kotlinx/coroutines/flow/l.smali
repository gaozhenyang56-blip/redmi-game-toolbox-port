.class final synthetic Lkotlinx/coroutines/flow/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u000b\u001a\u001c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\u0008\u0000\u0010\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u0001\u001aw\u0010\r\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\u0008\u0000\u0010\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u00012\u0014\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00032:\u0010\u000c\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\u0004\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u0012\u0015\u0012\u0013\u0018\u00010\u0004\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\n\u0012\u0004\u0012\u00020\u000b0\u0006H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000e\"*\u0010\u0012\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00038\u0002X\u0083\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0002\u0010\u000f\u0012\u0004\u0008\u0010\u0010\u0011\"0\u0010\u0015\u001a\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0004\u0012\u00020\u000b0\u00068\u0002X\u0083\u0004\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u0013\u0012\u0004\u0008\u0014\u0010\u0011\u00a8\u0006\u0016"
    }
    d2 = {
        "T",
        "Lkotlinx/coroutines/flow/e;",
        "a",
        "Lkotlin/Function1;",
        "",
        "keySelector",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "old",
        "new",
        "",
        "areEquivalent",
        "b",
        "(Lkotlinx/coroutines/flow/e;Lak/l;Lak/p;)Lkotlinx/coroutines/flow/e;",
        "Lak/l;",
        "getDefaultKeySelector$annotations$FlowKt__DistinctKt",
        "()V",
        "defaultKeySelector",
        "Lak/p;",
        "getDefaultAreEquivalent$annotations$FlowKt__DistinctKt",
        "defaultAreEquivalent",
        "kotlinx-coroutines-core"
    }
    k = 0x5
    mv = {
        0x1,
        0x6,
        0x0
    }
    xs = "kotlinx/coroutines/flow/FlowKt"
.end annotation


# static fields
.field private static final a:Lak/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lak/l<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Lak/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lak/p<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lkotlinx/coroutines/flow/l$b;->a:Lkotlinx/coroutines/flow/l$b;

    sput-object v0, Lkotlinx/coroutines/flow/l;->a:Lak/l;

    sget-object v0, Lkotlinx/coroutines/flow/l$a;->a:Lkotlinx/coroutines/flow/l$a;

    sput-object v0, Lkotlinx/coroutines/flow/l;->b:Lak/p;

    return-void
.end method

.method public static final a(Lkotlinx/coroutines/flow/e;)Lkotlinx/coroutines/flow/e;
    .locals 2
    .param p0    # Lkotlinx/coroutines/flow/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/e<",
            "+TT;>;)",
            "Lkotlinx/coroutines/flow/e<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    instance-of v0, p0, Lkotlinx/coroutines/flow/a0;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lkotlinx/coroutines/flow/l;->a:Lak/l;

    sget-object v1, Lkotlinx/coroutines/flow/l;->b:Lak/p;

    invoke-static {p0, v0, v1}, Lkotlinx/coroutines/flow/l;->b(Lkotlinx/coroutines/flow/e;Lak/l;Lak/p;)Lkotlinx/coroutines/flow/e;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static final b(Lkotlinx/coroutines/flow/e;Lak/l;Lak/p;)Lkotlinx/coroutines/flow/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/e<",
            "+TT;>;",
            "Lak/l<",
            "-TT;+",
            "Ljava/lang/Object;",
            ">;",
            "Lak/p<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lkotlinx/coroutines/flow/e<",
            "TT;>;"
        }
    .end annotation

    instance-of v0, p0, Lkotlinx/coroutines/flow/d;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/flow/d;

    iget-object v1, v0, Lkotlinx/coroutines/flow/d;->b:Lak/l;

    if-ne v1, p1, :cond_0

    iget-object v0, v0, Lkotlinx/coroutines/flow/d;->c:Lak/p;

    if-ne v0, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/d;

    invoke-direct {v0, p0, p1, p2}, Lkotlinx/coroutines/flow/d;-><init>(Lkotlinx/coroutines/flow/e;Lak/l;Lak/p;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method
