.class public Lcom/miui/earthquakewarning/analytics/AnalyticHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALERT_CALL:Ljava/lang/String; = "alert_call"

.field public static final ALERT_CLOSE:Ljava/lang/String; = "alert_close"

.field public static final ALERT_EMERGENCY:Ljava/lang/String; = "alert_emergency"

.field public static final ALERT_SAFE_PLACE:Ljava/lang/String; = "alert_safe_place"

.field public static final ALERT_SHOW:Ljava/lang/String; = "alert_show"

.field static final CATEGORY_NAME:Ljava/lang/String; = "com.miui.earthquakewarning"

.field public static final GUIDE_CLICK_BACK:Ljava/lang/String; = "guide_click_back"

.field public static final GUIDE_CLICK_DISAGREE:Ljava/lang/String; = "guide_click_disagree"

.field public static final GUIDE_CLICK_LISTEN:Ljava/lang/String; = "guide_click_listen"

.field public static final GUIDE_CLICK_NEXT:Ljava/lang/String; = "guide_click_next"

.field public static final KEY_TOGGLE_EARTHQUAKE_MONITOR:Ljava/lang/String; = "toggle_earthquake_monitor"

.field public static final KEY_TOGGLE_EARTHQUAKE_WARNING:Ljava/lang/String; = "toggle_earthquake_warning"

.field public static final KEY_TOGGLE_EARTHQUAKE_WARNING_PUSH:Ljava/lang/String; = "toggle_earthquake_warning_push"

.field public static final MAIN_ADD_CONTACT:Ljava/lang/String; = "main_add_contact"

.field public static final MAIN_EMERGENCY:Ljava/lang/String; = "main_emergency"

.field public static final MAIN_GUIDE:Ljava/lang/String; = "main_guide"

.field public static final MAIN_SAFE_PLACE:Ljava/lang/String; = "main_safe_place"

.field public static final MAIN_SWITCH_OFF:Ljava/lang/String; = "main_switch_off"

.field public static final MAIN_SWITCH_ON:Ljava/lang/String; = "main_switch_on"

.field public static final PUSH_ERROR_ILLGAL_TYPE:Ljava/lang/String; = "push_error_illgal_type"

.field public static final PUSH_ERROR_INTENSITY_LOW:Ljava/lang/String; = "push_error_intensity_low"

.field public static final PUSH_ERROR_LOCATION_FAILED:Ljava/lang/String; = "push_error_location_failed"

.field public static final PUSH_ERROR_NOT_OPEN:Ljava/lang/String; = "push_error_not_open"

.field public static final PUSH_ERROR_NO_SIGN_AREA:Ljava/lang/String; = "push_error_no_sign_area"

.field public static final PUSH_ERROR_PARSE_SIGNATURE:Ljava/lang/String; = "push_error_parse_signature"

.field public static final PUSH_ERROR_TIME_LONG:Ljava/lang/String; = "push_error_time_long"

.field public static final PUSH_RECEIVE:Ljava/lang/String; = "push_receive"

.field public static final PUSH_SHOW:Ljava/lang/String; = "push_show"

.field static final TRACK_KEY_ALERT_RESULT_ACTION:Ljava/lang/String; = "alert_result_action"

.field static final TRACK_KEY_ALERT_TIMES_ACTION:Ljava/lang/String; = "alert_result_times_action"

.field static final TRACK_KEY_GUIDE_1_RESULT_ACTION:Ljava/lang/String; = "guide1_result_action"

.field static final TRACK_KEY_GUIDE_2_RESULT_ACTION:Ljava/lang/String; = "guide2_result_action"

.field static final TRACK_KEY_GUIDE_3_RESULT_ACTION:Ljava/lang/String; = "guide3_result_action"

.field static final TRACK_KEY_GUIDE_4_RESULT_ACTION:Ljava/lang/String; = "guide4_result_action"

.field static final TRACK_KEY_MAIN_RESULT_ACTION:Ljava/lang/String; = "main_result_action"

.field public static final TRACK_KEY_MONITOR_CLICK_ACTION:Ljava/lang/String; = "monitor_click_action"

.field static final TRACK_KEY_PARAMS_MODULE_CLICK:Ljava/lang/String; = "module_click"

.field static final TRACK_KEY_PUSH_ACTION:Ljava/lang/String; = "push_action"

.field static final TRACK_KEY_SETTINGS_RESULT_ACTION:Ljava/lang/String; = "setting_result_action"

