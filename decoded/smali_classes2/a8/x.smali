.class public La8/x;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Z
    .locals 3

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Lc4/j;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.miui.cleaner"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const-string v0, "com.miui.cleanmaster"

    invoke-static {p0, v0}, Lx4/f1;->r(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    const/16 v0, 0x1a2

    if-lt p0, v0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 2

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "com.miui.cleanmaster"

    invoke-static {p0, v0}, Lx4/f1;->r(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    const/16 v0, 0x96

    if-lt p0, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 5

    const-string v0, "FeatureUtil"

    invoke-static {p0}, La8/x;->d(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    const-string v3, "android.provider.MiuiSettings$Secure"

    const-string v4, "KID_USER_ID"

    invoke-static {v3, v4}, La8/c0;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string p0, "no kid space"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/16 v4, -0x2710

    invoke-static {p0, v3, v4, v1}, La8/c0;->h(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne p0, v4, :cond_3

    return v1

    :cond_3
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p0, v0, :cond_4

    goto :goto_0

    :cond_4
    move v2, v1

    :goto_0
    return v2

    :catch_0
    move-exception p0

    const-string v2, "isInKidSpace: "

    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "kid_mode_status"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne v0, p0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method
