.class public Lgb/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lgd/c;->o0()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-string v0, "never"

    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "min"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lkb/a;->i()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "never"

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "%"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/lang/String;J)V
    .locals 2

    const-string v0, "optimizemanage"

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, p2, v1}, Lcom/miui/analytics/AnalyticsUtil;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2

    const-string v0, "optimizemanage_homepage_state"

    const-string v1, "switch_state"

    invoke-static {v0, v1, p0}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static e(Ljava/lang/String;)V
    .locals 2

    const-string v0, "optimizemanage"

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static f(Ljava/lang/String;Ljava/util/Map;)V
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

    const-string v0, "optimizemanage"

    invoke-static {v0, p0, p1}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static g(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "enter_way"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "speedboost_enter_way"

    invoke-static {p0, v0}, Lgb/a;->f(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static h(Ljava/lang/String;J)V
    .locals 1

    const-string v0, "optimizemanage"

    invoke-static {v0, p0, p1, p2}, Lcom/miui/analytics/AnalyticsUtil;->recordNumericEvent(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static i()V
    .locals 3

    const-string v0, "optimizemanage_homepage_state"

    const-string v1, "module_click"

    const-string v2, "booster_button"

    invoke-static {v0, v1, v2}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static j(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "optimizemanage_ramjet_dialog"

    invoke-static {v0, p0, p1}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static k(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "module_click"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "speedboost_results"

    invoke-static {p0, v0}, Lgb/a;->f(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static l()V
    .locals 3

    const-string v0, "optimizemanage_homepage_state"

    const-string v1, "module_show"

    const-string v2, "resultpage"

    invoke-static {v0, v1, v2}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static m(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "module_show"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "speedboost_results"

    invoke-static {p0, v0}, Lgb/a;->f(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static n()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "slidedown"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "speedboost_results"

    invoke-static {v1, v0}, Lgb/a;->f(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static o()V
    .locals 3

    const-string v0, "optimizemanage_homepage_state"

    const-string v1, "module_click"

    const-string v2, "scanpage_back"

    invoke-static {v0, v1, v2}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static p()V
    .locals 3

    const-string v0, "optimizemanage_homepage_state"

    const-string v1, "module_show"

    const-string v2, "scanpage"

    invoke-static {v0, v1, v2}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static q(Ljava/lang/String;)V
    .locals 2

    const-string v0, "optimizemanage_homepage_state"

    const-string v1, "module_click"

    invoke-static {v0, v1, p0}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static r(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lgb/a;->e(Ljava/lang/String;)V

    return-void
.end method

.method private static s(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "optimizemanage"

    invoke-static {v0, p0, p1}, Lcom/miui/analytics/AnalyticsUtil;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static t()V
    .locals 3

    invoke-static {}, Lkb/a;->h()I

    move-result v0

    int-to-long v0, v0

    const-string v2, "toggle_lock_apps_num"

    invoke-static {v2, v0, v1}, Lgb/a;->c(Ljava/lang/String;J)V

    invoke-static {}, Lgb/a;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toggle_clean_ram_lockscreen"

    invoke-static {v1, v0}, Lgb/a;->s(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lgb/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toggle_optimize_ram_noti"

    invoke-static {v1, v0}, Lgb/a;->s(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lkb/a;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const-string v2, "toggle_optimize_cpu_noti"

    invoke-static {v2, v0, v1}, Lgb/a;->h(Ljava/lang/String;J)V

    return-void
.end method
