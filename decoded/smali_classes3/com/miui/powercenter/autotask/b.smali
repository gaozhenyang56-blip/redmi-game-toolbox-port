.class public Lcom/miui/powercenter/autotask/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;J)V
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cancelCountDownAlarm, error task id "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AutoTaskAlarmHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v3}, Lcom/miui/powercenter/autotask/b;->d(Landroid/content/Context;JZ)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    invoke-static {p0}, Lcom/miui/powercenter/autotask/h;->f(Landroid/content/Context;)V

    invoke-static {p0, p1, p2}, Lcom/miui/powercenter/autotask/g;->m(Landroid/content/Context;J)V

    return-void
.end method

.method private static b()Ljava/lang/Long;
    .locals 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Context;JZ)V
    .locals 2

    const-string v0, "AutoTaskAlarmHelper"

    const-string v1, "applyOrRestoreTasks"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1, p2}, Lcom/miui/powercenter/autotask/g;->h(Landroid/content/Context;J)Lcom/miui/powercenter/autotask/AutoTask;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "cannot find auto task, id "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p3, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "apply task id "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/miui/powercenter/autotask/AutoTask;->getId()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/miui/powercenter/autotask/o;->b(Lcom/miui/powercenter/autotask/AutoTask;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "restore task id "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/miui/powercenter/autotask/AutoTask;->getId()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v1}, Lcom/miui/powercenter/autotask/o;->j(Landroid/content/Context;Lcom/miui/powercenter/autotask/AutoTask;)V

    :goto_0
    return-void
.end method

