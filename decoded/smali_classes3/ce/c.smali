.class public Lce/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Ljava/lang/String;
    .locals 2

    const-string v0, "key_charging_hot_warning_time"

    const-string v1, ""

    invoke-static {v0, v1}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b()J
    .locals 3

    const-string v0, "key_charging_hot_warning_time_long"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static c()J
    .locals 3

    const-string v0, "key_port_show_time"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static d()I
    .locals 2

    const-string v0, "key_port_damp_day_count"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static e()I
    .locals 2

    const-string v0, "key_charging_hot_warning_day_times"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static f()I
    .locals 2

    const-string v0, "key_power_saver_start_percent"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static g()I
    .locals 2

    const-string v0, "key_show_save_mode_exit_notify_count"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static h(Ljava/lang/String;)V
    .locals 1

    const-string v0, "key_charging_hot_warning_time"

    invoke-static {v0, p0}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static i(J)V
    .locals 1

    const-string v0, "key_charging_hot_warning_time_long"

    invoke-static {v0, p0, p1}, Lr4/a;->q(Ljava/lang/String;J)V

    return-void
.end method

.method public static j(J)V
    .locals 1

    const-string v0, "key_port_show_time"

    invoke-static {v0, p0, p1}, Lr4/a;->q(Ljava/lang/String;J)V

    return-void
.end method

.method public static k(I)V
    .locals 1

    const-string v0, "key_port_damp_day_count"

    invoke-static {v0, p0}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public static l(I)V
    .locals 1

    const-string v0, "key_charging_hot_warning_day_times"

    invoke-static {v0, p0}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public static m(I)V
    .locals 1

    const-string v0, "key_power_saver_start_percent"

    invoke-static {v0, p0}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public static n(I)V
    .locals 1

    const-string v0, "key_show_save_mode_exit_notify_count"

    invoke-static {v0, p0}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method