.field static final TRACK_PARAM_KEY_MODULE_SHOW:Ljava/lang/String; = "module_show"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V
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

    :try_start_0
    invoke-static {p0, p1}, Lcom/miui/earthquakewarning/analytics/NewTracker;->legacyTrack(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "EWAnalyticHelper"

    const-string v0, "trackWarningTime"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private static recordNumericEvent(Ljava/lang/String;J)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/miui/earthquakewarning/analytics/NewTracker;->legacyTrack(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackAlertResultActionModuleClick(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "module_click"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "alert_result_action"

    invoke-static {p0, v0}, Lcom/miui/earthquakewarning/analytics/AnalyticHelper;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackGuide1ActionModuleClick(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "module_click"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "guide1_result_action"

    invoke-static {p0, v0}, Lcom/miui/earthquakewarning/analytics/AnalyticHelper;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackGuide2ActionModuleClick(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "module_click"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "guide2_result_action"

    invoke-static {p0, v0}, Lcom/miui/earthquakewarning/analytics/AnalyticHelper;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackGuide3ActionModuleClick(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "module_click"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "guide3_result_action"

    invoke-static {p0, v0}, Lcom/miui/earthquakewarning/analytics/AnalyticHelper;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackGuide4ActionModuleClick(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "module_click"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "guide4_result_action"

    invoke-static {p0, v0}, Lcom/miui/earthquakewarning/analytics/AnalyticHelper;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackMainResultActionModuleClick(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "module_click"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "main_result_action"

    invoke-static {p0, v0}, Lcom/miui/earthquakewarning/analytics/AnalyticHelper;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackMonitorClickActionModuleClick(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "module_click"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "monitor_click_action"

    invoke-static {p0, v0}, Lcom/miui/earthquakewarning/analytics/AnalyticHelper;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackMonitorShowActionModuleClick(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "module_show"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "monitor_click_action"

    invoke-static {p0, v0}, Lcom/miui/earthquakewarning/analytics/AnalyticHelper;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackPushActionModuleClick(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "module_click"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "push_action"

    invoke-static {p0, v0}, Lcom/miui/earthquakewarning/analytics/AnalyticHelper;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackSettingsStatus(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "module_click"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "setting_result_action"

    invoke-static {p0, v0}, Lcom/miui/earthquakewarning/analytics/AnalyticHelper;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackSubscribeCount(I)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "module_show"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "setting_result_action"

    invoke-static {p0, v0}, Lcom/miui/earthquakewarning/analytics/AnalyticHelper;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackUpdateToggleStat()V
    .locals 7

    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->isEarthquakeWarningOpen()Z

    move-result v0

    const-wide/16 v1, 0x1

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_0

    move-wide v5, v1

    goto :goto_0

    :cond_0
    move-wide v5, v3

    :goto_0
    const-string v0, "toggle_earthquake_warning"

    invoke-static {v0, v5, v6}, Lcom/miui/earthquakewarning/analytics/AnalyticHelper;->recordNumericEvent(Ljava/lang/String;J)V

    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->isEarthquakeMonitorOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    move-wide v5, v1

    goto :goto_1

    :cond_1
    move-wide v5, v3

    :goto_1
    const-string v0, "toggle_earthquake_monitor"

    invoke-static {v0, v5, v6}, Lcom/miui/earthquakewarning/analytics/AnalyticHelper;->recordNumericEvent(Ljava/lang/String;J)V

    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->isLowEarthquakeWarningOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move-wide v1, v3

    :goto_2
    const-string v0, "toggle_earthquake_warning_push"

    invoke-static {v0, v1, v2}, Lcom/miui/earthquakewarning/analytics/AnalyticHelper;->recordNumericEvent(Ljava/lang/String;J)V

    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->getSelectIntensity()F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/earthquakewarning/analytics/AnalyticHelper;->trackSettingsStatus(Ljava/lang/String;)V

    new-instance v0, Lcom/miui/earthquakewarning/service/ManageSubscribeDataTask;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/miui/earthquakewarning/service/ManageSubscribeDataTask;-><init>(I)V

    new-instance v1, Lcom/miui/earthquakewarning/analytics/AnalyticHelper$1;

    invoke-direct {v1}, Lcom/miui/earthquakewarning/analytics/AnalyticHelper$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/miui/earthquakewarning/service/ManageSubscribeDataTask;->setCallBack(Lcom/miui/earthquakewarning/service/ManageSubscribeDataTask$CallBack;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static trackWarningTime(I)V
    .locals 2

    const-string v0, "alert_result_times_action"

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/miui/earthquakewarning/analytics/NewTracker;->legacyTrack(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "EWAnalyticHelper"

    const-string v1, "trackWarningTime"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
