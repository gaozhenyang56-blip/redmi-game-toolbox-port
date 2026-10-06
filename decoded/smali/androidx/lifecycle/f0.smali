.class public final Landroidx/lifecycle/f0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroidx/lifecycle/l;Lak/p;Ltj/d;)Ljava/lang/Object;
    .locals 1
    .param p0    # Landroidx/lifecycle/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lak/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/l;",
            "Lak/p<",
            "-",
            "Llk/i0;",
            "-",
            "Ltj/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Ltj/d<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "whenStarted has been deprecated because it runs the block on a pausing dispatcher that suspends, rather than cancels work when the lifecycle state goes below the given state. Use withStarted for non-suspending work that needs to run only once when the Lifecycle changes."
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Landroidx/lifecycle/l$b;->d:Landroidx/lifecycle/l$b;

    invoke-static {p0, v0, p1, p2}, Landroidx/lifecycle/f0;->b(Landroidx/lifecycle/l;Landroidx/lifecycle/l$b;Lak/p;Ltj/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Landroidx/lifecycle/l;Landroidx/lifecycle/l$b;Lak/p;Ltj/d;)Ljava/lang/Object;
    .locals 3
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
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/l;",
            "Landroidx/lifecycle/l$b;",
            "Lak/p<",
            "-",
            "Llk/i0;",
            "-",
            "Ltj/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Ltj/d<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "whenStateAtLeast has been deprecated because it runs the block on a pausing dispatcher that suspends, rather than cancels work when the lifecycle state goes below the given state. Use withStateAtLeast for non-suspending work that needs to run only once when the Lifecycle changes."
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Llk/w0;->c()Llk/d2;

    move-result-object v0

    invoke-virtual {v0}, Llk/d2;->Y()Llk/d2;

    move-result-object v0

    new-instance v1, Landroidx/lifecycle/f0$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Landroidx/lifecycle/f0$a;-><init>(Landroidx/lifecycle/l;Landroidx/lifecycle/l$b;Lak/p;Ltj/d;)V

    invoke-static {v0, v1, p3}, Llk/g;->c(Ltj/g;Lak/p;Ltj/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
