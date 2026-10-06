.class public Lc4/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc4/f$a;
    }
.end annotation


# direct methods
.method static synthetic a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1}, Lc4/f;->j(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lc4/f;->k(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method private static c(Lc4/n;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lc4/f;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/cleanmaster/InstallCallbackV28;

    invoke-direct {v0, p0}, Lcom/miui/cleanmaster/InstallCallbackV28;-><init>(Lc4/n;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/miui/cleanmaster/InstallCallBack;

    invoke-direct {v0, p0}, Lcom/miui/cleanmaster/InstallCallBack;-><init>(Lc4/n;)V

    return-object v0
.end method

.method private static d(Landroid/content/Context;Landroid/content/Intent;Z)V
    .locals 1

    invoke-static {p0}, Lc4/e;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lc4/f;->j(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lc4/f$a;

    invoke-direct {v0, p0, p1, p2}, Lc4/f$a;-><init>(Landroid/content/Context;Landroid/content/Intent;Z)V

    invoke-static {v0}, Lc4/f;->c(Lc4/n;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lc4/e;->a(Landroid/content/Context;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private static e(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    :try_start_0
    invoke-static {p0}, Lc4/j;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_0

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "CleanMasterLunchUtil"

    const-string v0, "handleActionOnGlobal: "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static f()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static g(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lc4/f;->h(Landroid/content/Context;Landroid/content/Intent;Z)V

    return-void
.end method

.method public static h(Landroid/content/Context;Landroid/content/Intent;Z)V
    .locals 1

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Lc4/f;->e(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-static {p0, p1}, La8/o0;->A(J)V

    goto :goto_0

    :cond_1
    invoke-static {p0, p1, p2}, Lc4/f;->d(Landroid/content/Context;Landroid/content/Intent;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static i(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Lc4/j;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    invoke-static {p0, p1, p2, p3}, Lc4/f;->k(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lc4/e;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Lc4/f$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lc4/f$a;-><init>(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    invoke-static {v0}, Lc4/f;->c(Lc4/n;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lc4/e;->a(Landroid/content/Context;Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private static j(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "lunchIntent: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CleanMasterLunchUtil"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static k(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "lunchIntentForResult: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CleanMasterLunchUtil"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
