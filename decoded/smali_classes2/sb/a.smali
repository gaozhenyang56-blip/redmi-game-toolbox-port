.class public Lsb/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()V
    .locals 1

    const-string v0, "auto_start"

    invoke-static {v0}, Lsb/a;->q(Ljava/lang/String;)V

    return-void
.end method

.method public static b()V
    .locals 1

    const-string v0, "cache_clear"

    invoke-static {v0}, Lsb/a;->q(Ljava/lang/String;)V

    return-void
.end method

.method public static c()V
    .locals 1

    const-string v0, "stop"

    invoke-static {v0}, Lsb/a;->q(Ljava/lang/String;)V

    return-void
.end method

.method public static d()V
    .locals 1

    const-string v0, "ignore_dangerous_permission"

    invoke-static {v0}, Lsb/a;->q(Ljava/lang/String;)V

    return-void
.end method

.method public static e()V
    .locals 1

    const-string v0, "ignore_file_safe"

    invoke-static {v0}, Lsb/a;->q(Ljava/lang/String;)V

    return-void
.end method

.method public static f()V
    .locals 1

    const-string v0, "ignore_photo_delete_tip"

    invoke-static {v0}, Lsb/a;->q(Ljava/lang/String;)V

    return-void
.end method

.method public static g()V
    .locals 1

    const-string v0, "ignore_risk_app_uninstall"

    invoke-static {v0}, Lsb/a;->q(Ljava/lang/String;)V

    return-void
.end method

.method public static h()V
    .locals 1

    const-string v0, "ignore_sensitive_permission"

    invoke-static {v0}, Lsb/a;->q(Ljava/lang/String;)V

    return-void
.end method

.method public static i()V
    .locals 1

    const-string v0, "ignore_thumbnail_blur"

    invoke-static {v0}, Lsb/a;->q(Ljava/lang/String;)V

    return-void
.end method

.method public static j()V
    .locals 1

    const-string v0, "set_dangerous_permission"

    invoke-static {v0}, Lsb/a;->q(Ljava/lang/String;)V

    return-void
.end method

.method public static k()V
    .locals 1

    const-string v0, "set_file_safe"

    invoke-static {v0}, Lsb/a;->q(Ljava/lang/String;)V

    return-void
.end method

.method public static l()V
    .locals 1

    const-string v0, "set_photo_delete_tip"

    invoke-static {v0}, Lsb/a;->q(Ljava/lang/String;)V

    return-void
.end method

.method public static m()V
    .locals 1

    const-string v0, "set_risk_app_uninstall"

    invoke-static {v0}, Lsb/a;->q(Ljava/lang/String;)V

    return-void
.end method

.method public static n()V
    .locals 1

    const-string v0, "set_sensitive_permission"

    invoke-static {v0}, Lsb/a;->q(Ljava/lang/String;)V

    return-void
.end method

.method public static o()V
    .locals 1

    const-string v0, "set_thumbnail_blur"

    invoke-static {v0}, Lsb/a;->q(Ljava/lang/String;)V

    return-void
.end method

.method public static p()V
    .locals 1

    const-string v0, "app_uninstall"

    invoke-static {v0}, Lsb/a;->q(Ljava/lang/String;)V

    return-void
.end method

.method private static q(Ljava/lang/String;)V
    .locals 1

    const-string v0, "risk_detection"

    invoke-static {v0, p0}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static r(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "risk_detection"

    invoke-static {v0, p0}, Lcom/miui/analytics/AnalyticsUtil;->createEventName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static s()V
    .locals 1

    const-string v0, "home"

    invoke-static {v0}, Lsb/a;->q(Ljava/lang/String;)V

    return-void
.end method

.method public static t(I)V
    .locals 1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "result"

    invoke-static {v0, p0}, Lsb/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
