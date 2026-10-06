.class public La8/z0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Landroid/app/Activity;)Z
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(ZLandroid/app/Activity;Lcom/miui/gamebooster/service/IGameBooster;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/miui/gamebooster/service/IGameBooster;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, La8/z0;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p0, :cond_1

    const v0, 0x7f1200eb

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    invoke-static {p0}, Lm6/a;->i0(Z)V

    invoke-static {p0}, Lm6/a;->h0(Z)V

    invoke-static {}, La8/g0;->E()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p0}, La8/g0;->g0(Z)V

    :cond_2
    if-eqz p2, :cond_3

    :try_start_0
    invoke-interface {p2}, Lcom/miui/gamebooster/service/IGameBooster;->N3()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GlobalSettingsHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method

.method public static c(Z)V
    .locals 0

    invoke-static {p0}, Lm6/a;->h0(Z)V

    return-void
.end method

.method public static d(ZLandroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, La8/z0;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_1

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, p0}, La8/w1;->d(Landroid/content/Context;Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_1
    sget-boolean p0, Lcom/miui/common/i;->a:Z

    if-eqz p0, :cond_2

    sget-object p0, Lcom/miui/securityscan/shortcut/d$b;->o:Lcom/miui/securityscan/shortcut/d$b;

    invoke-static {p1, p0}, Lcom/miui/securityscan/shortcut/d;->v(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;)V

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    invoke-static {p1, p0}, La8/w1;->i(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
