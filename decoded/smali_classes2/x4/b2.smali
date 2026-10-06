.class public Lx4/b2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 0
    return-object p1
.end method

.method public static b(I)Z
    .locals 1

    invoke-static {p0}, Lx4/z1;->m(I)I

    move-result p0

    const/16 v0, 0x3e7

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lx4/z1;->e()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x3e7

    invoke-static {p0, p1, v0}, Lx4/f1;->E(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static d(I)Z
    .locals 1
    const/4 v0, 0x0
    return v0
.end method
