.class public final Landroidx/lifecycle/a1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lkotlin/jvm/JvmName;
    name = "ViewTreeViewModelStoreOwner"
.end annotation


# direct methods
.method public static final a(Landroid/view/View;)Landroidx/lifecycle/y0;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmName;
        name = "get"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroidx/lifecycle/a1$a;->a:Landroidx/lifecycle/a1$a;

    invoke-static {p0, v0}, Lik/f;->d(Ljava/lang/Object;Lak/l;)Lik/e;

    move-result-object p0

    sget-object v0, Landroidx/lifecycle/a1$b;->a:Landroidx/lifecycle/a1$b;

    invoke-static {p0, v0}, Lik/f;->l(Lik/e;Lak/l;)Lik/e;

    move-result-object p0

    invoke-static {p0}, Lik/f;->j(Lik/e;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/y0;

    return-object p0
.end method

.method public static final b(Landroid/view/View;Landroidx/lifecycle/y0;)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/lifecycle/y0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmName;
        name = "set"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lp0/e;->a:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method
