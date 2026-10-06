.class public Lx4/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:F

.field private static final b:F

.field private static final c:F

.field private static final d:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    const-string v2, "config_GammaLinearConvertRValue"

    invoke-static {v2}, Lx4/m;->h(Ljava/lang/String;)F

    move-result v2

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f000000    # 0.5f

    :goto_0
    sput v2, Lx4/m;->a:F

    if-lt v0, v1, :cond_1

    const-string v2, "config_GammaLinearConvertAValue"

    invoke-static {v2}, Lx4/m;->h(Ljava/lang/String;)F

    move-result v2

    goto :goto_1

    :cond_1
    const v2, 0x3e371ff0

    :goto_1
    sput v2, Lx4/m;->b:F

    if-lt v0, v1, :cond_2

    const-string v2, "config_GammaLinearConvertBValue"

    invoke-static {v2}, Lx4/m;->h(Ljava/lang/String;)F

    move-result v2

    goto :goto_2

    :cond_2
    const v2, 0x3e91c020

    :goto_2
    sput v2, Lx4/m;->c:F

    if-lt v0, v1, :cond_3

    const-string v0, "config_GammaLinearConvertCValue"

    invoke-static {v0}, Lx4/m;->h(Ljava/lang/String;)F

    move-result v0

    goto :goto_3

    :cond_3
    const v0, 0x3f0f564f

    :goto_3
    sput v0, Lx4/m;->d:F

    return-void
.end method

.method public static a(FFF)F
    .locals 1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    cmpl-float p1, p0, p2

    if-lez p1, :cond_1

    move p0, p2

    :cond_1
    :goto_0
    return p0
.end method

.method public static b(III)I
    .locals 2

    int-to-float p0, p0

    const/4 v0, 0x0

    const v1, 0x477fff00    # 65535.0f

    invoke-static {v0, v1, p0}, Lx4/m;->q(FFF)F

    move-result p0

    sget v0, Lx4/m;->a:F

    cmpg-float v1, p0, v0

    if-gtz v1, :cond_0

    div-float/2addr p0, v0

    invoke-static {p0}, Lx4/m;->s(F)F

    move-result p0

    goto :goto_0

    :cond_0
    sget v0, Lx4/m;->d:F

    sub-float/2addr p0, v0

    sget v0, Lx4/m;->b:F

    div-float/2addr p0, v0

    invoke-static {p0}, Lx4/m;->f(F)F

    move-result p0

    sget v0, Lx4/m;->c:F

    add-float/2addr p0, v0

    :goto_0
    int-to-float p1, p1

    int-to-float p2, p2

    const/high16 v0, 0x41400000    # 12.0f

    div-float/2addr p0, v0

    invoke-static {p1, p2, p0}, Lx4/m;->o(FFF)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public static c(IFF)F
    .locals 3

    int-to-float p0, p0

    const/4 v0, 0x0

    const v1, 0x477fff00    # 65535.0f

    invoke-static {v0, v1, p0}, Lx4/m;->q(FFF)F

    move-result p0

    sget v1, Lx4/m;->a:F

    cmpg-float v2, p0, v1

    if-gtz v2, :cond_0

    div-float/2addr p0, v1

    invoke-static {p0}, Lx4/m;->s(F)F

    move-result p0

    goto :goto_0

    :cond_0
    sget v1, Lx4/m;->d:F

    sub-float/2addr p0, v1

    sget v1, Lx4/m;->b:F

    div-float/2addr p0, v1

    invoke-static {p0}, Lx4/m;->f(F)F

    move-result p0

    sget v1, Lx4/m;->c:F

    add-float/2addr p0, v1

    :goto_0
    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {p0, v0, v1}, Lx4/m;->a(FFF)F

    move-result p0

    div-float/2addr p0, v1

    invoke-static {p1, p2, p0}, Lx4/m;->o(FFF)F

    move-result p0

    return p0
.end method

.method public static d(III)I
    .locals 0

    int-to-float p0, p0

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-static {p0, p1, p2}, Lx4/m;->e(FFF)I

    move-result p0

    return p0
.end method

