.class public Lcom/miui/electricrisk/AiGuardUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/electricrisk/AiGuardUtils$Capability;
    }
.end annotation


# static fields
.field public static final CAPABILITY_NONE:I = 0x0

.field public static final CAPABILITY_PHONE:I = 0x1

.field public static final CAPABILITY_VIDEO:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkGuardProviderVersion(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.miui.guardprovider"

    const/16 v2, 0x80

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "miui.aiGuardVersion"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-lt p0, v1, :cond_0

    move v0, v1

    :catch_0
    :cond_0
    return v0
.end method

.method static checkServiceAvailable()Z
    .locals 3

    const-string v0, "debug.config.media.video.voip.detect"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "dada"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "haotian"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method static getCapabilities(Landroid/content/Context;)I
    .locals 1

    invoke-static {p0}, Lcom/miui/electricrisk/AiGuardUtils;->isPhoneScamSupported(Landroid/content/Context;)Z

    move-result p0

    invoke-static {}, Lcom/miui/electricrisk/AiGuardUtils;->isVideoScamSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    or-int/lit8 p0, p0, 0x2

    :cond_0
    return p0
.end method

.method public static isAiGuardEnabled(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Landroidx/preference/f;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "ai_guard_function_switch"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isAiGuardSupported(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/miui/electricrisk/AiGuardUtils;->getCapabilities(Landroid/content/Context;)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isPhoneScamSupported(Landroid/content/Context;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lcom/miui/electricrisk/AiGuardUtils;->checkGuardProviderVersion(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isVideoScamSupported()Z
    .locals 1

    invoke-static {}, Lcom/miui/electricrisk/AiGuardUtils;->checkServiceAvailable()Z

    move-result v0

    return v0
.end method

.method public static setPosterActivityState(Landroid/content/Context;Z)V
    .locals 2

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/miui/electricrisk/AiGuardPosterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    return-void
.end method
