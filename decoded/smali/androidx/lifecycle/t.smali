.class public final Landroidx/lifecycle/t;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroidx/lifecycle/l;)Landroidx/lifecycle/o;
    .locals 4
    .param p0    # Landroidx/lifecycle/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/lifecycle/l;->c()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v1, v2}, Llk/n2;->b(Llk/s1;ILjava/lang/Object;)Llk/u;

    move-result-object v1

    invoke-static {}, Llk/w0;->c()Llk/d2;

    move-result-object v3

    invoke-virtual {v3}, Llk/d2;->Y()Llk/d2;

    move-result-object v3

    invoke-interface {v1, v3}, Ltj/g;->g(Ltj/g;)Ltj/g;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/LifecycleCoroutineScopeImpl;-><init>(Landroidx/lifecycle/l;Ltj/g;)V

    invoke-virtual {p0}, Landroidx/lifecycle/l;->c()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-static {v1, v2, v0}, Landroidx/lifecycle/s;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/lifecycle/LifecycleCoroutineScopeImpl;->d()V

    return-object v0
.end method
