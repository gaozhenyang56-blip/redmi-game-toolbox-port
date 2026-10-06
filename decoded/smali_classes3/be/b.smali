.class public Lbe/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbe/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "screen_brightness_mode"

    invoke-static {p1, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "BrightnessPowerMode"

    const-string v2, "isCurrentIsAutoBright error"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lbe/b;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lgd/c;->w()I

    move-result v0

    invoke-static {p1}, Lx4/m;->i(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x5

    add-int/2addr v1, v2

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v0, v2, :cond_2

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1, v0}, Lx4/m;->r(Landroid/content/Context;I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "leavePowerMode beforePercentage = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BrightnessPowerMode"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lbe/b;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lx4/m;->n(Landroid/content/Context;)I

    move-result v0

    invoke-static {p1}, Lx4/m;->i(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Lgd/c;->n1(I)V

    if-ltz v0, :cond_2

    const/4 v0, 0x5

    if-gt v1, v0, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v1, -0x5

    invoke-static {p1, v0}, Lx4/m;->r(Landroid/content/Context;I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "currentPercentage:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BrightnessPowerMode"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method
