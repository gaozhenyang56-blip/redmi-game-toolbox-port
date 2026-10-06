.class public Lcom/miui/powercenter/legacypowerrank/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Lcom/miui/powercenter/legacypowerrank/BatteryData;D)V
    .locals 10

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p0, p1}, Lcom/miui/powercenter/legacypowerrank/a;->c(Landroid/content/Context;Lcom/miui/powercenter/legacypowerrank/BatteryData;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    double-to-float p2, p2

    const-string p3, "percent"

    invoke-virtual {v0, p3, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    invoke-virtual {p1}, Lcom/miui/powercenter/legacypowerrank/BatteryData;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "iconPackage"

    invoke-virtual {v0, p3, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/miui/powercenter/legacypowerrank/a;->d(Lcom/miui/powercenter/legacypowerrank/BatteryData;)I

    move-result p2

    const-string p3, "iconId"

    invoke-virtual {v0, p3, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1}, Lcom/miui/powercenter/legacypowerrank/BatteryData;->getUid()I

    move-result p2

    if-ltz p2, :cond_0

    invoke-virtual {p1}, Lcom/miui/powercenter/legacypowerrank/BatteryData;->getUid()I

    move-result p2

    const-string p3, "uid"

    invoke-virtual {v0, p3, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    iget p2, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->drainType:I

    const-string p3, "drainType"

    invoke-virtual {v0, p3, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget p2, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->drainType:I

    const/4 p3, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, v2, :cond_4

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x6

    if-eq p2, v6, :cond_3

    if-eq p2, v5, :cond_2

    if-eq p2, v4, :cond_1

    new-array p2, v2, [I

    const p3, 0x7f121b16

    aput p3, p2, v1

    new-array p3, v2, [D

    iget-wide v2, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->usageTime:J

    long-to-double v2, v2

    aput-wide v2, p3, v1

    goto/16 :goto_1

    :cond_1
    new-array p2, v6, [I

    fill-array-data p2, :array_0

    new-array v6, v6, [D

    iget-wide v7, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->usageTime:J

    long-to-double v7, v7

    aput-wide v7, v6, v1

    iget-wide v7, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->cpuTime:J

    long-to-double v7, v7

    aput-wide v7, v6, v2

    iget-wide v1, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->cpuFgTime:J

    long-to-double v1, v1

    aput-wide v1, v6, p3

    iget-wide v1, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->wakeLockTime:J

    long-to-double v1, v1

    aput-wide v1, v6, v5

    iget-wide v1, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->mobileTxBytes:J

    long-to-double v1, v1

    aput-wide v1, v6, v4

    iget-wide v1, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->mobileRxBytes:J

    long-to-double v1, v1

    aput-wide v1, v6, v3

    goto :goto_0

    :cond_2
    new-array p2, v6, [I

    fill-array-data p2, :array_1

    new-array v6, v6, [D

    iget-wide v7, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->usageTime:J

    long-to-double v7, v7

    aput-wide v7, v6, v1

    iget-wide v7, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->cpuTime:J

    long-to-double v7, v7

    aput-wide v7, v6, v2

    iget-wide v1, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->cpuFgTime:J

    long-to-double v1, v1

    aput-wide v1, v6, p3

    iget-wide v1, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->wakeLockTime:J

    long-to-double v1, v1

    aput-wide v1, v6, v5

    iget-wide v1, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->mobileTxBytes:J

    long-to-double v1, v1

    aput-wide v1, v6, v4

    iget-wide v1, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->mobileRxBytes:J

    long-to-double v1, v1

    aput-wide v1, v6, v3

    :goto_0
    move-object p3, v6

    goto :goto_1

    :cond_3
    const/16 p2, 0x9

    new-array v7, p2, [I

    fill-array-data v7, :array_2

    new-array p2, p2, [D

    iget-wide v8, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->cpuTime:J

    long-to-double v8, v8

    aput-wide v8, p2, v1

    iget-wide v8, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->cpuFgTime:J

    long-to-double v8, v8

    aput-wide v8, p2, v2

    iget-wide v1, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->wakeLockTime:J

    long-to-double v1, v1

    aput-wide v1, p2, p3

    iget-wide v1, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->gpsTime:J

    long-to-double v1, v1

    aput-wide v1, p2, v5

    iget-wide v1, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->wifiRunningTime:J

    long-to-double v1, v1

    aput-wide v1, p2, v4

    iget-wide v1, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->mobileTxBytes:J

    long-to-double v1, v1

    aput-wide v1, p2, v3

    iget-wide v1, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->mobileRxBytes:J

    long-to-double v1, v1

    aput-wide v1, p2, v6

    const/4 p1, 0x7

    const-wide/16 v1, 0x0

    aput-wide v1, p2, p1

    const/16 p1, 0x8

    aput-wide v1, p2, p1

    move-object p3, p2

    move-object p2, v7

    goto :goto_1

    :cond_4
    new-array p2, p3, [I

    fill-array-data p2, :array_3

    new-array p3, p3, [D

    iget-wide v3, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->usageTime:J

    long-to-double v3, v3

    aput-wide v3, p3, v1

    iget-wide v3, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->noCoveragePercent:D

    aput-wide v3, p3, v2

    :goto_1
    const-string p1, "types"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    const-string p1, "values"

    invoke-virtual {v0, p1, p3}, Landroid/os/BaseBundle;->putDoubleArray(Ljava/lang/String;[D)V

    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :array_0
    .array-data 4
        0x7f121b16
        0x7f121b10
        0x7f121b11
        0x7f121b18
        0x7f121b13
        0x7f121b12
    .end array-data

    :array_1
    .array-data 4
        0x7f121b19
        0x7f121b10
        0x7f121b11
        0x7f121b18
        0x7f121b13
        0x7f121b12
    .end array-data

    :array_2
    .array-data 4
        0x7f121b10
        0x7f121b11
        0x7f121b18
        0x7f121b14
        0x7f121b19
        0x7f121b13
        0x7f121b12
        0x7f121b0f
        0x7f121b17
    .end array-data

    :array_3
    .array-data 4
        0x7f121b16
        0x7f121b15
    .end array-data
.end method
