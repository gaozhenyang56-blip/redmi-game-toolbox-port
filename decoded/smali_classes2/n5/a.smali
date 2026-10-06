.class public Ln5/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 9

    invoke-static {p0}, Lx4/v;->j(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Ln5/b;->d(Landroid/content/Context;)Z

    move-result v0

    const-wide/16 v1, 0x1

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_1

    move-wide v5, v1

    goto :goto_0

    :cond_1
    move-wide v5, v3

    :goto_0
    const-string v7, "settings_emergency"

    const-string v8, "sos_toggle_total"

    invoke-static {v7, v8, v5, v6}, Lcom/miui/analytics/AnalyticsUtil;->recordNumericEvent(Ljava/lang/String;Ljava/lang/String;J)V

    if-eqz v0, :cond_7

    invoke-static {p0}, Ln5/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v5, 0x1

    if-eq v0, v5, :cond_4

    const/4 v5, 0x2

    if-eq v0, v5, :cond_3

    const/4 v5, 0x3

    if-eq v0, v5, :cond_2

    const-string v0, "initial"

    goto :goto_1

    :cond_2
    const-string v0, "three"

    goto :goto_1

    :cond_3
    const-string v0, "two"

    goto :goto_1

    :cond_4
    const-string v0, "one"

    :goto_1
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v6, "emergency_contact"

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "emergency_contact_number"

    invoke-static {v7, v0, v5}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {p0}, Ln5/b;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-wide v5, v1

    goto :goto_2

    :cond_5
    move-wide v5, v3

    :goto_2
    const-string v0, "call_for_help_total"

    invoke-static {v7, v0, v5, v6}, Lcom/miui/analytics/AnalyticsUtil;->recordNumericEvent(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {p0}, Ln5/b;->b(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_3

    :cond_6
    move-wide v1, v3

    :goto_3
    const-string p0, "send_call_record_total"

    invoke-static {v7, p0, v1, v2}, Lcom/miui/analytics/AnalyticsUtil;->recordNumericEvent(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_7
    return-void
.end method
