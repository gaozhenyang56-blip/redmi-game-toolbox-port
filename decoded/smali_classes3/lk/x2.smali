.class public final Llk/x2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u0013\u0010\u0001\u001a\u00020\u0000H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0001\u0010\u0002\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0003"
    }
    d2 = {
        "Loj/t;",
        "a",
        "(Ltj/d;)Ljava/lang/Object;",
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
.method public static final a(Ltj/d;)Ljava/lang/Object;
    .locals 4
    .param p0    # Ltj/d;
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

    invoke-interface {p0}, Ltj/d;->getContext()Ltj/g;

    move-result-object v0

    invoke-static {v0}, Llk/w1;->i(Ltj/g;)V

    invoke-static {p0}, Luj/b;->b(Ltj/d;)Ltj/d;

    move-result-object v1

    instance-of v2, v1, Lkotlinx/coroutines/internal/f;

    if-eqz v2, :cond_0

    check-cast v1, Lkotlinx/coroutines/internal/f;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    sget-object v0, Loj/t;->a:Loj/t;

    goto :goto_2

    :cond_1
    iget-object v2, v1, Lkotlinx/coroutines/internal/f;->d:Llk/d0;

    invoke-virtual {v2, v0}, Llk/d0;->W(Ltj/g;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Loj/t;->a:Loj/t;

    invoke-virtual {v1, v0, v2}, Lkotlinx/coroutines/internal/f;->m(Ltj/g;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    new-instance v2, Llk/w2;

    invoke-direct {v2}, Llk/w2;-><init>()V

    invoke-interface {v0, v2}, Ltj/g;->g(Ltj/g;)Ltj/g;

    move-result-object v0

    sget-object v3, Loj/t;->a:Loj/t;

    invoke-virtual {v1, v0, v3}, Lkotlinx/coroutines/internal/f;->m(Ltj/g;Ljava/lang/Object;)V

    iget-boolean v0, v2, Llk/w2;->b:Z

    if-eqz v0, :cond_4

    invoke-static {v1}, Lkotlinx/coroutines/internal/g;->d(Lkotlinx/coroutines/internal/f;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, v3

    goto :goto_2

    :cond_4
    :goto_1
    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object v0

    :goto_2
    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_5

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/g;->c(Ltj/d;)V

    :cond_5
    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object p0

    if-ne v0, p0, :cond_6

    return-object v0

    :cond_6
    sget-object p0, Loj/t;->a:Loj/t;

    return-object p0
.end method
