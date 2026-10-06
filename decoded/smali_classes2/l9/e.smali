.class public Ll9/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Z)V
    .locals 3

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const-string p0, "gs_active_mode"

    const-string v2, "gs_is_active"

    invoke-static {p0, v2, v0, v1}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    const-string v0, "gs_notification_show"

    const-string v1, "gs_question_id"

    invoke-static {v0, v1, p0}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    const-string v0, "gs_settings_click"

    const-string v1, "gs_question_id"

    invoke-static {v0, v1, p0}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2

    const-string v0, "gs_settings_show"

    const-string v1, "gs_question_id"

    invoke-static {v0, v1, p0}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Z)V
    .locals 3

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const-string p0, "gs_upgrade_mode"

    const-string v2, "gs_is_upgrade"

    invoke-static {p0, v2, v0, v1}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
