.class public Lcom/miui/networkassistant/zman/ZmanHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ACTION_ZMAN_SETTINGS:Ljava/lang/String; = "miui.intent.action.ZMAN_SECURITY_SHARE_SETTING"

.field private static final CATEGORY_ZMAN:Ljava/lang/String; = "security_share"

.field private static final DAY:J = 0x5265c00L

.field private static final KEY_SECURITY_SHARE_ONCE_SETTINGS_CHANGE:Ljava/lang/String; = "once_settings_change"

.field private static final KEY_SECURITY_SHARE_SHARED_IMAGE:Ljava/lang/String; = "shared_image"

.field private static final KEY_SECURITY_SHARE_SHARED_IMAGES:Ljava/lang/String; = "shared_images"

.field private static final KEY_SECURITY_SHARE_STATUS:Ljava/lang/String; = "status"

.field private static final PARAM_CAMERA_ENABLE:Ljava/lang/String; = "param_camera_enable"

.field static final PARAM_IMAGE_HAVE_CAMERA:Ljava/lang/String; = "param_image_have_camera"

.field static final PARAM_IMAGE_HAVE_LOCATION:Ljava/lang/String; = "param_image_have_location"

.field private static final PARAM_LOCATION_ENABLE:Ljava/lang/String; = "param_location_enable"

.field static final PARAM_SRC_PACKAGENAME:Ljava/lang/String; = "param_src_packagename"

.field private static final PARAM_TAIL_ENABLE:Ljava/lang/String; = "param_tail_enable"

.field private static final TAG:Ljava/lang/String; = "zman_share_sec"

.field private static final ZMAN_CLOUD_DISABLE:Ljava/lang/String; = "zman_cloud_disable"

.field private static final ZMAN_SHARE_CAMERA_ENABLE:Ljava/lang/String; = "zman_share_hide_camera"

.field private static final ZMAN_SHARE_ENABLE:Ljava/lang/String; = "zman_share_enable"

.field private static final ZMAN_SHARE_LOCATION_ENABLE:Ljava/lang/String; = "zman_share_hide_location"

.field private static final ZMAN_SHARE_TAIL_CLOUD_DISABLE:Ljava/lang/String; = "share_tail_disable"

.field private static sLastCheckTime:J = 0x0L

