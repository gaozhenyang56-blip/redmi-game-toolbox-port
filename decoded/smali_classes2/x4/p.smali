.class public Lx4/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx4/p$a;
    }
.end annotation


# direct methods
.method public static a(Lx4/p$a;)V
    .locals 0

    invoke-interface {p0}, Lx4/p$a;->getAdFloatCardData()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/common/f;->a(Ljava/lang/String;)Z

    return-void
.end method

.method public static b(Lx4/p$a;Landroid/content/Context;)V
    .locals 10

    invoke-interface {p0}, Lx4/p$a;->getAdDeeplink()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Leg/i;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Lx4/p$a;->trackAdDeeplinkLauncher(Landroid/content/Context;)V

    return-void

    :cond_0
    invoke-interface {p0}, Lx4/p$a;->getAdPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lx4/p$a;->getAdLandingPageUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Leg/i;->e(Landroid/content/Context;Ljava/lang/String;)Z

    return-void

    :cond_1
    invoke-static {p1}, Lsf/h;->c(Landroid/content/Context;)Lsf/h;

    move-result-object v0

    invoke-interface {p0}, Lx4/p$a;->getAdPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsf/h;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-interface {p0}, Lx4/p$a;->getAdPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_2
    invoke-static {p1}, Leg/c;->k(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    const p0, 0x7f121a7d

    invoke-static {p1, p0}, Leg/c;->n(Landroid/content/Context;I)V

    return-void

    :cond_3
    invoke-interface {p0}, Lx4/p$a;->getAdFloatCardData()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "CommonAdvClickHelper"

    if-nez v0, :cond_4

    const-string v0, "http"

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "onButtonClick: floatCardData by web browser"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, v8}, Leg/i;->e(Landroid/content/Context;Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_4
    const-string v0, "onButtonClick: floatCardData by mi"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0}, Lx4/p$a;->isDownloadPause()Z

    move-result v0

    const/4 v9, 0x1

    if-eqz v0, :cond_5

    invoke-static {v8}, Lcom/miui/common/f;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/miui/common/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lsf/e;->d(Landroid/content/Context;)Lsf/e;

    move-result-object v0

    invoke-interface {p0}, Lx4/p$a;->getAdPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lsf/e;->n(Ljava/lang/String;I)V

    invoke-static {p1}, Lsf/e;->d(Landroid/content/Context;)Lsf/e;

    move-result-object p1

    invoke-interface {p0}, Lx4/p$a;->getAdPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v9}, Lsf/e;->i(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_5
    invoke-interface {p0}, Lx4/p$a;->isDownloading()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v8}, Lcom/miui/common/f;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/miui/common/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lsf/e;->d(Landroid/content/Context;)Lsf/e;

    move-result-object v0

    invoke-interface {p0}, Lx4/p$a;->getAdPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x3

    invoke-virtual {v0, v1, v2}, Lsf/e;->n(Ljava/lang/String;I)V

    invoke-static {}, Lcom/miui/common/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lsf/e;->d(Landroid/content/Context;)Lsf/e;

    move-result-object v0

    invoke-interface {p0}, Lx4/p$a;->getAdPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsf/e;->e(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1}, Lsf/e;->d(Landroid/content/Context;)Lsf/e;

    move-result-object p1

    invoke-interface {p0}, Lx4/p$a;->getAdPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x6

    invoke-virtual {p1, p0, v1, v0}, Lsf/e;->j(Ljava/lang/String;II)V

    goto :goto_0

    :cond_6
    invoke-interface {p0}, Lx4/p$a;->getAdPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lx4/p$a;->getAdAppRef()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lx4/p$a;->getAdEx()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0}, Lx4/p$a;->getAdAppClientId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0}, Lx4/p$a;->getAdAppSignature()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0}, Lx4/p$a;->getAdNonce()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0}, Lx4/p$a;->getAdAppChannel()Ljava/lang/String;

    move-result-object v7

    move-object v0, p1

    invoke-static/range {v0 .. v8}, Lcom/miui/common/f;->h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lsf/e;->d(Landroid/content/Context;)Lsf/e;

    move-result-object v0

    invoke-interface {p0}, Lx4/p$a;->getAdPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lx4/p$a;->getAdAutoOpen()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lsf/e;->b(Ljava/lang/String;Z)V

    invoke-interface {p0}, Lx4/p$a;->getAdPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lsf/e;->i(Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f121810

    new-array v2, v9, [Ljava/lang/Object;

    invoke-interface {p0}, Lx4/p$a;->getAdTitle()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_7
    :goto_0
    return-void
.end method

.method public static c(Lx4/p$a;Landroid/content/Context;)V
    .locals 2

    const-string v0, "CommonAdvClickHelper"

    invoke-interface {p0}, Lx4/p$a;->getAdDeeplink()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Leg/i;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0, p1}, Lx4/p$a;->trackAdDeeplinkLauncher(Landroid/content/Context;)V

    return-void

    :cond_0
    invoke-interface {p0}, Lx4/p$a;->getAdPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Lx4/p$a;->getAdLandingPageUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Leg/i;->e(Landroid/content/Context;Ljava/lang/String;)Z

    return-void

    :cond_1
    :try_start_0
    invoke-interface {p0}, Lx4/p$a;->getAdLandingPageUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p0, "onContentClick: landingPageUrl is empty"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string v1, "http"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "onContentClick: landingPageUrl web"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p0}, Leg/i;->e(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    :cond_3
    const-string v1, "onContentClick: landingPageUrl mi"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p0}, Leg/i;->g(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "onContentClick"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
