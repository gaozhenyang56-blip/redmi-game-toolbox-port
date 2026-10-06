.class public Lx4/r0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Z)I
    .locals 0

    if-eqz p0, :cond_0

    const p0, 0x7f080a29

    goto :goto_0

    :cond_0
    const p0, 0x7f080a2a

    :goto_0
    return p0
.end method

.method public static b(Z)I
    .locals 0

    if-eqz p0, :cond_0

    const p0, 0x7f080a33

    goto :goto_0

    :cond_0
    const p0, 0x7f080a34

    :goto_0
    return p0
.end method

.method public static c(Z)I
    .locals 0

    if-eqz p0, :cond_0

    const p0, 0x7f080a71

    goto :goto_0

    :cond_0
    const p0, 0x7f080a72

    :goto_0
    return p0
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v1, 0x20

    if-ne p0, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method