.field private static sSupportSecurityShare:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/miui/networkassistant/zman/ZmanHelper;->accessSecurityShareModuleByPOST()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static accessSecurityShareModuleByPOST()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/miui/networkassistant/zman/ZmanHelper;->getBaseParams()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/miui/common/net/b;

    const-string v2, "module"

    const-string v3, "securityshare"

    invoke-direct {v1, v2, v3}, Lcom/miui/common/net/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lp4/i;

    const-string v2, "networkassistant_securityshare"

    invoke-direct {v1, v2}, Lp4/i;-><init>(Ljava/lang/String;)V

    const-string v2, "update"

    const-string v3, "https://api.sec.miui.com/common/whiteList/listByModule"

    const-string v4, "21da76da-224c-2313-ac60-abcd70139283"

    invoke-static {v2, v3, v4, v0, v1}, Lcom/miui/common/net/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lp4/i;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static checkZmanCloudDataAsync(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/miui/networkassistant/zman/ZmanHelper;->sLastCheckTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    const-string v1, "zman_share_sec"

    if-gez v0, :cond_0

    const-string p0, "Restrict - Time "

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/miui/networkassistant/zman/ZmanHelper;->isSupportSecurityShare()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "Restrict - No Zman "

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {}, Lef/x;->z()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p0, "Restrict - CTA "

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-static {p0}, Lp4/d;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string p0, "Restrict - No Network "

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const-string v0, "Start - checkZmanCloudDataAsync"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/miui/networkassistant/zman/ZmanHelper;->sLastCheckTime:J

    new-instance v0, Lcom/miui/networkassistant/zman/ZmanHelper$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/zman/ZmanHelper$1;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static getBaseMap(Landroid/content/Context;Z)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {p0}, Lcom/miui/networkassistant/zman/ZmanHelper;->isHideLocationInfoEnable(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "param_location_enable"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/miui/networkassistant/zman/ZmanHelper;->isHideCameraInfoEnable(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "param_camera_enable"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/miui/networkassistant/zman/ZmanHelper;->isSecurityShareTailEnable(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const-string p1, "param_tail_enable"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
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

.method public static getSecurityShareCloudDisable(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "zman_cloud_disable"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public static getShareTailCloudDisable(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "share_tail_disable"

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

    const-string v0, "zman_share_hide_camera"

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

.method private static isHideLocationInfoEnable(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "zman_share_hide_location"

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

.method public static isNeedSecurityShare(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p0}, Lih/a;->e(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/miui/networkassistant/zman/ZmanHelper;->isHideCameraInfoEnable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/miui/networkassistant/zman/ZmanHelper;->isHideLocationInfoEnable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "zman_share_enable"

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1
.end method

.method private static isSecurityShareTailEnable(Landroid/content/Context;)Z
    .locals 4

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_INTERNATIONAL_BUILD:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_STABLE_VERSION:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    const-string v3, "zman_share_enable"

    invoke-static {p0, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v2, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method private static isSupportSecurityShare()Z
    .locals 1

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_MIUI12:Z

    return v0
.end method

.method public static setSecurityShareCloudDisable(Landroid/content/Context;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "zman_cloud_disable"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static setShareTailCloudDisable(Landroid/content/Context;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "share_tail_disable"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private static toStr(Z)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    const-string p0, "1"

    goto :goto_0

    :cond_0
    const-string p0, "0"

    :goto_0
    return-object p0
.end method

.method public static trackOnceSettingsChangeEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/miui/networkassistant/zman/ZmanHelper;->isSupportSecurityShare()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/miui/networkassistant/zman/ZmanHelper;->getBaseMap(Landroid/content/Context;Z)Ljava/util/Map;

    move-result-object p0

    const-string v0, "param_src_packagename"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "security_share"

    const-string v0, "once_settings_change"

    invoke-static {p1, v0, p0}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackSecurityShareStateEvent(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/miui/networkassistant/zman/ZmanHelper;->isSupportSecurityShare()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/miui/networkassistant/zman/ZmanHelper;->getBaseMap(Landroid/content/Context;Z)Ljava/util/Map;

    move-result-object p0

    const-string v0, "security_share"

    const-string v1, "status"

    invoke-static {v0, v1, p0}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackSecuritySharedImageEvent(Landroid/content/Context;Ljava/lang/String;ZZ)V
    .locals 1

    invoke-static {}, Lcom/miui/networkassistant/zman/ZmanHelper;->isSupportSecurityShare()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/miui/networkassistant/zman/ZmanHelper;->getBaseMap(Landroid/content/Context;Z)Ljava/util/Map;

    move-result-object p0

    const-string v0, "param_src_packagename"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/miui/networkassistant/zman/ZmanHelper;->toStr(Z)Ljava/lang/String;

    move-result-object p1

    const-string p2, "param_image_have_location"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/miui/networkassistant/zman/ZmanHelper;->toStr(Z)Ljava/lang/String;

    move-result-object p1

    const-string p2, "param_image_have_camera"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "security_share"

    const-string p2, "shared_image"

    invoke-static {p1, p2, p0}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackSecuritySharedImagesEvent(Landroid/content/Context;Ljava/lang/String;ZZ)V
    .locals 1

    invoke-static {}, Lcom/miui/networkassistant/zman/ZmanHelper;->isSupportSecurityShare()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/miui/networkassistant/zman/ZmanHelper;->getBaseMap(Landroid/content/Context;Z)Ljava/util/Map;

    move-result-object p0

    const-string v0, "param_src_packagename"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/miui/networkassistant/zman/ZmanHelper;->toStr(Z)Ljava/lang/String;

    move-result-object p1

    const-string p2, "param_image_have_location"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/miui/networkassistant/zman/ZmanHelper;->toStr(Z)Ljava/lang/String;

    move-result-object p1

    const-string p2, "param_image_have_camera"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "security_share"

    const-string p2, "shared_images"

    invoke-static {p1, p2, p0}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackViewShowEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/miui/networkassistant/zman/ZmanHelper;->isSupportSecurityShare()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/miui/networkassistant/zman/ZmanHelper;->getBaseMap(Landroid/content/Context;Z)Ljava/util/Map;

    move-result-object p0

    const-string v0, "param_src_packagename"

    invoke-interface {p0, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "security_share"

    invoke-static {p2, p1, p0}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
