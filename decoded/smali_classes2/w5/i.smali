.class public Lw5/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {}, Lw5/f;->G()Z

    move-result v1

    const-string v2, "true"

    if-eqz v1, :cond_0

    const-string v1, "face"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v1

    invoke-virtual {v1}, Lw5/f;->Q()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "light"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {}, Lw5/f;->a0()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "privacy"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {}, Lw5/f;->Y()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "pc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v1, "beauty_support"

    invoke-static {v1, v0}, Lw5/i;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/miui/analytics/AnalyticsUtil;->trackGameTurboEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static c()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "beauty_light_change"

    invoke-static {v1, v0}, Lcom/miui/analytics/AnalyticsUtil;->trackGameTurboEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static d()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v1

    invoke-virtual {v1}, Lw5/f;->l()Lw5/a;

    move-result-object v1

    const-string v2, "pkgName"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "beauty_settings"

    invoke-static {v1, v0}, Lcom/miui/analytics/AnalyticsUtil;->trackGameTurboEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static e(ZZZZ)V
    .locals 1

    const-string v0, "beauty_show"

    invoke-static {v0, p0, p1, p2, p3}, Lw5/i;->f(Ljava/lang/String;ZZZZ)V

    return-void
.end method

.method private static f(Ljava/lang/String;ZZZZ)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "true"

    if-eqz p1, :cond_0

    const-string p1, "face"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p2, :cond_1

    const-string p1, "light"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p3, :cond_2

    const-string p1, "privacy"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz p4, :cond_3

    const-string p1, "pc"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object p1

    invoke-virtual {p1}, Lw5/f;->l()Lw5/a;

    move-result-object p1

    const-string p2, "pkgName"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, v0}, Lw5/i;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static g()V
    .locals 3

    const-string v0, "beauty_use"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2, v2}, Lw5/i;->f(Ljava/lang/String;ZZZZ)V

    return-void
.end method

.method public static h()V
    .locals 3

    const-string v0, "beauty_use"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1, v1}, Lw5/i;->f(Ljava/lang/String;ZZZZ)V

    return-void
.end method

.method public static i()V
    .locals 3

    const-string v0, "beauty_use"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v1, v1, v2}, Lw5/i;->f(Ljava/lang/String;ZZZZ)V

    return-void
.end method

.method public static j()V
    .locals 3

    const-string v0, "beauty_use"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v1, v2, v1}, Lw5/i;->f(Ljava/lang/String;ZZZZ)V

    return-void
.end method
