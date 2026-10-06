.class public Lam/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lam/b;->b(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static c(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static d(Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    invoke-static {p0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lam/b;->f(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static f(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static g(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    move-result p0

    return p0
.end method
