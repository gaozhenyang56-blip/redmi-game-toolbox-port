.class public Lcom/miui/powercenter/bootshutdown/ShutdownAlarmIntentService;
.super Landroid/app/IntentService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "ShutdownAlarmIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private a()V
    .locals 2

    invoke-static {p0}, Ljd/e;->e(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/ShutdownAlarmIntentService;->d()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/ShutdownAlarmIntentService;->c()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private b()Z
    .locals 4

    invoke-static {}, Lgd/c;->x0()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-static {}, Lgd/c;->z0()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lgd/c;->u2(Z)V

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private c()Landroid/app/PendingIntent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/powercenter/bootshutdown/ShutdownAlarmIntentService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.miui.powercenter.SHUTDOWN_NOW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x4000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private d()Landroid/app/PendingIntent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/powercenter/bootshutdown/ShutdownAlarmIntentService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.miui.powercenter.SHUTDOWN_ORNOT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x4000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private e()V
    .locals 5

    invoke-static {}, Lgd/c;->y0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {}, Lgd/c;->A0()I

    move-result v2

    const/16 v3, 0xb

    div-int/lit8 v4, v2, 0x3c

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xc

    rem-int/lit8 v2, v2, 0x3c

    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xe

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    invoke-static {}, Lgd/c;->z0()I

    move-result v2

    invoke-static {p0, v2, v1, v3}, Ljd/c;->f(Landroid/content/Context;ILjava/util/Calendar;Z)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/ShutdownAlarmIntentService;->d()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method private f()V
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x7530

    add-long/2addr v1, v3

    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/ShutdownAlarmIntentService;->c()Landroid/app/PendingIntent;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method private g()V
    .locals 1

    const-string v0, "powercenter,timed_shutdown"

    invoke-static {v0}, Lme/w;->G0(Ljava/lang/String;)V

    return-void
.end method

.method private h()V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const v1, 0x10000006

    const-string v2, "tag"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.miui.powercenter.CANCEL_SHUTDOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "ShutdownOnService"

    if-eqz v0, :cond_1

    const-string p1, "ACTION_CANCEL_SHUTDOWN"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lhd/a;->q1()V

    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/ShutdownAlarmIntentService;->a()V

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.miui.powercenter.SET_SHUTDOWN_ALARM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "ACTION_SET_SHUTDOWN_ALARM"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Ljd/e;->e(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/ShutdownAlarmIntentService;->a()V

    :goto_0
    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/ShutdownAlarmIntentService;->e()V

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.miui.powercenter.RESET_SHUTDOWNTIME"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "ACTION_RESET_SHUTDOWNTIME"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/ShutdownAlarmIntentService;->a()V

    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/ShutdownAlarmIntentService;->b()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.miui.powercenter.SHUTDOWN_ORNOT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "ACTION_SHUTDOWN_ORNOT"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Ljd/e;->j(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/ShutdownAlarmIntentService;->f()V

    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/ShutdownAlarmIntentService;->h()V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.miui.powercenter.SHUTDOWN_NOW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "ACTION_SHUTDOWN_NOW"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Ljd/e;->e(Landroid/content/Context;)V

    invoke-static {p0}, Ljd/e;->c(Landroid/content/Context;)Z

    move-result p1

    invoke-static {}, Lme/e0;->a()Z

    move-result v0

    if-nez p1, :cond_5

    const-string p1, "canceled, phone not idle"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Ljd/e;->h(Landroid/content/Context;)V

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_6

    const-string p1, "canceled, playing game"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Ljd/e;->i(Landroid/content/Context;)V

    goto :goto_1

    :cond_6
    const-string p1, "shutdown now"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Ljd/a;->d(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/ShutdownAlarmIntentService;->g()V

    :cond_7
    :goto_1
    return-void
.end method
