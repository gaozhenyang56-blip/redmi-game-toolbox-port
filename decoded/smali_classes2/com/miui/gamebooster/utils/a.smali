.class public Lcom/miui/gamebooster/utils/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/utils/a$b;,
        Lcom/miui/gamebooster/utils/a$m;,
        Lcom/miui/gamebooster/utils/a$g;,
        Lcom/miui/gamebooster/utils/a$o;,
        Lcom/miui/gamebooster/utils/a$h;,
        Lcom/miui/gamebooster/utils/a$j;,
        Lcom/miui/gamebooster/utils/a$c;,
        Lcom/miui/gamebooster/utils/a$i;,
        Lcom/miui/gamebooster/utils/a$l;,
        Lcom/miui/gamebooster/utils/a$e;,
        Lcom/miui/gamebooster/utils/a$k;,
        Lcom/miui/gamebooster/utils/a$d;,
        Lcom/miui/gamebooster/utils/a$f;,
        Lcom/miui/gamebooster/utils/a$n;
    }
.end annotation


# direct methods
.method public static A(J)V
    .locals 1

    const-string v0, "game_toggle_pull_notification_bar"

    invoke-static {v0, p0, p1}, Lcom/miui/gamebooster/utils/a$n;->j(Ljava/lang/String;J)V

    return-void
.end method

.method public static A0()V
    .locals 1

    const-string v0, "wonderful_video_page_play_show"

    invoke-static {v0}, Lcom/miui/gamebooster/utils/a$n;->i(Ljava/lang/String;)V

    return-void
.end method

.method public static B(J)V
    .locals 1

    const-string v0, "game_toggle_sign_in"

    invoke-static {v0, p0, p1}, Lcom/miui/gamebooster/utils/a$n;->j(Ljava/lang/String;J)V

    return-void
.end method

.method public static B0()V
    .locals 1

    const-string v0, "wonderful_turbobox_click"

    invoke-static {v0}, Lcom/miui/gamebooster/utils/a$n;->i(Ljava/lang/String;)V

    return-void
.end method

.method public static C(J)V
    .locals 1

    const-string v0, "game_toggle_three_finger"

    invoke-static {v0, p0, p1}, Lcom/miui/gamebooster/utils/a$n;->j(Ljava/lang/String;J)V

    return-void
.end method

.method public static C0()V
    .locals 1

    const-string v0, "wonderful_turbobox_show"

    invoke-static {v0}, Lcom/miui/gamebooster/utils/a$n;->i(Ljava/lang/String;)V

    return-void
.end method

