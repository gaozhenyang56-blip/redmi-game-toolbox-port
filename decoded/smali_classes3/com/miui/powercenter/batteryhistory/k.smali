.class public Lcom/miui/powercenter/batteryhistory/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/powercenter/batteryhistory/k$b;,
        Lcom/miui/powercenter/batteryhistory/k$c;
    }
.end annotation


# static fields
.field private static volatile g:Lcom/miui/powercenter/batteryhistory/k;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/os/HandlerThread;

.field private c:Landroid/os/Handler;

.field private d:Z

.field private e:Z

.field private f:Landroid/app/AlarmManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/k;->a:Landroid/content/Context;

    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "BatteryHistoryManager"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/k;->b:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    new-instance p1, Lcom/miui/powercenter/batteryhistory/k$b;

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/k;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/miui/powercenter/batteryhistory/k$b;-><init>(Lcom/miui/powercenter/batteryhistory/k;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/k;->c:Landroid/os/Handler;

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/k;->a:Landroid/content/Context;

    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/k;->f:Landroid/app/AlarmManager;

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/k;->c:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/k;->a:Landroid/content/Context;

    new-instance v1, Lcom/miui/powercenter/batteryhistory/k$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/powercenter/batteryhistory/k$c;-><init>(Lcom/miui/powercenter/batteryhistory/k;Lcom/miui/powercenter/batteryhistory/k$a;)V

    const/4 v2, 0x4

    invoke-static {v0, v1, p1, v2}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method static synthetic a(Lcom/miui/powercenter/batteryhistory/k;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/batteryhistory/k;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/miui/powercenter/batteryhistory/k;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/batteryhistory/k;->p()V

    return-void
.end method

.method static synthetic c(Lcom/miui/powercenter/batteryhistory/k;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/batteryhistory/k;->u()V

    return-void
.end method

.method static synthetic d(Lcom/miui/powercenter/batteryhistory/k;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/batteryhistory/k;->l()V

    return-void
.end method

.method static synthetic e(Lcom/miui/powercenter/batteryhistory/k;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/batteryhistory/k;->i(Z)V

    return-void
.end method

.method private i(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const-string p1, "checkInvalidInner forceInvalid"

    invoke-static {p1}, Lid/b;->a(Ljava/lang/String;)V

    const-wide/high16 v0, -0x8000000000000000L

    invoke-direct {p0, v0, v1}, Lcom/miui/powercenter/batteryhistory/k;->r(J)V

    invoke-direct {p0}, Lcom/miui/powercenter/batteryhistory/k;->l()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/miui/powercenter/batteryhistory/k;->q()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "check invalid inner judgeDataValid"

    invoke-static {p1}, Lid/b;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private k(J)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/powercenter/batteryhistory/g;->q(Landroid/content/Context;)Lcom/miui/powercenter/batteryhistory/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/powercenter/batteryhistory/g;->o()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/miui/powercenter/batteryhistory/k;->r(J)V

    const/4 p1, 0x1

    return p1
.end method

.method private l()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "check reset inner : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/miui/powercenter/batteryhistory/n;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lid/b;->a(Ljava/lang/String;)V

    invoke-static {}, Lid/a;->f()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/batteryhistory/u;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    invoke-direct {p0}, Lcom/miui/powercenter/batteryhistory/k;->n()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lid/a;->h()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lid/a;->c(Landroid/content/Context;)J

    move-result-wide v2

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/powercenter/batteryhistory/u;->b()J

    move-result-wide v2

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    :goto_0
    invoke-direct {p0, v2, v3}, Lcom/miui/powercenter/batteryhistory/k;->k(J)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "checkResetInner reset"

    invoke-static {v0}, Lid/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/k;->f:Landroid/app/AlarmManager;

    invoke-static {v0, p0}, Lcom/miui/powercenter/batteryhistory/j;->a(Landroid/app/AlarmManager;Landroid/app/AlarmManager$OnAlarmListener;)V

    invoke-static {}, Lid/a;->e()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-direct {p0, v2, v3, v1}, Lcom/miui/powercenter/batteryhistory/k;->t(JLjava/util/List;)J

    move-result-wide v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "check reset inner curHistoryTime : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lid/b;->a(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check reset inner next record history time(min) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/32 v3, 0xea60

    div-long v3, v0, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lid/b;->a(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/miui/powercenter/batteryhistory/k;->w(J)V

    :cond_2
    return-void
.end method

.method private m(JJ)Z
    .locals 10

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/powercenter/batteryhistory/g;->q(Landroid/content/Context;)Lcom/miui/powercenter/batteryhistory/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/powercenter/batteryhistory/g;->k()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/powercenter/batteryhistory/k;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/powercenter/batteryhistory/g;->q(Landroid/content/Context;)Lcom/miui/powercenter/batteryhistory/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/powercenter/batteryhistory/g;->f()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_a

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v4, p0, Lcom/miui/powercenter/batteryhistory/k;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/miui/powercenter/batteryhistory/g;->q(Landroid/content/Context;)Lcom/miui/powercenter/batteryhistory/g;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/powercenter/batteryhistory/g;->g()Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-wide/16 v4, 0x0

    sub-long/2addr p1, v0

    add-long/2addr p1, v4

    add-long/2addr p1, p3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p3

    const/4 p4, 0x1

    sub-int/2addr p3, p4

    :goto_0
    if-ltz p3, :cond_a

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, p4

    const-wide/32 v4, 0x5265c00

    if-ne p3, v1, :cond_2

    iget v1, v0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->type:I

    const/4 v6, 0x2

    if-ne v1, v6, :cond_2

    iget-wide v0, v0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->shutdownDuration:J

    add-long/2addr p1, v0

    cmp-long v0, p1, v4

    if-ltz v0, :cond_8

    const-string p1, "clearOverageHistory shutdown more than 24"

    :goto_1
    invoke-static {p1}, Lid/b;->a(Ljava/lang/String;)V

    return p4

    :cond_2
    iget v1, v0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->type:I

    if-nez v1, :cond_4

    if-nez p3, :cond_3

    iget-wide v6, v0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->endTime:J

    iget-wide v8, v0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->startTime:J

    sub-long/2addr v6, v8

    goto :goto_2

    :cond_3
    const-wide/32 v6, 0x36ee80

    goto :goto_2

    :cond_4
    if-ne v1, p4, :cond_9

    iget-wide v6, v0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->shutdownDuration:J

    :goto_2
    add-long/2addr p1, v6

    cmp-long v0, p1, v4

    if-ltz v0, :cond_8

    if-ne v1, p4, :cond_6

    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, p4

    if-ge p3, p1, :cond_6

    add-int/lit8 p1, p3, 0x1

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;

    iget p2, p2, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->type:I

    if-eq p2, p4, :cond_5

    goto :goto_4

    :cond_5
    move p3, p1

    goto :goto_3

    :cond_6
    :goto_4
    if-ltz p3, :cond_7

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, p4

    if-gt p3, p1, :cond_7

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;

    iget-wide p1, p1, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->startTime:J

    iget-object p3, p0, Lcom/miui/powercenter/batteryhistory/k;->a:Landroid/content/Context;

    invoke-static {p3}, Lcom/miui/powercenter/batteryhistory/g;->q(Landroid/content/Context;)Lcom/miui/powercenter/batteryhistory/g;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/miui/powercenter/batteryhistory/g;->b(J)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "clearOverageHistory clear time : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lid/b;->a(Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    const-string p1, "clearOverageHistory clear time error"

    goto :goto_1

    :cond_8
    add-int/lit8 p3, p3, -0x1

    goto/16 :goto_0

    :cond_9
    const-string p1, "clearOverageHistory error shutdown placeholder"

    goto :goto_1

    :cond_a
    :goto_5
    return v3
.end method

.method private n()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/powercenter/legacypowerrank/BatteryData;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/miui/powercenter/legacypowerrank/g;->t()V

    invoke-static {}, Lcom/miui/powercenter/legacypowerrank/g;->f()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/miui/powercenter/legacypowerrank/g;->i()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v2
.end method

.method public static o(Landroid/content/Context;)Lcom/miui/powercenter/batteryhistory/k;
    .locals 2

    sget-object v0, Lcom/miui/powercenter/batteryhistory/k;->g:Lcom/miui/powercenter/batteryhistory/k;

    if-nez v0, :cond_1

    const-class v0, Lcom/miui/powercenter/batteryhistory/k;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/powercenter/batteryhistory/k;->g:Lcom/miui/powercenter/batteryhistory/k;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/powercenter/batteryhistory/k;

    invoke-direct {v1, p0}, Lcom/miui/powercenter/batteryhistory/k;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/powercenter/batteryhistory/k;->g:Lcom/miui/powercenter/batteryhistory/k;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/miui/powercenter/batteryhistory/k;->g:Lcom/miui/powercenter/batteryhistory/k;

    return-object p0
.end method

.method private p()V
    .locals 25
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init history : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/miui/powercenter/batteryhistory/n;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BatteryHistoryManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/miui/powercenter/batteryhistory/k;->e:Z

    iget-object v2, v0, Lcom/miui/powercenter/batteryhistory/k;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/powercenter/batteryhistory/g;->q(Landroid/content/Context;)Lcom/miui/powercenter/batteryhistory/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/powercenter/batteryhistory/g;->r()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-object v8, v0, Lcom/miui/powercenter/batteryhistory/k;->a:Landroid/content/Context;

    invoke-static {v8}, Lcom/miui/powercenter/batteryhistory/g;->q(Landroid/content/Context;)Lcom/miui/powercenter/batteryhistory/g;

    move-result-object v8

    const-wide/16 v9, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/miui/powercenter/batteryhistory/g;->y(J)V

    invoke-static {}, Lid/a;->f()Ljava/util/Map;

    move-result-object v8

    new-instance v11, Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v8, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/powercenter/batteryhistory/u;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    add-long/2addr v11, v13

    invoke-direct/range {p0 .. p0}, Lcom/miui/powercenter/batteryhistory/k;->n()Ljava/util/List;

    move-result-object v14

    invoke-static {}, Lid/a;->h()Z

    move-result v13

    if-eqz v13, :cond_0

    iget-object v8, v0, Lcom/miui/powercenter/batteryhistory/k;->a:Landroid/content/Context;

    invoke-static {v8}, Lid/a;->c(Landroid/content/Context;)J

    move-result-wide v15

    :goto_0
    move-wide/from16 v21, v15

    goto :goto_1

    :cond_0
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lcom/miui/powercenter/batteryhistory/u;->b()J

    move-result-wide v15

    goto :goto_0

    :cond_1
    move-wide/from16 v21, v9

    :goto_1
    const-wide/32 v15, 0x493e0

    cmp-long v8, v6, v15

    const-wide/32 v23, 0xea60

    if-gtz v8, :cond_2

    cmp-long v8, v2, v9

    if-lez v8, :cond_2

    sub-long/2addr v4, v2

    cmp-long v2, v4, v9

    if-ltz v2, :cond_2

    cmp-long v2, v4, v23

    if-gtz v2, :cond_3

    :cond_2
    move-wide v4, v9

    :cond_3
    move-wide/from16 v2, v21

    invoke-direct {v0, v2, v3}, Lcom/miui/powercenter/batteryhistory/k;->k(J)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v1, "init history checkreset true"

    invoke-static {v1}, Lid/b;->a(Ljava/lang/String;)V

    :goto_2
    invoke-static {}, Lid/a;->e()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    add-long/2addr v11, v4

    move-wide v4, v9

    goto :goto_3

    :cond_4
    iget-object v8, v0, Lcom/miui/powercenter/batteryhistory/k;->a:Landroid/content/Context;

    invoke-static {v8}, Lcom/miui/powercenter/batteryhistory/g;->q(Landroid/content/Context;)Lcom/miui/powercenter/batteryhistory/g;

    move-result-object v8

    invoke-virtual {v8}, Lcom/miui/powercenter/batteryhistory/g;->p()I

    move-result v8

    if-ne v8, v1, :cond_5

    iget-object v1, v0, Lcom/miui/powercenter/batteryhistory/k;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/powercenter/batteryhistory/g;->q(Landroid/content/Context;)Lcom/miui/powercenter/batteryhistory/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/powercenter/batteryhistory/g;->h()I

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "init history no histogram reset"

    invoke-static {v1}, Lid/b;->a(Ljava/lang/String;)V

    invoke-direct {v0, v2, v3}, Lcom/miui/powercenter/batteryhistory/k;->r(J)V

    goto :goto_2

    :cond_5
    :goto_3
    iget-object v1, v0, Lcom/miui/powercenter/batteryhistory/k;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/powercenter/batteryhistory/g;->q(Landroid/content/Context;)Lcom/miui/powercenter/batteryhistory/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/powercenter/batteryhistory/g;->p()I

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "init history no history save"

    invoke-static {v1}, Lid/b;->a(Ljava/lang/String;)V

    :goto_4
    invoke-direct {v0, v11, v12, v14}, Lcom/miui/powercenter/batteryhistory/k;->t(JLjava/util/List;)J

    move-result-wide v1

    goto :goto_5

    :cond_6
    invoke-direct {v0, v11, v12, v4, v5}, Lcom/miui/powercenter/batteryhistory/k;->m(JJ)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "init history overage reset"

    invoke-static {v1}, Lid/b;->a(Ljava/lang/String;)V

    invoke-direct {v0, v2, v3}, Lcom/miui/powercenter/batteryhistory/k;->r(J)V

    invoke-static {}, Lid/a;->e()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-long v11, v1, v3

    goto :goto_4

    :cond_7
    cmp-long v1, v4, v9

    if-lez v1, :cond_8

    sub-long v1, v11, v6

    invoke-static {v1, v2, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v16

    iget-object v1, v0, Lcom/miui/powercenter/batteryhistory/k;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/powercenter/batteryhistory/g;->q(Landroid/content/Context;)Lcom/miui/powercenter/batteryhistory/g;

    move-result-object v13

    move-object v1, v14

    move-wide v14, v11

    move-wide/from16 v18, v4

    move-object/from16 v20, v1

    invoke-virtual/range {v13 .. v20}, Lcom/miui/powercenter/batteryhistory/g;->v(JJJLjava/util/List;)V

    :cond_8
    iget-object v1, v0, Lcom/miui/powercenter/batteryhistory/k;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/powercenter/batteryhistory/g;->q(Landroid/content/Context;)Lcom/miui/powercenter/batteryhistory/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/powercenter/batteryhistory/g;->k()J

    move-result-wide v1

    iget-object v3, v0, Lcom/miui/powercenter/batteryhistory/k;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/powercenter/batteryhistory/g;->q(Landroid/content/Context;)Lcom/miui/powercenter/batteryhistory/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/powercenter/batteryhistory/g;->g()Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;

    move-result-object v3

    sub-long v1, v11, v1

    if-eqz v3, :cond_9

    iget-wide v3, v3, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->shutdownDuration:J

    add-long/2addr v1, v3

    :cond_9
    const-wide/32 v3, 0x36ee80

    sub-long v1, v3, v1

    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/miui/powercenter/batteryhistory/k;->q()Z

    move-result v3

    if-nez v3, :cond_a

    const-string v1, "init history judgeDataValid"

    invoke-static {v1}, Lid/b;->a(Ljava/lang/String;)V

    return-void

    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init history curHistoryTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lid/b;->a(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init history next record history time(min) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v4, v1, v23

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lid/b;->a(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lcom/miui/powercenter/batteryhistory/k;->w(J)V

    invoke-direct/range {p0 .. p0}, Lcom/miui/powercenter/batteryhistory/k;->x()V

    return-void
.end method

.method private q()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/powercenter/batteryhistory/g;->q(Landroid/content/Context;)Lcom/miui/powercenter/batteryhistory/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/powercenter/batteryhistory/g;->u()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "judgeDataValid not valid"

    invoke-static {v0}, Lid/b;->a(Ljava/lang/String;)V

    const-wide/high16 v0, -0x8000000000000000L

    invoke-direct {p0, v0, v1}, Lcom/miui/powercenter/batteryhistory/k;->r(J)V

    invoke-direct {p0}, Lcom/miui/powercenter/batteryhistory/k;->l()V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private r(J)V
    .locals 3

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/powercenter/batteryhistory/g;->q(Landroid/content/Context;)Lcom/miui/powercenter/batteryhistory/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/powercenter/batteryhistory/g;->a()V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/powercenter/batteryhistory/g;->q(Landroid/content/Context;)Lcom/miui/powercenter/batteryhistory/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/miui/powercenter/batteryhistory/g;->x(J)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/powercenter/batteryhistory/g;->q(Landroid/content/Context;)Lcom/miui/powercenter/batteryhistory/g;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/powercenter/batteryhistory/g;->y(J)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "complete reset:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lid/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method private s(JLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/miui/powercenter/legacypowerrank/BatteryData;",
            ">;)V"
        }
    .end annotation

    if-nez p3, :cond_0

    invoke-direct {p0}, Lcom/miui/powercenter/batteryhistory/k;->n()Ljava/util/List;

    move-result-object p3

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/powercenter/batteryhistory/g;->q(Landroid/content/Context;)Lcom/miui/powercenter/batteryhistory/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/powercenter/batteryhistory/g;->w(JLjava/util/List;)V

    return-void
.end method

.method private t(JLjava/util/List;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/miui/powercenter/legacypowerrank/BatteryData;",
            ">;)J"
        }
    .end annotation

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0x37

    if-lt v0, v1, :cond_0

    rsub-int/lit8 v0, v0, 0x78

    goto :goto_0

    :cond_0
    rsub-int/lit8 v0, v0, 0x3c

    :goto_0
    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/powercenter/batteryhistory/k;->s(JLjava/util/List;)V

    return-wide v0
.end method

.method private u()V
    .locals 13
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "save history : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/miui/powercenter/batteryhistory/n;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lid/b;->a(Ljava/lang/String;)V

    invoke-static {}, Lid/a;->f()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/batteryhistory/u;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    add-long/2addr v3, v5

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/k;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/powercenter/batteryhistory/g;->q(Landroid/content/Context;)Lcom/miui/powercenter/batteryhistory/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/powercenter/batteryhistory/g;->l()[J

    move-result-object v1

    if-nez v1, :cond_0

    const-string v5, "save history get last history time null"

    invoke-static {v5}, Lid/b;->a(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lid/a;->h()Z

    move-result v5

    const-wide/16 v6, 0x0

    if-eqz v5, :cond_1

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lid/a;->c(Landroid/content/Context;)J

    move-result-wide v8

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/powercenter/batteryhistory/u;->b()J

    move-result-wide v8

    goto :goto_0

    :cond_2
    move-wide v8, v6

    :goto_0
    invoke-direct {p0, v8, v9}, Lcom/miui/powercenter/batteryhistory/k;->k(J)Z

    move-result v0

    const-string v5, "save history reset"

    if-nez v0, :cond_3

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/miui/powercenter/batteryhistory/k;->m(JJ)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v5}, Lid/b;->a(Ljava/lang/String;)V

    invoke-direct {p0, v8, v9}, Lcom/miui/powercenter/batteryhistory/k;->r(J)V

    :cond_3
    if-eqz v0, :cond_4

    invoke-static {}, Lid/a;->e()J

    move-result-wide v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    add-long/2addr v3, v6

    :cond_4
    const/4 v6, 0x0

    invoke-direct {p0, v3, v4, v6}, Lcom/miui/powercenter/batteryhistory/k;->s(JLjava/util/List;)V

    invoke-direct {p0}, Lcom/miui/powercenter/batteryhistory/k;->q()Z

    move-result v6

    if-nez v6, :cond_5

    const-string v0, "save history judgeDataValid"

    invoke-static {v0}, Lid/b;->a(Ljava/lang/String;)V

    return-void

    :cond_5
    const/16 v6, 0xc

    const-wide/32 v7, 0x36ee80

    if-eqz v0, :cond_7

    invoke-static {v5}, Lid/b;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0x37

    if-lt v0, v1, :cond_6

    rsub-int/lit8 v0, v0, 0x78

    goto :goto_1

    :cond_6
    rsub-int/lit8 v0, v0, 0x3c

    :goto_1
    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    move-wide v7, v0

    goto :goto_2

    :cond_7
    if-eqz v1, :cond_9

    aget-wide v9, v1, v2

    const/4 v0, 0x1

    aget-wide v0, v1, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v0

    sub-long v0, v3, v9

    sub-long/2addr v11, v0

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v9, 0x493e0

    cmp-long v0, v0, v9

    if-gtz v0, :cond_9

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save history change next time error(min) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lid/b;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    rsub-int/lit8 v0, v0, 0x3c

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v7, v0

    :cond_9
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "save history curHistoryTime : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lid/b;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "save history next record history time(min) : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/32 v1, 0xea60

    div-long v1, v7, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " utc "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lid/b;->a(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, v7

    invoke-direct {p0, v0, v1}, Lcom/miui/powercenter/batteryhistory/k;->w(J)V

    return-void
.end method

.method private w(J)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/k;->a:Landroid/content/Context;

    const-class v2, Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.miui.powercenter.action.BATTERYHISTORY_RECORD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/k;->a:Landroid/content/Context;

    const/4 v2, 0x1

    const/high16 v3, 0xc000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/k;->f:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/k;->f:Landroid/app/AlarmManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1, p2, v0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method private x()V
    .locals 6

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/k;->a:Landroid/content/Context;

    const-class v2, Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.miui.powercenter.action.BATTERYHISTORY_CHECKRESET"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/k;->a:Landroid/content/Context;

    const/4 v2, 0x2

    const/high16 v3, 0xc000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/k;->f:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/k;->f:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xdbba0

    add-long/2addr v2, v4

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v2, v3, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method


# virtual methods
.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/k;->c:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public g(ZI)V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/powercenter/batteryhistory/k;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/powercenter/batteryhistory/k;->d:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/16 v0, 0x50

    if-lt p2, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "battery state changed check reset : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BatteryHistoryManager"

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/powercenter/batteryhistory/k;->j()V

    :cond_0
    iput-boolean p1, p0, Lcom/miui/powercenter/batteryhistory/k;->d:Z

    return-void
.end method

.method public h(Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/k;->c:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/k;->c:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/k;->c:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public j()V
    .locals 2

    const-string v0, "checkReset"

    invoke-static {v0}, Lid/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/k;->c:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/k;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-direct {p0}, Lcom/miui/powercenter/batteryhistory/k;->x()V

    return-void
.end method

.method public onAlarm()V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/k;->c:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public v()V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/k;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
