.class public Lc7/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x3

    invoke-static {v0}, Lc7/b;->e(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GlobalGameFeed"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static b(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x6

    invoke-static {v0}, Lc7/b;->e(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GlobalGameFeed"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static c(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x4

    invoke-static {v0}, Lc7/b;->e(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GlobalGameFeed"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static d()Z
    .locals 1

    const/4 v0, 0x3

    invoke-static {v0}, Lc7/b;->e(I)Z

    move-result v0

    return v0
.end method

.method public static e(I)Z
    .locals 1

    const-string v0, "GlobalGameFeed"

    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method
