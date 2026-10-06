.class public Lqf/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqf/c$a0;,
        Lqf/c$y;,
        Lqf/c$z;,
        Lqf/c$x;
    }
.end annotation


# direct methods
.method public static A(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "module_click"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "firstaidkit_resultpage_function"

    invoke-static {p0, v0}, Lqf/c;->u(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static A0(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "module_show"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "slide_down_action_news"

    invoke-static {p0, v0}, Lqf/c;->u(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static B(Lcom/miui/common/card/models/BaseCardModel;)V
    .locals 1

    new-instance v0, Lqf/c$r;

    invoke-direct {v0, p0}, Lqf/c$r;-><init>(Lcom/miui/common/card/models/BaseCardModel;)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static B0(Landroid/content/Context;Lcom/miui/common/card/models/BaseCardModel;)V
    .locals 1

    new-instance v0, Lqf/c$y;

    invoke-direct {v0, p0, p1}, Lqf/c$y;-><init>(Landroid/content/Context;Lcom/miui/common/card/models/BaseCardModel;)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static C()V
    .locals 1

    new-instance v0, Lqf/c$p;

    invoke-direct {v0}, Lqf/c$p;-><init>()V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static C0()V
    .locals 3

    const-string v0, "wechat"

    const-string v1, "alert_notification_new"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static D()V
    .locals 1

    new-instance v0, Lqf/c$q;

    invoke-direct {v0}, Lqf/c$q;-><init>()V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static D0()V
    .locals 3

    const-string v0, "whatsapp"

    const-string v1, "size_notificaiton"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static E(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "module_click"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "first_aid_news"

    invoke-static {p0, v0}, Lqf/c;->u(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static E0(Z)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "module_click"

    if-eqz p0, :cond_0

    const-string p0, "close_network_dialog_ok"

    goto :goto_0

    :cond_0
    const-string p0, "close_network_dialog_cancel"

    :goto_0
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "close_network_dialog"

    invoke-static {p0, v0}, Lqf/c;->u(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static F(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lqf/c;->t(Ljava/lang/String;)V

    return-void
.end method

.method public static F0()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "module_show"

    const-string v2, "close_network_dialog_show"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "close_network_dialog"

    invoke-static {v1, v0}, Lqf/c;->u(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static G(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lqf/c$x;

    const-string v1, "game_show"

    invoke-direct {v0, p0, v1}, Lqf/c$x;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static G0()V
    .locals 1

    const-string v0, "commonly_used_card_show"

    invoke-static {v0}, Lqf/c;->t(Ljava/lang/String;)V

    return-void
.end method

.method public static H(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lqf/c$x;

    const-string v1, "game_click"

    invoke-direct {v0, p0, v1}, Lqf/c$x;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static H0()V
    .locals 1

    const-string v0, "commonly_used_card_edit_click"

    invoke-static {v0}, Lqf/c;->t(Ljava/lang/String;)V

    return-void
.end method

.method public static I(Ljava/lang/String;)V
    .locals 2

    const-string v0, "main"

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static I0(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    const-string v1, "commonly_used_func_name"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "commonly_used_func_position"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "commonly_used_func_id"

    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "commonly_used_card_function_click"

    invoke-static {p0, v0}, Lqf/c;->u(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static J(Ljava/lang/String;)V
    .locals 2

    const-string v0, "securitycenter_grid6red_state"

    const-string v1, "module_click"

    invoke-static {v0, v1, p0}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static J0()V
    .locals 1

    const-string v0, "enter_pm_by_slide_up"

    invoke-static {v0}, Lqf/c;->t(Ljava/lang/String;)V

    return-void
.end method

.method public static K(Ljava/lang/String;)V
    .locals 2

    const-string v0, "securitycenter_grid6red_state"

    const-string v1, "module_show"

    invoke-static {v0, v1, p0}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static K0(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const-string v1, "interrupt_type"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "full_screen_interrupt"

    invoke-static {p0, v0}, Lqf/c;->u(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static L()V
    .locals 1

    new-instance v0, Lqf/c$t;

    invoke-direct {v0}, Lqf/c$t;-><init>()V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static L0(ZZ)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "module_click"

    if-eqz p1, :cond_0

    const-string p1, "global_gdpr_dialog_click_ok"

    goto :goto_0

    :cond_0
    const-string p1, "global_gdpr_dialog_click_cancel"

    :goto_0
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p0, :cond_1

    const-string p0, "global_gdpr_main_dialog"

    goto :goto_1

    :cond_1
    const-string p0, "global_gdpr_other_dialog"

    :goto_1
    invoke-static {p0, v0}, Lqf/c;->u(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static M(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lqf/c$w;

    invoke-direct {v0, p0}, Lqf/c$w;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static M0(Z)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "module_show"

    const-string v2, "global_gdpr_dialog_show"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p0, :cond_0

    const-string p0, "global_gdpr_main_dialog"

    goto :goto_0

    :cond_0
    const-string p0, "global_gdpr_other_dialog"

    :goto_0
    invoke-static {p0, v0}, Lqf/c;->u(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static N(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "enter_way"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "security_scan_channel"

    invoke-static {p0, v0}, Lqf/c;->u(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static N0()V
    .locals 1

    const-string v0, "home_page_bottom_slide_up"

    invoke-static {v0}, Lqf/c;->t(Ljava/lang/String;)V

    return-void
.end method

.method public static O()V
    .locals 1

    new-instance v0, Lqf/c$v;

    invoke-direct {v0}, Lqf/c$v;-><init>()V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static O0()V
    .locals 1

    const-string v0, "home_page_normal_slide_up"

    invoke-static {v0}, Lqf/c;->t(Ljava/lang/String;)V

    return-void
.end method

.method public static P()V
    .locals 1

    new-instance v0, Lqf/c$k;

    invoke-direct {v0}, Lqf/c$k;-><init>()V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static P0(Ljava/lang/String;ZJ)V
    .locals 2

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const-string v1, "incremental_scan_abtest"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    const-string p1, "incremental_scan_abtest_guard_support"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    const-string p1, "incremental_scan_abtest_full_scan_time"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v0}, Lqf/c;->u(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static Q(Ljava/lang/String;J)V
    .locals 1

    new-instance v0, Lqf/c$a;

    invoke-direct {v0, p0, p1, p2}, Lqf/c$a;-><init>(Ljava/lang/String;J)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static Q0(Ljava/lang/String;J)V
    .locals 2

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const-string v1, "scan_type"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    const-string p1, "incremental_scan_time"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v0}, Lqf/c;->u(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static R(J)V
    .locals 1

    new-instance v0, Lqf/c$l;

    invoke-direct {v0, p0, p1}, Lqf/c$l;-><init>(J)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static R0(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "module"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "notification_click"

    invoke-static {p0, v0}, Lqf/c;->u(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static S(J)V
    .locals 1

    new-instance v0, Lqf/c$h;

    invoke-direct {v0, p0, p1}, Lqf/c$h;-><init>(J)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static S0()V
    .locals 1

    const-string v0, "pm_daylive_state"

    invoke-static {v0}, Lqf/c;->t(Ljava/lang/String;)V

    return-void
.end method

.method public static T(J)V
    .locals 1

    new-instance v0, Lqf/c$m;

    invoke-direct {v0, p0, p1}, Lqf/c$m;-><init>(J)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static T0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "online_service_dlg_state"

    invoke-static {p0, v0}, Lqf/c;->u(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static U(J)V
    .locals 1

    new-instance v0, Lqf/c$j;

    invoke-direct {v0, p0, p1}, Lqf/c$j;-><init>(J)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static U0()V
    .locals 1

    const-string v0, "popular_action_card_show"

    invoke-static {v0}, Lqf/c;->t(Ljava/lang/String;)V

    return-void
.end method

.method public static V(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "module_click"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "newcheck_result_action_activity"

    invoke-static {p0, v0}, Lqf/c;->u(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static V0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    const-string v1, "commonly_used_func_name"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "commonly_used_func_id"

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "popular_action_item_click"

    invoke-static {p0, v0}, Lqf/c;->u(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static W(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "module_show"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "newcheck_result_action_activity"

    invoke-static {p0, v0}, Lqf/c;->u(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static W0()V
    .locals 1

    const-string v0, "settings_cloud_data_update"

    invoke-static {v0}, Lqf/c;->t(Ljava/lang/String;)V

    return-void
.end method

.method public static X(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "module_click"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "newcheck_result_action_ad"

    invoke-static {p0, v0}, Lqf/c;->u(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static X0(Landroid/content/Context;)V
    .locals 8

    invoke-static {}, Lef/x;->z()Z

    move-result v0

    const-wide/16 v1, 0x1

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_0

    move-wide v5, v1

    goto :goto_0

    :cond_0
    move-wide v5, v3

    :goto_0
    const-string v0, "toggle_allow_networking"

    invoke-static {v0, v5, v6}, Lqf/c;->w(Ljava/lang/String;J)V

    invoke-static {}, Lma/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    move-wide v5, v1

    goto :goto_1

    :cond_1
    move-wide v5, v3

    :goto_1
    const-string v0, "toggle_receive_monthly_report"

    invoke-static {v0, v5, v6}, Lqf/c;->w(Ljava/lang/String;J)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lef/x;->H(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-wide v5, v1

    goto :goto_2

    :cond_2
    move-wide v5, v3

    :goto_2
    const-string v0, "toggle_display_on_notification_bar"

    invoke-static {v0, v5, v6}, Lqf/c;->w(Ljava/lang/String;J)V

    sget-object v0, Lcom/miui/securityscan/shortcut/d$b;->c:Lcom/miui/securityscan/shortcut/d$b;

    invoke-static {p0, v0}, Lcom/miui/securityscan/shortcut/d;->q(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-wide v5, v1

    goto :goto_3

    :cond_3
    move-wide v5, v3

    :goto_3
    const-string v0, "toggle_shortcut_onekey_clean"

    invoke-static {v0, v5, v6}, Lqf/c;->w(Ljava/lang/String;J)V

    sget-object v0, Lcom/miui/securityscan/shortcut/d$b;->j:Lcom/miui/securityscan/shortcut/d$b;

    invoke-static {p0, v0}, Lcom/miui/securityscan/shortcut/d;->q(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-wide v5, v1

    goto :goto_4

    :cond_4
    move-wide v5, v3

    :goto_4
    const-string v0, "toggle_shortcut_powerclean"

    invoke-static {v0, v5, v6}, Lqf/c;->w(Ljava/lang/String;J)V

    sget-object v0, Lcom/miui/securityscan/shortcut/d$b;->i:Lcom/miui/securityscan/shortcut/d$b;

    invoke-static {p0, v0}, Lcom/miui/securityscan/shortcut/d;->q(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-wide v5, v1

    goto :goto_5

    :cond_5
    move-wide v5, v3

    :goto_5
    const-string v0, "toggle_shortcut_antispam"

    invoke-static {v0, v5, v6}, Lqf/c;->w(Ljava/lang/String;J)V

    sget-object v0, Lcom/miui/securityscan/shortcut/d$b;->f:Lcom/miui/securityscan/shortcut/d$b;

    invoke-static {p0, v0}, Lcom/miui/securityscan/shortcut/d;->q(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;)Z

    move-result v0

    if-eqz v0, :cond_6

    move-wide v5, v1

    goto :goto_6

    :cond_6
    move-wide v5, v3

    :goto_6
    const-string v0, "toggle_shortcut_virusscan"

    invoke-static {v0, v5, v6}, Lqf/c;->w(Ljava/lang/String;J)V

    sget-object v0, Lcom/miui/securityscan/shortcut/d$b;->d:Lcom/miui/securityscan/shortcut/d$b;

    invoke-static {p0, v0}, Lcom/miui/securityscan/shortcut/d;->q(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;)Z

    move-result v0

    if-eqz v0, :cond_7

    move-wide v5, v1

    goto :goto_7

    :cond_7
    move-wide v5, v3

    :goto_7
    const-string v0, "toggle_shortcut_trashclean"

    invoke-static {v0, v5, v6}, Lqf/c;->w(Ljava/lang/String;J)V

    sget-object v0, Lcom/miui/securityscan/shortcut/d$b;->g:Lcom/miui/securityscan/shortcut/d$b;

    invoke-static {p0, v0}, Lcom/miui/securityscan/shortcut/d;->q(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-wide v5, v1

    goto :goto_8

    :cond_8
    move-wide v5, v3

    :goto_8
    const-string v0, "toggle_shortcut_networkassistant"

    invoke-static {v0, v5, v6}, Lqf/c;->w(Ljava/lang/String;J)V

    sget-object v0, Lcom/miui/securityscan/shortcut/d$b;->e:Lcom/miui/securityscan/shortcut/d$b;

    invoke-static {p0, v0}, Lcom/miui/securityscan/shortcut/d;->q(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;)Z

    move-result v0

    if-eqz v0, :cond_9

    move-wide v5, v1

    goto :goto_9

    :cond_9
    move-wide v5, v3

    :goto_9
    const-string v0, "toggle_shortcut_powersaving"

    invoke-static {v0, v5, v6}, Lqf/c;->w(Ljava/lang/String;J)V

    sget-object v0, Lcom/miui/securityscan/shortcut/d$b;->l:Lcom/miui/securityscan/shortcut/d$b;

    invoke-static {p0, v0}, Lcom/miui/securityscan/shortcut/d;->q(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;)Z

    move-result v0

    if-eqz v0, :cond_a

    move-wide v5, v1

    goto :goto_a

    :cond_a
    move-wide v5, v3

    :goto_a
    const-string v0, "toggle_shortcut_lucky_money"

    invoke-static {v0, v5, v6}, Lqf/c;->w(Ljava/lang/String;J)V

    invoke-static {}, Lpf/g;->v()Z

    move-result v0

    invoke-static {}, Lpf/g;->w()Z

    move-result v5

    if-eqz v0, :cond_b

    move-wide v6, v1

    goto :goto_b

    :cond_b
    move-wide v6, v3

    :goto_b
    const-string v0, "toggle_news_onlywlan"

    invoke-static {v0, v6, v7}, Lqf/c;->w(Ljava/lang/String;J)V

    if-eqz v5, :cond_c

    move-wide v5, v1

    goto :goto_c

    :cond_c
    move-wide v5, v3

    :goto_c
    const-string v0, "toggle_recommend_news"

    invoke-static {v0, v5, v6}, Lqf/c;->w(Ljava/lang/String;J)V

    invoke-static {p0}, Lqf/c;->a1(Landroid/content/Context;)V

    invoke-static {p0}, Lpf/i;->l(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_d

    :cond_d
    move-wide v1, v3

    :goto_d
    const-string p0, "toggle_online_service"

    invoke-static {p0, v1, v2}, Lqf/c;->w(Ljava/lang/String;J)V

    return-void
.end method

.method private static Y(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "module_show"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "newcheck_result_action_ad"

    invoke-static {p0, v0}, Lqf/c;->u(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static Y0()V
    .locals 1

    const-string v0, "home_page_slide_up_touch_complete_anim"

    invoke-static {v0}, Lqf/c;->t(Ljava/lang/String;)V

    return-void
.end method

.method public static Z(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "module_click"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "newcheck_result_action_f1"

    invoke-static {p0, v0}, Lqf/c;->u(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static Z0()V
    .locals 1

    const-string v0, "home_page_slide_up_touch_start_anim"

    invoke-static {v0}, Lqf/c;->t(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Ljava/util/List;)V
    .locals 0

    invoke-static {p0}, Lqf/c;->q(Ljava/util/List;)V

    return-void
.end method

.method private static a0(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "module_show"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "newcheck_result_action_f1"

    invoke-static {p0, v0}, Lqf/c;->u(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static a1(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lqf/c$a0;

    invoke-direct {v0, p0}, Lqf/c$a0;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic b(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lqf/c;->t(Ljava/lang/String;)V

    return-void
.end method

.method private static b0(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/securityscan/model/AbsModel;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/model/AbsModel;

    invoke-virtual {v0}, Lcom/miui/securityscan/model/AbsModel;->isSafe()Lcom/miui/securityscan/model/AbsModel$State;

    move-result-object v1

    sget-object v2, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {v0}, Lcom/miui/securityscan/model/AbsModel;->getTrackStr()Ljava/lang/String;

    move-result-object v0

    const-string v2, "module_show"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "newcheck_result_action_f1"

    invoke-static {v0, v1}, Lqf/c;->u(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static b1(Z)V
    .locals 2

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const-string p0, "support_incremental_scan"

    invoke-static {p0, v0, v1}, Lqf/c;->w(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic c(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1}, Lqf/c;->u(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static c0(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "module_click"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "newcheck_result_action_news"

    invoke-static {p0, v0}, Lqf/c;->u(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static c1()V
    .locals 1

    const-string v0, "use_pm_function_by_slide_up"

    invoke-static {v0}, Lqf/c;->t(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lqf/c;->a0(Ljava/lang/String;)V

    return-void
.end method

.method private static d0(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "module_show"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "newcheck_result_action_news"

    invoke-static {p0, v0}, Lqf/c;->u(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic e(Ljava/util/List;)V
    .locals 0

    invoke-static {p0}, Lqf/c;->b0(Ljava/util/List;)V

    return-void
.end method

.method public static e0(Lcom/miui/common/card/models/BaseCardModel;)V
    .locals 1

    new-instance v0, Lqf/c$c;

    invoke-direct {v0, p0}, Lqf/c$c;-><init>(Lcom/miui/common/card/models/BaseCardModel;)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic f(Ljava/lang/String;J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lqf/c;->r(Ljava/lang/String;J)V

    return-void
.end method

.method public static f0()V
    .locals 1

    new-instance v0, Lqf/c$n;

    invoke-direct {v0}, Lqf/c$n;-><init>()V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic g(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1}, Lqf/c;->s(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static g0(J)V
    .locals 1

    new-instance v0, Lqf/c$i;

    invoke-direct {v0, p0, p1}, Lqf/c$i;-><init>(J)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic h(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lqf/c;->G(Landroid/content/Context;)V

    return-void
.end method

.method public static h0(J)V
    .locals 1

    new-instance v0, Lqf/c$g;

    invoke-direct {v0, p0, p1}, Lqf/c$g;-><init>(J)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic i(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lqf/c;->u0(Ljava/lang/String;)V

    return-void
.end method

.method public static i0(J)V
    .locals 1

    new-instance v0, Lqf/c$d;

    invoke-direct {v0, p0, p1}, Lqf/c$d;-><init>(J)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic j(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lqf/c;->A0(Ljava/lang/String;)V

    return-void
.end method

.method public static j0(J)V
    .locals 1

    new-instance v0, Lqf/c$f;

    invoke-direct {v0, p0, p1}, Lqf/c$f;-><init>(J)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic k(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lqf/c;->s0(Ljava/lang/String;)V

    return-void
.end method

.method public static k0(J)V
    .locals 1

    new-instance v0, Lqf/c$e;

    invoke-direct {v0, p0, p1}, Lqf/c$e;-><init>(J)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic l(Landroid/content/Context;Lcom/miui/common/card/models/FunctionCardModel;)V
    .locals 0

    invoke-static {p0, p1}, Lqf/c;->y0(Landroid/content/Context;Lcom/miui/common/card/models/FunctionCardModel;)V

    return-void
.end method

.method public static l0(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/common/card/GridFunctionData;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lqf/b;

    invoke-direct {v0, p0}, Lqf/b;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic m(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lqf/c;->Y(Ljava/lang/String;)V

    return-void
.end method

.method public static m0(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "module_click"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "phone_manage_show_click_rebuild"

    invoke-static {p0, v0}, Lqf/c;->u(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic n(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lqf/c;->d0(Ljava/lang/String;)V

    return-void
.end method

.method public static n0(Lcom/miui/common/card/functions/FuncTopBannerScrollData;)V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/common/card/functions/FuncTopBannerScrollData;->getStatKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "module_show"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "phone_manage_show_click_rebuild"

    invoke-static {p0, v0}, Lqf/c;->u(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method static synthetic o(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lqf/c;->W(Ljava/lang/String;)V

    return-void
.end method

.method public static o0(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/common/card/GridFunctionData;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lqf/c$s;

    invoke-direct {v0, p0}, Lqf/c$s;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static p(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const-wide/16 v0, 0xe10

    cmp-long p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static p0()V
    .locals 2

    const-string v0, "securitycenter"

    const-string v1, "phonemanage_list_scorll"

    invoke-static {v0, v1}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic q(Ljava/util/List;)V
    .locals 3

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/card/GridFunctionData;

    invoke-virtual {v0}, Lcom/miui/common/card/GridFunctionData;->getDataId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/miui/common/card/GridFunctionData;->getStatKey()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    const-string v2, "module_show"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "phone_manage_show_click_rebuild"

    invoke-static {v1, v0}, Lqf/c;->u(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static q0()V
    .locals 1

    new-instance v0, Lqf/c$u;

    invoke-direct {v0}, Lqf/c$u;-><init>()V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static r(Ljava/lang/String;J)V
    .locals 2

    const-string v0, "securitycenter"

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, p2, v1}, Lcom/miui/analytics/AnalyticsUtil;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    return-void
.end method

.method public static r0(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "module_click"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "slide_down_action_activity"

    invoke-static {p0, v0}, Lqf/c;->u(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static s(Ljava/lang/String;Ljava/util/Map;)V
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

    const-string v0, "securitycenter"

    invoke-static {v0, p0, p1}, Lcom/miui/analytics/AnalyticsUtil;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static s0(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "module_show"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "slide_down_action_activity"

    invoke-static {p0, v0}, Lqf/c;->u(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static t(Ljava/lang/String;)V
    .locals 2

    const-string v0, "securitycenter"

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static t0(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "module_click"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "slide_down_action_ad"

    invoke-static {p0, v0}, Lqf/c;->u(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static u(Ljava/lang/String;Ljava/util/Map;)V
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

    const-string v0, "securitycenter"

    invoke-static {v0, p0, p1}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static u0(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "module_show"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "slide_down_action_ad"

    invoke-static {p0, v0}, Lqf/c;->u(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static v()V
    .locals 1

    const-string v0, "full_scan_virus_notification_show"

    invoke-static {v0}, Lqf/c;->t(Ljava/lang/String;)V

    return-void
.end method

.method public static v0(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "module_click"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "slide_down_action_f_rebuild"

    invoke-static {p0, v0}, Lqf/c;->u(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static w(Ljava/lang/String;J)V
    .locals 1

    const-string v0, "securitycenter"

    invoke-static {v0, p0, p1, p2}, Lcom/miui/analytics/AnalyticsUtil;->recordNumericEvent(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static w0(Landroid/content/Context;Lcom/miui/common/card/GridFunctionData;)V
    .locals 1

    new-instance v0, Lqf/c$z;

    invoke-direct {v0, p0, p1}, Lqf/c$z;-><init>(Landroid/content/Context;Lcom/miui/common/card/GridFunctionData;)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static x(I)V
    .locals 1

    new-instance v0, Lqf/c$o;

    invoke-direct {v0, p0}, Lqf/c$o;-><init>(I)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static x0(Landroid/content/Context;Lcom/miui/common/card/functions/FuncTopBannerScrollData;)V
    .locals 3

    invoke-virtual {p1}, Lcom/miui/common/card/functions/FuncTopBannerScrollData;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/miui/common/card/functions/FuncTopBannerScrollData;->getStatKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p1, Lcom/miui/common/card/functions/FuncTopBannerScrollData;->id:Ljava/lang/String;

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    const-string v2, "module_show"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "slide_down_action_f_rebuild"

    invoke-static {v0, v1}, Lqf/c;->u(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    invoke-virtual {p1}, Lcom/miui/common/card/functions/FuncTopBannerScrollData;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "#Intent;action=com.miui.gamebooster.action.ACCESS_MAINACTIVITY;S.jump_target=gamebox;end"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p0}, Lqf/c;->G(Landroid/content/Context;)V

    :cond_2
    return-void
.end method

.method public static y(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "module_click"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "first_aid_ad"

    invoke-static {p0, v0}, Lqf/c;->u(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static y0(Landroid/content/Context;Lcom/miui/common/card/models/FunctionCardModel;)V
    .locals 3

    invoke-virtual {p1}, Lcom/miui/common/card/models/FunctionCardModel;->getFunction()Lcom/miui/common/card/functions/BaseFunction;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/common/card/models/FunctionCardModel;->getFunction()Lcom/miui/common/card/functions/BaseFunction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/common/card/functions/BaseFunction;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/miui/common/card/models/FunctionCardModel;->getStatKey()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    const-string v2, "module_show"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "slide_down_action_f_rebuild"

    invoke-static {v0, v1}, Lqf/c;->u(Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    invoke-virtual {p1}, Lcom/miui/common/card/models/FunctionCardModel;->getFunction()Lcom/miui/common/card/functions/BaseFunction;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/miui/common/card/functions/BaseFunction;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "#Intent;action=com.miui.gamebooster.action.ACCESS_MAINACTIVITY;S.jump_target=gamebox;end"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p0}, Lqf/c;->G(Landroid/content/Context;)V

    :cond_3
    return-void
.end method

.method public static z(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "module_click"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "first_aid_activity"

    invoke-static {p0, v0}, Lqf/c;->u(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static z0(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lqf/c$b;

    invoke-direct {v0, p0}, Lqf/c$b;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method
