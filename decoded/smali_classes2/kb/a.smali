.class public Lkb/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static A(Z)V
    .locals 1

    const-string v0, "key_third_item_default_checked"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static a()I
    .locals 2

    const-string v0, "animation_time"

    const/16 v1, 0xbb8

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static b()J
    .locals 3

    const-string v0, "key_last_clean_memory_time"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static c()J
    .locals 3

    const-string v0, "last_deep_clean_time"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static d()Ljava/lang/String;
    .locals 2

    const-wide/32 v0, 0xf731400

    invoke-static {v0, v1}, Lcom/miui/appmanager/AppManageUtils;->N(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "last_load_period_time"

    invoke-static {v1, v0}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .locals 2

    const-string v0, "key_last_show_dialog_time"

    const-string v1, ""

    invoke-static {v0, v1}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f()J
    .locals 3

    const-string v0, "key_show_media_scan_timeout_time"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static g()J
    .locals 3

    const-string v0, "key_last_show_memory_occupy_notify_time"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static h()I
    .locals 2

    const-string v0, "key_optimize_locked_app_num"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static i()I
    .locals 2

    const-string v0, "key_memory_occupy_notify_percent"

    const/16 v1, 0x50

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static j()Z
    .locals 2

    const-string v0, "key_optimize_usage_tips_shown"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static k()I
    .locals 2

    const-string v0, "show_dialog_period"

    const/16 v1, 0xf

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static l()Z
    .locals 2

    const-string v0, "key_show_cpu_overload_notification_enabled"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static m()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static n()Z
    .locals 2

    const-string v0, "key_system_item_default_checked"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static o()Z
    .locals 2

    const-string v0, "key_third_item_default_checked"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static p(I)V
    .locals 1

    mul-int/lit16 p0, p0, 0x3e8

    const-string v0, "animation_time"

    invoke-static {v0, p0}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public static q(J)V
    .locals 1

    const-string v0, "cloud_sync_time"

    invoke-static {v0, p0, p1}, Lr4/a;->q(Ljava/lang/String;J)V

    return-void
.end method

.method public static r(J)V
    .locals 1

    const-string v0, "key_last_clean_memory_time"

    invoke-static {v0, p0, p1}, Lr4/a;->q(Ljava/lang/String;J)V

    return-void
.end method

.method public static s(J)V
    .locals 1

    const-string v0, "last_deep_clean_time"

    invoke-static {v0, p0, p1}, Lr4/a;->q(Ljava/lang/String;J)V

    return-void
.end method

.method public static t(Ljava/lang/String;)V
    .locals 1

    const-string v0, "last_load_period_time"

    invoke-static {v0, p0}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static u(Ljava/lang/String;)V
    .locals 1

    const-string v0, "key_last_show_dialog_time"

    invoke-static {v0, p0}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static v(I)V
    .locals 1

    const-string v0, "key_optimize_locked_app_num"

    invoke-static {v0, p0}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public static w(I)V
    .locals 1

    const-string v0, "key_memory_occupy_notify_percent"

    invoke-static {v0, p0}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public static x(I)V
    .locals 1

    const-string v0, "show_dialog_period"

    invoke-static {v0, p0}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public static y(Z)V
    .locals 1

    const-string v0, "key_show_cpu_overload_notification_enabled"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static z(Z)V
    .locals 1

    const-string v0, "key_system_item_default_checked"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method
