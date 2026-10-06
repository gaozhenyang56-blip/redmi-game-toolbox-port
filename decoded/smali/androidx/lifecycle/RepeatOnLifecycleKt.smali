.class public final Landroidx/lifecycle/RepeatOnLifecycleKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroidx/lifecycle/l;Landroidx/lifecycle/l$b;Lak/p;Ltj/d;)Ljava/lang/Object;
    .locals 2
    .param p0    # Landroidx/lifecycle/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/lifecycle/l$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lak/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/l;",
            "Landroidx/lifecycle/l$b;",
            "Lak/p<",
            "-",
            "Llk/i0;",
            "-",
            "Ltj/d<",
            "-",
            "Loj/t;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Ltj/d<",
            "-",
            "Loj/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Landroidx/lifecycle/l$b;->b:Landroidx/lifecycle/l$b;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/lifecycle/l;->b()Landroidx/lifecycle/l$b;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/l$b;->a:Landroidx/lifecycle/l$b;

    if-ne v0, v1, :cond_1

    sget-object p0, Loj/t;->a:Loj/t;

    return-object p0

    :cond_1
    new-instance v0, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3;-><init>(Landroidx/lifecycle/l;Landroidx/lifecycle/l$b;Lak/p;Ltj/d;)V

    invoke-static {v0, p3}, Llk/j0;->e(Lak/p;Ltj/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_2

    return-object p0

    :cond_2
    sget-object p0, Loj/t;->a:Loj/t;

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "repeatOnLifecycle cannot start work with the INITIALIZED lifecycle state."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final b(Landroidx/lifecycle/v;Landroidx/lifecycle/l$b;Lak/p;Ltj/d;)Ljava/lang/Object;
    .locals 0
    .param p0    # Landroidx/lifecycle/v;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/lifecycle/l$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lak/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/v;",
            "Landroidx/lifecycle/l$b;",
            "Lak/p<",
            "-",
            "Llk/i0;",
            "-",
            "Ltj/d<",
            "-",
            "Loj/t;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Ltj/d<",
            "-",
            "Loj/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-interface {p0}, Landroidx/lifecycle/v;->getLifecycle()Landroidx/lifecycle/l;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Landroidx/lifecycle/RepeatOnLifecycleKt;->a(Landroidx/lifecycle/l;Landroidx/lifecycle/l$b;Lak/p;Ltj/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Loj/t;->a:Loj/t;

    return-object p0
.end method
