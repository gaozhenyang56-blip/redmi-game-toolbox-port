.class public Lvf/n;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Z
    .locals 5

    invoke-static {}, Ldb/c;->h()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "support_image_delete_protect2"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v3, "com.android.providers.media.module"

    const/16 v4, 0x80

    invoke-virtual {p0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_2

    const-string v3, "supportGlobalTrash"

    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {v0, v1}, Lr4/a;->n(Ljava/lang/String;Z)V

    return v1

    :cond_2
    return v2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_0
    return v1
.end method
