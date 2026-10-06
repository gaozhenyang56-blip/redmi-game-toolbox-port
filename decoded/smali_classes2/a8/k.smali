.class public La8/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:J


# direct methods
.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, La8/k;->a:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    const-string v1, ""

    const-string v2, "BatteryUtils"

    if-gtz v0, :cond_0

    const-string p0, "getCompEnduranceText: Insufficient interval time"

    :goto_0
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    invoke-static {}, La8/k;->b()I

    move-result v0

    if-gtz v0, :cond_1

    const-string p0, "getCompEnduranceText: invalid remain time"

    goto :goto_0

    :cond_1
    div-int/lit8 v1, v0, 0x3c

    rem-int/lit8 v0, v0, 0x3c

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10003f

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v1, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100040

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v3, 0x7f120ace

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v7

    aput-object v0, v3, v4

    invoke-static {v2, p0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b()I
    .locals 2

    const-string v0, "persist.sys.power.scene.bat.life"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lx4/v1;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static c()Z
    .locals 3

    const-string v0, "persist.sys.power.fuel.gauge"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lx4/v1;->b(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public static d(J)V
    .locals 0

    sput-wide p0, La8/k;->a:J

    return-void
.end method