.method public static D(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "game_wlan_open_remind"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static D0(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "game_name"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "voicechanger_upgrade_vip"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static E(J)V
    .locals 3

    const-string v0, "gamebooster"

    const-string v1, "game_games_num_1"

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, p1, v2}, Lcom/miui/analytics/AnalyticsUtil;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    return-void
.end method

.method public static E0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "sound_mode"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "game_name"

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "voicechanger_behavior"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static F(J)V
    .locals 1

    const-string v0, "create_game_icon"

    invoke-static {v0, p0, p1}, Lcom/miui/gamebooster/utils/a$n;->j(Ljava/lang/String;J)V

    return-void
.end method

.method public static F0(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "sound_mode"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "voicechager_mode"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static G(J)V
    .locals 1

    const-string v0, "game_has_open_gamebooster"

    invoke-static {v0, p0, p1}, Lcom/miui/gamebooster/utils/a$n;->j(Ljava/lang/String;J)V

    return-void
.end method

.method public static G0(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "duration"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "voicechanger_day_duration"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, La8/j2;->s(J)V

    return-void
.end method

.method public static H(J)V
    .locals 1

    const-string v0, "game_toggle_total_switch"

    invoke-static {v0, p0, p1}, Lcom/miui/gamebooster/utils/a$n;->j(Ljava/lang/String;J)V

    return-void
.end method

.method public static H0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "sound_mode"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "game_name"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "duration"

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, La8/j2;->l(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "voicechanger_xunyou_duration"

    goto :goto_0

    :cond_0
    const-string p0, "voicechanger_duration"

    :goto_0
    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static I(J)V
    .locals 2

    const-string v0, "gamebooster"

    const-string v1, "game_toggle_network_speed"

    invoke-static {v0, v1, p0, p1}, Lcom/miui/analytics/AnalyticsUtil;->recordNumericEvent(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static I0(I)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "voice_gender"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "voicechanger_gender"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static J(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/gamebooster/utils/a$n;->i(Ljava/lang/String;)V

    return-void
.end method

.method public static K(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "game_toggle_total_history_1"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static L(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/gamebooster/utils/a$n;->i(Ljava/lang/String;)V

    return-void
.end method

.method public static M(J)V
    .locals 1

    const-string v0, "game_toggle_silent_mode"

    invoke-static {v0, p0, p1}, Lcom/miui/gamebooster/utils/a$n;->j(Ljava/lang/String;J)V

    return-void
.end method

.method public static N(J)V
    .locals 1

    const-string v0, "game_toggle_wlan"

    invoke-static {v0, p0, p1}, Lcom/miui/gamebooster/utils/a$n;->j(Ljava/lang/String;J)V

    return-void
.end method

.method public static O(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "wonderful_video_game_pkg"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "wonderful_video_ai_record_close"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static P(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "wonderful_video_game_pkg"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "wonderful_video_ai_record_open"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static Q(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "wonderful_video_game_pkg"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "wonderful_video_game_ai_count"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "wonderful_video_count"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static R(Z)V
    .locals 1

    if-eqz p0, :cond_0

    const-string p0, "voice_xunyou_audition_avalibal"

    goto :goto_0

    :cond_0
    const-string p0, "voice_xunyou_audition_unavalibal"

    :goto_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static S(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p4    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "barrage_notice_speed"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "barrage_notice_font_color"

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "barrage_notice_font_size"

    invoke-virtual {v0, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "if_open_barrage_notice_switch"

    invoke-virtual {v0, p0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_0

    const-string p0, "barrage_notice_app_status"

    invoke-virtual {v0, p0, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string p0, "barrage_notice_set_status"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static T(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0}, La8/j;->g(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const-string v1, "status"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "barrage_notice_click"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static U()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "gamebooster_network_speed_privacy_window_click"

    invoke-static {v1, v0}, Lcom/miui/analytics/AnalyticsUtil;->trackGameBoxEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static V()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, La8/o0;->q(Z)V

    invoke-static {v0}, Li8/c;->a0(Z)V

    invoke-static {}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->w()Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->b0(Z)V

    invoke-static {}, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;->trackDaily()V

    invoke-static {}, Lcom/miui/gamebooster/utils/a;->b0()V

    invoke-static {}, Lcom/miui/gamebooster/utils/a$o;->a()V

    invoke-static {}, Ll5/b;->s()V

    invoke-static {}, Lcom/miui/gamebooster/utils/a;->j0()V

    sget-object v0, Lx5/e;->g:Lx5/e$a;

    invoke-virtual {v0}, Lx5/e$a;->c()V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gamebooster/utils/a$o;->x(Landroid/content/Context;)V

    return-void
.end method

.method public static W(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "wonderful_video_game_pkg"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "wonderful_video_count"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "wonderful_video_del_record"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static X(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "pkg_name"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "game_name"

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "data_id"

    invoke-virtual {v0, p0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "related_data_id"

    invoke-virtual {v0, p0, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "channel_id"

    invoke-virtual {v0, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "retract_way"

    invoke-virtual {v0, p0, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "gameturbo_content_notification_retract"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static Y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "pkg_name"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "game_name"

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "data_id"

    invoke-virtual {v0, p0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "related_data_id"

    invoke-virtual {v0, p0, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "channel_id"

    invoke-virtual {v0, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "gameturbo_content_notification_expose"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static Z()V
    .locals 3

    invoke-static {}, La8/o0;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const-string v2, "game_content_switch"

    invoke-static {v2, v0, v1}, Lcom/miui/gamebooster/utils/a$n;->j(Ljava/lang/String;J)V

    return-void
.end method

.method public static a(J)V
    .locals 1

    const-string v0, "home_show_way"

    invoke-static {v0, p0, p1}, Lcom/miui/gamebooster/utils/a$n;->j(Ljava/lang/String;J)V

    return-void
.end method

.method public static a0(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "game_filter_style"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    const-string p1, "\u5f00\u542f"

    goto :goto_0

    :cond_0
    const-string p1, "\u5173\u95ed"

    :goto_0
    const-string p2, "dark_corner_status"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    int-to-float p1, p3

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string p2, "transparency_number"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "turbo_pkg"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "gamefilter_edit_status"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "game_sign_in_page"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static b0()V
    .locals 5

    invoke-static {}, Lt6/a;->h()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/model/n;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1}, Lcom/miui/gamebooster/model/n;->e()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "item_id"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/miui/gamebooster/model/n;->i()Ljava/lang/String;

    move-result-object v1

    const-string v3, "item_title"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "gameturbo_support_function"

    invoke-static {v1, v2}, Lcom/miui/gamebooster/utils/a$n;->V(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "game_user_current_state"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static c0()V
    .locals 4

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, La8/j0;->g(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    const-string v3, "entertainment_pkg"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "gamebox_app"

    invoke-static {v2, v1}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "game_homepage_action"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static d0(ZLjava/lang/String;I)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_0

    const-string p0, "vertical"

    goto :goto_0

    :cond_0
    const-string p0, "horizontal"

    :goto_0
    const-string v1, "game_orientation"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p1, "unknown"

    :cond_1
    const-string p0, "package"

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "turbo_type"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean p0, Luf/a;->a:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "trackGameToolBoxShow: params="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GameBooster.Analy"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string p0, "game_info"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "game_homepage_sign_in_click"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static e0(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "wonderful_video_game_pkg"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "wonderful_video_manual_record_close"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static f(J)V
    .locals 1

    const-string v0, "game_toggle_antispam_1_fix"

    invoke-static {v0, p0, p1}, Lcom/miui/gamebooster/utils/a$n;->j(Ljava/lang/String;J)V

    return-void
.end method

.method public static f0(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "wonderful_video_game_pkg"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "wonderful_video_manual_record_open"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static g(J)V
    .locals 1

    const-string v0, "game_toggle_anti_false_touch_1_fix"

    invoke-static {v0, p0, p1}, Lcom/miui/gamebooster/utils/a$n;->j(Ljava/lang/String;J)V

    return-void
.end method

.method public static g0(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "wonderful_video_game_pkg"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "wonderful_video_game_manual_record"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static h(J)V
    .locals 1

    const-string v0, "game_toggle_call_auto_handsfree"

    invoke-static {v0, p0, p1}, Lcom/miui/gamebooster/utils/a$n;->j(Ljava/lang/String;J)V

    return-void
.end method

.method public static h0()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "gamebooster_network_speed_privacy_window_expose"

    invoke-static {v1, v0}, Lcom/miui/analytics/AnalyticsUtil;->trackGameBoxEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static i(J)V
    .locals 1

    const-string v0, "game_toggle_cpubooster_1_fix"

    invoke-static {v0, p0, p1}, Lcom/miui/gamebooster/utils/a$n;->j(Ljava/lang/String;J)V

    return-void
.end method

.method public static i0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "wonderful_video_game_pkg"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "wonderful_video_game_page"

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "wonderful_video_play"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static j(J)V
    .locals 1

    const-string v0, "game_toggle_auto_bright"

    invoke-static {v0, p0, p1}, Lcom/miui/gamebooster/utils/a$n;->j(Ljava/lang/String;J)V

    return-void
.end method

.method public static j0()V
    .locals 7

    invoke-static {}, Li7/i;->l()Li7/i;

    move-result-object v0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Li7/i;->o(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li7/a;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iget-object v5, v3, Li7/a;->a:Ljava/lang/String;

    const-string v6, "pkg_name"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v3, v3, Li7/a;->b:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const-string v5, "if_open_automatic_update_switch"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v0, "automatic_update_list"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "game_automatic_update_status"

    invoke-static {v0, v1}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public static k(J)V
    .locals 1

    const-string v0, "game_toggle_gamebox_new"

    invoke-static {v0, p0, p1}, Lcom/miui/gamebooster/utils/a$n;->j(Ljava/lang/String;J)V

    return-void
.end method

.method public static k0(J)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const-string p1, "quick_reply_contact_number"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static l(Ljava/lang/String;J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/gamebooster/utils/a$n;->j(Ljava/lang/String;J)V

    return-void
.end method

.method public static l0(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "package_name"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "quick_reply_add_pkg"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static m(J)V
    .locals 1

    const-string v0, "game_toggle_eye_shield"

    invoke-static {v0, p0, p1}, Lcom/miui/gamebooster/utils/a$n;->j(Ljava/lang/String;J)V

    return-void
.end method

.method public static m0(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lf7/b;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {p0}, Lf7/b;->h(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "quick_reply_toggle_new"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public static n(J)V
    .locals 1

    const-string v0, "game_gwsd"

    invoke-static {v0, p0, p1}, Lcom/miui/gamebooster/utils/a$n;->j(Ljava/lang/String;J)V

    return-void
.end method

.method public static n0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "game_4d_feel_new"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static o(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "game_network_activity_document"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static o0(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    mul-int/lit8 p1, p1, 0x64

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "game_screen_HDR_new"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static p(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "game_network_activity_window"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static p0(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    mul-int/lit8 p1, p1, 0x64

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "game_inhibitory_range_new"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static q(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "home_game_network_activity_window"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static q0(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x2

    if-eq p1, p0, :cond_3

    const/4 p0, 0x3

    if-eq p1, p0, :cond_2

    const/4 p0, 0x4

    if-eq p1, p0, :cond_1

    const/4 p0, 0x5

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string p0, "game_touch_mode_value3"

    goto :goto_0

    :cond_1
    const-string p0, "game_touch_mode_value2"

    goto :goto_0

    :cond_2
    const-string p0, "game_smooth_new"

    goto :goto_0

    :cond_3
    const-string p0, "game_sensitivity_new"

    :goto_0
    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static r(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "game_network_speed_due"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static r0(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "module_click"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "game_gamebox_click_new"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static s(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "home_game_network_speed_due"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static s0(Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "module_click"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    const-string p0, "0"

    goto :goto_0

    :cond_0
    const-string p0, "1"

    :goto_0
    const-string p1, "active_info_show_way"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "game_gamebox_click_new"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static t(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "game_network_speed_free"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static t0(Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "module_show"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    const-string p0, "0"

    goto :goto_0

    :cond_0
    const-string p0, "1"

    :goto_0
    const-string p1, "active_info_show_way"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "gamebooster"

    const-string p1, "game_gamebox_click_new"

    invoke-static {p0, p1, v0}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string p0, "video"

    invoke-static {p0}, Lcom/miui/gamebooster/utils/a;->v0(Ljava/lang/String;)V

    return-void
.end method

.method public static u(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "home_game_network_speed_free"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static u0(J)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const-string p1, "gb_main_stay_time"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "game_network_speed_open"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static v0(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "module_show"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "gb_result_action"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "game_network_speed_overdue"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static w0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "wonderful_video_game_pkg"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "wonderful_video_game_page"

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "wonderful_video_save"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static x(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "home_game_network_speed_overdue"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static x0(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 15

    move-object v1, p0

    const-string v2, "GameBooster.Analy"

    const/4 v3, 0x0

    invoke-static {p0, v3}, La8/v1;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v0, "content://com.miui.securitycenter.gamebooster/gamebooster_analytics"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_0

    invoke-static {v6}, Lbl/e;->a(Ljava/io/Closeable;)V

    return-void

    :cond_0
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "game_toggle_total_history_1"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    const-string v0, "game_games_num_1"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    move v0, v5

    move v7, v0

    :goto_0
    invoke-static {v6}, Lbl/e;->a(Ljava/io/Closeable;)V

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_1a

    :catch_2
    move-exception v0

    move-object v6, v3

    :goto_1
    move v7, v5

    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {v6}, Lbl/e;->a(Ljava/io/Closeable;)V

    move v0, v5

    :goto_3
    invoke-static {p0}, Lm6/a;->e(Landroid/content/Context;)Lm6/a;

    move-result-object v6

    const-wide/16 v8, 0x1

    const-wide/16 v10, 0x0

    if-eqz v4, :cond_2

    move-wide v12, v8

    goto :goto_4

    :cond_2
    move-wide v12, v10

    :goto_4
    invoke-static {v12, v13}, Lcom/miui/gamebooster/utils/a;->F(J)V

    invoke-virtual {v6}, Lm6/a;->x()Z

    move-result v12

    if-eqz v12, :cond_3

    move-wide v12, v8

    goto :goto_5

    :cond_3
    move-wide v12, v10

    :goto_5
    invoke-static {v12, v13}, Lcom/miui/gamebooster/utils/a;->H(J)V

    invoke-virtual {v6}, Lm6/a;->t()Z

    move-result v6

    if-eqz v6, :cond_4

    move-wide v12, v10

    goto :goto_6

    :cond_4
    move-wide v12, v8

    :goto_6
    invoke-static {v12, v13}, Lcom/miui/gamebooster/utils/a;->G(J)V

    if-eqz v7, :cond_5

    const-string v6, "old_user"

    goto :goto_7

    :cond_5
    const-string v6, "new_user"

    :goto_7
    const-string v12, "0_usertype"

    invoke-static {v12, v6}, Lcom/miui/gamebooster/utils/a;->K(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Lm6/a;->O(Z)Z

    move-result v6

    const/4 v12, 0x1

    if-eqz v6, :cond_8

    invoke-static {v12}, Lm6/a;->C(Z)Z

    move-result v6

    if-eqz v6, :cond_6

    move-wide v13, v8

    goto :goto_8

    :cond_6
    move-wide v13, v10

    :goto_8
    invoke-static {v13, v14}, Lcom/miui/gamebooster/utils/a;->I(J)V

    invoke-static {v12}, Lm6/a;->C(Z)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {v5}, Lm6/a;->D(Z)Z

    move-result v6

    if-eqz v6, :cond_7

    move-wide v13, v8

    goto :goto_9

    :cond_7
    move-wide v13, v10

    :goto_9
    invoke-static {v13, v14}, Lcom/miui/gamebooster/utils/a;->N(J)V

    :cond_8
    invoke-static {v12}, Lm6/a;->y(Z)Z

    move-result v6

    if-eqz v6, :cond_9

    move-wide v13, v8

    goto :goto_a

    :cond_9
    move-wide v13, v10

    :goto_a
    invoke-static {v13, v14}, Lcom/miui/gamebooster/utils/a;->h(J)V

    invoke-static {v12}, Lm6/a;->y(Z)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-static {v12}, Lm6/a;->z(Z)Z

    move-result v6

    if-eqz v6, :cond_a

    move-wide v13, v8

    goto :goto_b

    :cond_a
    move-wide v13, v10

    :goto_b
    invoke-static {v13, v14}, Lcom/miui/gamebooster/utils/a;->M(J)V

    :cond_b
    invoke-static {v5}, Lm6/a;->E(Z)Z

    move-result v6

    if-eqz v6, :cond_c

    move-wide v13, v8

    goto :goto_c

    :cond_c
    move-wide v13, v10

    :goto_c
    invoke-static {v13, v14}, Lcom/miui/gamebooster/utils/a;->i(J)V

    invoke-static {v12}, Lm6/a;->k(Z)Z

    move-result v6

    if-eqz v6, :cond_d

    move-wide v13, v8

    goto :goto_d

    :cond_d
    move-wide v13, v10

    :goto_d
    invoke-static {v13, v14}, Lcom/miui/gamebooster/utils/a;->g(J)V

    invoke-static {}, La8/g0;->R()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-static {v5}, Lm6/a;->i(Z)Z

    move-result v6

    goto :goto_e

    :cond_e
    invoke-static {v5}, Lm6/a;->j(Z)Z

    move-result v6

    :goto_e
    int-to-long v13, v6

    invoke-static {v13, v14}, Lcom/miui/gamebooster/utils/a;->f(J)V

    invoke-static {v5}, Lm6/a;->J(Z)Z

    move-result v6

    if-eqz v6, :cond_f

    move-wide v13, v8

    goto :goto_f

    :cond_f
    move-wide v13, v10

    :goto_f
    invoke-static {v13, v14}, Lcom/miui/gamebooster/utils/a;->B(J)V

    invoke-static {}, Lm6/a;->w()Z

    move-result v6

    if-eqz v6, :cond_10

    move-wide v13, v8

    goto :goto_10

    :cond_10
    move-wide v13, v10

    :goto_10
    invoke-static {v13, v14}, Lcom/miui/gamebooster/utils/a;->k(J)V

    invoke-static {v12}, Lm6/a;->u(Z)Z

    move-result v6

    if-eqz v6, :cond_11

    move-wide v12, v8

    goto :goto_11

    :cond_11
    move-wide v12, v10

    :goto_11
    invoke-static {v12, v13}, Lcom/miui/gamebooster/utils/a;->z(J)V

    invoke-static {}, Lm6/a;->n()Z

    move-result v6

    if-eqz v6, :cond_12

    move-wide v12, v8

    goto :goto_12

    :cond_12
    move-wide v12, v10

    :goto_12
    const-string v6, "game_toggle_competition_wifi"

    invoke-static {v6, v12, v13}, Lcom/miui/gamebooster/utils/a;->l(Ljava/lang/String;J)V

    invoke-static {}, Lm6/a;->m()Z

    move-result v6

    if-eqz v6, :cond_13

    move-wide v12, v8

    goto :goto_13

    :cond_13
    move-wide v12, v10

    :goto_13
    const-string v6, "game_toggle_competition_touch"

    invoke-static {v6, v12, v13}, Lcom/miui/gamebooster/utils/a;->l(Ljava/lang/String;J)V

    invoke-static {}, Lm6/a;->l()Z

    move-result v6

    if-eqz v6, :cond_14

    move-wide v12, v8

    goto :goto_14

    :cond_14
    move-wide v12, v10

    :goto_14
    const-string v6, "game_toggle_competition_audio"

    invoke-static {v6, v12, v13}, Lcom/miui/gamebooster/utils/a;->l(Ljava/lang/String;J)V

    invoke-static {v5}, Lm6/a;->F(Z)Z

    move-result v6

    if-eqz v6, :cond_15

    move-wide v12, v8

    goto :goto_15

    :cond_15
    move-wide v12, v10

    :goto_15
    invoke-static {v12, v13}, Lcom/miui/gamebooster/utils/a;->j(J)V

    invoke-static {v5}, Lm6/a;->G(Z)Z

    move-result v6

    if-eqz v6, :cond_16

    move-wide v12, v8

    goto :goto_16

    :cond_16
    move-wide v12, v10

    :goto_16
    invoke-static {v12, v13}, Lcom/miui/gamebooster/utils/a;->m(J)V

    invoke-static {v5}, Lm6/a;->I(Z)Z

    move-result v6

    if-eqz v6, :cond_17

    move-wide v12, v8

    goto :goto_17

    :cond_17
    move-wide v12, v10

    :goto_17
    invoke-static {v12, v13}, Lcom/miui/gamebooster/utils/a;->C(J)V

    invoke-static {v5}, Lm6/a;->H(Z)Z

    move-result v6

    if-eqz v6, :cond_18

    move-wide v12, v8

    goto :goto_18

    :cond_18
    move-wide v12, v10

    :goto_18
    invoke-static {v12, v13}, Lcom/miui/gamebooster/utils/a;->A(J)V

    invoke-static {}, Lm6/a;->d()I

    move-result v6

    int-to-long v12, v6

    invoke-static {v12, v13}, Lcom/miui/gamebooster/utils/a;->a(J)V

    invoke-static {}, La8/g0;->n0()Z

    move-result v6

    if-nez v6, :cond_19

    invoke-static {}, La8/g0;->j0()Z

    move-result v6

    if-eqz v6, :cond_1b

    :cond_19
    invoke-static {v5}, Lm6/a;->v(Z)Z

    move-result v5

    if-eqz v5, :cond_1a

    goto :goto_19

    :cond_1a
    move-wide v8, v10

    :goto_19
    invoke-static {v8, v9}, Lcom/miui/gamebooster/utils/a;->n(J)V

    :cond_1b
    int-to-long v5, v0

    invoke-static {v5, v6}, Lcom/miui/gamebooster/utils/a;->E(J)V

    invoke-static {p0}, Lcom/miui/gamebooster/utils/a;->m0(Landroid/content/Context;)V

    :try_start_4
    invoke-static {p0}, Lm7/a;->m(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_1c

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v5, v6}, Lcom/miui/gamebooster/utils/a;->k0(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_1c
    invoke-static {v3}, Lbl/e;->a(Ljava/io/Closeable;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, La8/j2;->c()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/gamebooster/utils/a;->G0(Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/gamebooster/utils/a;->c0()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "t:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " th:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " p: num:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/gamebooster/utils/a$h;->e()V

    invoke-static {}, Lcom/miui/gamebooster/utils/a$j;->a()V

    invoke-static/range {p1 .. p1}, Lcom/miui/gamebooster/utils/a$d;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/gamebooster/utils/a$k;->a()V

    invoke-static {}, Lcom/miui/gamebooster/utils/a$e;->a()V

    invoke-static {}, Lcom/miui/gamebooster/utils/a$l;->a()V

    invoke-static {}, Lcom/miui/gamebooster/utils/a$i;->a()V

    invoke-static {}, Lcom/miui/gamebooster/utils/a;->Z()V

    invoke-static {}, Lw5/i;->a()V

    invoke-static {p0}, Lcom/miui/gamebooster/utils/a$c;->a(Landroid/content/Context;)V

    invoke-static {}, La8/v;->f()V

    move-object/from16 v2, p1

    invoke-static {v2, p0}, Lcom/miui/gamebooster/utils/a$g;->a(Ljava/lang/String;Landroid/content/Context;)V

    invoke-static/range {p1 .. p2}, Lcom/miui/gamebooster/utils/a$m;->a(Ljava/lang/String;I)V

    invoke-static/range {p0 .. p2}, Lcom/miui/gamebooster/utils/a$b;->b(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-static {}, Lcom/miui/gamebooster/utils/a$b;->a()V

    return-void

    :catchall_1
    move-exception v0

    invoke-static {v3}, Lbl/e;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_2
    move-exception v0

    move-object v3, v6

    :goto_1a
    invoke-static {v3}, Lbl/e;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static y(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "game_noti_show_click"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static y0()V
    .locals 1

    const-string v0, "wonderful_video_main_page_show"

    invoke-static {v0}, Lcom/miui/gamebooster/utils/a$n;->i(Ljava/lang/String;)V

    return-void
.end method

.method public static z(J)V
    .locals 1

    const-string v0, "game_toggle_optimization_new"

    invoke-static {v0, p0, p1}, Lcom/miui/gamebooster/utils/a$n;->j(Ljava/lang/String;J)V

    return-void
.end method

.method public static z0()V
    .locals 1

    const-string v0, "wonderful_video_page_show"

    invoke-static {v0}, Lcom/miui/gamebooster/utils/a$n;->i(Ljava/lang/String;)V

    return-void
.end method
