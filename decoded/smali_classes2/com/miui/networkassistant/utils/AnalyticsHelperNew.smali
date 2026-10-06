.class public Lcom/miui/networkassistant/utils/AnalyticsHelperNew;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TRACK_EVENT_CLICK_CANCEL_SEND_SMS:Ljava/lang/String; = "networkassistant_click_cancel_send_sms"

.field public static final TRACK_EVENT_CLICK_GRANT_SEND_SMS:Ljava/lang/String; = "networkassistant_click_grant_send_sms"

.field public static final TRACK_EVENT_CORRECTION_START:Ljava/lang/String; = "networkassistant_start_correction_process"

.field public static final TRACK_EVENT_CORRECTION_STOP:Ljava/lang/String; = "networkassistant_abort_correction"

.field public static final TRACK_EVENT_CORRECTION_TRIGGER:Ljava/lang/String; = "networkassistant_trigger_correction_task"

.field public static final TRACK_EVENT_CURRENT_CORRECTION_RESULT:Ljava/lang/String; = "networkassistant_current_correction_result"

.field public static final TRACK_EVENT_OVERALL_CORRECTION_RESULT:Ljava/lang/String; = "networkassistant_overall_correction_result"

.field public static final TRACK_EVENT_PARSE_MESSAGE:Ljava/lang/String; = "networkassistant_parse_message"

.field public static final TRACK_EVENT_SEND_MESSAGE:Ljava/lang/String; = "networkassistant_send_message"

.field public static final TRACK_EVENT_SHOW_GRANT_SEND_SMS_DIALOG:Ljava/lang/String; = "networkassistant_show_grant_send_sms_dialog"

.field public static final TRACK_EVENT_UPDATE_TEMPLATE:Ljava/lang/String; = "networkassistant_update_template"

.field public static final TRACK_KEY_CORRECTION_STOP_REASON:Ljava/lang/String; = "correction_stop_reason"

.field public static final TRACK_KEY_CORRECTION_STOP_REASON_AUTO_TOO_FREQUENTLY:Ljava/lang/String; = "auto_too_frequently"

.field public static final TRACK_KEY_CORRECTION_STOP_REASON_CANORT_GET_CITY:Ljava/lang/String; = "cannot_get_city"

.field public static final TRACK_KEY_CORRECTION_STOP_REASON_COMMAND_IS_EMPTY:Ljava/lang/String; = "cmd_is_empty"

.field public static final TRACK_KEY_CORRECTION_STOP_REASON_CTA:Ljava/lang/String; = "not_allow_cta"

.field public static final TRACK_KEY_CORRECTION_STOP_REASON_INVALID_SLOT_NUMBER:Ljava/lang/String; = "invalid_slot_number"

.field public static final TRACK_KEY_CORRECTION_STOP_REASON_IS_NOT_INSERT:Ljava/lang/String; = "sim_not_insert"

.field public static final TRACK_KEY_CORRECTION_STOP_REASON_IS_TRAFFIC_ROAMING:Ljava/lang/String; = "traffic_roaming"

.field public static final TRACK_KEY_CORRECTION_STOP_REASON_IS_VIRTUALSIM:Ljava/lang/String; = "is_virtualsim"

.field public static final TRACK_KEY_CORRECTION_STOP_REASON_MANUAL_TOO_FREQUENTLY:Ljava/lang/String; = "manual_too_frequently"

.field public static final TRACK_KEY_CORRECTION_STOP_REASON_NOT_FINISHED:Ljava/lang/String; = "is_correcting"

.field public static final TRACK_KEY_CORRECTION_STOP_REASON_OPERATE_NOT_SUPPORT:Ljava/lang/String; = "operate_not_support"

.field public static final TRACK_KEY_CORRECTION_STOP_REASON_SEND_SMS_NOT_AGREE:Ljava/lang/String; = "send_sms_not_agree"

.field public static final TRACK_KEY_CORRECTION_STOP_REASON_SWICHER_AIR_MODE_OPEN:Ljava/lang/String; = "air_mode_open"

