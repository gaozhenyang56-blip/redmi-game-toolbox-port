.class public Lcom/miui/networkassistant/utils/DeviceUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CARRIER:Ljava/lang/String;

.field private static final CUSTOMIZED_VERSION_WHITE_LIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEVICE_NAME:Ljava/lang/String;

.field public static final IS_ALPHA_BUILD:Z

.field public static final IS_CM_CUSTOMIZATION_TEST:Z

.field public static final IS_CUSTOMIZED_VERSION:Z

.field public static final IS_DEVELOPMENT_VERSION:Z

.field public static final IS_DUAL_CARD:Z

.field public static final IS_INTERNATIONAL_BUILD:Z

.field public static final IS_KITKAT_OR_LATER:Z

.field public static final IS_L_OR_LATER:Z

.field public static final IS_MIUI12:Z

.field public static final IS_M_OR_LATER:Z

.field public static final IS_N_OR_LATER:Z

.field public static final IS_OFFICIAL_VERSION:Z

.field public static final IS_P_OR_LATER:Z

.field public static final IS_Q_OR_LATER:Z

.field public static final IS_R_OR_LATER:Z

.field public static final IS_STABLE_VERSION:Z

.field public static final MIUI_VERSION:Ljava/lang/String;

.field private static final USE_CONTROL_PANEL:Ljava/lang/String; = "use_control_panel"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "ro.cust.test"

    const-string v1, "unknow"

    invoke-static {v0, v1}, Lx4/v1;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cm"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_CM_CUSTOMIZATION_TEST:Z

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    sput-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_INTERNATIONAL_BUILD:Z

    const-string v0, "miui.telephony.TelephonyManager"

    invoke-static {v0}, Lbh/d$a;->d(Ljava/lang/String;)Lbh/d$a;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "getDefault"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Lbh/d$a;->c(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lbh/d$a;->l()Lbh/d$a;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "isMultiSimEnabled"

    invoke-virtual {v0, v3, v4, v2}, Lbh/d$a;->b(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lbh/d$a;->a()Z

    move-result v0

    sput-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x1

    sput-boolean v2, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_KITKAT_OR_LATER:Z

    sput-boolean v2, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_L_OR_LATER:Z

    sput-boolean v2, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_M_OR_LATER:Z

    const/16 v3, 0x18

    if-lt v0, v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    sput-boolean v3, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_N_OR_LATER:Z

    const/16 v3, 0x1c

    if-lt v0, v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    sput-boolean v3, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_P_OR_LATER:Z

    const/16 v3, 0x1d

    if-lt v0, v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    sput-boolean v3, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_Q_OR_LATER:Z

    const/16 v3, 0x1e

    if-lt v0, v3, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    sput-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_R_OR_LATER:Z

    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    sput-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_STABLE_VERSION:Z

    sget-boolean v0, Lmiui/os/Build;->IS_DEVELOPMENT_VERSION:Z

    sput-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DEVELOPMENT_VERSION:Z

    sget-boolean v0, Lmiui/os/Build;->IS_ALPHA_BUILD:Z

    sput-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_ALPHA_BUILD:Z

    sget-boolean v0, Lmiui/os/Build;->IS_OFFICIAL_VERSION:Z

    sput-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_OFFICIAL_VERSION:Z

    invoke-static {}, Lx4/t;->h()I

    move-result v0

    const/16 v3, 0x9

    if-le v0, v3, :cond_4

    move v1, v2

    :cond_4
    sput-boolean v1, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_MIUI12:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/miui/networkassistant/utils/DeviceUtil;->CUSTOMIZED_VERSION_WHITE_LIST:Ljava/util/Set;

    const-string v1, "lm_cr"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "it_vodafone"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "mx_telcel"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "cl_moviestar"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "es_vodafone"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "tr_turkcell"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "cl_wom"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "hk_h3g"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "it_tim"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "fr_orange"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "fr_sfr"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "ph_smart"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "es_telefonica"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "kh_seatel"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "cl_en"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "cl_entel"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "ro.miui.customized.region"

    const-string v2, ""

    invoke-static {v1, v2}, Lwg/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_CUSTOMIZED_VERSION:Z

    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    sput-object v0, Lcom/miui/networkassistant/utils/DeviceUtil;->MIUI_VERSION:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sput-object v0, Lcom/miui/networkassistant/utils/DeviceUtil;->DEVICE_NAME:Ljava/lang/String;

    const-string v0, "ro.carrier"

    const-string v1, "null"

    invoke-static {v0, v1}, Lwg/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/networkassistant/utils/DeviceUtil;->CARRIER:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAndroidId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/miui/common/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MD5"

    invoke-static {p0, v0}, Llm/a;->b(Ljava/lang/CharSequence;Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lsm/a;->d([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAppVersionCode()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/miui/common/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/networkassistant/utils/PackageUtil;->getAppVersionCode(Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getImeiMd5()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getImei()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/utils/DeviceUtil;->getMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getImeiMd5LastLetter()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/miui/networkassistant/utils/DeviceUtil;->getImeiMd5()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "0"

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getMd5(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    const-string v0, "MD5"

    invoke-static {p0, v0}, Llm/a;->b(Ljava/lang/CharSequence;Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lsm/a;->d([B)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getMiuiVersionType()Ljava/lang/String;
    .locals 2

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_STABLE_VERSION:Z

    const-string v1, "stable"

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_ALPHA_BUILD:Z

    if-eqz v0, :cond_1

    const-string v1, "alpha"

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DEVELOPMENT_VERSION:Z

    if-eqz v0, :cond_2

    const-string v1, "dev"

    :cond_2
    :goto_0
    return-object v1
.end method

.method public static getRegion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getScreenWidth(Landroid/content/Context;)I
    .locals 1

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result p0

    return p0
.end method

.method public static isCNLanguage()Z
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isCmccSIM(Landroid/content/Context;)Z
    .locals 0

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentActiveSlotNum()I

    move-result p0

    invoke-static {p0}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getSubscriberId(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmiui/telephony/ServiceProviderUtils;->isChinaMobile(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isCnSIM(Landroid/content/Context;)Z
    .locals 1

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentActiveSlotNum()I

    move-result p0

    invoke-static {p0}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getSubscriberId(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmiui/telephony/ServiceProviderUtils;->isChinaMobile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lmiui/telephony/ServiceProviderUtils;->isChinaUnicom(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lmiui/telephony/ServiceProviderUtils;->isChinaTelecom(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isDarkMode(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isLargeScaleMode()Z
    .locals 2

    invoke-static {}, Landroid/content/res/MiuiConfiguration;->getScaleMode()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    const/16 v1, 0xe

    if-eq v0, v1, :cond_1

    const/16 v1, 0xf

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isMiPushRestricted(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "mishare_wifi_connect_state"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public static isSmartDiagnostics(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-boolean v1, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_Q_OR_LATER:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lp4/d;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/networkassistant/utils/DeviceUtil;->isCnSIM(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isUseControlPanel(Landroid/content/Context;)Z
    .locals 3

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_MIUI12:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "use_control_panel"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-ne p0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public static isXiaoMiDevice(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static rebootPhone(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    invoke-virtual {p0, p1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    return-void
.end method
