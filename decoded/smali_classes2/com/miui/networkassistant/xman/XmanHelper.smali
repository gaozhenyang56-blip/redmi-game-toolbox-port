.class public Lcom/miui/networkassistant/xman/XmanHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CATEGORY_XMAN:Ljava/lang/String; = "xman_share"

.field private static final DAY:J = 0x5265c00L

.field private static final KEY_XMAN_ENABLE:Ljava/lang/String; = "key_xman_enable"

.field private static final KEY_XMAN_SETTINGS:Ljava/lang/String; = "key_xman_settings"

.field private static final KEY_XMAN_SETTINGS_ENABLE:Ljava/lang/String; = "key_xman_settings_enable"

.field private static final KEY_XMAN_SHARED:Ljava/lang/String; = "key_xman_shared"

.field private static final PARAM_ENABLE:Ljava/lang/String; = "enable"

.field private static final PARAM_HIDE_CAMERA_ENABLE:Ljava/lang/String; = "hide_camera_enable"

.field private static final PARAM_HIDE_LOCATION_ENABLE:Ljava/lang/String; = "hide_location_enable"

.field private static final PARAM_IGNORE_ENABLE:Ljava/lang/String; = "ignoreEnable"

.field private static final PARAM_PACKAGE:Ljava/lang/String; = "package"

.field private static final PARAM_SRC_PACKAGE:Ljava/lang/String; = "src_package"

.field private static final PARAM_TYPE:Ljava/lang/String; = "type"

.field private static final PARAM_XMAN_SHARE_ENABLE:Ljava/lang/String; = "xman_share_enable"

.field private static final TAG:Ljava/lang/String; = "xman_share"

.field private static final XMAN_CLOUD_DISABLE:Ljava/lang/String; = "xman_cloud_disable"

.field private static final XMAN_SHARE_ENABLE:Ljava/lang/String; = "xman_share_enable"

.field private static final XMAN_SHARE_HIDE_CAMERA:Ljava/lang/String; = "xman_share_hide_camera"

.field private static final XMAN_SHARE_HIDE_LOCATION:Ljava/lang/String; = "xman_share_hide_location"

.field private static final XMAN_SHARE_IGNORE:Ljava/lang/String; = "xman_share_ignore"

.field private static sLastCheckTime:J = 0x0L

.field private static sSupportSecurityShare:I = -0x1

