.class public Lcf/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.miui.video"

    const-string v4, "com.miui.childmode.video.CMVideoPlayerActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p0

    const-string v1, "Analytic_SecurityCenter"

    const-string v2, "isMiVideoSupport: "

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.miui.securitycore"

    const-string v4, "com.miui.securityspace.service.KidModeSpaceService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p0

    const-string v1, "Analytic_SecurityCenter"

    const-string v2, "isSecurityCoreSupport: "

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lx4/z1;->r()Z

    move-result v0

    const-string v2, "Analytic_SecurityCenter"

    if-nez v0, :cond_1

    const-string p0, "not owner space"

    :goto_0
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_2

    const-string p0, "not support in internation version"

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcf/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSecurityCoreSupport: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcf/a;->a(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMiVideoSupport: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    invoke-static {}, Lx4/k0;->i()Z

    move-result p0

    if-eqz p0, :cond_5

    return v1

    :cond_5
    invoke-static {}, Lx4/k0;->c()Z

    move-result p0

    return p0
.end method

.method private static d()Z
    .locals 3

    const-string v0, "ro.miui.support_miui_ime_bottom"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lx4/v1;->b(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public static e(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcf/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Ldf/g;->g(Landroid/content/Context;)V

    return-void
.end method

.method public static f(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Ldf/g;->q()V

    invoke-static {p0}, Ldf/g;->p(Landroid/content/Context;)V

    invoke-static {p0}, Ldf/g;->c(Landroid/content/Context;)V

    invoke-static {}, Lcf/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Ldf/h;->O(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Ldf/h;->P(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Ldf/h;->s(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Ldf/g;->m(Landroid/content/Context;)V

    invoke-static {p0}, Ldf/g;->o(Landroid/content/Context;)V

    invoke-static {p0}, Ldf/g;->n(Landroid/content/Context;)V

    invoke-static {p0}, Ldf/g;->l(Landroid/content/Context;)V

    invoke-static {p0}, Ldf/g;->k(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static g(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Lcf/a;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "content://com.miui.child.home.analytics.analyticsprovider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "analytics_method_kid_space"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Analytic_SecurityCenter"

    const-string v1, "kidSpaceAnalytic"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static h(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "securityadd"

    invoke-static {v0, p0, p1}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static i(Ljava/lang/String;J)V
    .locals 1

    const-string v0, "securityadd"

    invoke-static {v0, p0, p1, p2}, Lcom/miui/analytics/AnalyticsUtil;->recordNumericEvent(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static j(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "securityadd"

    invoke-static {v0, p0, p1}, Lcom/miui/analytics/AnalyticsUtil;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static k(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcf/a;->g(Landroid/content/Context;)V

    invoke-static {p0}, Lcf/a;->e(Landroid/content/Context;)V

    invoke-static {p0}, Lcf/a;->f(Landroid/content/Context;)V

    return-void
.end method
