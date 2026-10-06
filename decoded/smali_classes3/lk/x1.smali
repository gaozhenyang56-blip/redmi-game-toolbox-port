.class final synthetic Llk/x1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u001a\u0010\u0004\u001a\u00020\u0003*\u0006\u0012\u0002\u0008\u00030\u00002\n\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u0001\u00a8\u0006\u0005"
    }
    d2 = {
        "Llk/l;",
        "Ljava/util/concurrent/Future;",
        "future",
        "Loj/t;",
        "a",
        "kotlinx-coroutines-core"
    }
    k = 0x5
    mv = {
        0x1,
        0x6,
        0x0
    }
    xs = "kotlinx/coroutines/JobKt"
.end annotation


# direct methods
.method public static final a(Llk/l;Ljava/util/concurrent/Future;)V
    .locals 1
    .param p0    # Llk/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/concurrent/Future;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llk/l<",
            "*>;",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    new-instance v0, Llk/i;

    invoke-direct {v0, p1}, Llk/i;-><init>(Ljava/util/concurrent/Future;)V

    invoke-interface {p0, v0}, Llk/l;->h(Lak/l;)V

    return-void
.end method