.field public static final TRACK_KEY_CORRECTION_STOP_REASON_SWICHER_IS_CLOSE:Ljava/lang/String; = "switcher_is_close"

.field public static final TRACK_KEY_CURRENT_CORRECTION_TYPE:Ljava/lang/String; = "current_correction_type"

.field public static final TRACK_KEY_IS_UPDATE_TEMPLATE:Ljava/lang/String; = "is_update_template"

.field public static final TRACK_KEY_LAUNCH_FROM:Ljava/lang/String; = "launch_from"

.field public static final TRACK_KEY_PARAM_BILL_REMAIN:Ljava/lang/String; = "bill_remain"

.field public static final TRACK_KEY_PARAM_CITY:Ljava/lang/String; = "sim_city"

.field public static final TRACK_KEY_PARAM_CORRECTION_IS_BACKGROUND:Ljava/lang/String; = "is_background"

.field public static final TRACK_KEY_PARAM_DIRECTION:Ljava/lang/String; = "correct_direction"

.field public static final TRACK_KEY_PARAM_OPEN_SCENCE:Ljava/lang/String; = "open_scence"

.field public static final TRACK_KEY_PARAM_OPERATOR:Ljava/lang/String; = "operator"

.field public static final TRACK_KEY_PARAM_PACKAGE_TYPE:Ljava/lang/String; = "package_type"

.field public static final TRACK_KEY_PARAM_PROVINCE:Ljava/lang/String; = "sim_province"

.field public static final TRACK_KEY_PARAM_SEND_TO_RECEIVE_TAKE_UP_TIME:Ljava/lang/String; = "send_to_receive_take_up_time"

.field public static final TRACK_KEY_PARAM_TRAFFIC_REMAIN:Ljava/lang/String; = "traffic_remain"

.field public static final TRACK_KEY_PARAM_TRAFFIC_TOTAL:Ljava/lang/String; = "traffic_total"

.field public static final TRACK_KEY_PARAM_TRAFFIC_USE:Ljava/lang/String; = "traffic_use"

.field public static final TRACK_KEY_PARSE_FAIL_COUNT:Ljava/lang/String; = "sms_parse_fail_count"

.field public static final TRACK_KEY_PARSE_MATCHED_TPLS:Ljava/lang/String; = "matchedTplIds"

.field public static final TRACK_KEY_PARSE_SUCCESS_COUNT:Ljava/lang/String; = "sms_parse_success_count"

.field public static final TRACK_KEY_REAL_CORRECTION_TYPE:Ljava/lang/String; = "real_correction_type"

.field public static final TRACK_KEY_RECEIVE_TIMEOUT_COUNT:Ljava/lang/String; = "sms_receive_time_out_count"

.field public static final TRACK_KEY_RESULT_TYPE:Ljava/lang/String; = "result_type"

.field public static final TRACK_KEY_SCENCE_COMPLETE_PACKAGE_SETTING:Ljava/lang/String; = "scence_complete_package_setting"

.field public static final TRACK_KEY_SCENCE_NETWORKASSISTANT_FIRST_SHOW:Ljava/lang/String; = "scence_networkassistant_first_show"

.field public static final TRACK_KEY_SCENCE_OPEN_BILL_REMINDER:Ljava/lang/String; = "scence_open_bill_reminder"

.field public static final TRACK_KEY_SCENCE_OPEN_TRAFFIC_REMINDER:Ljava/lang/String; = "scence_open_traffic_reminder"

.field public static final TRACK_KEY_SCENCE_TRIGGER_BUSINESS_MANUAL_CORRECTION:Ljava/lang/String; = "scence_traffic"

.field public static final TRACK_KEY_SEND_TIMEOUT_COUNT:Ljava/lang/String; = "sms_send_time_out_count"

.field public static final TRACK_KEY_SLOT_NUM:Ljava/lang/String; = "slot_num"

