.class public Lqe/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "packagename"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "add_privacy_app_name"

    invoke-static {p0, v0}, Lqe/a;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/util/Map;)V
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

    const-string v0, "privacyapps"

    invoke-static {v0, p0, p1}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static c(Ljava/lang/String;J)V
    .locals 1

    const-string v0, "privacyapps"

    invoke-static {v0, p0, p1, p2}, Lcom/miui/analytics/AnalyticsUtil;->recordNumericEvent(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "packagename"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "open_privacy_app"

    invoke-static {p0, v0}, Lqe/a;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static e(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lse/a;->e(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const-string p0, "privacy_app_toggle"

    invoke-static {p0, v0, v1}, Lqe/a;->c(Ljava/lang/String;J)V

    return-void
.end method
