.class public La8/o0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static A(J)V
    .locals 1

    const-string v0, "key_last_clean_garbage_time"

    invoke-static {v0, p0, p1}, La8/m0;->h(Ljava/lang/String;J)V

    return-void
.end method

.method public static B(J)V
    .locals 1

    const-string v0, "gamebooster_xunyou_cache_time"

    invoke-static {v0, p0, p1}, Lr4/a;->q(Ljava/lang/String;J)V

    return-void
.end method

.method public static C(J)V
    .locals 1

    const-string v0, "gb_xunyou_voice_clicktime"

    invoke-static {v0, p0, p1}, La8/m0;->h(Ljava/lang/String;J)V

    return-void
.end method

.method public static D(I)V
    .locals 1

    const-string v0, "key_last_clean_garbage_time"

    invoke-static {v0, p0}, La8/m0;->g(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    const-string v0, "gb_game_content"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0"

    goto :goto_0

    :cond_0
    const-string v0, "1"

    :goto_0
    return-object v0
.end method

.method public static b(J)J
    .locals 1

    invoke-static {}, La8/o0;->m()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 p0, 0x0

    invoke-static {p0, p1}, La8/o0;->B(J)V

    return-wide p0

    :cond_0
    const-string v0, "gamebooster_xunyou_cache_time"

    invoke-static {v0, p0, p1}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static c()J
    .locals 3

    const-string v0, "gb_xunyou_voice_clicktime"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, La8/m0;->c(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static d()J
    .locals 4

    const-string v0, "key_last_clean_garbage_time"

    const/4 v1, 0x7

    invoke-static {v0, v1}, La8/m0;->b(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x5265c00

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static e()Z
    .locals 2

    const-string v0, "gb_daily_track"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static f()Z
    .locals 2

    const-string v0, "gb_game_content"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static g()Z
    .locals 2

    const-string v0, "gb_game_first_open_brightness"

    const/4 v1, 0x1

    invoke-static {v0, v1}, La8/m0;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static h()Z
    .locals 2

    const-string v0, "gb_game_brightness"

    const/4 v1, 0x0

    invoke-static {v0, v1}, La8/m0;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static i(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.tencent.tmgp.sgame"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    const-string p0, "gb_game_mode_choose_guide_king"

    :goto_0
    invoke-static {p0, v0}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_0
    const-string p0, "gb_game_mode_choose_guide"

    goto :goto_0
.end method

.method public static j(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.tencent.tmgp.sgame"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    const-string p0, "gb_game_pannel_choose_guide_king"

    :goto_0
    invoke-static {p0, v0}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_0
    const-string p0, "gb_game_mode_pannel_guide"

    goto :goto_0
.end method

.method public static k()Z
    .locals 2

    const-string v0, "gb_game_time"

    const/4 v1, 0x0

    invoke-static {v0, v1}, La8/m0;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static l()Z
    .locals 2

    const-string v0, "gb_game_time_toast"

    const/4 v1, 0x0

    invoke-static {v0, v1}, La8/m0;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static m()Z
    .locals 2

    const-string v0, "gb_key_speed_privacy"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "xunyou_booster_speed"

    invoke-static {v1, v0}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static n()Z
    .locals 2

    const-string v0, "gb_key_voice_privacy"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "xunyou_voice"

    invoke-static {v1, v0}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static o()Z
    .locals 2

    const-string v0, "gb_game_gunsight_toast"

    const/4 v1, 0x0

    invoke-static {v0, v1}, La8/m0;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static p(Z)V
    .locals 1

    const-string v0, "gb_game_content"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static q(Z)V
    .locals 1

    const-string v0, "gb_daily_track"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static r(Z)V
    .locals 1

    const-string v0, "gb_game_first_open_brightness"

    invoke-static {v0, p0}, La8/m0;->f(Ljava/lang/String;Z)V

    return-void
.end method

.method public static s(Z)V
    .locals 1

    const-string v0, "gb_game_brightness"

    invoke-static {v0, p0}, La8/m0;->f(Ljava/lang/String;Z)V

    return-void
.end method

.method public static t(Ljava/lang/String;)V
    .locals 1

    const-string v0, "com.tencent.tmgp.sgame"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string p0, "gb_game_pannel_choose_guide_king"

    goto :goto_0

    :cond_0
    const-string p0, "gb_game_mode_pannel_guide"

    :goto_0
    invoke-static {p0, v0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static u(Ljava/lang/String;)V
    .locals 1

    const-string v0, "com.tencent.tmgp.sgame"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string p0, "gb_game_mode_choose_guide_king"

    goto :goto_0

    :cond_0
    const-string p0, "gb_game_mode_choose_guide"

    :goto_0
    invoke-static {p0, v0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static v(Z)V
    .locals 1

    const-string v0, "gb_game_time"

    invoke-static {v0, p0}, La8/m0;->f(Ljava/lang/String;Z)V

    return-void
.end method

.method public static w(Z)V
    .locals 1

    const-string v0, "gb_game_time_toast"

    invoke-static {v0, p0}, La8/m0;->f(Ljava/lang/String;Z)V

    return-void
.end method

.method public static x(Z)V
    .locals 1

    const-string v0, "xunyou_booster_speed"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    const-string v0, "gb_key_speed_privacy"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static y(Z)V
    .locals 1

    const-string v0, "xunyou_voice"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    const-string v0, "gb_key_voice_privacy"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static z(Z)V
    .locals 1

    const-string v0, "gb_game_gunsight_toast"

    invoke-static {v0, p0}, La8/m0;->f(Ljava/lang/String;Z)V

    return-void
.end method
