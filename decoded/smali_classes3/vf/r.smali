.class public Lvf/r;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/view/View;ZZ)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-nez p1, :cond_0

    const/16 p1, 0x1706

    goto :goto_0

    :cond_0
    const/16 p1, 0x3706

    :goto_0
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    if-eqz p2, :cond_1

    and-int/lit8 p1, p1, -0x5

    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public static b(ZLandroid/view/View;Z)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lvf/a;->a(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz p0, :cond_0

    invoke-static {p1, v0, p2}, Lvf/r;->c(Landroid/view/View;ZZ)V

    goto :goto_0

    :cond_0
    invoke-static {p1, v0, p2}, Lvf/r;->a(Landroid/view/View;ZZ)V

    :goto_0
    return-void
.end method

.method public static c(Landroid/view/View;ZZ)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-nez p1, :cond_0

    const/16 p1, 0x700

    goto :goto_0

    :cond_0
    const/16 p1, 0x2700

    :goto_0
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    if-eqz p2, :cond_1

    and-int/lit8 p1, p1, -0x5

    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method
