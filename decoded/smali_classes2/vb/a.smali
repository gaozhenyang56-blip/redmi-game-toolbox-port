.class public Lvb/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvb/a$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;I)Z
    .locals 1

    invoke-static {p0}, Lmiui/cloud/provider/MiuiSettings$VirtualSim;->isVirtualSimEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lmiui/cloud/provider/MiuiSettings$VirtualSim;->getVirtualSimSlotId(Landroid/content/Context;)I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 11

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v3, v1

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_1

    :try_start_1
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v6, "getSimCardState"

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Class;

    aput-object v5, v8, v1

    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v1

    invoke-static {v0, v5, v6, v8, v9}, Lbh/f;->b(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget v6, Lvb/a$a;->a:I

    if-ne v5, v6, :cond_0

    invoke-static {p0, v3}, Lvb/a;->a(Landroid/content/Context;I)Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    move v7, v1

    :goto_1
    or-int/2addr v4, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    move v1, v4

    goto :goto_2

    :catch_1
    move-exception p0

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    move v4, v1

    :cond_1
    return v4
.end method
