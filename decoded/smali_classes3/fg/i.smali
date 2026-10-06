.class public Lfg/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(I)V
    .locals 3

    int-to-long v0, p0

    const-string p0, "key_sim_lock_bind_enable"

    const-string v2, "param_sim_lock_bind_enable"

    invoke-static {p0, v2, v0, v1}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static b(I)V
    .locals 3

    int-to-long v0, p0

    const-string p0, "key_sim_lock_enable"

    const-string v2, "param_sim_lock_enable"

    invoke-static {p0, v2, v0, v1}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
