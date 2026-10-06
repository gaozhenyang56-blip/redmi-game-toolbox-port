.class public Lie/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lie/a;->b(Landroid/content/Context;)V

    return-void
.end method

.method private static b(Landroid/content/Context;)V
    .locals 2

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lie/a;->c(Landroid/content/Context;Z)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private static c(Landroid/content/Context;Z)Landroid/app/PendingIntent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.miui.powercenter.action.CHANGE_POWER_MODE_ALARM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_key_power_mode_open"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p1, 0x0

    const/high16 v1, 0xc000000

    invoke-static {p0, p1, v0, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private static d(IZ)J
    .locals 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    div-int/lit8 v1, p0, 0x3c

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    rem-int/lit8 p0, p0, 0x3c

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xd

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xe

    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->set(II)V

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    cmp-long p0, p0, v1

    if-gtz p0, :cond_0

    const/4 p0, 0x7

    const/4 p1, 0x1

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->add(II)V

    :cond_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    return-wide p0
.end method

.method public static e()Z
    .locals 9

    invoke-static {}, Lgd/c;->H0()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lie/a;->d(IZ)J

    move-result-wide v2

    invoke-static {}, Lgd/c;->G0()I

    move-result v0

    invoke-static {v0, v1}, Lie/a;->d(IZ)J

    move-result-wide v4

    cmp-long v0, v4, v2

    const/4 v6, 0x1

    if-gez v0, :cond_0

    invoke-static {}, Lgd/c;->G0()I

    move-result v0

    invoke-static {v0, v6}, Lie/a;->d(IZ)J

    move-result-wide v4

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v0, v7, v2

    if-ltz v0, :cond_1

    cmp-long v0, v7, v4

    if-gez v0, :cond_1

    move v1, v6

    :cond_1
    return v1
.end method

.method public static f(Landroid/content/Context;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lie/a;->g(Landroid/content/Context;J)V

    return-void
.end method

.method public static g(Landroid/content/Context;J)V
    .locals 5

    invoke-static {}, Lgd/c;->F0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lie/a;->b(Landroid/content/Context;)V

    invoke-static {p0}, Lme/w;->Q(Landroid/content/Context;)Z

    move-result v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x1

    const-string v4, "PowerSaveAlarmHelper"

    if-eqz v0, :cond_2

    invoke-static {}, Lie/a;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lgd/c;->G0()I

    move-result v0

    invoke-static {v0, v3}, Lie/a;->d(IZ)J

    move-result-wide v1

    const-string v0, "Close save mode in future"

    goto :goto_0

    :cond_1
    const-string v0, "Close save mode now"

    :goto_0
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    add-long/2addr v1, p1

    invoke-static {p0, v0, v1, v2}, Lie/a;->h(Landroid/content/Context;ZJ)V

    goto :goto_2

    :cond_2
    invoke-static {}, Lie/a;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Open save mode now"

    goto :goto_1

    :cond_3
    invoke-static {}, Lgd/c;->H0()I

    move-result v0

    invoke-static {v0, v3}, Lie/a;->d(IZ)J

    move-result-wide v1

    const-string v0, "Open save mode in future"

    :goto_1
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-long/2addr v1, p1

    invoke-static {p0, v3, v1, v2}, Lie/a;->h(Landroid/content/Context;ZJ)V

    :goto_2
    return-void
.end method

.method private static h(Landroid/content/Context;ZJ)V
    .locals 1

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-static {p0, p1}, Lie/a;->c(Landroid/content/Context;Z)Landroid/app/PendingIntent;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p2, p3, p0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    return-void
.end method