.method private static d(Landroid/content/Context;JZ)Landroid/app/PendingIntent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.miui.powercenter.action.APPLY_AUTO_TASK_ALARM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "task_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "task_restore"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p1, 0x0

    const/high16 p2, 0xc000000

    invoke-static {p0, p1, v0, p2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/content/Context;JZ)V
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p3

    invoke-static {}, Lme/e0;->j()Z

    move-result v4

    const-string v5, "AutoTaskAlarmHelper"

    if-eqz v4, :cond_d

    invoke-static {}, Ljg/a;->h()Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Lcom/miui/powercenter/autotask/b;->f()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lx4/z1;->v()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static/range {p0 .. p2}, Lcom/miui/powercenter/autotask/h;->h(Landroid/content/Context;J)V

    goto :goto_0

    :cond_1
    invoke-static/range {p0 .. p2}, Lcom/miui/powercenter/autotask/h;->j(Landroid/content/Context;J)V

    :goto_0
    return-void

    :cond_2
    const-wide/16 v6, 0x0

    cmp-long v4, v1, v6

    if-gtz v4, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCountDownAlarm, error task id "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-static/range {p0 .. p2}, Lcom/miui/powercenter/autotask/g;->h(Landroid/content/Context;J)Lcom/miui/powercenter/autotask/AutoTask;

    move-result-object v4

    if-nez v4, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "task null, id "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const-string v5, "hour_minute"

    invoke-virtual {v4, v5}, Lcom/miui/powercenter/autotask/AutoTask;->hasCondition(Ljava/lang/String;)Z

    move-result v8

    const-wide/16 v11, 0x3e8

    if-eqz v8, :cond_6

    invoke-virtual {v4, v5}, Lcom/miui/powercenter/autotask/AutoTask;->getCondition(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    add-long/2addr v13, v11

    invoke-static {}, Lcom/miui/powercenter/autotask/b;->b()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    mul-int/lit8 v5, v5, 0x3c

    int-to-long v9, v5

    mul-long/2addr v9, v11

    add-long/2addr v15, v9

    sub-long v15, v13, v15

    cmp-long v5, v15, v6

    if-lez v5, :cond_5

    invoke-static {}, Lcom/miui/powercenter/autotask/b;->b()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    add-long/2addr v15, v9

    sub-long/2addr v13, v15

    const-wide/32 v8, 0xdbba0

    cmp-long v5, v13, v8

    if-ltz v5, :cond_6

    :cond_5
    return-void

    :cond_6
    const-string v5, "hour_minute_duration"

    invoke-virtual {v4, v5}, Lcom/miui/powercenter/autotask/AutoTask;->hasCondition(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-virtual {v4, v5}, Lcom/miui/powercenter/autotask/AutoTask;->getCondition(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    shr-int/lit8 v8, v5, 0x10

    const v9, 0xffff

    and-int/2addr v5, v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    add-long/2addr v9, v11

    if-nez v3, :cond_9

    if-ge v8, v5, :cond_8

    invoke-static {}, Lcom/miui/powercenter/autotask/b;->b()Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    mul-int/lit8 v8, v8, 0x3c

    int-to-long v6, v8

    mul-long/2addr v6, v11

    add-long/2addr v13, v6

    sub-long v6, v9, v13

    const-wide/16 v13, 0x0

    cmp-long v6, v6, v13

    if-lez v6, :cond_7

    invoke-static {}, Lcom/miui/powercenter/autotask/b;->b()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    mul-int/lit8 v5, v5, 0x3c

    int-to-long v13, v5

    mul-long/2addr v13, v11

    add-long/2addr v6, v13

    sub-long/2addr v9, v6

    const-wide/32 v5, 0xdbba0

    cmp-long v5, v9, v5

    if-ltz v5, :cond_c

    :cond_7
    return-void

    :cond_8
    if-le v8, v5, :cond_c

    invoke-static {}, Lcom/miui/powercenter/autotask/b;->b()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    mul-int/lit8 v8, v8, 0x3c

    int-to-long v13, v8

    mul-long/2addr v13, v11

    add-long/2addr v6, v13

    sub-long v6, v9, v6

    const-wide/16 v13, 0x0

    cmp-long v6, v6, v13

    if-gtz v6, :cond_c

    invoke-static {}, Lcom/miui/powercenter/autotask/b;->b()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    mul-int/lit8 v5, v5, 0x3c

    int-to-long v13, v5

    mul-long/2addr v13, v11

    add-long/2addr v6, v13

    sub-long/2addr v9, v6

    const-wide/32 v5, 0xdbba0

    cmp-long v5, v9, v5

    if-ltz v5, :cond_c

    return-void

    :cond_9
    if-ge v8, v5, :cond_a

    invoke-static {}, Lcom/miui/powercenter/autotask/b;->b()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    mul-int/lit8 v8, v8, 0x3c

    int-to-long v13, v8

    mul-long/2addr v13, v11

    add-long/2addr v6, v13

    sub-long v6, v9, v6

    const-wide/16 v13, 0x0

    cmp-long v6, v6, v13

    if-ltz v6, :cond_c

    invoke-static {}, Lcom/miui/powercenter/autotask/b;->b()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    mul-int/lit8 v5, v5, 0x3c

    int-to-long v13, v5

    mul-long/2addr v13, v11

    add-long/2addr v6, v13

    sub-long/2addr v9, v6

    const-wide/16 v5, 0x0

    cmp-long v5, v9, v5

    if-gtz v5, :cond_c

    return-void

    :cond_a
    if-le v8, v5, :cond_c

    invoke-static {}, Lcom/miui/powercenter/autotask/b;->b()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    mul-int/lit8 v8, v8, 0x3c

    int-to-long v13, v8

    mul-long/2addr v13, v11

    add-long/2addr v6, v13

    sub-long v6, v9, v6

    const-wide/16 v13, 0x0

    cmp-long v6, v6, v13

    if-gez v6, :cond_b

    invoke-static {}, Lcom/miui/powercenter/autotask/b;->b()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    mul-int/lit8 v5, v5, 0x3c

    int-to-long v13, v5

    mul-long/2addr v13, v11

    add-long/2addr v6, v13

    sub-long/2addr v9, v6

    const-wide/16 v5, 0x0

    cmp-long v5, v9, v5

    if-gtz v5, :cond_c

    :cond_b
    return-void

    :cond_c
    const-string v5, "alarm"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x1388

    add-long/2addr v6, v8

    const/4 v8, 0x0

    invoke-static/range {p0 .. p3}, Lcom/miui/powercenter/autotask/b;->d(Landroid/content/Context;JZ)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v5, v8, v6, v7, v9}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    invoke-static {v0, v4}, Lcom/miui/powercenter/autotask/r;->e(Landroid/content/Context;Lcom/miui/powercenter/autotask/AutoTask;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v1, v2, v3}, Lcom/miui/powercenter/autotask/h;->l(Landroid/content/Context;Ljava/lang/String;JZ)V

    return-void

    :cond_d
    :goto_1
    const-string v0, "not support in international build"

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static f()Z
    .locals 1

    invoke-static {}, Lme/m;->c()Z

    move-result v0

    return v0
.end method
