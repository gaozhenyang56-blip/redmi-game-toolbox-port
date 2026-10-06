.class public Lef/x;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static A(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_launcher_cleaner_first"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static B(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p0}, La8/x;->b(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "key_garbage_danger_in_flag"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-eqz v0, :cond_0

    invoke-static {p0, v2, v1}, Lam/a;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_0
    invoke-static {p0, v2, v1}, Lam/b;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static C(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_homelist_cache_deleted"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public static D(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_launcher_loading_finished"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public static E(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "com.android.settings"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lx4/t;->v(Ljava/lang/String;I)Z

    move-result v0

    const-string v2, "key_is_locked_application"

    invoke-static {p0, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public static F(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "optimizer_scan_cloud"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lam/a;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static G()Z
    .locals 2

    const-string v0, "pref_key_predict_widget_enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static H(Landroid/content/ContentResolver;)Z
    .locals 2

    invoke-static {}, Lcom/miui/common/a;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "extra_show_security_notification"

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static I()Z
    .locals 2

    const-string v0, "show_auto_task_desktop_icon_dialog"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static J(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p0}, La8/x;->b(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "key_notification_wechat_size_need"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-eqz v0, :cond_0

    invoke-static {p0, v2, v1}, Lam/a;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_0
    invoke-static {p0, v2, v1}, Lam/b;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static K(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p0}, La8/x;->b(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "key_notification_whatsapp_clean_need"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-eqz v0, :cond_0

    invoke-static {p0, v2, v1}, Lam/a;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_0
    invoke-static {p0, v2, v1}, Lam/b;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static L(Z)V
    .locals 1

    const-string v0, "pref_key_ai_enable"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static M(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pref_key_ai_labels"

    invoke-static {v0, p0}, Lr4/a;->s(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static N(Z)V
    .locals 1

    const-string v0, "pref_key_agree_ai_predict_privacy"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static O(Landroid/content/Context;Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_app_lock_state_data_migrated"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static P(Landroid/content/Context;Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_cleanup_db_auto_update_enabled"

    invoke-static {p0, v0, p1}, Lam/a;->g(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    return-void
.end method

.method public static Q(Landroid/content/Context;ZJ)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_notificaiton_general_clean_need"

    invoke-static {v0, v1, p1}, Lam/a;->g(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "key_notificaiton_general_clean_size"

    invoke-static {v0, v2, p2, p3}, Lam/a;->i(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, p1}, Lam/b;->e(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, p2, p3}, Lam/b;->g(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    return-void
.end method

.method public static R(Z)V
    .locals 2

    const-string v0, "KEY_SECURITY_CENTER_ALLOW_CONNECT_NETWORK"

    const-string v1, "android.provider.MiuiSettings$System"

    invoke-static {v1, v0}, La8/c0;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz p0, :cond_0

    const-string v1, "true"

    goto :goto_0

    :cond_0
    const-string v1, "false"

    :goto_0
    invoke-static {v0, v1}, Lx4/v1;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/common/e;->c()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.miui.securitycenter"

    invoke-static {v0, v1, p0}, La8/c0;->g(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_1
    invoke-static {p0}, Lef/x;->a(Z)V

    return-void
.end method

.method public static S(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "KEY_FBO_RESULT_PKG_LIST"

    invoke-static {v1, v0}, Lr4/a;->m(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v1, v0}, Lr4/a;->s(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static T(Landroid/content/Context;Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_launcher_cleaner_first"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static U(Landroid/content/Context;Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_homelist_cache_deleted"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static V(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pref_key_ignore_suggest_data"

    invoke-static {v0, p0}, Lr4/a;->s(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static W(Landroid/content/Context;Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_is_in_miui_sos_mode"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static final X(Z)V
    .locals 1

    const-string v0, "key_is_deleted_privacy_file"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static Y(J)V
    .locals 1

    const-string v0, "key_last_get_wn_check_result_time"

    invoke-static {v0, p0, p1}, Lr4/a;->q(Ljava/lang/String;J)V

    return-void
.end method

.method public static Z(J)V
    .locals 1

    const-string v0, "key_last_pre_scan_time"

    invoke-static {v0, p0, p1}, Lr4/a;->q(Ljava/lang/String;J)V

    return-void
.end method

.method private static a(Z)V
    .locals 3

    invoke-static {}, Lcom/miui/common/e;->c()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "action_update_sc_network_allow"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "extra_network_status"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static a0(J)V
    .locals 1

    const-string v0, "key_last_upload_switch_analytics_time"

    invoke-static {v0, p0, p1}, Lr4/a;->q(Ljava/lang/String;J)V

    return-void
.end method

.method public static b()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "pref_key_ai_labels"

    invoke-static {v1, v0}, Lr4/a;->m(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static b0(Landroid/content/Context;Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_launcher_loading_finished"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static c(Landroid/content/Context;)J
    .locals 4

    invoke-static {p0}, La8/x;->b(Landroid/content/Context;)Z

    move-result v0

    const-wide/16 v1, 0x0

    const-string v3, "key_notificaiton_general_clean_size"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-eqz v0, :cond_0

    invoke-static {p0, v3, v1, v2}, Lam/a;->d(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-static {p0, v3, v1, v2}, Lam/b;->c(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static c0(Landroid/content/Context;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_minus_score_in_security_exclude_virus"

    invoke-static {p0, v0, p1}, Lam/a;->h(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lef/v;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d0(Landroid/content/Context;Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "optimizer_scan_cloud"

    invoke-static {p0, v0, p1}, Lam/a;->g(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    return-void
.end method

.method public static e(Landroid/content/Context;)J
    .locals 4

    invoke-static {p0}, La8/x;->b(Landroid/content/Context;)Z

    move-result v0

    const-wide/16 v1, 0x0

    const-string v3, "key_garbage_danger_in_size"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-eqz v0, :cond_0

    invoke-static {p0, v3, v1, v2}, Lam/a;->d(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-static {p0, v3, v1, v2}, Lam/b;->c(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static e0(Ljava/lang/String;)V
    .locals 1

    const-string v0, "pref_key_pre_input_method"

    invoke-static {v0, p0}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static f(Landroid/content/Context;)J
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_garbage_normal_size"

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static f0(Z)V
    .locals 1

    const-string v0, "pref_key_predict_widget_enable"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static g()Z
    .locals 2

    const-string v0, "key_risk_application_warning_enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static g0(Z)V
    .locals 1

    const-string v0, "pref_key_privacy_uploaded"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static h()Z
    .locals 2

    const-string v0, "key_risk_sms_and_call_pay_warn_enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static h0(Z)V
    .locals 1

    const-string v0, "key_risk_application_warning_enable"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static i()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "pref_key_ignore_suggest_data"

    invoke-static {v1, v0}, Lr4/a;->m(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static i0(Z)V
    .locals 1

    const-string v0, "key_risk_sms_and_call_pay_warn_enable"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static final j()Z
    .locals 2

    const-string v0, "key_is_deleted_privacy_file"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static j0(Landroid/content/Context;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_score_in_security"

    invoke-static {p0, v0, p1}, Lam/a;->h(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static k()J
    .locals 3

    const-string v0, "key_last_pre_scan_time"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static k0(Landroid/content/ContentResolver;Z)V
    .locals 8

    :try_start_0
    const-string v0, "android.provider.MiuiSettings$System"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "putBoolean"

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/ContentResolver;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    const-string p0, "extra_show_security_notification"

    aput-object p0, v2, v6

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v2, v7

    invoke-static {v0, v1, v3, v2}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Preferences"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static l()J
    .locals 3

    const-string v0, "key_last_upload_switch_analytics_time"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static l0(Landroid/content/Context;Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Lef/x;->k0(Landroid/content/ContentResolver;Z)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/securitycenter/service/NotificationService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :goto_0
    return-void
.end method

.method public static m(Landroid/content/Context;)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_minus_score_in_security_exclude_virus"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lam/a;->c(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static m0(Z)V
    .locals 1

    const-string v0, "show_auto_task_desktop_icon_dialog"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static n()Ljava/lang/String;
    .locals 2

    const-string v0, "pref_key_pre_input_method"

    const-string v1, ""

    invoke-static {v0, v1}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static n0(J)V
    .locals 1

    const-string v0, "key_start_device_time_for_gms"

    invoke-static {v0, p0, p1}, Lr4/a;->q(Ljava/lang/String;J)V

    return-void
.end method

.method public static o()Z
    .locals 2

    const-string v0, "pref_key_privacy_uploaded"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static o0(J)V
    .locals 1

    const-string v0, "key_trigger_clean_master_auto_clean_time"

    invoke-static {v0, p0, p1}, Lr4/a;->q(Ljava/lang/String;J)V

    return-void
.end method

.method public static p(Landroid/content/Context;)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_score_in_security"

    const/16 v1, 0x64

    invoke-static {p0, v0, v1}, Lam/a;->c(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static p0(Landroid/content/Context;ZJ)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_notification_wechat_size_need"

    invoke-static {v0, v1, p1}, Lam/a;->g(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "key_notification_wechat_size"

    invoke-static {v0, v2, p2, p3}, Lam/a;->i(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, p1}, Lam/b;->e(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, p2, p3}, Lam/b;->g(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    return-void
.end method

.method public static q()J
    .locals 3

    const-string v0, "key_start_device_time_for_gms"

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static q0(Landroid/content/Context;ZJ)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_notification_whatsapp_clean_need"

    invoke-static {v0, v1, p1}, Lam/a;->g(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "key_notificaiton_whatsapp_clean_size"

    invoke-static {v0, v2, p2, p3}, Lam/a;->i(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, p1}, Lam/b;->e(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, p2, p3}, Lam/b;->g(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    return-void
.end method

.method public static r()J
    .locals 3

    const-string v0, "key_trigger_clean_master_auto_clean_time"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static s(Landroid/content/Context;)J
    .locals 4

    invoke-static {p0}, La8/x;->b(Landroid/content/Context;)Z

    move-result v0

    const-wide/16 v1, 0x0

    const-string v3, "key_notification_wechat_size"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-eqz v0, :cond_0

    invoke-static {p0, v3, v1, v2}, Lam/a;->d(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-static {p0, v3, v1, v2}, Lam/b;->c(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static t(Landroid/content/Context;)J
    .locals 4

    invoke-static {p0}, La8/x;->b(Landroid/content/Context;)Z

    move-result v0

    const-wide/16 v1, 0x0

    const-string v3, "key_notificaiton_whatsapp_clean_size"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-eqz v0, :cond_0

    invoke-static {p0, v3, v1, v2}, Lam/a;->d(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-static {p0, v3, v1, v2}, Lam/b;->c(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static u()Z
    .locals 2

    const-string v0, "pref_key_ai_enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static v()Z
    .locals 2

    const-string v0, "pref_key_agree_ai_predict_privacy"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static w(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_app_lock_state_data_migrated"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public static x(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_cleanup_db_auto_update_enabled"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lam/a;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static y(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p0}, La8/x;->b(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "key_notificaiton_general_clean_need"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-eqz v0, :cond_0

    invoke-static {p0, v2, v1}, Lam/a;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_0
    invoke-static {p0, v2, v1}, Lam/b;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static z()Z
    .locals 1

    invoke-static {}, Lx4/l1;->b()Z

    move-result v0

    return v0
.end method