.method public static e(FFF)I
    .locals 0

    invoke-static {p1, p2, p0}, Lx4/m;->q(FFF)F

    move-result p0

    const/high16 p1, 0x41400000    # 12.0f

    mul-float/2addr p0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p1, p0, p1

    if-gtz p1, :cond_0

    invoke-static {p0}, Lx4/m;->t(F)F

    move-result p0

    sget p1, Lx4/m;->a:F

    mul-float/2addr p0, p1

    goto :goto_0

    :cond_0
    sget p1, Lx4/m;->b:F

    sget p2, Lx4/m;->c:F

    sub-float/2addr p0, p2

    invoke-static {p0}, Lx4/m;->p(F)F

    move-result p0

    mul-float/2addr p1, p0

    sget p0, Lx4/m;->d:F

    add-float/2addr p0, p1

    :goto_0
    const/4 p1, 0x0

    const p2, 0x477fff00    # 65535.0f

    invoke-static {p1, p2, p0}, Lx4/m;->o(FFF)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public static f(F)F
    .locals 2

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method private static g(Landroid/content/Context;)F
    .locals 5
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    const-string v0, "BrightnessUtils"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/miui/blur/sdk/backdrop/i;->a(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p0

    const-string v2, "getBrightnessInfo"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v4, v3}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v2, "brightness"

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v2, v3}, Lbh/f;->k(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "brightness:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v2, "getBrightFromDisplay"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v1
.end method

.method public static h(Ljava/lang/String;)F
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "config_GammaLinearConvertRValue"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "config_GammaLinearConvertCValue"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "config_GammaLinearConvertBValue"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v0, "config_GammaLinearConvertAValue"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_1

    :pswitch_0
    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_1

    :pswitch_1
    const v0, 0x3f0f564f

    goto :goto_1

    :pswitch_2
    const v0, 0x3e91c020

    goto :goto_1

    :pswitch_3
    const v0, 0x3e371ff0

    :goto_1
    :try_start_0
    const-string v1, "android.miui.R$dimen"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p0}, Lbh/f;->m(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_4

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p0}, Lx4/l;->a(Landroid/content/res/Resources;I)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p0

    goto :goto_2

    :catch_0
    move-exception p0

    const-string v1, "BrightnessUtils"

    const-string v2, "getBrightnessConfig exception: "

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_2
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x47742154 -> :sswitch_3
        0x4928f9f3 -> :sswitch_2
        0x4addd292 -> :sswitch_1
        0x647683e3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static i(Landroid/content/Context;)I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lx4/m;->g(Landroid/content/Context;)F

    move-result v0

    invoke-static {p0}, Lx4/m;->l(Landroid/content/Context;)F

    move-result v1

    invoke-static {p0}, Lx4/m;->j(Landroid/content/Context;)F

    move-result p0

    invoke-static {v0, v1, p0}, Lx4/m;->e(FFF)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lx4/m;->n(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0}, Lx4/m;->m(Landroid/content/Context;)I

    move-result v1

    invoke-static {p0}, Lx4/m;->k(Landroid/content/Context;)I

    move-result p0

    invoke-static {v0, v1, p0}, Lx4/m;->d(III)I

    move-result p0

    :goto_0
    int-to-float p0, p0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p0, v0

    const v0, 0x477fff00    # 65535.0f

    div-float/2addr p0, v0

    float-to-int p0, p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBrightnessPercentage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BrightnessUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static j(Landroid/content/Context;)F
    .locals 5
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    const-string v0, "BrightnessUtils"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/miui/blur/sdk/backdrop/i;->a(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p0

    const-string v2, "getBrightnessInfo"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v4, v3}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v2, "brightnessMaximum"

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v2, v3}, Lbh/f;->k(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "brightnessMaximum:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v2, "getMaxBrightFromDisplay"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v1
.end method

.method public static k(Landroid/content/Context;)I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    const-string v1, "getMaximumScreenBrightnessSetting"

    const/4 v2, 0x0

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v2, v3}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method private static l(Landroid/content/Context;)F
    .locals 5
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    const-string v0, "BrightnessUtils"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/miui/blur/sdk/backdrop/i;->a(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p0

    const-string v2, "getBrightnessInfo"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v4, v3}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v2, "brightnessMinimum"

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v2, v3}, Lbh/f;->k(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "minimumBrightness:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v2, "getMinBrightFromDisplay"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v1
.end method

.method public static m(Landroid/content/Context;)I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    const-string v1, "getMinimumScreenBrightnessSetting"

    const/4 v2, 0x0

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v2, v3}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public static n(Landroid/content/Context;)I
    .locals 3

    const/16 v0, 0xff

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "screen_brightness"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "BrightnessUtils"

    const-string v2, "getScreenBrightness error:"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public static o(FFF)F
    .locals 0

    sub-float/2addr p1, p0

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    return p0
.end method

.method public static p(F)F
    .locals 2

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static q(FFF)F
    .locals 0

    sub-float/2addr p2, p0

    sub-float/2addr p1, p0

    div-float/2addr p2, p1

    return p2
.end method

.method public static r(Landroid/content/Context;I)V
    .locals 6

    if-gez p1, :cond_0

    return-void

    :cond_0
    const v0, 0xffff

    mul-int/2addr p1, v0

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_1

    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-static {p0}, Lx4/m;->l(Landroid/content/Context;)F

    move-result v1

    invoke-static {p0}, Lx4/m;->j(Landroid/content/Context;)F

    move-result p0

    invoke-static {p1, v1, p0}, Lx4/m;->c(IFF)F

    move-result p0

    :try_start_0
    const-string p1, "setBrightness"

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-static {v0, p1, v2, v1}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lx4/m;->m(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0}, Lx4/m;->k(Landroid/content/Context;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lx4/m;->b(III)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    float-to-int v0, p1

    const-string v1, "screen_brightness"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move p0, p1

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setBrightnessForPercentage "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BrightnessUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static s(F)F
    .locals 0

    mul-float/2addr p0, p0

    return p0
.end method

.method public static t(F)F
    .locals 2

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method
