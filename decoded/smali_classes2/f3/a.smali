.class public Lf3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Ljava/lang/String;Ljava/util/Map;)V
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

    const-string v0, "appmanager"

    invoke-static {v0, p0, p1}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static b(Ljava/lang/String;J)V
    .locals 1

    const-string v0, "appmanager"

    invoke-static {v0, p0, p1, p2}, Lcom/miui/analytics/AnalyticsUtil;->recordNumericEvent(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "enter_way"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "enter_am_homepage_way"

    invoke-static {p0, v0}, Lf3/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "module_click"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "application_manage_click"

    invoke-static {p0, v0}, Lf3/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "module_show"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "am_page_tab_state"

    invoke-static {p0, v0}, Lf3/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static f(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "enter_way"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "enter_apps_details_page_way"

    invoke-static {p0, v0}, Lf3/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "app_manager_ad"

    invoke-static {p0, v0}, Lf3/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "app_manager_uninstall"

    invoke-static {p0, v0}, Lf3/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "click"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "apps_details_page_click"

    invoke-static {p0, v0}, Lf3/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static j(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "module_click"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "select_order"

    invoke-static {p0, v0}, Lf3/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static k(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "module_click"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "app_clear_data_click"

    invoke-static {p0, v0}, Lf3/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static l(Landroid/content/Context;)V
    .locals 4

    const-string v0, "com.miui.thirdappassistant"

    invoke-static {p0, v0}, Lx4/g1;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Le3/d;

    invoke-direct {v0, p0}, Le3/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Le3/d;->e()Z

    move-result p0

    int-to-long v0, p0

    const-string p0, "event_settings_switch_state"

    const-string v2, "group_settings"

    const-string v3, "switch_state"

    invoke-static {p0, v2, v3, v0, v1}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static m(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcom/miui/appmanager/AppManageUtils;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "default_browser"

    const-string v1, "packagename"

    invoke-static {v0, v1, p0}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static n(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Le3/d;

    invoke-direct {v0, p0}, Le3/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Le3/d;->d()Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const-string p0, "recommend_toggle_state"

    invoke-static {p0, v0, v1}, Lf3/a;->b(Ljava/lang/String;J)V

    return-void
.end method

.method public static o(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcom/miui/appmanager/AppManageUtils;->K(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const-string p0, "toggle_safe_keyboard"

    invoke-static {p0, v0, v1}, Lf3/a;->b(Ljava/lang/String;J)V

    return-void
.end method

.method public static p(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lf3/a;->q(Landroid/content/Context;)V

    invoke-static {p0}, Lf3/a;->o(Landroid/content/Context;)V

    invoke-static {p0}, Lf3/a;->l(Landroid/content/Context;)V

    invoke-static {p0}, Lf3/a;->n(Landroid/content/Context;)V

    return-void
.end method

.method public static q(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Le3/d;

    invoke-direct {v0, p0}, Le3/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Le3/d;->g()Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const-string p0, "toggle_apps_update"

    invoke-static {p0, v0, v1}, Lf3/a;->b(Ljava/lang/String;J)V

    return-void
.end method
