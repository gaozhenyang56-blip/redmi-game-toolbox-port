.class public Ltf/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Landroid/content/Context;)V
    .locals 3

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "SecuritySettings"

    const-string v1, "Grid6AmLayoutType"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lx4/o;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Lpf/g;->y(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "ScCloudControlHelper"

    const-string v1, "load security settings data failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Ltf/a;->c(Landroid/content/Context;)V

    invoke-static {p0}, Ltf/a;->a(Landroid/content/Context;)V

    invoke-static {p0}, Ltf/a;->e(Landroid/content/Context;)V

    invoke-static {p0}, Ltf/a;->d(Landroid/content/Context;)V

    invoke-static {p0}, Ltf/a;->g(Landroid/content/Context;)V

    invoke-static {p0}, Ltf/a;->f(Landroid/content/Context;)V

    return-void
.end method

.method private static c(Landroid/content/Context;)V
    .locals 3

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "SecuritySettings"

    const-string v1, "HpStandardScore"

    const/16 v2, 0x50

    invoke-static {p0, v0, v1, v2}, Lx4/o;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Lpf/g;->A(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "ScCloudControlHelper"

    const-string v1, "load security settings data failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private static d(Landroid/content/Context;)V
    .locals 3

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "SecuritySettings"

    const-string v1, "UninstallAppIdleCount"

    const/16 v2, 0x14

    invoke-static {p0, v0, v1, v2}, Lx4/o;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    invoke-static {p0, v0}, Lpf/g;->B(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "ScCloudControlHelper"

    const-string v1, "load security settings data failed -> loadUninstallAppIdleCount"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private static e(Landroid/content/Context;)V
    .locals 3

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "SecuritySettings"

    const-string v1, "UninstallAppIdleTime"

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2}, Lx4/o;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Lpf/g;->R(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "ScCloudControlHelper"

    const-string v1, "load security settings data failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private static f(Landroid/content/Context;)V
    .locals 3

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "SecuritySettings"

    const-string v1, "UninstallAppIntervalDays"

    const/4 v2, 0x7

    invoke-static {p0, v0, v1, v2}, Lx4/o;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    invoke-static {p0, v0}, Lpf/g;->C(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "ScCloudControlHelper"

    const-string v1, "load security settings data failed -> loadUninstallAppIntervalDays"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private static g(Landroid/content/Context;)V
    .locals 3

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "SecuritySettings"

    const-string v1, "UninstallAppOccupyRate"

    const/16 v2, 0x50

    invoke-static {p0, v0, v1, v2}, Lx4/o;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    invoke-static {p0, v0}, Lpf/g;->L(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "ScCloudControlHelper"

    const-string v1, "load security settings data failed -> loadUninstallAppOccupyRate"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
