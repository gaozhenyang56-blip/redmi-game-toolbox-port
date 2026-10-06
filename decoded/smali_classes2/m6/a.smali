.class public Lm6/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lm6/a;

.field private static c:Luf/b;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lm6/a;->a:Landroid/content/Context;

    const-string v0, "common"

    invoke-static {p1, v0}, Luf/b;->d(Landroid/content/Context;Ljava/lang/String;)Luf/b;

    move-result-object p1

    sput-object p1, Lm6/a;->c:Luf/b;

    return-void
.end method

.method public static A()Z
    .locals 2

    const-string v0, "pref_first_jobservice_load_game"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static A0()V
    .locals 2

    const-string v0, "pref_smart_five_g_first_show"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static B(Z)Z
    .locals 1

    const-string v0, "pref_function_connect_status"

    invoke-static {v0, p0}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static B0(Z)V
    .locals 1

    const-string v0, "gb_storage_app_status"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static C(Z)Z
    .locals 1

    const-string v0, "pref_net_booster_status"

    invoke-static {v0, p0}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static C0(Z)V
    .locals 1

    const-string v0, "pref_wlan_change_protection"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static D(Z)Z
    .locals 1

    const-string v0, "pref_net_booster_wifi_status"

    invoke-static {v0, p0}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static D0(Z)V
    .locals 1

    const-string v0, "pref_xunyou_user"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    const-string v0, "xunyou_alert_dialog_overdue_gift_count"

    invoke-static {v0, p0}, Lr4/a;->p(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static E(Z)Z
    .locals 2

    sget-object v0, Lm6/a;->c:Luf/b;

    const-string v1, "pref_game_performance_model_state"

    invoke-virtual {v0, v1, p0}, Luf/b;->h(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {v1, p0}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static F(Z)Z
    .locals 1

    const-string v0, "pref_function_shiled_auto_bright"

    invoke-static {v0, p0}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static G(Z)Z
    .locals 1

    const-string v0, "pref_function_shiled_eye_shield"

    invoke-static {v0, p0}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static H(Z)Z
    .locals 1

    const-string v0, "pref_function_shiled_pull_notification_bar"

    invoke-static {v0, p0}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static I(Z)Z
    .locals 1

    const-string v0, "pref_function_shiled_three_finger"

    invoke-static {v0, p0}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static J(Z)Z
    .locals 1

    const-string v0, "pref_sign_notification_status"

    invoke-static {v0, p0}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static K(Z)Z
    .locals 1

    const-string v0, "pref_gamebooster_slip_status"

    invoke-static {v0, p0}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static L()Z
    .locals 2

    const-string v0, "pref_smart_five_g_first_show"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static M()Z
    .locals 2

    const-string v0, "gb_storage_app_status"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static N(Z)Z
    .locals 1

    const-string v0, "pref_video_booster_status"

    invoke-static {v0, p0}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static O(Z)Z
    .locals 1

    const-string v0, "pref_xunyou_user"

    invoke-static {v0, p0}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static P(Z)V
    .locals 1

    const-string v0, "pref_anti_disturb_msg_mode"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static Q(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lm6/a;->N(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "pref_video_anti_disturb_msg_mode"

    goto :goto_0

    :cond_0
    const-string v0, "pref_anti_disturb_msg_quick_answer_mode"

    :goto_0
    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static R(Z)V
    .locals 1

    const-string v0, "pref_anti_keyboard"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static S(Z)V
    .locals 1

    const-string v0, "pref_app_self_start_state"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static T(Z)V
    .locals 1

    const-string v0, "pref_gamebooster_competition_audio"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    invoke-static {}, La8/g0;->V()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lv6/a;->c(Z)V

    :cond_0
    return-void
.end method

.method public static U(Z)V
    .locals 1

    const-string v0, "pref_gamebooster_competition_touch"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static V(Z)V
    .locals 1

    const-string v0, "pref_gamebooster_competition_wifi"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static W(Z)V
    .locals 1

    const-string v0, "pref_gamebooster_databooster"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static X(Landroid/content/Context;Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    const-string v1, "gb_disable_ndds"

    invoke-static {p0, v1, p1, v0}, La8/c0;->i(Landroid/content/ContentResolver;Ljava/lang/String;II)V

    return-void
.end method

.method public static Y(Z)V
    .locals 1

    const-string v0, "pref_function_shiled_voicetrigger"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static Z(Z)V
    .locals 1

    const-string v0, "flag_gamebooster_signed_first_click"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method private static a(Z)Z
    .locals 1

    const-string v0, "pref_gamebooster_competition"

    invoke-static {v0, p0}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static b()Z
    .locals 2

    const-string v0, "gb_first_window_has_create_icon"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static b0(Z)V
    .locals 1

    const-string v0, "pref_first_open_game_booster"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static c(I)I
    .locals 1

    const-string v0, "pref_function_shiled_num"

    invoke-static {v0, p0}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static c0(Z)V
    .locals 1

    const-string v0, "gb_first_window_has_create_icon"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static d()I
    .locals 2

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const-string v1, "pref_gamebooster_show_way"

    invoke-static {v1, v0}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static d0(Z)V
    .locals 1

    const-string v0, "pref_gamebooster_function_shield"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static declared-synchronized e(Landroid/content/Context;)Lm6/a;
    .locals 2

    const-class v0, Lm6/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lm6/a;->b:Lm6/a;

    if-nez v1, :cond_0

    new-instance v1, Lm6/a;

    invoke-direct {v1, p0}, Lm6/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lm6/a;->b:Lm6/a;

    :cond_0
    sget-object p0, Lm6/a;->b:Lm6/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static e0(I)V
    .locals 1

    const-string v0, "pref_function_shiled_num"

    invoke-static {v0, p0}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public static f()Z
    .locals 2

    const-string v0, "pref_smart_five_g_cloud_dialog_status"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static f0(Z)V
    .locals 1

    const-string v0, "pref_function_gwsd_status"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static g()Z
    .locals 2

    const-string v0, "pref_smart_five_g_cloud_status"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static g0(I)V
    .locals 1

    const-string v0, "pref_gamebooster_show_way"

    invoke-static {v0, p0}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public static h()Z
    .locals 2

    const-string v0, "pref_smart_five_g"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static h0(Z)V
    .locals 1

    const-string v0, "pref_gamebox_turbo"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static i(Z)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lm6/a;->N(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "pref_video_anti_disturb_msg_mode"

    :goto_0
    invoke-static {v0, p0}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "pref_anti_disturb_msg_quick_answer_mode"

    goto :goto_0
.end method

.method public static i0(Z)V
    .locals 2

    const-string v0, "pref_open_game_booster"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    return-void
.end method

.method public static j(Z)Z
    .locals 2

    sget-object v0, Lm6/a;->c:Luf/b;

    const-string v1, "pref_anti_disturb_msg_mode"

    invoke-virtual {v0, v1, p0}, Luf/b;->h(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {v1, p0}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static j0(Z)V
    .locals 1

    const-string v0, "pref_handsfree_status"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static k(Z)Z
    .locals 2

    sget-object v0, Lm6/a;->c:Luf/b;

    const-string v1, "pref_anti_keyboard"

    invoke-virtual {v0, v1, p0}, Luf/b;->h(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {v1, p0}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static k0(Z)V
    .locals 1

    const-string v0, "pref_handsfree_mute_status"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static l()Z
    .locals 3

    invoke-static {}, La8/g0;->V()Z

    move-result v0

    const-string v1, "pref_gamebooster_competition_audio"

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-static {v2}, Lm6/a;->a(Z)Z

    move-result v0

    invoke-static {v1, v0}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lv6/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2

    :cond_2
    invoke-static {v2}, Lm6/a;->a(Z)Z

    move-result v0

    invoke-static {v1, v0}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static l0(Z)V
    .locals 1

    const-string v0, "pref_first_jobservice_load_game"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static m()Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Lm6/a;->a(Z)Z

    move-result v0

    const-string v1, "pref_gamebooster_competition_touch"

    invoke-static {v1, v0}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static m0(Z)V
    .locals 1

    const-string v0, "pref_function_connect_status"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static n()Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Lm6/a;->a(Z)Z

    move-result v0

    const-string v1, "pref_gamebooster_competition_wifi"

    invoke-static {v1, v0}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static n0(Z)V
    .locals 1

    const-string v0, "pref_net_booster_status"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static o(Z)Z
    .locals 1

    const-string v0, "pref_gamebooster_databooster"

    invoke-static {v0, p0}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static o0(Z)V
    .locals 1

    const-string v0, "pref_net_booster_wifi_status"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static p(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "gb_disable_ndds"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, La8/c0;->h(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public static p0(Z)V
    .locals 1

    const-string v0, "pref_game_net_priority_state"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static q(Z)Z
    .locals 1

    const-string v0, "pref_function_shiled_voicetrigger"

    invoke-static {v0, p0}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static q0(Z)V
    .locals 1

    const-string v0, "pref_game_performance_model_state"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static r(Z)Z
    .locals 1

    const-string v0, "flag_gamebooster_signed_first_click"

    invoke-static {v0, p0}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static r0(Z)V
    .locals 1

    const-string v0, "pref_function_shiled_auto_bright"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static s()Z
    .locals 2

    const-string v0, "has_open_first_window"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static s0(Z)V
    .locals 1

    const-string v0, "pref_function_shiled_eye_shield"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static t0(Z)V
    .locals 1

    const-string v0, "pref_function_shiled_pull_notification_bar"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static u(Z)Z
    .locals 1

    const-string v0, "pref_gamebooster_function_shield"

    invoke-static {v0, p0}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static u0(Z)V
    .locals 1

    const-string v0, "pref_function_shiled_three_finger"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static v(Z)Z
    .locals 1

    const-string v0, "pref_function_gwsd_status"

    invoke-static {v0, p0}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static v0(Z)V
    .locals 1

    const-string v0, "pref_sign_notification_status"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static w()Z
    .locals 2

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lm6/a;->e(Landroid/content/Context;)Lm6/a;

    move-result-object v0

    invoke-virtual {v0}, Lm6/a;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const-string v1, "pref_gamebox_turbo"

    invoke-static {v1, v0}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static w0(Z)V
    .locals 1

    const-string v0, "pref_gamebooster_slip_status"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static x0(Z)V
    .locals 1

    const-string v0, "pref_smart_five_g_cloud_dialog_status"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static y(Z)Z
    .locals 1

    const-string v0, "pref_handsfree_status"

    invoke-static {v0, p0}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static y0(Z)V
    .locals 1

    const-string v0, "pref_smart_five_g_cloud_status"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static z(Z)Z
    .locals 1

    const-string v0, "pref_handsfree_mute_status"

    invoke-static {v0, p0}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static z0(Z)V
    .locals 1

    const-string v0, "pref_smart_five_g"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public a0()V
    .locals 2

    const-string v0, "has_open_first_window"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public t()Z
    .locals 3

    sget-object v0, Lm6/a;->c:Luf/b;

    const-string v1, "pref_first_open_game_booster"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Luf/b;->h(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v1, v0}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public x()Z
    .locals 3

    const/4 v0, 0x1

    sget-object v1, Lm6/a;->c:Luf/b;

    const-string v2, "pref_open_game_booster"

    invoke-virtual {v1, v2, v0}, Luf/b;->h(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v2, v0}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
