.class public final Landroidx/lifecycle/w0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lkotlin/jvm/JvmName;
    name = "ViewModelProviderGetKt"
.end annotation


# direct methods
.method public static final a(Landroidx/lifecycle/y0;)Lp0/a;
    .locals 1
    .param p0    # Landroidx/lifecycle/y0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "owner"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Landroidx/lifecycle/k;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/lifecycle/k;

    invoke-interface {p0}, Landroidx/lifecycle/k;->getDefaultViewModelCreationExtras()Lp0/a;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lp0/a$a;->b:Lp0/a$a;

    :goto_0
    return-object p0
.end method
