.class public Lcom/miui/earthquakewarning/utils/Utils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/earthquakewarning/utils/Utils$Listener;
    }
.end annotation


# static fields
.field private static final ACCOUNT_TYPE_STR:Ljava/lang/String; = "com.xiaomi"

.field public static final EARTHQUAKE_MONITOR_POLICE_NAME:Ljava/lang/String; = "earthquake_monitor"

.field public static final EARTHQUAKE_WARNING_POLICE_NAME:Ljava/lang/String; = "earthquake"

.field private static final EMPTY_STR:Ljava/lang/String; = ""

.field public static final EQM_SENSOR_SUPPORT_DEVICE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final HIDE_GESTURE_LINE:Ljava/lang/String; = "hide_gesture_line"

.field public static final POLICE_ASSIST_POLICE_NAME:Ljava/lang/String; = "emergency_location"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/earthquakewarning/utils/Utils;->EQM_SENSOR_SUPPORT_DEVICE:Ljava/util/List;

    const-string v1, "zeus"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "cupid"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/earthquakewarning/utils/Utils;->lambda$showPrivacyUpdateDialog$0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/earthquakewarning/utils/Utils;->lambda$showPrivacyRevokeTipDialog$4(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/earthquakewarning/utils/Utils$Listener;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/miui/earthquakewarning/utils/Utils;->lambda$showPrivacyUpdateDialog$2(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/earthquakewarning/utils/Utils$Listener;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/earthquakewarning/utils/Utils;->lambda$showPrivacyRevokeTipDialog$3(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e(Landroid/content/Context;Ljava/lang/String;Lcom/miui/earthquakewarning/utils/Utils$Listener;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/earthquakewarning/utils/Utils;->lambda$showPrivacyUpdateDialog$1(Landroid/content/Context;Ljava/lang/String;Lcom/miui/earthquakewarning/utils/Utils$Listener;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic f(Lcom/miui/earthquakewarning/utils/Utils$Listener;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/earthquakewarning/utils/Utils;->lambda$showPrivacyRevokeTipDialog$5(Lcom/miui/earthquakewarning/utils/Utils$Listener;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static getAccountId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p0

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "com.xiaomi"

    invoke-virtual {p0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p0

    if-eqz p0, :cond_3

    array-length v1, p0

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    aget-object p0, p0, v1

    iget-object p0, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    return-object p0

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static getContact()Ljava/lang/String;
    .locals 2

    const-string v0, "key_earthquake_warning_contact"

    const-string v1, ""

    invoke-static {v0, v1}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getContactName()Ljava/lang/String;
    .locals 2

    const-string v0, "key_earthquake_warning_contact_name"

    const-string v1, ""

    invoke-static {v0, v1}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEarthquakeMonitorOrder()Ljava/lang/String;
    .locals 2

    const-string v0, "key_earthquake_warning_monitor_order"

    const-string v1, ""

    invoke-static {v0, v1}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEarthquakeVolunteerToken()Ljava/lang/String;
    .locals 2

    const-string v0, "key_earthquake_warning_monitor_token"

    const-string v1, ""

    invoke-static {v0, v1}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPreviousAreaCode()I
    .locals 2

    const-string v0, "key_earthquake_warning_previous_area_code"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getPreviousAreaDistricCode()I
    .locals 2

    const-string v0, "key_earthquake_warning_previous_area_district_code"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getPreviousBrightness()I
    .locals 2

    const-string v0, "key_earthquake_warning_previous_brightness"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getPreviousBrightnessMode()I
    .locals 2

    const-string v0, "key_earthquake_warning_previous_brightness_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getPreviousDistrict()Ljava/lang/String;
    .locals 2

    const-string v0, "key_earthquake_warning_previous_district"

    const-string v1, ""

    invoke-static {v0, v1}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPreviousGPS()I
    .locals 2

    const-string v0, "key_earthquake_warning_previous_gps"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getPreviousGeoHashCode()Ljava/lang/String;
    .locals 2

    const-string v0, "key_earthquake_warning_previous_geo_hash_code"

    const-string v1, ""

    invoke-static {v0, v1}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPreviousVolume()I
    .locals 2

    const-string v0, "key_earthquake_warning_previous_volume"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSelectIntensity()F
    .locals 2

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x40800000    # 4.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    :goto_0
    const-string v1, "key_select_push_intensity"

    invoke-static {v1, v0}, Lr4/a;->g(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static getUploadTopicTime()J
    .locals 3

    const-string v0, "key_earthquake_warning_set_topic_time"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static initEarthquakeWarningInSetting(Landroid/content/Context;)V
    .locals 7

    const-string v0, "is_first_time_to_check_sleep_mode"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const-string v5, "key_open_earthquake_warning"

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v5, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    invoke-static {p0}, Lcom/miui/earthquakewarning/utils/Utils;->isPowerKeeperSupportSleepModeSwitch(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->isEarthquakeWarningOpen()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v5, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {v0, v4}, Lr4/a;->p(Ljava/lang/String;I)V

    :cond_2
    return-void
.end method

.method public static isEarthquakeMonitorOpen()Z
    .locals 2

    const-string v0, "key_earthquake_warning_open_monitor"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isEarthquakeWarningOpen()Z
    .locals 2

    const-string v0, "key_open_earthquake_warning"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isEmergencyInfoEmpty()Z
    .locals 2

    const-string v0, "preference_key_earthquake_warning_emergency_all_info_delete"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isEnableGestureLine(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "hide_gesture_line"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static isEqmSensorSupportDevice()Z
    .locals 1

    sget-object v0, Lcom/miui/earthquakewarning/utils/Utils;->EQM_SENSOR_SUPPORT_DEVICE:Ljava/util/List;

    invoke-static {v0}, Lx4/a0;->r(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public static isFirstGuide()Z
    .locals 2

    const-string v0, "key_earthquake_warning_first_guide"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isLowEarthquakeWarningOpen()Z
    .locals 2

    const-string v0, "key_open_low_earthquake_warning"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isNeedRestore()Z
    .locals 2

    const-string v0, "key_earthquake_warning_need_restore"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isNeedToForceUpdateArea()Z
    .locals 2

    const-string v0, "key_area_need_update"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isPowerKeeperSupportSleepModeSwitch(Landroid/content/Context;)Z
    .locals 3

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "powerkeep_earthquake_warning_version"

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method public static isVoiceCapable()Z
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "EarthquakeManager"

    const-string v2, "isVoiceCapable error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$showPrivacyRevokeTipDialog$3(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lef/w;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lue/e;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static synthetic lambda$showPrivacyRevokeTipDialog$4(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    new-instance p3, Lcom/miui/earthquakewarning/utils/g;

    invoke-direct {p3, p0, p1}, Lcom/miui/earthquakewarning/utils/g;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p3}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private static synthetic lambda$showPrivacyRevokeTipDialog$5(Lcom/miui/earthquakewarning/utils/Utils$Listener;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/miui/earthquakewarning/utils/Utils$Listener;->onRefusePrivacyChange()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$showPrivacyUpdateDialog$0(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lef/w;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lue/e;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static synthetic lambda$showPrivacyUpdateDialog$1(Landroid/content/Context;Ljava/lang/String;Lcom/miui/earthquakewarning/utils/Utils$Listener;Landroid/content/DialogInterface;I)V
    .locals 0

    new-instance p4, Lcom/miui/earthquakewarning/utils/f;

    invoke-direct {p4, p0, p1}, Lcom/miui/earthquakewarning/utils/f;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p4}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    invoke-interface {p3}, Landroid/content/DialogInterface;->dismiss()V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/miui/earthquakewarning/utils/Utils$Listener;->onAgreePrivacyChange()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$showPrivacyUpdateDialog$2(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/earthquakewarning/utils/Utils$Listener;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p5}, Landroid/content/DialogInterface;->dismiss()V

    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/earthquakewarning/utils/Utils;->showPrivacyRevokeTipDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/earthquakewarning/utils/Utils$Listener;)V

    return-void
.end method

.method public static needRestore(Z)V
    .locals 1

    const-string v0, "key_earthquake_warning_need_restore"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static openEarthquakeMonitor(Z)V
    .locals 1

    const-string v0, "key_earthquake_warning_open_monitor"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static setContact(Ljava/lang/String;)V
    .locals 1

    const-string v0, "key_earthquake_warning_contact"

    invoke-static {v0, p0}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setContactName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "key_earthquake_warning_contact_name"

    invoke-static {v0, p0}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setEarthquakeMonitorOrder(Ljava/lang/String;)V
    .locals 1

    const-string v0, "key_earthquake_warning_monitor_order"

    invoke-static {v0, p0}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setEarthquakeVolunteerToken(Ljava/lang/String;)V
    .locals 1

    const-string v0, "key_earthquake_warning_monitor_token"

    invoke-static {v0, p0}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setEarthquakeWarningOpen(Z)V
    .locals 2

    const-string v0, "key_open_earthquake_warning"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0, p0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static setEmergencyDeleteAll(Z)V
    .locals 1

    const-string v0, "preference_key_earthquake_warning_emergency_all_info_delete"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static setFirstGuide(Z)V
    .locals 1

    const-string v0, "key_earthquake_warning_first_guide"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static setLowEarthquakeWarningOpen(Z)V
    .locals 1

    const-string v0, "key_open_low_earthquake_warning"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static setNeedToForceUpdateArea(Z)V
    .locals 1

    const-string v0, "key_area_need_update"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static setPreviousAreaCode(I)V
    .locals 1

    const-string v0, "key_earthquake_warning_previous_area_code"

    invoke-static {v0, p0}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public static setPreviousAreaDistrictCode(I)V
    .locals 1

    const-string v0, "key_earthquake_warning_previous_area_district_code"

    invoke-static {v0, p0}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public static setPreviousBrightness(I)V
    .locals 1

    const-string v0, "key_earthquake_warning_previous_brightness"

    invoke-static {v0, p0}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public static setPreviousBrightnessMode(I)V
    .locals 1

    const-string v0, "key_earthquake_warning_previous_brightness_mode"

    invoke-static {v0, p0}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public static setPreviousDistrict(Ljava/lang/String;)V
    .locals 1

    const-string v0, "key_earthquake_warning_previous_district"

    invoke-static {v0, p0}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setPreviousGPS(I)V
    .locals 1

    const-string v0, "key_earthquake_warning_previous_gps"

    invoke-static {v0, p0}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public static setPreviousGeoHashCode(Ljava/lang/String;)V
    .locals 1

    const-string v0, "key_earthquake_warning_previous_geo_hash_code"

    invoke-static {v0, p0}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setPreviousVolume(I)V
    .locals 1

    const-string v0, "key_earthquake_warning_previous_volume"

    invoke-static {v0, p0}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public static setSelectIntensity(F)V
    .locals 1

    const-string v0, "key_select_push_intensity"

    invoke-static {v0, p0}, Lr4/a;->o(Ljava/lang/String;F)V

    return-void
.end method

.method public static setUploadTopicTime(J)V
    .locals 1

    const-string v0, "key_earthquake_warning_set_topic_time"

    invoke-static {v0, p0, p1}, Lr4/a;->q(Ljava/lang/String;J)V

    return-void
.end method

.method public static showEqmEntry(Landroid/content/Context;)Z
    .locals 2

    const-class v0, Landroid/hardware/SensorManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorManager;

    const v0, 0x1fa269c

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object p0

    sget-boolean v0, Lmiui/os/Build;->IS_DEVELOPMENT_VERSION:Z

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/hardware/Sensor;->getVersion()I

    move-result p0

    const/4 v0, 0x2

    if-ge p0, v0, :cond_1

    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->isEqmSensorSupportDevice()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static showPrivacyRevokeTipDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/earthquakewarning/utils/Utils$Listener;)V
    .locals 5

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1214bc

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v4, 0x1

    aput-object p1, v2, v4

    const/4 p1, 0x2

    aput-object p3, v2, p1

    const p1, 0x7f1214bb

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v1, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p3, Lcom/miui/earthquakewarning/utils/d;

    invoke-direct {p3, p0, p2}, Lcom/miui/earthquakewarning/utils/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const p0, 0x7f121452

    invoke-virtual {p1, p0, p3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    new-instance p1, Lcom/miui/earthquakewarning/utils/e;

    invoke-direct {p1, p4}, Lcom/miui/earthquakewarning/utils/e;-><init>(Lcom/miui/earthquakewarning/utils/Utils$Listener;)V

    const p2, 0x7f12144e

    invoke-virtual {p0, p2, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->getMessageView()Landroid/widget/TextView;

    move-result-object p0

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method public static showPrivacyUpdateDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/earthquakewarning/utils/Utils$Listener;)V
    .locals 8

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    const v6, 0x7f121521

    invoke-virtual {v2, v6, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<br>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p4, v2, v5

    const v3, 0x7f121522

    invoke-virtual {p1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f121523

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v5}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/miui/earthquakewarning/utils/b;

    invoke-direct {v1, p0, p2, p5}, Lcom/miui/earthquakewarning/utils/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/miui/earthquakewarning/utils/Utils$Listener;)V

    const v2, 0x7f121452

    invoke-virtual {p1, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v7, Lcom/miui/earthquakewarning/utils/c;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/miui/earthquakewarning/utils/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/earthquakewarning/utils/Utils$Listener;)V

    const p0, 0x7f120499

    invoke-virtual {p1, p0, v7}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->getMessageView()Landroid/widget/TextView;

    move-result-object p0

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method public static supportMap(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "com.miui.securityadd"

    invoke-static {p0, v0}, Lx4/f1;->r(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    const v0, 0x16398

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
