.class public Lhd/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static A()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "battery_page_show"

    const-string v2, "show"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "battery_page"

    invoke-static {v1, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static A0()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "nine_percent"

    const-string v2, "show"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "low_energy_popup"

    invoke-static {v1, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static A1()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "unoffical_battery_dialog_action"

    const-string v2, "show"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "unoffical_battery_dialog"

    invoke-static {v1, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static B(I)V
    .locals 2

    int-to-long v0, p0

    const-string p0, "charged_end_level"

    invoke-static {p0, v0, v1}, Lhd/a;->g(Ljava/lang/String;J)V

    return-void
.end method

.method public static B0(Z)V
    .locals 2

    const-string v0, "powercenter"

    const-string v1, "low_battery_charge_state"

    invoke-static {v0, v1}, Lcom/miui/analytics/AnalyticsUtil;->createEventName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p0, :cond_0

    const-string p0, "on"

    goto :goto_0

    :cond_0
    const-string p0, "off"

    :goto_0
    const-string v1, "button_state"

    invoke-static {v0, v1, p0}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static B1()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "unoffical_battery_homepage_action"

    const-string v2, "click"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "unoffical_battery_homepage"

    invoke-static {v1, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static C(I)V
    .locals 2

    int-to-long v0, p0

    const-string p0, "charge_start_level"

    invoke-static {p0, v0, v1}, Lhd/a;->g(Ljava/lang/String;J)V

    return-void
.end method

.method public static C0()V
    .locals 3

    const-string v0, "powercenter"

    const-string v1, "battery_low_health"

    invoke-static {v0, v1}, Lcom/miui/analytics/AnalyticsUtil;->createEventName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "battery"

    const-string v2, "click"

    invoke-static {v0, v1, v2}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static C1()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "unoffical_battery_homepage_action"

    const-string v2, "show"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "unoffical_battery_homepage"

    invoke-static {v1, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static D(I)V
    .locals 2

    int-to-long v0, p0

    const-string p0, "charge_quantity"

    invoke-static {p0, v0, v1}, Lhd/a;->g(Ljava/lang/String;J)V

    return-void
.end method

.method public static D0()V
    .locals 3

    const-string v0, "powercenter"

    const-string v1, "battery_low_health"

    invoke-static {v0, v1}, Lcom/miui/analytics/AnalyticsUtil;->createEventName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "battery"

    const-string v2, "show"

    invoke-static {v0, v1, v2}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static D1()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "unoffical_battery_noti_action"

    const-string v2, "click"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "unoffical_battery_noti"

    invoke-static {v1, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static E(I)V
    .locals 2

    int-to-long v0, p0

    const-string p0, "energy_when_save_mode_on"

    invoke-static {p0, v0, v1}, Lhd/a;->g(Ljava/lang/String;J)V

    return-void
.end method

.method public static E0()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "low_battery_notification_action"

    const-string v2, "buttonclick"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "low_battery_notification"

    invoke-static {v1, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static E1()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "unoffical_battery_dialog_action"

    const-string v2, "click_negative"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "unoffical_battery_dialog"

    invoke-static {v1, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static F(I)V
    .locals 2

    int-to-long v0, p0

    const-string p0, "energy_when_save_mode_on_1"

    invoke-static {p0, v0, v1}, Lhd/a;->g(Ljava/lang/String;J)V

    return-void
.end method

.method public static F0()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "low_battery_notification_action"

    const-string v2, "click"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "low_battery_notification"

    invoke-static {v1, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static F1()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "unoffical_battery_dialog_action"

    const-string v2, "click_positive"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "unoffical_battery_dialog"

    invoke-static {v1, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static G(I)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v2, "module_click"

    if-eq p0, v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const-string p0, "battery_statics_usage_detail"

    goto :goto_0

    :cond_0
    const-string p0, "battery_statics_rank_hardware"

    goto :goto_0

    :cond_1
    const-string p0, "battery_statics_rank_software"

    goto :goto_0

    :cond_2
    const-string p0, "battery_statics_rank_all"

    :goto_0
    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "battery_statics_select_change"

    invoke-static {p0, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static G0()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "low_battery_notification_action"

    const-string v2, "show"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "low_battery_notification"

    invoke-static {v1, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static G1()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "unoffical_battery_noti_action"

    const-string v2, "show"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "unoffical_battery_noti"

    invoke-static {v1, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static H(I)V
    .locals 2

    int-to-long v0, p0

    const-string p0, "charge_duration"

    invoke-static {p0, v0, v1}, Lhd/a;->g(Ljava/lang/String;J)V

    return-void
.end method

.method public static H0(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "scan_page_show"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "scan_page"

    invoke-static {p0, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static H1(I)V
    .locals 2

    int-to-long v0, p0

    const-string p0, "charge_end_time"

    invoke-static {p0, v0, v1}, Lhd/a;->g(Ljava/lang/String;J)V

    return-void
.end method

.method public static I(I)V
    .locals 2

    int-to-long v0, p0

    const-string p0, "charge_duration_night"

    invoke-static {p0, v0, v1}, Lhd/a;->g(Ljava/lang/String;J)V

    return-void
.end method

.method private static I0(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "module_click"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "homepage_button_click"

    invoke-static {p0, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static I1()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "module"

    const-string v2, "click"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "unusual_expend_noti"

    invoke-static {v1, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static J(I)V
    .locals 2

    int-to-long v0, p0

    const-string p0, "charge_full_hour_in_night"

    invoke-static {p0, v0, v1}, Lhd/a;->g(Ljava/lang/String;J)V

    return-void
.end method

.method public static J0(I)V
    .locals 3

    const-string v0, "powercenter"

    const-string v1, "event_navigation_charge"

    invoke-static {v0, v1}, Lcom/miui/analytics/AnalyticsUtil;->createEventName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    int-to-long v1, p0

    const-string p0, "power_event_number"

    invoke-static {v0, p0, v1, v2}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static K(I)V
    .locals 2

    int-to-long v0, p0

    const-string p0, "charge_full_time"

    invoke-static {p0, v0, v1}, Lhd/a;->g(Ljava/lang/String;J)V

    return-void
.end method

.method public static K0(Z)V
    .locals 2

    const-string v0, "powercenter"

    const-string v1, "navigation_charge_state"

    invoke-static {v0, v1}, Lcom/miui/analytics/AnalyticsUtil;->createEventName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p0, :cond_0

    const-string p0, "on"

    goto :goto_0

    :cond_0
    const-string p0, "off"

    :goto_0
    const-string v1, "button_state"

    invoke-static {v0, v1, p0}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static L(I)V
    .locals 2

    int-to-long v0, p0

    const-string p0, "charge_full_time_in_night"

    invoke-static {p0, v0, v1}, Lhd/a;->g(Ljava/lang/String;J)V

    return-void
.end method

.method public static L0(Ljava/lang/String;)V
    .locals 1

    const-string v0, "new_auto_task"

    invoke-static {v0, p0}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static M()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "abnormal_enter_charge_protection_times_02"

    const-string v2, "abnormal_exit"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "charge_protection"

    invoke-static {v1, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static M0()V
    .locals 2

    const-string v0, "new_auto_task"

    const-string v1, "open_mine_task_page"

    invoke-static {v0, v1}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static N(I)V
    .locals 2

    int-to-long v0, p0

    const-string p0, "charge_protection_duration"

    invoke-static {p0, v0, v1}, Lhd/a;->g(Ljava/lang/String;J)V

    return-void
.end method

.method public static N0()V
    .locals 2

    const-string v0, "new_auto_task"

    const-string v1, "open_task_center_page"

    invoke-static {v0, v1}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static O()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "enter_charge_protection_times_02"

    const-string v2, "enter"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "charge_protection"

    invoke-static {v1, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static O0(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "module_click"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "optimize_result_action_new"

    invoke-static {p0, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static P()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "exit_charge_protection_times_02"

    const-string v2, "exit"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "charge_protection"

    invoke-static {v1, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static P0(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "module_show"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "optimize_result_action_new"

    invoke-static {p0, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static Q()V
    .locals 2

    const-string v0, "new_auto_task"

    const-string v1, "click_add_task_button"

    invoke-static {v0, v1}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static Q0(J)V
    .locals 1

    const-string v0, "optimize_save_time"

    invoke-static {v0, p0, p1}, Lhd/a;->g(Ljava/lang/String;J)V

    return-void
.end method

.method public static R()V
    .locals 1

    const-string v0, "auto_task"

    invoke-static {v0}, Lhd/a;->I0(Ljava/lang/String;)V

    return-void
.end method

.method public static R0()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "performance_mode_activated_noti_action"

    const-string v2, "buttonclick"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "performance_mode_activated_noti"

    invoke-static {v1, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static S()V
    .locals 1

    const-string v0, "extreme_save_mode"

    invoke-static {v0}, Lhd/a;->I0(Ljava/lang/String;)V

    return-void
.end method

.method public static S0()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "performance_mode_activated_noti_action"

    const-string v2, "show"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "performance_mode_activated_noti"

    invoke-static {v1, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static T()V
    .locals 1

    const-string v0, "power_center_entry"

    invoke-static {v0}, Lhd/a;->I0(Ljava/lang/String;)V

    return-void
.end method

.method public static T0()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "performance_mode_dialog_action"

    const-string v2, "click_negative"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "performance_mode_dialog"

    invoke-static {v1, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static U()V
    .locals 1

    const-string v0, "power_shutdown_ontime"

    invoke-static {v0}, Lhd/a;->I0(Ljava/lang/String;)V

    return-void
.end method

.method public static U0()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "performance_mode_dialog_action"

    const-string v2, "click_positive"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "performance_mode_dialog"

    invoke-static {v1, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static V()V
    .locals 1

    const-string v0, "save_mode_click"

    invoke-static {v0}, Lhd/a;->I0(Ljava/lang/String;)V

    return-void
.end method

.method public static V0()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "performance_mode_dialog_action"

    const-string v2, "show"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "performance_mode_dialog"

    invoke-static {v1, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static W()V
    .locals 1

    const-string v0, "spuer_save_mode_click"

    invoke-static {v0}, Lhd/a;->I0(Ljava/lang/String;)V

    return-void
.end method

.method public static W0(ZLjava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    const-string p0, "performance_mode_open_way"

    goto :goto_0

    :cond_0
    const-string p0, "performance_mode_close_way"

    :goto_0
    invoke-static {p0, p1}, Lhd/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static X(Z)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    if-eqz p0, :cond_0

    const-string p0, "close_wakeup_for_notification_on"

    goto :goto_0

    :cond_0
    const-string p0, "close_wakeup_for_notification_off"

    :goto_0
    const-string v1, "module_click"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "close_wakeup_for_notification"

    invoke-static {p0, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static X0(Z)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    if-eqz p0, :cond_0

    const-string p0, "performance_mode_on"

    goto :goto_0

    :cond_0
    const-string p0, "performance_mode_off"

    :goto_0
    const-string v1, "module_click"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "performance_mode_on_and_off"

    invoke-static {p0, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static Y(Z)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    if-eqz p0, :cond_0

    const-string p0, "close_xiaoai_voice_wakeup_on"

    goto :goto_0

    :cond_0
    const-string p0, "close_xiaoai_voice_wakeup_off"

    :goto_0
    const-string v1, "module_click"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "close_xiaoai_voice_wakeup"

    invoke-static {p0, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static Y0(I)V
    .locals 2

    int-to-long v0, p0

    const-string p0, "charge_start_time"

    invoke-static {p0, v0, v1}, Lhd/a;->g(Ljava/lang/String;J)V

    return-void
.end method

.method public static Z(Ljava/lang/String;)V
    .locals 2

    const-string v0, "new_auto_task_dau"

    const-string v1, "dau_type"

    invoke-static {v0, v1, p0}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static Z0(Ljava/lang/String;)V
    .locals 2

    const-string v0, "powercenter"

    const-string v1, "power_continuity"

    invoke-static {v0, v1}, Lcom/miui/analytics/AnalyticsUtil;->createEventName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "power_common_event"

    invoke-static {v0, v1, p0}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    :try_start_0
    const-string v1, "android.provider.MiuiSettings$System"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "BATTERY_INDICATOR_STYLE"

    const-class v3, Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lbh/f;->n(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AnalyticHelper"

    const-string v3, "getBatteryStyleValue exception:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    return-object v0

    :cond_0
    const-string p0, "top"

    return-object p0

    :cond_1
    const-string p0, "number"

    return-object p0

    :cond_2
    const-string p0, "pattern"

    return-object p0
.end method

.method public static a0()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "track_daily_battery_scan_problem_notification_action"

    const-string v2, "click"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "track_daily_battery_scan_problem_notification"

    invoke-static {v1, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static a1(Ljava/lang/String;)V
    .locals 2

    const-string v0, "powercenter"

    const-string v1, "power_continuity"

    invoke-static {v0, v1}, Lcom/miui/analytics/AnalyticsUtil;->createEventName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "power_common_event"

    invoke-static {v0, v1, p0}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static b()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lgd/c;->t()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_0

    const-string v1, "off"

    :cond_0
    return-object v1
.end method

.method public static b0()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "track_daily_battery_scan_problem_notification_action"

    const-string v2, "show"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "track_daily_battery_scan_problem_notification"

    invoke-static {v1, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static b1(ZLjava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    const-string p0, "PowerSaveModeOpen"

    goto :goto_0

    :cond_0
    const-string p0, "PowerSaveModeClose"

    :goto_0
    invoke-static {p0, p1}, Lhd/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static c()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lgd/c;->o0()I

    move-result v0

    div-int/lit8 v0, v0, 0x3c

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    const-string v0, "30_min"

    return-object v0

    :cond_1
    const-string v0, "10_min"

    return-object v0

    :cond_2
    const-string v0, "5_min"

    return-object v0

    :cond_3
    const-string v0, "1_min"

    return-object v0

    :cond_4
    const-string v0, "none"

    return-object v0
.end method

.method public static c0()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "track_daily_battery_scan_suggest_notification_action"

    const-string v2, "click"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "track_daily_battery_scan_suggest_notification"

    invoke-static {v1, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static c1()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "power_save_mode_activated_notification_action"

    const-string v2, "buttonclick"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "power_save_mode_activated_notification"

    invoke-static {v1, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static d()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lgd/c;->K()I

    move-result v0

    div-int/lit8 v0, v0, 0x3c

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    const-string v0, "30_min"

    return-object v0

    :cond_1
    const-string v0, "10_min"

    return-object v0

    :cond_2
    const-string v0, "5_min"

    return-object v0

    :cond_3
    const-string v0, "1_min"

    return-object v0

    :cond_4
    const-string v0, "none"

    return-object v0
.end method

.method public static d0()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "track_daily_battery_scan_suggest_notification_action"

    const-string v2, "show"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "track_daily_battery_scan_suggest_notification"

    invoke-static {v1, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static d1()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "power_save_mode_activated_notification_action"

    const-string v2, "click"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "power_save_mode_activated_notification"

    invoke-static {v1, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static e()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lgd/c;->t0()Z

    move-result v0

    invoke-static {}, Lgd/c;->y0()Z

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const-string v0, "both"

    return-object v0

    :cond_0
    if-eqz v0, :cond_1

    const-string v0, "power_on_only"

    return-object v0

    :cond_1
    if-eqz v1, :cond_2

    const-string v0, "power_off_only"

    return-object v0

    :cond_2
    const-string v0, "neither"

    return-object v0
.end method

.method public static e0()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "enter_fast_charge_notifi_action"

    const-string v2, "buttonclick"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "enter_fast_charge_notification02"

    invoke-static {v1, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static e1()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "power_save_mode_activated_notification_action"

    const-string v2, "show"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "power_save_mode_activated_notification"

    invoke-static {v1, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static f(Ljava/lang/String;D)V
    .locals 1

    const-string v0, "powercenter"

    invoke-static {v0, p0}, Lcom/miui/analytics/AnalyticsUtil;->createEventName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1, p2}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;Ljava/lang/String;D)V

    return-void
.end method

.method public static f0()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "enter_fast_charge_notifi_action"

    const-string v2, "click"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "enter_fast_charge_notification02"

    invoke-static {v1, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static f1(Z)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    if-eqz p0, :cond_0

    const-string p0, "save_mode_when_charge_on"

    goto :goto_0

    :cond_0
    const-string p0, "save_mode_when_charge_off"

    :goto_0
    const-string v1, "module_click"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "save_mode_off_when_charge"

    invoke-static {p0, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static g(Ljava/lang/String;J)V
    .locals 2

    const-string v0, "powercenter"

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, p2, v1}, Lcom/miui/analytics/AnalyticsUtil;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    return-void
.end method

.method public static g0()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "enter_fast_charge_notifi_action"

    const-string v2, "show"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "enter_fast_charge_notification02"

    invoke-static {v1, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static g1(Z)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    if-eqz p0, :cond_0

    const-string p0, "1"

    goto :goto_0

    :cond_0
    const-string p0, "0"

    :goto_0
    const-string v1, "module_click"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "save_mode_on_off_plan"

    invoke-static {p0, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static h(Ljava/lang/String;)V
    .locals 2

    const-string v0, "powercenter"

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static h0()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "enter_super_power_notification_action"

    const-string v2, "buttonclick"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "enter_super_power_notification"

    invoke-static {v1, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static h1(Z)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    if-eqz p0, :cond_0

    const-string p0, "save_mode_on"

    goto :goto_0

    :cond_0
    const-string p0, "save_mode_off"

    :goto_0
    const-string v1, "module_click"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "save_mode_page_on_off"

    invoke-static {p0, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static i(Ljava/lang/String;Ljava/util/Map;)V
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

    const-string v0, "powercenter"

    invoke-static {v0, p0, p1}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static i0()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "enter_super_power_notification_action"

    const-string v2, "click"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "enter_super_power_notification"

    invoke-static {v1, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static i1(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "package_name"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "scan_problem_app"

    invoke-static {p0, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static j(Ljava/lang/String;J)V
    .locals 1

    const-string v0, "powercenter"

    invoke-static {v0, p0, p1, p2}, Lcom/miui/analytics/AnalyticsUtil;->recordNumericEvent(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static j0()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "enter_super_power_notification_action"

    const-string v2, "show"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "enter_super_power_notification"

    invoke-static {v1, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static j1(I)V
    .locals 2

    int-to-long v0, p0

    const-string p0, "scan_problem_quantity"

    invoke-static {p0, v0, v1}, Lhd/a;->g(Ljava/lang/String;J)V

    return-void
.end method

.method private static k(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "powercenter"

    invoke-static {v0, p0, p1}, Lcom/miui/analytics/AnalyticsUtil;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static k0()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "exit_fast_charge_notification_action"

    const-string v2, "buttonclick"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "exit_fast_charge_notification02"

    invoke-static {v1, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static k1(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "scan_page_click"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "scan_page"

    invoke-static {p0, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static l(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lhd/a;->h(Ljava/lang/String;)V

    return-void
.end method

.method public static l0()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "exit_fast_charge_notification_action"

    const-string v2, "click"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "exit_fast_charge_notification02"

    invoke-static {v1, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static l1(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "module_show"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "scan_result_action_new"

    invoke-static {p0, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static m()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "5g_save_close_dialog"

    const-string v2, "show"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "5g_close_dialog"

    invoke-static {v1, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static m0()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "exit_fast_charge_notification_action"

    const-string v2, "show"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "exit_fast_charge_notification02"

    invoke-static {v1, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static m1(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "module_select_optimize_new"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "scan_result_action_new"

    invoke-static {p0, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static n(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "module_click"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "5g_close_later_action"

    invoke-static {p0, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static n0()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "exit_power_save_mode_notification_action"

    const-string v2, "click"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "exit_power_save_mode_notification"

    invoke-static {v1, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static n1(J)V
    .locals 1

    const-string v0, "scan_time"

    invoke-static {v0, p0, p1}, Lhd/a;->g(Ljava/lang/String;J)V

    return-void
.end method

.method public static o()V
    .locals 1

    const-string v0, "5g_device_number"

    invoke-static {v0}, Lhd/a;->h(Ljava/lang/String;)V

    return-void
.end method

.method public static o0()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "exit_power_save_mode_notification_action"

    const-string v2, "show"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "exit_power_save_mode_notification"

    invoke-static {v1, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static o1(Ljava/lang/Double;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-string p0, "screen_split_deviation"

    invoke-static {p0, v0, v1}, Lhd/a;->f(Ljava/lang/String;D)V

    return-void
.end method

.method public static p(Z)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    if-eqz p0, :cond_0

    const-string p0, "5g_save_mode_on"

    goto :goto_0

    :cond_0
    const-string p0, "5g_save_mode_off"

    :goto_0
    const-string v1, "module_click"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "5g_save_mode_page_on_off"

    invoke-static {p0, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static p0(Z)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    if-eqz p0, :cond_0

    const-string p0, "on"

    goto :goto_0

    :cond_0
    const-string p0, "off"

    :goto_0
    const-string v1, "fast_charge_enabled"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "fast_charge_switch"

    invoke-static {p0, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static p1(Landroid/content/Context;)V
    .locals 8

    :try_start_0
    const-string v0, "toggle_energy_status_style"

    invoke-static {p0}, Lhd/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhd/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "toggle_lockscreen_cut_off_data"

    invoke-static {}, Lhd/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhd/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "toggle_lockscreen_clean_ram"

    invoke-static {}, Lhd/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhd/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "toggle_unusual_expend_noti"

    invoke-static {}, Lgd/c;->I0()Z

    move-result v1

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_0

    move-wide v6, v2

    goto :goto_0

    :cond_0
    move-wide v6, v4

    :goto_0
    invoke-static {v0, v6, v7}, Lhd/a;->j(Ljava/lang/String;J)V

    const-string v0, "toggle_power_save_suggest_noti"

    invoke-static {}, Lgd/c;->X0()Z

    move-result v1

    if-eqz v1, :cond_1

    move-wide v6, v2

    goto :goto_1

    :cond_1
    move-wide v6, v4

    :goto_1
    invoke-static {v0, v6, v7}, Lhd/a;->j(Ljava/lang/String;J)V

    invoke-static {}, Lke/a;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "toggle_super_wireless_charge_noti"

    invoke-static {}, Lgd/c;->P0()Z

    move-result v1

    if-eqz v1, :cond_2

    move-wide v6, v2

    goto :goto_2

    :cond_2
    move-wide v6, v4

    :goto_2
    invoke-static {v0, v6, v7}, Lhd/a;->j(Ljava/lang/String;J)V

    :cond_3
    const-string v0, "toggle_high_temperature_noti"

    invoke-static {}, Lhd/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhd/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "toggle_timing_power_on_off"

    invoke-static {}, Lhd/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhd/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "toggle_timing_saving_mode"

    invoke-static {}, Lgd/c;->F0()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    move-wide v2, v4

    :goto_3
    invoke-static {v0, v2, v3}, Lhd/a;->j(Ljava/lang/String;J)V

    invoke-static {}, Lme/h;->n()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "toggle_5g_saving_mode"

    invoke-static {p0}, Lme/h;->b(Landroid/content/Context;)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lhd/a;->j(Ljava/lang/String;J)V

    :cond_5
    invoke-static {p0}, Lhd/b;->x(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    return-void
.end method

.method public static q()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "battery_abnormal_consume_event"

    const-string v2, "click"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "battery_abnormal_consume"

    invoke-static {v1, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static q0(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "fast_charge_activity_enterway"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "fast_charge_activity_show"

    invoke-static {p0, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static q1()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "power_shutdown_notification_action"

    const-string v2, "buttonclick"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "power_shutdown_notification"

    invoke-static {v1, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static r(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "battery_abnormal_consume_app"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "battery_abnormal_consume"

    invoke-static {p0, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static r0(Z)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    if-eqz p0, :cond_0

    const-string p0, "on"

    goto :goto_0

    :cond_0
    const-string p0, "off"

    :goto_0
    const-string v1, "fast_charge_noti_enabled"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "fast_charge_noti_switch"

    invoke-static {p0, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static r1()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "power_shutdown_notification_action"

    const-string v2, "click"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "power_shutdown_notification"

    invoke-static {v1, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static s()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "battery_abnormal_consume_event"

    const-string v2, "show"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "battery_abnormal_consume"

    invoke-static {v1, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static s0(J)V
    .locals 1

    const-string v0, "fast_charge_power_threshold02"

    invoke-static {v0, p0, p1}, Lhd/a;->g(Ljava/lang/String;J)V

    return-void
.end method

.method public static s1()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "power_shutdown_notification_action"

    const-string v2, "show"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "power_shutdown_notification"

    invoke-static {v1, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static t(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "success_add_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "new_auto_task"

    invoke-static {v0, p0}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static t0(Ljava/lang/String;)V
    .locals 2

    const-string v0, "powercenter"

    const-string v1, "high_fps_video"

    invoke-static {v0, v1}, Lcom/miui/analytics/AnalyticsUtil;->createEventName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "show"

    invoke-static {v0, v1, p0}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static t1(I)V
    .locals 2

    int-to-long v0, p0

    const-string p0, "solve_problem_quantity"

    invoke-static {p0, v0, v1}, Lhd/a;->g(Ljava/lang/String;J)V

    return-void
.end method

.method public static u()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "battery_consume_fast_show"

    const-string v2, "show"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "battery_consume_fast"

    invoke-static {v1, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static u0()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "high_temp_dialog"

    const-string v2, "hide"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static u1(Z)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    if-eqz p0, :cond_0

    const-string p0, "spuer_save_mode_on"

    goto :goto_0

    :cond_0
    const-string p0, "spuer_save_mode_off"

    :goto_0
    const-string v1, "module_click"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "spuer_save_mode_page_on_off"

    invoke-static {p0, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static v(I)V
    .locals 2

    int-to-long v0, p0

    const-string p0, "battery_health_cyclecount"

    invoke-static {p0, v0, v1}, Lhd/a;->g(Ljava/lang/String;J)V

    return-void
.end method

.method public static v0()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "high_temp_dialog"

    const-string v2, "show"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static v1()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "super_wireless_charge_dialog_action"

    const-string v2, "click_negative"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "super_wireless_charge_dialog"

    invoke-static {v1, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static w(I)V
    .locals 2

    int-to-long v0, p0

    const-string p0, "battery_health_level"

    invoke-static {p0, v0, v1}, Lhd/a;->g(Ljava/lang/String;J)V

    return-void
.end method

.method public static w0()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "nineteen_percent"

    const-string v2, "save_mode_on"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "low_energy_popup"

    invoke-static {v1, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static w1()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "super_wireless_charge_dialog_action"

    const-string v2, "click_positive"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "super_wireless_charge_dialog"

    invoke-static {v1, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static x()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "battery_health_show"

    const-string v2, "show"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "battery_health"

    invoke-static {v1, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static x0()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "nine_percent"

    const-string v2, "save_mode_on"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "low_energy_popup"

    invoke-static {v1, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static x1()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "super_wireless_charge_dialog_action"

    const-string v2, "show"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "super_wireless_charge_dialog"

    invoke-static {v1, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static y(I)V
    .locals 2

    int-to-long v0, p0

    const-string p0, "battery_health_soh"

    invoke-static {p0, v0, v1}, Lhd/a;->g(Ljava/lang/String;J)V

    return-void
.end method

.method public static y0()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "nineteen_percent"

    const-string v2, "show"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "low_energy_popup"

    invoke-static {v1, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static y1()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "super_wireless_charge_noti_action"

    const-string v2, "show"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "super_wireless_charge_noti"

    invoke-static {v1, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static z(I)V
    .locals 2

    int-to-long v0, p0

    const-string p0, "battery_health_usingtime"

    invoke-static {p0, v0, v1}, Lhd/a;->g(Ljava/lang/String;J)V

    return-void
.end method

.method public static z0()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "five_percent"

    const-string v2, "show"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "low_energy_popup"

    invoke-static {v1, v0}, Lhd/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static z1(III)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "total_task_count"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "enable_task_count"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "disable_task_count"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "new_auto_task"

    const-string p1, "task_count"

    invoke-static {p0, p1, v0}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
