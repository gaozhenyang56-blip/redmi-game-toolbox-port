.class public Lcom/miui/powercenter/bootshutdown/BootAlarmIntentService;
.super Landroid/app/IntentService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "BootAlarmIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private a()V
    .locals 4

    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/BootAlarmIntentService;->b()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/miui/powercenter/bootshutdown/BootAlarmIntentService;->f(J)V

    return-void
.end method

.method private b()Ljava/util/Calendar;
    .locals 5

    invoke-static {}, Lgd/c;->v0()I

    move-result v0

    invoke-static {}, Lgd/c;->u0()I

    move-result v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    div-int/lit8 v3, v0, 0x3c

    const/16 v4, 0xb

    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->set(II)V

    rem-int/lit8 v0, v0, 0x3c

    const/16 v3, 0xc

    invoke-virtual {v2, v3, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    invoke-virtual {v2, v0, v3}, Ljava/util/Calendar;->set(II)V

    const/4 v0, 0x1

    invoke-static {p0, v1, v2, v0}, Ljd/c;->f(Landroid/content/Context;ILjava/util/Calendar;Z)V

    return-object v2
.end method

.method private c()V
    .locals 3

    invoke-static {}, Lgd/c;->t0()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Ljd/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lgd/c;->p2(Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/BootAlarmIntentService;->a()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0, v1, v2}, Lcom/miui/powercenter/bootshutdown/BootAlarmIntentService;->f(J)V

    :goto_1
    return-void
.end method

.method private d()V
    .locals 2

    invoke-static {}, Lgd/c;->t0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/BootAlarmIntentService;->a()V

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/miui/powercenter/bootshutdown/BootAlarmIntentService;->f(J)V

    :goto_0
    return-void
.end method

.method private e()V
    .locals 6

    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/BootAlarmIntentService;->b()Ljava/util/Calendar;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/powercenter/bootshutdown/BootAlarmIntentService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.miui.powercenter.RESET_BOOT_TIME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    const/high16 v3, 0x4000000

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v3, v2, v4, v5, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method private f(J)V
    .locals 2

    const-string v0, "security"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    const-string v1, "com.miui.powercenter.provider.BootAlarmIntentService"

    invoke-virtual {v0, v1, p1, p2}, Lmiui/security/SecurityManager;->setWakeUpTime(Ljava/lang/String;J)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setwakeuptime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BootAlarmIntentService"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.miui.powercenter.SET_BOOT_TIME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "BootAlarmIntentService"

    if-eqz v0, :cond_1

    const-string p1, "Set boot time action"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/BootAlarmIntentService;->d()V

    :goto_0
    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/BootAlarmIntentService;->e()V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.miui.powercenter.RESET_BOOT_TIME"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lme/e0;->k()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Reset boot time action"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/BootAlarmIntentService;->c()V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
