.class public Lcom/miui/powercenter/abnormalscan/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/miui/powercenter/abnormalscan/AbnormalDataModel;)Lcom/miui/powercenter/legacypowerrank/BatteryData;
    .locals 5

    invoke-static {}, Lcom/miui/powercenter/legacypowerrank/g;->t()V

    invoke-static {}, Lcom/miui/powercenter/legacypowerrank/g;->f()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/miui/powercenter/legacypowerrank/BatteryData;

    invoke-direct {v1}, Lcom/miui/powercenter/legacypowerrank/BatteryData;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/powercenter/legacypowerrank/BatteryData;

    invoke-virtual {v2}, Lcom/miui/powercenter/legacypowerrank/BatteryData;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/miui/powercenter/abnormalscan/AbnormalDataModel;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v2, Lcom/miui/powercenter/legacypowerrank/BatteryData;->uid:I

    iget v4, p0, Lcom/miui/powercenter/abnormalscan/AbnormalDataModel;->uid:I

    if-ne v3, v4, :cond_0

    move-object v1, v2

    :cond_1
    return-object v1
.end method

.method private static b(Landroid/content/Context;Lcom/miui/powercenter/legacypowerrank/BatteryData;Lcom/miui/powercenter/abnormalscan/AbnormalDataModel;)Landroid/os/Bundle;
    .locals 10

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p0, p1}, Lcom/miui/powercenter/legacypowerrank/a;->c(Landroid/content/Context;Lcom/miui/powercenter/legacypowerrank/BatteryData;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/powercenter/legacypowerrank/BatteryData;->getValue()D

    move-result-wide v1

    invoke-static {}, Lcom/miui/powercenter/legacypowerrank/g;->l()D

    move-result-wide v3

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double/2addr v1, v3

    double-to-float v1, v1

    const-string v2, "percent"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    invoke-virtual {p2}, Lcom/miui/powercenter/abnormalscan/AbnormalDataModel;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "iconPackage"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/miui/powercenter/legacypowerrank/a;->d(Lcom/miui/powercenter/legacypowerrank/BatteryData;)I

    move-result v1

    const-string v2, "iconId"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1}, Lcom/miui/powercenter/legacypowerrank/BatteryData;->getUid()I

    move-result v1

    if-ltz v1, :cond_0

    iget v1, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->uid:I

    const-string v2, "uid"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    iget v1, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->drainType:I

    const-string v2, "drainType"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "showMenus"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget v1, p2, Lcom/miui/powercenter/abnormalscan/AbnormalDataModel;->type:I

    invoke-virtual {p2, p0, v1}, Lcom/miui/powercenter/abnormalscan/AbnormalDataModel;->getDispalyAbnormalType(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "abnormalType"

    invoke-virtual {v0, p2, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v3, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->value:D

    const-string p0, "value"

    invoke-virtual {v0, p0, v3, v4}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    iget p0, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->drainType:I

    const/4 p2, 0x2

    const/4 v1, 0x0

    if-eq p0, v2, :cond_4

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x6

    if-eq p0, v6, :cond_3

    if-eq p0, v5, :cond_2

    if-eq p0, v4, :cond_1

    new-array p0, v2, [I

    const p2, 0x7f121b16

    aput p2, p0, v1

    new-array p2, v2, [D

    iget-wide v2, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->usageTime:J

    long-to-double v2, v2

    aput-wide v2, p2, v1

    goto/16 :goto_1

    :cond_1
    new-array p0, v6, [I

    fill-array-data p0, :array_0

    new-array v6, v6, [D

    iget-wide v7, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->usageTime:J

    long-to-double v7, v7

    aput-wide v7, v6, v1

    iget-wide v7, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->cpuTime:J

    long-to-double v7, v7

    aput-wide v7, v6, v2

    iget-wide v1, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->cpuFgTime:J

    long-to-double v1, v1

    aput-wide v1, v6, p2

    iget-wide v1, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->wakeLockTime:J

    long-to-double v1, v1

    aput-wide v1, v6, v5

    iget-wide v1, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->mobileTxBytes:J

    long-to-double v1, v1

    aput-wide v1, v6, v4

    iget-wide p1, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->mobileRxBytes:J

    long-to-double p1, p1

    aput-wide p1, v6, v3

    goto :goto_0

    :cond_2
    new-array p0, v6, [I

    fill-array-data p0, :array_1

    new-array v6, v6, [D

    iget-wide v7, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->usageTime:J

    long-to-double v7, v7

    aput-wide v7, v6, v1

    iget-wide v7, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->cpuTime:J

    long-to-double v7, v7

    aput-wide v7, v6, v2

    iget-wide v1, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->cpuFgTime:J

    long-to-double v1, v1

    aput-wide v1, v6, p2

    iget-wide v1, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->wakeLockTime:J

    long-to-double v1, v1

    aput-wide v1, v6, v5

    iget-wide v1, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->mobileTxBytes:J

    long-to-double v1, v1

    aput-wide v1, v6, v4

    iget-wide p1, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->mobileRxBytes:J

    long-to-double p1, p1

    aput-wide p1, v6, v3

    :goto_0
    move-object p2, v6

    goto :goto_1

    :cond_3
    const/16 p0, 0x9

    new-array v7, p0, [I

    fill-array-data v7, :array_2

    new-array p0, p0, [D

    iget-wide v8, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->cpuTime:J

    long-to-double v8, v8

    aput-wide v8, p0, v1

    iget-wide v8, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->cpuFgTime:J

    long-to-double v8, v8

    aput-wide v8, p0, v2

    iget-wide v1, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->wakeLockTime:J

    long-to-double v1, v1

    aput-wide v1, p0, p2

    iget-wide v1, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->gpsTime:J

    long-to-double v1, v1

    aput-wide v1, p0, v5

    iget-wide v1, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->wifiRunningTime:J

    long-to-double v1, v1

    aput-wide v1, p0, v4

    iget-wide v1, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->mobileTxBytes:J

    long-to-double v1, v1

    aput-wide v1, p0, v3

    iget-wide p1, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->mobileRxBytes:J

    long-to-double p1, p1

    aput-wide p1, p0, v6

    const/4 p1, 0x7

    const-wide/16 v1, 0x0

    aput-wide v1, p0, p1

    const/16 p1, 0x8

    aput-wide v1, p0, p1

    move-object p2, p0

    move-object p0, v7

    goto :goto_1

    :cond_4
    new-array p0, p2, [I

    fill-array-data p0, :array_3

    new-array p2, p2, [D

    iget-wide v3, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->usageTime:J

    long-to-double v3, v3

    aput-wide v3, p2, v1

    iget-wide v3, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->noCoveragePercent:D

    aput-wide v3, p2, v2

    :goto_1
    const-string p1, "types"

    invoke-virtual {v0, p1, p0}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    const-string p0, "values"

    invoke-virtual {v0, p0, p2}, Landroid/os/BaseBundle;->putDoubleArray(Ljava/lang/String;[D)V

    return-object v0

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

.method public static c(Landroid/content/Context;)V
    .locals 2

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    const/4 v0, 0x0

    const v1, 0x7f120ee0

    invoke-virtual {p0, v0, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    return-void
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 3

    invoke-static {}, Lme/p;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v2

    return p0
.end method

.method public static e(III)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    const/16 v1, 0x68

    if-eq p2, v1, :cond_0

    return v0

    :cond_0
    const/4 p2, 0x1

    if-ne p0, p2, :cond_1

    invoke-static {}, Lgd/c;->B0()I

    move-result v1

    if-lt p1, v1, :cond_1

    return p2

    :cond_1
    const/4 v1, 0x4

    if-ne v1, p0, :cond_2

    invoke-static {}, Lgd/c;->d0()I

    move-result p0

    if-lt p1, p0, :cond_2

    return p2

    :cond_2
    return v0
.end method

.method public static f()Z
    .locals 4

    invoke-static {}, Lgd/c;->Y()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v0, 0x5265c00

    div-long/2addr v2, v0

    const-wide/16 v0, 0x1

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    invoke-static {}, Lgd/c;->I0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static g()Z
    .locals 1

    invoke-static {}, Lgd/c;->Z()Z

    move-result v0

    return v0
.end method

.method public static h(Landroid/content/Context;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/miui/powercenter/abnormalscan/AbnormalDataModel;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/powercenter/abnormalscan/AbnormalDataModel;

    invoke-virtual {v1}, Lcom/miui/powercenter/abnormalscan/AbnormalDataModel;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/powercenter/abnormalscan/AbnormalDataModel;

    invoke-virtual {v1}, Lcom/miui/powercenter/abnormalscan/AbnormalDataModel;->getType()I

    move-result v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/powercenter/abnormalscan/AbnormalDataModel;

    invoke-virtual {v2}, Lcom/miui/powercenter/abnormalscan/AbnormalDataModel;->getPriority()I

    move-result v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/powercenter/abnormalscan/AbnormalDataModel;

    iget v3, v3, Lcom/miui/powercenter/abnormalscan/AbnormalDataModel;->paction:I

    invoke-static {v1, v2, v3}, Lcom/miui/powercenter/abnormalscan/a;->e(III)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/miui/powercenter/legacypowerrank/g;->q()Z

    move-result v1

    const-string v2, "AbnormalScanNoti"

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/miui/powercenter/legacypowerrank/g;->h()Ljava/util/HashSet;

    move-result-object v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/powercenter/abnormalscan/AbnormalDataModel;

    invoke-virtual {v3}, Lcom/miui/powercenter/abnormalscan/AbnormalDataModel;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "not in desktop:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/powercenter/abnormalscan/AbnormalDataModel;

    invoke-virtual {v1}, Lcom/miui/powercenter/abnormalscan/AbnormalDataModel;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lx4/f1;->O(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v1, v4, v0

    const v5, 0x7f120ee0

    invoke-virtual {p0, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/powercenter/abnormalscan/AbnormalDataModel;

    invoke-virtual {v6}, Lcom/miui/powercenter/abnormalscan/AbnormalDataModel;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lhd/a;->r(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/powercenter/abnormalscan/AbnormalDataModel;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/powercenter/abnormalscan/AbnormalDataModel;

    iget v7, v7, Lcom/miui/powercenter/abnormalscan/AbnormalDataModel;->type:I

    invoke-virtual {v6, p0, v7}, Lcom/miui/powercenter/abnormalscan/AbnormalDataModel;->getDispalyAbnormalType(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f120ede

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;

    invoke-direct {v8, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/powercenter/abnormalscan/AbnormalDataModel;

    invoke-static {v9}, Lcom/miui/powercenter/abnormalscan/a;->a(Lcom/miui/powercenter/abnormalscan/AbnormalDataModel;)Lcom/miui/powercenter/legacypowerrank/BatteryData;

    move-result-object v9

    if-nez v9, :cond_3

    const-string p0, "batteryData is null"

    goto :goto_1

    :cond_3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/powercenter/abnormalscan/AbnormalDataModel;

    invoke-static {p0, v9, p1}, Lcom/miui/powercenter/abnormalscan/a;->b(Landroid/content/Context;Lcom/miui/powercenter/legacypowerrank/BatteryData;Lcom/miui/powercenter/abnormalscan/AbnormalDataModel;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v8, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 p1, 0xc000000

    invoke-static {p0, v3, v8, p1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-boolean v8, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    xor-int/2addr v8, v3

    const-string v9, "miui.showAction"

    invoke-virtual {v0, v9, v8}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v8, Lw4/b$b;

    invoke-direct {v8, p0}, Lw4/b$b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v5}, Lw4/b$b;->r(I)Lw4/b$b;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v9, 0x7f120379

    invoke-virtual {p0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v9, "com.miui.powercenter.high"

    invoke-virtual {v5, v9, p0}, Lw4/b$b;->e(Ljava/lang/String;Ljava/lang/String;)Lw4/b$b;

    move-result-object p0

    invoke-virtual {p0, v7}, Lw4/b$b;->c(Ljava/lang/String;)Lw4/b$b;

    move-result-object p0

    const v5, 0x7f08089f

    invoke-virtual {p0, v5}, Lw4/b$b;->q(I)Lw4/b$b;

    move-result-object p0

    sget-boolean v7, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v7, :cond_4

    const v5, 0x7f0808a0

    :cond_4
    invoke-virtual {p0, v5}, Lw4/b$b;->v(I)Lw4/b$b;

    move-result-object p0

    invoke-virtual {p0, v4}, Lw4/b$b;->h(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object p0

    invoke-virtual {p0, v6}, Lw4/b$b;->g(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object p0

    invoke-virtual {p0, p1}, Lw4/b$b;->f(Landroid/app/PendingIntent;)Lw4/b$b;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lw4/b$b;->l(I)Lw4/b$b;

    move-result-object p0

    invoke-virtual {p0, v3}, Lw4/b$b;->i(Z)Lw4/b$b;

    move-result-object p0

    invoke-virtual {p0, v0}, Lw4/b$b;->k(Landroid/os/Bundle;)Lw4/b$b;

    invoke-virtual {v8}, Lw4/b$b;->a()Lw4/b;

    move-result-object p0

    invoke-virtual {p0}, Lw4/b;->I()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-static {p0, p1}, Lgd/c;->T1(J)V

    invoke-static {}, Lhd/a;->s()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Send notification for "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_5
    :goto_2
    return-void
.end method
