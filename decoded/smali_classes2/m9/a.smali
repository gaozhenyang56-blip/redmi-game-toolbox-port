.class public Lm9/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lx4/z1;->e()I

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Ln9/a;->a:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ln9/a;->c(Landroid/content/Context;)I

    move-result p0

    int-to-long v0, p0

    const-string p0, "googlebase"

    const-string v2, "google_toggle_total"

    invoke-static {p0, v2, v0, v1}, Lcom/miui/analytics/AnalyticsUtil;->recordNumericEvent(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_1
    :goto_0
    return-void
.end method
