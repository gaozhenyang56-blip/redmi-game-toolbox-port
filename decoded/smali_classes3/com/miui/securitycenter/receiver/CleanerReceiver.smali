.class public Lcom/miui/securitycenter/receiver/CleanerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 9

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/app/AlarmManager;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4028000000000000L    # 12.0

    mul-double/2addr v3, v5

    double-to-int v3, v3

    add-int/lit8 v3, v3, 0xc

    const/16 v4, 0xa

    invoke-virtual {v1, v4, v3}, Ljava/util/Calendar;->add(II)V

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/miui/securitycenter/receiver/CleanerReceiver;

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v4, 0x2711

    const/high16 v5, 0x4000000

    invoke-static {v0, v4, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-static {}, Lef/x;->r()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    const-wide/32 v5, 0x5265c00

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    add-long v0, v3, v5

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long/2addr v3, v5

    cmp-long v3, v0, v3

    if-lez v3, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, v5

    :cond_1
    move-wide v4, v0

    const/4 v3, 0x1

    const-wide/32 v6, 0x5265c00

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p2, "CleanMasterReceiver"

    const-string v0, "receive broadcast"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Lcom/miui/securitycenter/receiver/CleanerReceiver$a;

    invoke-direct {p2, p0, p1}, Lcom/miui/securitycenter/receiver/CleanerReceiver$a;-><init>(Lcom/miui/securitycenter/receiver/CleanerReceiver;Landroid/content/Context;)V

    invoke-static {p2}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    invoke-static {p1}, Llb/g;->k(Landroid/content/Context;)V

    invoke-static {p1}, Lf7/b;->x(Landroid/content/Context;)V

    return-void
.end method
