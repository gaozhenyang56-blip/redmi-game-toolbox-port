.class public Lc4/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 2

    const-string v0, "CMInstallHelper"

    const-string v1, "start install Cleaner"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lc4/f;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/miui/cleanmaster/InstallCallbackV28;->o8(Landroid/content/Context;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/miui/cleanmaster/InstallCallBack;->o8(Landroid/content/Context;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Lc4/j;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    return v1
.end method