.field private static sSupportXman:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/miui/networkassistant/xman/XmanHelper;->accessXmanModuleByPOST(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Landroid/content/Context;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/networkassistant/xman/XmanHelper;->setXmanCloudDisable(Landroid/content/Context;Z)V

    return-void
.end method

.method private static accessXmanModuleByPOST(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/miui/networkassistant/xman/XmanHelper;->getBaseParams()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/miui/common/net/b;

    const-string v2, "module"

    invoke-direct {v1, v2, p0}, Lcom/miui/common/net/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Lp4/i;

    const-string v1, "networkassistant_xmanhelper"

    invoke-direct {p0, v1}, Lp4/i;-><init>(Ljava/lang/String;)V

    const-string v1, "update"

    const-string v2, "https://api.sec.miui.com/common/whiteList/listByModule"

    const-string v3, "21da76da-224c-2313-ac60-abcd70139283"

    invoke-static {v1, v2, v3, v0, p0}, Lcom/miui/common/net/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lp4/i;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static checkXmanCloudDataAsync(Landroid/content/Context;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XmanHelper - isSupportXman\uff1a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/miui/networkassistant/xman/XmanHelper;->isSupportXman(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "xman_share"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lef/x;->z()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "XmanHelper - CTA Restrict"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {p0}, Lp4/d;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string p0, "XmanHelper - No Network Restrict"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-static {p0}, Lcom/miui/networkassistant/xman/XmanHelper;->isSupportXman(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string p0, "XmanHelper - No Xman Restrict"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/miui/networkassistant/xman/XmanHelper;->sLastCheckTime:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    cmp-long v0, v2, v4

    if-gez v0, :cond_4

    const-string p0, "XmanHelper - Time Restrict"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const-string v0, "XmanHelper - checkXmanCloudDataAsync"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/miui/networkassistant/xman/XmanHelper;->sLastCheckTime:J

    new-instance v0, Lcom/miui/networkassistant/xman/XmanHelper$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/xman/XmanHelper$1;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static getBaseParams()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/common/net/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/miui/common/net/b;

    sget-object v2, Lcom/miui/networkassistant/utils/DeviceUtil;->DEVICE_NAME:Ljava/lang/String;

    const-string v3, "device"

    invoke-direct {v1, v3, v2}, Lcom/miui/common/net/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/common/net/b;

    sget-boolean v2, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_STABLE_VERSION:Z

    if-eqz v2, :cond_0

    const-string v2, "stable"

    goto :goto_0

    :cond_0
    const-string v2, "development"

    :goto_0
    const-string v3, "t"

    invoke-direct {v1, v3, v2}, Lcom/miui/common/net/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/common/net/b;

    invoke-static {}, Lcom/miui/networkassistant/utils/DeviceUtil;->getRegion()Ljava/lang/String;

    move-result-object v2

    const-string v3, "region"

    invoke-direct {v1, v3, v2}, Lcom/miui/common/net/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/common/net/b;

    sget-object v2, Lcom/miui/networkassistant/utils/DeviceUtil;->MIUI_VERSION:Ljava/lang/String;

    const-string v3, "miuiVersion"

    invoke-direct {v1, v3, v2}, Lcom/miui/common/net/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/common/net/b;

    sget-object v2, Lcom/miui/networkassistant/utils/DeviceUtil;->CARRIER:Ljava/lang/String;

    const-string v3, "carrier"

    invoke-direct {v1, v3, v2}, Lcom/miui/common/net/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/common/net/b;

    invoke-static {}, Lcom/miui/networkassistant/utils/DeviceUtil;->getAppVersionCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "appVersion"

    invoke-direct {v1, v3, v2}, Lcom/miui/common/net/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getXmanCloudDisable(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "xman_cloud_disable"

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

.method private static getXmanEnable(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "xman_share_enable"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private static getXmanIgnoreEnable(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "xman_share_ignore"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private static isHideCameraInfoEnable(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "xman_share_hide_camera"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private static isHideLoactionInfoEnable(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "xman_share_hide_location"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private static isSupportSecurityShare(Landroid/content/Context;)Z
    .locals 2

    sget v0, Lcom/miui/networkassistant/xman/XmanHelper;->sSupportSecurityShare:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.XMAN_SHARE_SETTING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/miui/networkassistant/utils/PackageUtil;->isIntentExist(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    sput p0, Lcom/miui/networkassistant/xman/XmanHelper;->sSupportSecurityShare:I

    return p0

    :cond_0
    const/4 p0, 0x1

    if-ne v0, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isSupportXman(Landroid/content/Context;)Z
    .locals 2

    sget v0, Lcom/miui/networkassistant/xman/XmanHelper;->sSupportXman:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.XMAN_MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/miui/networkassistant/utils/PackageUtil;->isIntentExist(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    sput p0, Lcom/miui/networkassistant/xman/XmanHelper;->sSupportXman:I

    return p0

    :cond_0
    const/4 p0, 0x1

    if-ne v0, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static setXmanCloudDisable(Landroid/content/Context;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XmanHelper - setXmanCloudDisable\uff1a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "xman_share"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "xman_cloud_disable"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static trackXmanEnableEvent(Landroid/content/Context;ZZ)V
    .locals 2

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/miui/networkassistant/xman/XmanHelper;->isSupportXman(Landroid/content/Context;)Z

    move-result p0

    const-string v0, "xman_share"

    if-nez p0, :cond_1

    const-string p0, "XmanHelper - No Xman, Restrict"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance p0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "enable"

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ignoreEnable"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "key_xman_enable"

    invoke-static {v0, p1, p0}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackXmanSettingsEnableEvent(Landroid/content/Context;)V
    .locals 3

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/miui/networkassistant/xman/XmanHelper;->isSupportSecurityShare(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {p0}, Lcom/miui/networkassistant/xman/XmanHelper;->isHideLoactionInfoEnable(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "hide_location_enable"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/miui/networkassistant/xman/XmanHelper;->isHideCameraInfoEnable(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "hide_camera_enable"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/miui/networkassistant/xman/XmanHelper;->getXmanEnable(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const-string v1, "xman_share_enable"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "xman_share"

    const-string v1, "key_xman_settings_enable"

    invoke-static {p0, v1, v0}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackXmanSettingsEvent(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "trackXmanSettingsEvent: packName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "xman_share"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    const-string v2, "src_package"

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_xman_settings"

    invoke-static {v1, p0, v0}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static trackXmanSharedEvent(Ljava/lang/String;I)V
    .locals 3

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "trackXmanSharedEvent: packName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "type :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "xman_share"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    const-string v2, "package"

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "type"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_xman_shared"

    invoke-static {v1, p0, v0}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static uploadXmanData(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcom/miui/networkassistant/xman/XmanHelper;->getXmanEnable(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p0}, Lcom/miui/networkassistant/xman/XmanHelper;->getXmanIgnoreEnable(Landroid/content/Context;)Z

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/miui/networkassistant/xman/XmanHelper;->trackXmanEnableEvent(Landroid/content/Context;ZZ)V

    invoke-static {p0}, Lcom/miui/networkassistant/xman/XmanHelper;->trackXmanSettingsEnableEvent(Landroid/content/Context;)V

    return-void
.end method
