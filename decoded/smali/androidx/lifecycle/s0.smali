.class public final Landroidx/lifecycle/s0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroidx/lifecycle/r0;)Llk/i0;
    .locals 4
    .param p0    # Landroidx/lifecycle/r0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "androidx.lifecycle.ViewModelCoroutineScope.JOB_KEY"

    invoke-virtual {p0, v0}, Landroidx/lifecycle/r0;->getTag(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llk/i0;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    new-instance v1, Landroidx/lifecycle/c;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v3, v2, v3}, Llk/n2;->b(Llk/s1;ILjava/lang/Object;)Llk/u;

    move-result-object v2

    invoke-static {}, Llk/w0;->c()Llk/d2;

    move-result-object v3

    invoke-virtual {v3}, Llk/d2;->Y()Llk/d2;

    move-result-object v3

    invoke-interface {v2, v3}, Ltj/g;->g(Ltj/g;)Ltj/g;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/lifecycle/c;-><init>(Ltj/g;)V

    invoke-virtual {p0, v0, v1}, Landroidx/lifecycle/r0;->setTagIfAbsent(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "setTagIfAbsent(\n        \u2026Main.immediate)\n        )"

    invoke-static {p0, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Llk/i0;

    return-object p0
.end method
