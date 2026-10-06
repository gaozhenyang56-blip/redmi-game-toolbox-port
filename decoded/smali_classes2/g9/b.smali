.class public Lg9/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Z
    .locals 2

    invoke-static {}, Lef/x;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.globalsatisfaction"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.miui.securityadd"

    invoke-static {p0, v0, v1}, Lcom/miui/luckymoney/utils/PackageUtil;->isIntentExist(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-static {p0}, Lg9/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "globalsatisfaction_GlobalSatisfactionManager"

    const-string v0, "pullCloudControlConfig: fail reason: not enable"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Lg9/b$a;

    invoke-direct {v0, p0}, Lg9/b$a;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v0}, Ll9/a;->b(Landroid/content/Context;Li9/a;)V

    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Ll9/g;->c(Landroid/content/Context;)V

    return-void
.end method
