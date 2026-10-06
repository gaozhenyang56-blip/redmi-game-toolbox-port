.class public Lcom/miui/powercenter/autotask/c;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/powercenter/autotask/c$b;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/powercenter/autotask/c$b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/autotask/c;->a:Ljava/util/List;

    iput-object p1, p0, Lcom/miui/powercenter/autotask/c;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/c;->j()V

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/c;->o()V

    return-void
.end method

.method private a(Lcom/miui/powercenter/autotask/c$b;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/powercenter/autotask/c;->m(Lcom/miui/powercenter/autotask/c$b;)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private b(Lcom/miui/powercenter/autotask/AutoTask;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/autotask/c;->f(Lcom/miui/powercenter/autotask/AutoTask;)Lcom/miui/powercenter/autotask/c$b;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/autotask/c;->a(Lcom/miui/powercenter/autotask/c$b;)V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/c;->b:Landroid/content/Context;

    const-class v2, Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.miui.powercenter.action.TIME_AUTO_TASK_ALARM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/c;->b:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0xc000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/autotask/c;->b:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private e(Lcom/miui/powercenter/autotask/AutoTask$b;I)J
    .locals 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget v1, p1, Lcom/miui/powercenter/autotask/AutoTask$b;->a:I

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    iget p1, p1, Lcom/miui/powercenter/autotask/AutoTask$b;->b:I

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xe

    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/c;->b:Landroid/content/Context;

    invoke-static {p1, p2, v0}, Lme/i;->e(Landroid/content/Context;ILjava/util/Calendar;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    return-wide p1
.end method

.method private f(Lcom/miui/powercenter/autotask/AutoTask;)Lcom/miui/powercenter/autotask/c$b;
    .locals 5

    new-instance v0, Lcom/miui/powercenter/autotask/c$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/powercenter/autotask/c$b;-><init>(Lcom/miui/powercenter/autotask/c$a;)V

    invoke-virtual {p1}, Lcom/miui/powercenter/autotask/AutoTask;->getId()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/miui/powercenter/autotask/c$b;->a:J

    invoke-virtual {p1}, Lcom/miui/powercenter/autotask/AutoTask;->getRepeatType()I

    move-result v2

    const-string v3, "hour_minute"

    invoke-virtual {p1, v3}, Lcom/miui/powercenter/autotask/AutoTask;->hasCondition(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1, v3}, Lcom/miui/powercenter/autotask/AutoTask;->getCondition(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/miui/powercenter/autotask/AutoTask;->getHourMinute(I)Lcom/miui/powercenter/autotask/AutoTask$b;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lcom/miui/powercenter/autotask/c;->e(Lcom/miui/powercenter/autotask/AutoTask$b;I)J

    move-result-wide v1

    :cond_0
    iput-wide v1, v0, Lcom/miui/powercenter/autotask/c$b;->b:J

    goto :goto_0

    :cond_1
    const-string v3, "hour_minute_duration"

    invoke-virtual {p1, v3}, Lcom/miui/powercenter/autotask/AutoTask;->hasCondition(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1, v3}, Lcom/miui/powercenter/autotask/AutoTask;->getCondition(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v3, Lcom/miui/powercenter/autotask/AutoTask$c;

    invoke-direct {v3, v1}, Lcom/miui/powercenter/autotask/AutoTask$c;-><init>(I)V

    iget v1, v3, Lcom/miui/powercenter/autotask/AutoTask$c;->a:I

    invoke-static {v1}, Lcom/miui/powercenter/autotask/AutoTask;->getHourMinute(I)Lcom/miui/powercenter/autotask/AutoTask$b;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lcom/miui/powercenter/autotask/c;->e(Lcom/miui/powercenter/autotask/AutoTask$b;I)J

    move-result-wide v1

    iget v3, v3, Lcom/miui/powercenter/autotask/AutoTask$c;->b:I

    invoke-static {v3}, Lcom/miui/powercenter/autotask/AutoTask;->getHourMinute(I)Lcom/miui/powercenter/autotask/AutoTask$b;

    move-result-object v3

    const/16 v4, 0x7f

    invoke-direct {p0, v3, v4}, Lcom/miui/powercenter/autotask/c;->e(Lcom/miui/powercenter/autotask/AutoTask$b;I)J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/miui/powercenter/autotask/AutoTask;->getStarted()Z

    move-result p1

    if-eqz p1, :cond_0

    cmp-long p1, v3, v1

    if-gez p1, :cond_0

    iput-wide v3, v0, Lcom/miui/powercenter/autotask/c$b;->b:J

    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/miui/powercenter/autotask/c$b;->c:Z

    :goto_0
    return-object v0

    :cond_2
    return-object v1
.end method

.method private g(J)V
    .locals 2

    new-instance v0, Lcom/miui/powercenter/autotask/c$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/powercenter/autotask/c$b;-><init>(Lcom/miui/powercenter/autotask/c$a;)V

    iput-wide p1, v0, Lcom/miui/powercenter/autotask/c$b;->a:J

    invoke-direct {p0, v0}, Lcom/miui/powercenter/autotask/c;->m(Lcom/miui/powercenter/autotask/c$b;)V

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/c;->o()V

    return-void
.end method

.method private h(J)V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/autotask/c;->b:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/miui/powercenter/autotask/g;->h(Landroid/content/Context;J)Lcom/miui/powercenter/autotask/AutoTask;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get task null, id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AutoTaskAlarmReceiver"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/miui/powercenter/autotask/c;->i(Lcom/miui/powercenter/autotask/AutoTask;)V

    return-void
.end method

.method private i(Lcom/miui/powercenter/autotask/AutoTask;)V
    .locals 3

    invoke-virtual {p1}, Lcom/miui/powercenter/autotask/AutoTask;->getEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/powercenter/autotask/c$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/powercenter/autotask/c$b;-><init>(Lcom/miui/powercenter/autotask/c$a;)V

    invoke-virtual {p1}, Lcom/miui/powercenter/autotask/AutoTask;->getId()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/miui/powercenter/autotask/c$b;->a:J

    invoke-direct {p0, v0}, Lcom/miui/powercenter/autotask/c;->m(Lcom/miui/powercenter/autotask/c$b;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/powercenter/autotask/c;->b(Lcom/miui/powercenter/autotask/AutoTask;)V

    :goto_0
    invoke-direct {p0}, Lcom/miui/powercenter/autotask/c;->o()V

    return-void
.end method

.method private j()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/c;->k()V

    return-void
.end method

.method private k()V
    .locals 3

    iget-object v0, p0, Lcom/miui/powercenter/autotask/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/powercenter/autotask/g;->i(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    new-instance v1, Lcom/miui/powercenter/autotask/AutoTask;

    invoke-direct {v1, v0}, Lcom/miui/powercenter/autotask/AutoTask;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v1}, Lcom/miui/powercenter/autotask/AutoTask;->getEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/miui/powercenter/autotask/c;->b(Lcom/miui/powercenter/autotask/AutoTask;)V

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private m(Lcom/miui/powercenter/autotask/c$b;)V
    .locals 5

    iget-object v0, p0, Lcom/miui/powercenter/autotask/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/powercenter/autotask/c$b;

    iget-wide v1, v1, Lcom/miui/powercenter/autotask/c$b;->a:J

    iget-wide v3, p1, Lcom/miui/powercenter/autotask/c$b;->a:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private n(JJZ)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/c;->b:Landroid/content/Context;

    const-class v2, Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.miui.powercenter.action.TIME_AUTO_TASK_ALARM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "task_id"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p3, "task_restore"

    invoke-virtual {v0, p3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p3, p0, Lcom/miui/powercenter/autotask/c;->b:Landroid/content/Context;

    const/4 p4, 0x0

    const/high16 p5, 0xc000000

    invoke-static {p3, p4, v0, p5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p3

    iget-object p5, p0, Lcom/miui/powercenter/autotask/c;->b:Landroid/content/Context;

    const-string v0, "alarm"

    invoke-virtual {p5, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/app/AlarmManager;

    iget-object v0, p0, Lcom/miui/powercenter/autotask/c;->b:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/high16 v2, 0x4000000

    invoke-static {v0, p4, v1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p4

    new-instance v0, Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-direct {v0, p1, p2, p4}, Landroid/app/AlarmManager$AlarmClockInfo;-><init>(JLandroid/app/PendingIntent;)V

    invoke-virtual {p5, v0, p3}, Landroid/app/AlarmManager;->setAlarmClock(Landroid/app/AlarmManager$AlarmClockInfo;Landroid/app/PendingIntent;)V

    return-void
.end method

.method private o()V
    .locals 12

    iget-object v0, p0, Lcom/miui/powercenter/autotask/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/c;->c()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/autotask/c;->a:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/miui/powercenter/autotask/c;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v2, 0x0

    move-wide v10, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/powercenter/autotask/c$b;

    cmp-long v5, v10, v2

    if-nez v5, :cond_1

    iget-wide v10, v4, Lcom/miui/powercenter/autotask/c$b;->b:J

    :goto_1
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-wide v5, v4, Lcom/miui/powercenter/autotask/c$b;->b:J

    cmp-long v5, v5, v10

    if-gtz v5, :cond_2

    goto :goto_1

    :cond_2
    cmp-long v1, v10, v2

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/c;->c()V

    return-void

    :cond_3
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enabled task id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/powercenter/autotask/c$b;

    iget-wide v3, v3, Lcom/miui/powercenter/autotask/c$b;->a:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " minTime "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10, v11}, Lme/b0;->h(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AutoTaskAlarmReceiver"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/powercenter/autotask/c$b;

    iget-wide v7, v2, Lcom/miui/powercenter/autotask/c$b;->a:J

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/powercenter/autotask/c$b;

    iget-boolean v9, v2, Lcom/miui/powercenter/autotask/c$b;->c:Z

    move-object v4, p0

    move-wide v5, v10

    invoke-direct/range {v4 .. v9}, Lcom/miui/powercenter/autotask/c;->n(JJZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private q()V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/c;->k()V

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/c;->o()V

    return-void
.end method


# virtual methods
.method public d(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    const-string p1, "AutoTaskAlarmReceiver info begin"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Task size "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/miui/powercenter/autotask/c;->a:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/c;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/miui/powercenter/autotask/c$b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p3, Lcom/miui/powercenter/autotask/c$b;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " time "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p3, Lcom/miui/powercenter/autotask/c$b;->b:J

    invoke-static {v1, v2}, Lme/b0;->h(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " restore "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p3, Lcom/miui/powercenter/autotask/c$b;->c:Z

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "end"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public l(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.miui.powercenter.action.TASK_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.miui.powercenter.action.TASK_DELETE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.miui.powercenter.action.TASK_RESET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {p1}, Lr0/a;->b(Landroid/content/Context;)Lr0/a;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lr0/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.miui.powercenter.action.TASK_UPDATE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/16 v0, -0x1

    const-string p1, "id"

    invoke-virtual {p2, p1, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/miui/powercenter/autotask/c;->h(J)V

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.miui.powercenter.action.TASK_DELETE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "ids"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object p1

    if-eqz p1, :cond_2

    array-length p2, p1

    if-lez p2, :cond_2

    const/4 p2, 0x0

    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_2

    aget-wide v0, p1, p2

    invoke-direct {p0, v0, v1}, Lcom/miui/powercenter/autotask/c;->g(J)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.miui.powercenter.action.TASK_RESET"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "AutoTaskAlarmReceiver"

    const-string p2, "time changed"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/c;->q()V

    :cond_2
    :goto_1
    return-void
.end method

.method public p(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lr0/a;->b(Landroid/content/Context;)Lr0/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lr0/a;->e(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
