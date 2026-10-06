.class public Lcom/miui/securityscan/job/ScanJobService;
.super Landroid/app/job/JobService;
.source "SourceFile"


# instance fields
.field private a:Landroid/app/job/JobParameters;

.field private final b:Ljava/lang/Runnable;

.field private final c:Landroid/os/Handler;

.field private d:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    new-instance v0, Lcom/miui/securityscan/job/ScanJobService$a;

    invoke-direct {v0, p0}, Lcom/miui/securityscan/job/ScanJobService$a;-><init>(Lcom/miui/securityscan/job/ScanJobService;)V

    iput-object v0, p0, Lcom/miui/securityscan/job/ScanJobService;->b:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/job/ScanJobService;->c:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/miui/securityscan/job/ScanJobService;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/securityscan/job/ScanJobService;->d:J

    return-wide v0
.end method

.method static synthetic b(Lcom/miui/securityscan/job/ScanJobService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/securityscan/job/ScanJobService;->f()V

    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 9

    const-string v0, "jobscheduler"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/32 v1, 0xa4cb80

    const-wide/16 v3, 0x0

    invoke-virtual {v0}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v5

    const v6, 0x336aa

    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/job/JobInfo;

    invoke-virtual {v7}, Landroid/app/job/JobInfo;->getId()I

    move-result v8

    if-ne v8, v6, :cond_1

    invoke-virtual {v7}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v3

    goto :goto_0

    :cond_2
    cmp-long v3, v3, v1

    const-string v4, "ScanJobService"

    if-eqz v3, :cond_3

    new-instance v3, Landroid/app/job/JobInfo$Builder;

    new-instance v5, Landroid/content/ComponentName;

    const-class v7, Lcom/miui/securityscan/job/ScanJobService;

    invoke-direct {v5, p0, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v3, v6, v5}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    invoke-virtual {v3, v1, v2}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "schedule scan job: code :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lpf/i;->q(Landroid/content/Context;J)V

    goto :goto_1

    :cond_3
    const-string p0, "no need to change this job"

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private d()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0}, Lpf/i;->e(Landroid/content/Context;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {}, Lef/x;->z()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/32 v2, 0xa4cb80

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private e()V
    .locals 3

    const-string v0, "ScanJobService"

    const-string v1, "startScan "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/miui/securityscan/job/ScanJobService$b;

    invoke-direct {v0, p0}, Lcom/miui/securityscan/job/ScanJobService$b;-><init>(Lcom/miui/securityscan/job/ScanJobService;)V

    invoke-static {p0}, Lcom/miui/securityscan/scanner/k;->n(Landroid/content/Context;)Lcom/miui/securityscan/scanner/k;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/miui/securityscan/scanner/k;->v(Lrf/i;Lcom/miui/securityscan/scanner/k$m;)V

    return-void
.end method

.method private f()V
    .locals 3

    iget-object v0, p0, Lcom/miui/securityscan/job/ScanJobService;->a:Landroid/app/job/JobParameters;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopJobService parameters "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScanJobService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    iget-object v0, p0, Lcom/miui/securityscan/job/ScanJobService;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/securityscan/job/ScanJobService;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {p0}, Lcom/miui/securityscan/scanner/k;->n(Landroid/content/Context;)Lcom/miui/securityscan/scanner/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/k;->m()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 3

    const-string v0, "ScanJobService"

    const-string v1, "onStartJob"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/miui/securityscan/job/ScanJobService;->a:Landroid/app/job/JobParameters;

    invoke-direct {p0}, Lcom/miui/securityscan/job/ScanJobService;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/securityscan/job/ScanJobService;->d:J

    iget-object p1, p0, Lcom/miui/securityscan/job/ScanJobService;->c:Landroid/os/Handler;

    iget-object v0, p0, Lcom/miui/securityscan/job/ScanJobService;->b:Ljava/lang/Runnable;

    const-wide/16 v1, 0x4e20

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-wide/16 v0, 0x0

    const-string p1, "idle_scan_start"

    invoke-static {p1, v0, v1}, Lqf/c;->Q(Ljava/lang/String;J)V

    invoke-direct {p0}, Lcom/miui/securityscan/job/ScanJobService;->e()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lpf/i;->q(Landroid/content/Context;J)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string p1, "time interval not enough, no need to scan skip ."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
