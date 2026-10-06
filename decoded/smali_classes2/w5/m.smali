.class public Lw5/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I = 0xff


# direct methods
.method static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-string v0, "android.os.PowerManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    :try_start_1
    const-string v1, "BRIGHTNESS_ON"

    invoke-static {v0, v1}, Lbh/f;->m(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lw5/m;->a:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method public static a(Landroid/content/Context;)F
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "screen_brightness"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, -0x1

    :goto_0
    int-to-float p0, p0

    invoke-static {}, La8/p;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lw5/m;->a:I

    div-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_0
    sget v0, Lw5/m;->a:I

    :goto_1
    int-to-float v0, v0

    div-float/2addr p0, v0

    return p0
.end method
