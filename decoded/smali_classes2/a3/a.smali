.class public La3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static A(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "bind_xiaomi_account_dialog_login"

    invoke-static {p0, v0}, La3/a;->e(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public static B(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "bind_xiaomi_account_dialog_unlogin"

    invoke-static {p0, v0}, La3/a;->e(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public static C(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "module_click"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "recommend_page_action"

    invoke-static {p0, v0}, La3/a;->e(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static D(Landroid/content/Context;Lc3/d;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {p1}, Lc3/d;->i()Ljava/lang/String;

    move-result-object p1

    const-string v1, "toggle_applock_binding"

    if-eqz p1, :cond_0

    const-string p0, "on"

    :goto_0
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lc3/w;->c(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "off_logged_in"

    goto :goto_0

    :cond_1
    const-string p0, "off_not_logged"

    goto :goto_0

    :goto_1
    const-string p0, "applicationlock"

    invoke-static {p0, v1}, Lcom/miui/analytics/AnalyticsUtil;->createEventName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static E(Lc3/d;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {p0}, Lc3/d;->q()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "toggle_convenient_mode"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "applicationlock"

    invoke-static {p0, v1}, Lcom/miui/analytics/AnalyticsUtil;->createEventName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static F(Landroid/content/Context;Lc3/d;)V
    .locals 2

    invoke-static {p0}, Lc3/d;->j(Landroid/content/Context;)Lc3/d;

    move-result-object p0

    invoke-virtual {p0}, Lc3/d;->l()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lc3/d;->m()Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/16 p0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 p0, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 p0, -0x1

    :goto_0
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "toggle_applock_main"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "applicationlock"

    invoke-static {p0, p1}, La3/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static G()V
    .locals 7

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v2, "locked_app_quantity1"

    const-wide/16 v3, 0x0

    invoke-static {v2, v3, v4}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "toggle_applock_haveapps"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "applicationlock"

    invoke-static {v1, v2}, Lcom/miui/analytics/AnalyticsUtil;->createEventName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static H(Landroid/content/Context;Lc3/d;)V
    .locals 1

    invoke-static {p0}, Lc3/m;->o(Landroid/content/Context;)Lc3/m;

    move-result-object p0

    invoke-virtual {p0}, Lc3/m;->w()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lc3/d;->r()Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/16 p0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 p0, 0x0

    :goto_0
    const-string v0, "toggle_face_unlock"

    invoke-static {v0, p0, p1}, La3/a;->f(Ljava/lang/String;J)V

    :cond_1
    return-void
.end method

.method private static I(Landroid/content/Context;Lc3/d;)V
    .locals 1

    invoke-static {p0}, Lc3/n;->g(Landroid/content/Context;)Lc3/n;

    move-result-object p0

    invoke-virtual {p0}, Lc3/n;->i()Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v0, "hennessy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ido"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "aqua"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    new-instance p0, Ljava/util/HashMap;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {p1}, Lc3/d;->s()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "toggle_finger_mark"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "applicationlock"

    invoke-static {p1, v0}, La3/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method private static J(Lc3/d;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {p0}, Lc3/d;->h()I

    move-result p0

    const-string v2, "toggle_lock_time"

    if-eqz p0, :cond_2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    goto :goto_1

    :cond_0
    const-string p0, "lockscreen_quit_1min_app"

    goto :goto_0

    :cond_1
    const-string p0, "lockscreen"

    goto :goto_0

    :cond_2
    const-string p0, "lockscreen_quit_app"

    :goto_0
    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const-string p0, "applicationlock"

    invoke-static {p0, v2}, Lcom/miui/analytics/AnalyticsUtil;->createEventName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static K(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {p0}, Lc3/f;->S(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "toggle_applock_showdrawing"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "applicationlock"

    invoke-static {p0, v1}, Lcom/miui/analytics/AnalyticsUtil;->createEventName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1}, La3/a;->e(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, La3/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "."

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static d(J)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "locked_app_quantity1"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "applicationlock"

    invoke-static {p0, p1}, Lcom/miui/analytics/AnalyticsUtil;->createEventName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static e(Ljava/lang/String;Ljava/util/Map;)V
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

    const-string v0, "applicationlock"

    invoke-static {v0, p0, p1}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static f(Ljava/lang/String;J)V
    .locals 1

    const-string v0, "applicationlock"

    invoke-static {v0, p0, p1, p2}, Lcom/miui/analytics/AnalyticsUtil;->recordNumericEvent(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static g(Landroid/content/Context;)V
    .locals 5

    invoke-static {p0}, Lc3/d;->j(Landroid/content/Context;)Lc3/d;

    move-result-object v0

    invoke-static {p0, v0}, La3/a;->F(Landroid/content/Context;Lc3/d;)V

    invoke-virtual {v0}, Lc3/d;->m()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0}, La3/a;->J(Lc3/d;)V

    invoke-static {p0}, La3/a;->K(Landroid/content/Context;)V

    invoke-static {}, La3/a;->G()V

    invoke-static {p0}, La3/a;->x(Landroid/content/Context;)V

    invoke-static {p0, v0}, La3/a;->I(Landroid/content/Context;Lc3/d;)V

    invoke-static {p0, v0}, La3/a;->H(Landroid/content/Context;Lc3/d;)V

    invoke-static {v0}, La3/a;->t(Lc3/d;)V

    invoke-static {p0, v0}, La3/a;->D(Landroid/content/Context;Lc3/d;)V

    invoke-virtual {v0}, Lc3/d;->h()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-static {v0}, La3/a;->E(Lc3/d;)V

    :cond_0
    const-string v0, "locked_app_quantity1"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    invoke-static {}, La3/a;->v()V

    :cond_1
    invoke-static {}, Lc3/f;->t()Ljava/util/List;

    move-result-object v0

    const-string v1, "security"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiui/security/SecurityManager;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    if-eqz p0, :cond_2

    if-eqz v1, :cond_2

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lmiui/security/SecurityManager;->getApplicationAccessControlEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, La3/a;->p(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static h(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "account_status"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "applock_mistake_reach_max"

    invoke-static {p0, v0}, La3/a;->e(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1

    new-instance v0, La3/a$j;

    invoke-direct {v0, p0}, La3/a$j;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static j(Ljava/lang/String;)V
    .locals 1

    new-instance v0, La3/a$c;

    invoke-direct {v0, p0}, La3/a$c;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static k(Ljava/lang/String;)V
    .locals 1

    new-instance v0, La3/a$d;

    invoke-direct {v0, p0}, La3/a$d;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static l(Ljava/lang/String;)V
    .locals 1

    new-instance v0, La3/a$h;

    invoke-direct {v0, p0}, La3/a$h;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static m(Ljava/lang/String;)V
    .locals 1

    new-instance v0, La3/a$b;

    invoke-direct {v0, p0}, La3/a$b;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static n(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "module_click"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "applock_homepage_click"

    invoke-static {p0, v0}, La3/a;->e(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static o(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const-string v0, "numeric"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "mixed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "pattern"

    goto :goto_0

    :cond_0
    const-string p0, "mix_password"

    goto :goto_0

    :cond_1
    const-string p0, "number"

    :goto_0
    new-instance v0, La3/a$e;

    invoke-direct {v0, p0}, La3/a$e;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static p(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "choose_package_name"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "choose_locked_app_name"

    invoke-static {p0, v0}, La3/a;->e(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static q(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "set_forget_page_binding_result"

    invoke-static {p0, v0}, La3/a;->e(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static r(Ljava/lang/String;)V
    .locals 1

    new-instance v0, La3/a$f;

    invoke-direct {v0, p0}, La3/a$f;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static s()V
    .locals 1

    new-instance v0, La3/a$i;

    invoke-direct {v0}, La3/a$i;-><init>()V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static t(Lc3/d;)V
    .locals 2

    invoke-virtual {p0}, Lc3/d;->o()Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const-string p0, "toggle_lock_all"

    invoke-static {p0, v0, v1}, La3/a;->f(Ljava/lang/String;J)V

    return-void
.end method

.method public static u(Ljava/lang/String;)V
    .locals 1

    new-instance v0, La3/a$g;

    invoke-direct {v0, p0}, La3/a$g;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static v()V
    .locals 5

    const-string v0, "locked_app_quantity1"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-gtz v0, :cond_0

    return-void

    :cond_0
    invoke-static {v3, v4}, La3/a;->d(J)V

    return-void
.end method

.method public static w(Lmiui/security/SecurityManager;)V
    .locals 3

    invoke-static {}, Leg/c;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "development"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lc3/f;->C(Lmiui/security/SecurityManager;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "app_name"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_1

    const-string v0, "applock_message_mask_name"

    invoke-static {v0, v1}, La3/a;->e(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static x(Landroid/content/Context;)V
    .locals 2

    const-string v0, "security"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiui/security/SecurityManager;

    invoke-static {p0}, Lc3/f;->C(Lmiui/security/SecurityManager;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    int-to-long v0, p0

    const-string p0, "applock_message_mask"

    invoke-static {p0, v0, v1}, La3/a;->f(Ljava/lang/String;J)V

    return-void
.end method

.method public static y(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "enter_way"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "applicationlock"

    const-string v1, "noti_mask_enter_way"

    invoke-static {p0, v1}, Lcom/miui/analytics/AnalyticsUtil;->createEventName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static z()V
    .locals 1

    new-instance v0, La3/a$a;

    invoke-direct {v0}, La3/a$a;-><init>()V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method
