.class public Lcom/miui/earthquakewarning/utils/NotificationUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BRIGHTNESS_SET:I = 0xe1

.field private static final VOLUME_SET:F = 1.5f


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isGpsOpen(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lme/w;->r(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static muteVolume(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/miui/earthquakewarning/utils/NotificationUtil;->setMaxVolume(Landroid/content/Context;I)V

    return-void
.end method

.method public static remuteVolume(Landroid/content/Context;)V
    .locals 2

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3fc00000    # 1.5f

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {p0, v0}, Lcom/miui/earthquakewarning/utils/NotificationUtil;->setMaxVolume(Landroid/content/Context;I)V

    return-void
.end method

.method public static resetBrightness(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->getPreviousBrightness()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0, v0}, Lcom/miui/earthquakewarning/utils/NotificationUtil;->setScreenBrightness(Landroid/content/Context;F)V

    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->getPreviousBrightnessMode()I

    move-result v0

    invoke-static {p0, v0}, Lcom/miui/earthquakewarning/utils/NotificationUtil;->setScreenMode(Landroid/content/Context;I)V

    return-void
.end method

.method public static resetGPS(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->getPreviousGPS()I

    move-result v0

    invoke-static {p0, v0}, Lme/w;->y0(Landroid/content/Context;I)V

    return-void
.end method

.method public static resetVolume(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->getPreviousVolume()I

    move-result v0

    invoke-static {p0, v0}, Lcom/miui/earthquakewarning/utils/NotificationUtil;->setMaxVolume(Landroid/content/Context;I)V

    return-void
.end method

.method public static setBrightness(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/miui/earthquakewarning/utils/Utils;->setPreviousBrightnessMode(I)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/miui/earthquakewarning/utils/Utils;->setPreviousBrightness(I)V

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/miui/earthquakewarning/utils/NotificationUtil;->setScreenMode(Landroid/content/Context;I)V

    :cond_0
    const/high16 v0, 0x43610000    # 225.0f

    invoke-static {p0, v0}, Lcom/miui/earthquakewarning/utils/NotificationUtil;->setScreenBrightness(Landroid/content/Context;F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static setGpsStartStatus(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lme/w;->r(Landroid/content/Context;)I

    move-result p0

    invoke-static {p0}, Lcom/miui/earthquakewarning/utils/Utils;->setPreviousGPS(I)V

    return-void
.end method

.method public static setGpsStatus(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lme/w;->r(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/miui/earthquakewarning/utils/Utils;->setPreviousGPS(I)V

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lme/w;->y0(Landroid/content/Context;I)V

    return-void
.end method

.method public static setGuideVolume(Landroid/content/Context;)V
    .locals 3

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    invoke-static {v2}, Lcom/miui/earthquakewarning/utils/Utils;->setPreviousVolume(I)V

    int-to-float v0, v0

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3fc00000    # 1.5f

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {p0, v0}, Lcom/miui/earthquakewarning/utils/NotificationUtil;->setMaxVolume(Landroid/content/Context;I)V

    return-void
.end method

.method public static setMaxVolume(Landroid/content/Context;)V
    .locals 3

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    invoke-static {v2}, Lcom/miui/earthquakewarning/utils/Utils;->setPreviousVolume(I)V

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3fc00000    # 1.5f

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {p0, v0}, Lcom/miui/earthquakewarning/utils/NotificationUtil;->setMaxVolume(Landroid/content/Context;I)V

    return-void
.end method

.method private static setMaxVolume(Landroid/content/Context;I)V
    .locals 2

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return-void
.end method

.method private static setScreenBrightness(Landroid/content/Context;F)V
    .locals 2

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private static setScreenMode(Landroid/content/Context;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "screen_brightness_mode"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
