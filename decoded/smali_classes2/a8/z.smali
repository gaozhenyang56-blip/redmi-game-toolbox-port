.class public La8/z;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    new-instance v1, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-direct {v1, p0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iget p0, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p0, p0, 0xf

    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static b()Z
    .locals 1

    invoke-static {}, Lx4/y;->j()Z

    move-result v0

    return v0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 1

    invoke-static {}, La8/z;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lx4/y;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lx4/y;->h()Z

    move-result p0

    return p0

    :cond_1
    invoke-static {p0}, La8/z;->a(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static d()Z
    .locals 1

    invoke-static {}, Lx4/y;->k()Z

    move-result v0

    return v0
.end method

.method public static e()Z
    .locals 2

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "cetus"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static f(Landroid/content/Context;)Z
    .locals 1

    invoke-static {}, La8/z;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, La8/z;->a(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static g()Z
    .locals 2

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "zizhan"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static h(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit16 p0, p0, 0x2000

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static i(Landroid/content/Context;)Z
    .locals 1

    invoke-static {}, La8/z;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, La8/z;->a(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static j(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lsl/b;->d(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
