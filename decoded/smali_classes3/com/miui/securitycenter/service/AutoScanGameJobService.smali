.class public Lcom/miui/securitycenter/service/AutoScanGameJobService;
.super Landroid/app/job/JobService;
.source "SourceFile"


# static fields
.field private static a:Landroid/app/job/JobScheduler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/securitycenter/service/AutoScanGameJobService;->g(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic b(Lcom/miui/securitycenter/service/AutoScanGameJobService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/securitycenter/service/AutoScanGameJobService;->h()V

    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lite = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lx4/k0;->h()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " first = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lpf/i;->f(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " cloud data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lm6/d;->e()Lm6/d;

    move-result-object v1

    invoke-virtual {v1}, Lm6/d;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " rom = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutoScanGameJobService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lx4/k0;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Lpf/i;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/gamebooster/utils/a$n;->R()V

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Lcom/miui/securitycenter/service/b;

    invoke-direct {v1, p0}, Lcom/miui/securitycenter/service/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lef/z;->b(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    :goto_0
    const-string v0, " asyncConfigure return "

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    invoke-static {p0}, Lpf/i;->f(Landroid/content/Context;)Z

    move-result p0

    invoke-static {v0, p0}, Lcom/miui/gamebooster/utils/a$n;->Q(ZZ)V

    return-void
.end method

.method public static d(Landroid/content/Context;)V
    .locals 8

    const-string v0, "jobscheduler"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    sput-object v0, Lcom/miui/securitycenter/service/AutoScanGameJobService;->a:Landroid/app/job/JobScheduler;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const v3, 0x134d75d

    invoke-static {v0, v3}, Lcom/miui/securitycenter/service/AutoScanGameJobService;->f(Landroid/app/job/JobScheduler;I)Z

    move-result v0

    if-nez v2, :cond_2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    const-wide/16 v6, 0x48

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/miui/securitycenter/service/AutoScanGameJobService;->e(JJ)J

    move-result-wide v4

    new-instance v0, Landroid/app/job/JobInfo$Builder;

    new-instance v2, Landroid/content/ComponentName;

    const-class v6, Lcom/miui/securitycenter/service/AutoScanGameJobService;

    invoke-direct {v2, p0, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v0, v3, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    invoke-virtual {p0, v4, v5}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p0

    sget-object v0, Lcom/miui/securitycenter/service/AutoScanGameJobService;->a:Landroid/app/job/JobScheduler;

    invoke-virtual {v0, p0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    invoke-static {}, Lcom/miui/gamebooster/utils/a$n;->g()V

    return-void

    :cond_2
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " jobScheduler == null or  is Job Existing "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/miui/securitycenter/service/AutoScanGameJobService;->a:Landroid/app/job/JobScheduler;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "AutoScanGameJobService"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2, v0}, Lcom/miui/gamebooster/utils/a$n;->K(ZZ)V

    return-void
.end method

.method private static e(JJ)J
    .locals 2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    sub-long/2addr p2, p0

    long-to-double p2, p2

    mul-double/2addr v0, p2

    double-to-long p2, v0

    add-long/2addr p2, p0

    return-wide p2
.end method

.method private static f(Landroid/app/job/JobScheduler;I)Z
    .locals 1

    invoke-virtual {p0}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    if-ne v0, p1, :cond_0

    const-string p0, "AutoScanGameJobService"

    const-string p1, " isJobExisting "

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic g(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    invoke-static {p0}, Lcom/miui/securitycenter/service/AutoScanGameJobService;->d(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/miui/gamebooster/utils/a$n;->d()V

    const-string v0, "AutoScanGameJobService"

    const-string v1, "Config fbo job exception : "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private synthetic h()V
    .locals 2

    const-string v0, "AutoScanGameJobService"

    const-string v1, " onStartJob onStartJob ======= start scan task"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p0}, Lcom/miui/securitycenter/service/AutoScanGameJobService;->i(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public i(Landroid/content/Context;)V
    .locals 8

    invoke-static {}, Lcom/miui/gamebooster/utils/a$n;->S()V

    invoke-static {}, La8/g0;->O()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, La8/k1;->c(Landroid/content/Context;)V

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {p1}, La8/j0;->a(Landroid/content/Context;)V

    invoke-static {v2, v0}, La8/k0;->m(Landroid/content/pm/PackageManager;Ljava/util/List;)Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    invoke-static {v3}, Lx4/f1;->M(Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {p1, v2, v1}, La8/k0;->l(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, "AutoScanGameJobService"

    const/4 v3, 0x0

    if-nez v1, :cond_3

    const-string p1, " gameInfos.size() "

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Lcom/miui/gamebooster/utils/a$n;->F(Z)V

    return-void

    :cond_3
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/miui/gamebooster/utils/a$n;->F(Z)V

    const-string v4, " scan success "

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v3}, Lpf/i;->r(Landroid/content/Context;Z)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/gamebooster/model/d;

    invoke-virtual {v5}, Lcom/miui/gamebooster/model/d;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1, v6}, Lx4/f1;->O(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/miui/gamebooster/model/d;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1, v7, v6, v5, v3}, La8/j0;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_1

    :cond_4
    invoke-static {v0}, Lw6/i;->p(Ljava/util/List;)V

    invoke-static {}, Lcom/miui/gamebooster/utils/a$n;->T()V

    invoke-static {p1}, La8/i0;->c(Landroid/content/Context;)La8/i0;

    move-result-object v0

    new-instance v3, Lcom/miui/securitycenter/service/AutoScanGameJobService$a;

    invoke-direct {v3, p0, v2, p1}, Lcom/miui/securitycenter/service/AutoScanGameJobService$a;-><init>(Lcom/miui/securitycenter/service/AutoScanGameJobService;Ljava/util/ArrayList;Landroid/content/Context;)V

    invoke-virtual {v0, v3}, La8/i0;->a(Lo4/a$a;)V

    sget-object p1, Lcom/miui/securitycenter/service/AutoScanGameJobService;->a:Landroid/app/job/JobScheduler;

    if-eqz p1, :cond_5

    const v0, 0x134d75d

    invoke-static {p1, v0}, Lcom/miui/securitycenter/service/AutoScanGameJobService;->f(Landroid/app/job/JobScheduler;I)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/miui/securitycenter/service/AutoScanGameJobService;->a:Landroid/app/job/JobScheduler;

    invoke-virtual {p1, v0}, Landroid/app/job/JobScheduler;->cancel(I)V

    :cond_5
    invoke-static {v1}, Lm6/a;->i0(Z)V

    invoke-static {v1}, Lm6/a;->h0(Z)V

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStartJob:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AutoScanGameJobService"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lm6/d;->e()Lm6/d;

    move-result-object p1

    invoke-virtual {p1}, Lm6/d;->d()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/miui/gamebooster/utils/a$n;->O(Z)V

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object p1

    new-instance v0, Lcom/miui/securitycenter/service/a;

    invoke-direct {v0, p0}, Lcom/miui/securitycenter/service/a;-><init>(Lcom/miui/securitycenter/service/AutoScanGameJobService;)V

    invoke-virtual {p1, v0}, Lef/z;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/miui/gamebooster/utils/a$n;->O(Z)V

    const-string p1, "scan task is working\uff0cbut has no cloud data"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStopJob:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AutoScanGameJobService"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method
