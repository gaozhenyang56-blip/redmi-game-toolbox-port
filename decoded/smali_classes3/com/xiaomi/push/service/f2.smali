.class public abstract Lcom/xiaomi/push/service/f2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lzi/r5;)Z
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lzi/r5;->a()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lzi/r5;->w()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(Lzi/r5;)Z
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lzi/r5;->a()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lzi/r5;->w()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