.field public static final TRACK_KEY_UPDATE_TEMPLATE_TIME:Ljava/lang/String; = "update_msg_template_time"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static apendBaseParameter(IIZLjava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "is_background"

    invoke-virtual {p3, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p2, "slot_num"

    invoke-virtual {p3, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "launch_from"

    invoke-virtual {p3, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {p0, p1}, Lcom/miui/analytics/AnalyticsUtil;->trackNetworkAssistantEvent(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static trackClickCancelSendSms(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "open_scence"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "networkassistant_click_cancel_send_sms"

    invoke-static {p0, v0}, Lcom/miui/networkassistant/utils/AnalyticsHelperNew;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackClickGrantSendSms(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "open_scence"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "networkassistant_click_grant_send_sms"

    invoke-static {p0, v0}, Lcom/miui/networkassistant/utils/AnalyticsHelperNew;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackCorrectionTrigger(IIZ)V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lcom/miui/networkassistant/utils/AnalyticsHelperNew;->apendBaseParameter(IIZLjava/util/HashMap;)V

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p1, 0x0

    aput-object v0, p0, p1

    const-string p1, "trackCorrectionTrigger %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "icv_track"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static trackCurrentCorrectionResult(IIZIZ[ILcom/miui/networkassistant/config/SimUserInfo;)V
    .locals 7

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lcom/miui/networkassistant/utils/AnalyticsHelperNew;->apendBaseParameter(IIZLjava/util/HashMap;)V

    const-string v1, "current_correction_type"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "result_type"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sms_send_time_out_count"

    aget v4, p5, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sms_receive_time_out_count"

    aget v4, p5, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sms_parse_fail_count"

    const/4 v4, 0x2

    aget v5, p5, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sms_parse_success_count"

    const/4 v5, 0x3

    aget v6, p5, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "operator"

    invoke-virtual {p6}, Lcom/miui/networkassistant/config/SimUserInfo;->getOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sim_province"

    invoke-virtual {p6}, Lcom/miui/networkassistant/config/SimUserInfo;->getProvince()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sim_city"

    invoke-virtual {p6}, Lcom/miui/networkassistant/config/SimUserInfo;->getCity()I

    move-result p6

    invoke-static {p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {v0, v1, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p6, "networkassistant_current_correction_result"

    invoke-static {p6, v0}, Lcom/miui/networkassistant/utils/AnalyticsHelperNew;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    const-string p6, "icv_track"

    const-string v0, "trackCurrentCorrectionResult slotNum = %d, launchFrom = %d, isBackground = %b, currentType = %d, result_type = %b, send_timeout_count = %d, receive_timeout_count = %d, parse_fail_count = %d, parse_success_count = %d"

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v1, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v5

    const/4 p0, 0x4

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, p0

    const/4 p0, 0x5

    aget p1, p5, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p0

    const/4 p0, 0x6

    aget p1, p5, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p0

    const/4 p0, 0x7

    aget p1, p5, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p0

    const/16 p0, 0x8

    aget p1, p5, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p0

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p6, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static trackOverallCorrectionResult(IIZILcom/miui/networkassistant/model/TrafficUsedStatus;Lcom/miui/networkassistant/model/TrafficUsedStatus;Lcom/miui/networkassistant/config/SimUserInfo;)V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lcom/miui/networkassistant/utils/AnalyticsHelperNew;->apendBaseParameter(IIZLjava/util/HashMap;)V

    const-string v1, "real_correction_type"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "operator"

    invoke-virtual {p6}, Lcom/miui/networkassistant/config/SimUserInfo;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sim_province"

    invoke-virtual {p6}, Lcom/miui/networkassistant/config/SimUserInfo;->getProvince()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sim_city"

    invoke-virtual {p6}, Lcom/miui/networkassistant/config/SimUserInfo;->getCity()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "package_type"

    invoke-virtual {p6}, Lcom/miui/networkassistant/config/SimUserInfo;->getBrand()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p5, :cond_0

    const-string v1, "traffic_use"

    invoke-virtual {p5}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getUsedTrafficB()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "traffic_remain"

    invoke-virtual {p5}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getRemainTrafficB()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "traffic_total"

    invoke-virtual {p5}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getTotalTrafficB()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p4, :cond_1

    const-string v1, "bill_remain"

    invoke-virtual {p4}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getBillRemained()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    and-int/lit8 v1, p3, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eqz p5, :cond_3

    :cond_2
    and-int/lit8 p5, p3, 0x2

    if-eqz p5, :cond_4

    if-nez p4, :cond_4

    :cond_3
    move p4, v3

    goto :goto_0

    :cond_4
    move p4, v2

    :goto_0
    const-string p5, "result_type"

    if-nez p4, :cond_5

    move v1, v3

    goto :goto_1

    :cond_5
    move v1, v2

    :goto_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p5, "networkassistant_overall_correction_result"

    invoke-static {p5, v0}, Lcom/miui/networkassistant/utils/AnalyticsHelperNew;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    const-string p5, "icv_track"

    const-string v0, "trackOverallCorrectionResult slotNum = %d, launchFrom = %d, isBackground = %b, real_correction_type = %d, package_type = %d, result_type = %b"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v1, p1

    const/4 p0, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p0

    const/4 p0, 0x4

    invoke-virtual {p6}, Lcom/miui/networkassistant/config/SimUserInfo;->getBrand()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p0

    const/4 p0, 0x5

    if-nez p4, :cond_6

    move v2, v3

    :cond_6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, p0

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public static trackParseMessage(IIZILjava/lang/String;ZLjava/lang/String;Lcom/miui/networkassistant/config/SimUserInfo;J)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lcom/miui/networkassistant/utils/AnalyticsHelperNew;->apendBaseParameter(IIZLjava/util/HashMap;)V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "current_correction_type"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "correct_direction"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "result_type"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p7}, Lcom/miui/networkassistant/config/SimUserInfo;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "operator"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p7}, Lcom/miui/networkassistant/config/SimUserInfo;->getProvince()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sim_province"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p7}, Lcom/miui/networkassistant/config/SimUserInfo;->getCity()I

    move-result p7

    invoke-static {p7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p7

    const-string v1, "sim_city"

    invoke-virtual {v0, v1, p7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p8, p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p7

    const-string p8, "send_to_receive_take_up_time"

    invoke-virtual {v0, p8, p7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p7

    if-nez p7, :cond_1

    new-instance p7, Ljava/util/ArrayList;

    invoke-direct {p7}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance p8, Lorg/json/JSONObject;

    invoke-direct {p8, p6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p8}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p8

    :goto_0
    invoke-interface {p8}, Ljava/util/Iterator;->hasNext()Z

    move-result p9

    if-eqz p9, :cond_0

    invoke-interface {p8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p9

    check-cast p9, Ljava/lang/String;

    invoke-interface {p7, p9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const-string p8, "matchedTplIds"

    invoke-virtual {v0, p8, p7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string p7, "networkassistant_parse_message"

    invoke-static {p7, v0}, Lcom/miui/networkassistant/utils/AnalyticsHelperNew;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    const/4 p7, 0x7

    new-array p7, p7, [Ljava/lang/Object;

    const/4 p8, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p7, p8

    const/4 p0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p7, p0

    const/4 p0, 0x2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, p7, p0

    const/4 p0, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p7, p0

    const/4 p0, 0x4

    aput-object p4, p7, p0

    const/4 p0, 0x5

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, p7, p0

    const/4 p0, 0x6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p7, p0

    const-string p0, "trackParseMessage slotNum = %d, launchFrom = %d, isBackground = %b, currentType = %d, direction = %s, result_type = %b\uff0c matchedTplIdsJson = %s"

    invoke-static {p0, p7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "icv_track"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static trackSendMessage(IIZILjava/lang/String;ZLcom/miui/networkassistant/config/SimUserInfo;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lcom/miui/networkassistant/utils/AnalyticsHelperNew;->apendBaseParameter(IIZLjava/util/HashMap;)V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "current_correction_type"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "correct_direction"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p5

    const-string v1, "result_type"

    invoke-virtual {v0, v1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p6}, Lcom/miui/networkassistant/config/SimUserInfo;->getOperator()Ljava/lang/String;

    move-result-object p5

    const-string v1, "operator"

    invoke-virtual {v0, v1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p6}, Lcom/miui/networkassistant/config/SimUserInfo;->getProvince()I

    move-result p5

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p5

    const-string v1, "sim_province"

    invoke-virtual {v0, v1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p6}, Lcom/miui/networkassistant/config/SimUserInfo;->getCity()I

    move-result p5

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p5

    const-string p6, "sim_city"

    invoke-virtual {v0, p6, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p5, "networkassistant_send_message"

    invoke-static {p5, v0}, Lcom/miui/networkassistant/utils/AnalyticsHelperNew;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    const/4 p5, 0x5

    new-array p5, p5, [Ljava/lang/Object;

    const/4 p6, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p5, p6

    const/4 p0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p5, p0

    const/4 p0, 0x2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, p5, p0

    const/4 p0, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p5, p0

    const/4 p0, 0x4

    aput-object p4, p5, p0

    const-string p0, "trackSendMessage slotNum = %d, launchFrom = %d, isBackground = %b, current_correction_type = %d, direction = %s"

    invoke-static {p0, p5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "icv_track"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static trackShowGrantSendSmsDialog(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "open_scence"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "networkassistant_show_grant_send_sms_dialog"

    invoke-static {p0, v0}, Lcom/miui/networkassistant/utils/AnalyticsHelperNew;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackStartCorrection(IIZILcom/miui/networkassistant/config/SimUserInfo;)V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lcom/miui/networkassistant/utils/AnalyticsHelperNew;->apendBaseParameter(IIZLjava/util/HashMap;)V

    invoke-virtual {p4}, Lcom/miui/networkassistant/config/SimUserInfo;->getBrand()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "package_type"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "real_correction_type"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p4}, Lcom/miui/networkassistant/config/SimUserInfo;->getOperator()Ljava/lang/String;

    move-result-object p0

    const-string p1, "operator"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p4}, Lcom/miui/networkassistant/config/SimUserInfo;->getProvince()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "sim_province"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p4}, Lcom/miui/networkassistant/config/SimUserInfo;->getCity()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "sim_city"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "networkassistant_start_correction_process"

    invoke-static {p0, v0}, Lcom/miui/networkassistant/utils/AnalyticsHelperNew;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    const-string p0, "icv_track"

    const-string p1, "trackStartCorrection"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static trackStopReasonCorrection(IIZLjava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lcom/miui/networkassistant/utils/AnalyticsHelperNew;->apendBaseParameter(IIZLjava/util/HashMap;)V

    const-string p0, "correction_stop_reason"

    invoke-virtual {v0, p0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p1, 0x0

    aput-object v0, p0, p1

    const-string p1, "trackStopReasonCorrection %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "icv_track"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static trackUpdateTemplate(IIZZJZLcom/miui/networkassistant/config/SimUserInfo;)V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lcom/miui/networkassistant/utils/AnalyticsHelperNew;->apendBaseParameter(IIZLjava/util/HashMap;)V

    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string p2, "is_update_template"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "update_msg_template_time"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "result_type"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p7}, Lcom/miui/networkassistant/config/SimUserInfo;->getOperator()Ljava/lang/String;

    move-result-object p1

    const-string p2, "operator"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p7}, Lcom/miui/networkassistant/config/SimUserInfo;->getProvince()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "sim_province"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p7}, Lcom/miui/networkassistant/config/SimUserInfo;->getCity()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "sim_city"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "networkassistant_update_template"

    invoke-static {p1, v0}, Lcom/miui/networkassistant/utils/AnalyticsHelperNew;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p1, p2

    const/4 p0, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, p1, p0

    const/4 p0, 0x2

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, p1, p0

    const-string p0, "trackUpdateTemplate slotNum = %d, is_up_date = %b, result_type = %b"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "icv_track"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
