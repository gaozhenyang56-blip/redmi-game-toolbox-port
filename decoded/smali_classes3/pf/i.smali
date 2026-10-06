.class public Lpf/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "security_pref_data"

    invoke-static {p0, v0}, Luf/b;->d(Landroid/content/Context;Ljava/lang/String;)Luf/b;

    move-result-object p0

    const-string v0, "appmanager_ad_request_mode"

    const-string v1, "new"

    invoke-virtual {p0, v0, v1}, Luf/b;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "security_pref_data"

    invoke-static {p0, v0}, Luf/b;->d(Landroid/content/Context;Ljava/lang/String;)Luf/b;

    move-result-object p0

    const-string v0, "perf_key_commonly_used_func_list"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Luf/b;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;)J
    .locals 3

    const-string v0, "security_pref_data"

    invoke-static {p0, v0}, Luf/b;->d(Landroid/content/Context;Ljava/lang/String;)Luf/b;

    move-result-object p0

    const-string v0, "pref_key_deepclean_roddot_showtime"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Luf/b;->f(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "security_pref_data"

    invoke-static {p0, v0}, Luf/b;->d(Landroid/content/Context;Ljava/lang/String;)Luf/b;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_1407"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Luf/b;->h(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static e(Landroid/content/Context;)J
    .locals 3

    const-string v0, "security_pref_data"

    invoke-static {p0, v0}, Luf/b;->d(Landroid/content/Context;Ljava/lang/String;)Luf/b;

    move-result-object p0

    const-string v0, "pref_key_last_planned_scan_time"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Luf/b;->f(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static f(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "security_pref_data"

    invoke-static {p0, v0}, Luf/b;->d(Landroid/content/Context;Ljava/lang/String;)Luf/b;

    move-result-object p0

    const-string v0, "key_miui_lite_first_open_game_turbo"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Luf/b;->h(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static g(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "security_pref_data"

    invoke-static {p0, v0}, Luf/b;->d(Landroid/content/Context;Ljava/lang/String;)Luf/b;

    move-result-object p0

    const-string v0, "is_network_disgnoStics_shortcut_deleted"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Luf/b;->h(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static h(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "security_pref_data"

    invoke-static {p0, v0}, Luf/b;->d(Landroid/content/Context;Ljava/lang/String;)Luf/b;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_nine"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Luf/b;->h(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static i(Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_1407"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static j(Landroid/content/Context;)J
    .locals 3

    const-string v0, "security_pref_data"

    invoke-static {p0, v0}, Luf/b;->d(Landroid/content/Context;Ljava/lang/String;)Luf/b;

    move-result-object p0

    const-string v0, "pref_key_pm_usagestate_day_tracktime"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Luf/b;->f(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static k(Landroid/content/Context;)I
    .locals 2

    const-string v0, "security_pref_data"

    invoke-static {p0, v0}, Luf/b;->d(Landroid/content/Context;Ljava/lang/String;)Luf/b;

    move-result-object p0

    const-string v0, "pref_key_safe_mode_view_count"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Luf/b;->e(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static l(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "security_pref_data"

    invoke-static {p0, v0}, Luf/b;->d(Landroid/content/Context;Ljava/lang/String;)Luf/b;

    move-result-object p0

    const-string v0, "pref_key_online_service"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Luf/b;->h(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static m(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "security_pref_data"

    invoke-static {p0, v0}, Luf/b;->d(Landroid/content/Context;Ljava/lang/String;)Luf/b;

    move-result-object p0

    const-string v0, "appmanager_ad_request_mode"

    invoke-virtual {p0, v0, p1}, Luf/b;->l(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static n(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "security_pref_data"

    invoke-static {p0, v0}, Luf/b;->d(Landroid/content/Context;Ljava/lang/String;)Luf/b;

    move-result-object p0

    const-string v0, "perf_key_commonly_used_func_list"

    invoke-virtual {p0, v0, p1}, Luf/b;->l(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static o(Landroid/content/Context;J)V
    .locals 1

    const-string v0, "security_pref_data"

    invoke-static {p0, v0}, Luf/b;->d(Landroid/content/Context;Ljava/lang/String;)Luf/b;

    move-result-object p0

    const-string v0, "pref_key_deepclean_roddot_showtime"

    invoke-virtual {p0, v0, p1, p2}, Luf/b;->k(Ljava/lang/String;J)Z

    return-void
.end method

.method public static p(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "security_pref_data"

    invoke-static {p0, v0}, Luf/b;->d(Landroid/content/Context;Ljava/lang/String;)Luf/b;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_1407"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Luf/b;->p(Ljava/lang/String;Z)V

    return-void
.end method

.method public static q(Landroid/content/Context;J)V
    .locals 1

    const-string v0, "security_pref_data"

    invoke-static {p0, v0}, Luf/b;->d(Landroid/content/Context;Ljava/lang/String;)Luf/b;

    move-result-object p0

    const-string v0, "pref_key_last_planned_scan_time"

    invoke-virtual {p0, v0, p1, p2}, Luf/b;->k(Ljava/lang/String;J)Z

    return-void
.end method

.method public static r(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "security_pref_data"

    invoke-static {p0, v0}, Luf/b;->d(Landroid/content/Context;Ljava/lang/String;)Luf/b;

    move-result-object p0

    const-string v0, "key_miui_lite_first_open_game_turbo"

    invoke-virtual {p0, v0, p1}, Luf/b;->p(Ljava/lang/String;Z)V

    return-void
.end method

.method public static s(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "security_pref_data"

    invoke-static {p0, v0}, Luf/b;->d(Landroid/content/Context;Ljava/lang/String;)Luf/b;

    move-result-object p0

    const-string v0, "is_network_disgnoStics_shortcut_deleted"

    invoke-virtual {p0, v0, p1}, Luf/b;->m(Ljava/lang/String;Z)Z

    return-void
.end method

.method public static t(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "security_pref_data"

    invoke-static {p0, v0}, Luf/b;->d(Landroid/content/Context;Ljava/lang/String;)Luf/b;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_nine"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Luf/b;->p(Ljava/lang/String;Z)V

    return-void
.end method

.method public static u(Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_1407"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static v(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "security_pref_data"

    invoke-static {p0, v0}, Luf/b;->d(Landroid/content/Context;Ljava/lang/String;)Luf/b;

    move-result-object p0

    const-string v0, "pref_key_online_service"

    invoke-virtual {p0, v0, p1}, Luf/b;->m(Ljava/lang/String;Z)Z

    return-void
.end method

.method public static w(Landroid/content/Context;J)V
    .locals 1

    const-string v0, "security_pref_data"

    invoke-static {p0, v0}, Luf/b;->d(Landroid/content/Context;Ljava/lang/String;)Luf/b;

    move-result-object p0

    const-string v0, "pref_key_pm_usagestate_day_tracktime"

    invoke-virtual {p0, v0, p1, p2}, Luf/b;->k(Ljava/lang/String;J)Z

    return-void
.end method

.method public static x(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "security_pref_data"

    invoke-static {p0, v0}, Luf/b;->d(Landroid/content/Context;Ljava/lang/String;)Luf/b;

    move-result-object p0

    const-string v0, "pref_key_safe_mode_view_count"

    invoke-virtual {p0, v0, p1}, Luf/b;->j(Ljava/lang/String;I)Z

    return-void
.end method
