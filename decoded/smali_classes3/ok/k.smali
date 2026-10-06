.class public final Lok/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001aD\u0010\u0007\u001a\u00028\u0000\"\u0004\u0008\u0000\u0010\u00002)\u0008\u0001\u0010\u0006\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0001\u00a2\u0006\u0002\u0008\u0005H\u0080@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\t"
    }
    d2 = {
        "R",
        "Lkotlin/Function2;",
        "Llk/i0;",
        "Ltj/d;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "block",
        "a",
        "(Lak/p;Ltj/d;)Ljava/lang/Object;",
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
.method public static final a(Lak/p;Ltj/d;)Ljava/lang/Object;
    .locals 2
    .param p0    # Lak/p;
        .annotation build Lkotlin/BuilderInference;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lak/p<",
            "-",
            "Llk/i0;",
            "-",
            "Ltj/d<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Ltj/d<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance v0, Lok/j;

    invoke-interface {p1}, Ltj/d;->getContext()Ltj/g;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lok/j;-><init>(Ltj/g;Ltj/d;)V

    invoke-static {v0, v0, p0}, Lpk/b;->b(Lkotlinx/coroutines/internal/z;Ljava/lang/Object;Lak/p;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/g;->c(Ltj/d;)V

    :cond_0
    return-object p0
.end method
