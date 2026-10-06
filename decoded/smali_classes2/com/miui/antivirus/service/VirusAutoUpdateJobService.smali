.class public Lcom/miui/antivirus/service/VirusAutoUpdateJobService;
.super Landroid/app/job/JobService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/antivirus/service/VirusAutoUpdateJobService$d;,
        Lcom/miui/antivirus/service/VirusAutoUpdateJobService$c;
    }
.end annotation


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/antivirus/service/VirusAutoUpdateJobService;->a:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/miui/antivirus/service/VirusAutoUpdateJobService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/service/VirusAutoUpdateJobService;->a:Landroid/os/Handler;

    return-object p0
.end method

.method private b(Lcom/miui/antivirus/service/VirusAutoUpdateJobService$d;)V
    .locals 2

    new-instance v0, Lcom/miui/antivirus/service/VirusAutoUpdateJobService$c;

    invoke-direct {v0, p0, p1}, Lcom/miui/antivirus/service/VirusAutoUpdateJobService$c;-><init>(Lcom/miui/antivirus/service/VirusAutoUpdateJobService;Lcom/miui/antivirus/service/VirusAutoUpdateJobService$d;)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static c(Landroid/content/Context;I)Z
    .locals 2

    const-string v0, "jobscheduler"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    invoke-virtual {p0}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getId()I

    move-result v1

    if-ne v1, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public static d(Landroid/content/Context;)V
    .locals 5

    const-string v0, "ro.miui.cts"

    invoke-static {v0}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "persist.sys.miui_optimization"

    invoke-static {v2, v0}, Lmiuix/core/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x63

    invoke-static {p0, v0}, Lcom/miui/antivirus/service/VirusAutoUpdateJobService;->c(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    const-string v2, "jobscheduler"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobScheduler;

    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/miui/antivirus/service/VirusAutoUpdateJobService;

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance p0, Landroid/app/job/JobInfo$Builder;

    invoke-direct {p0, v0, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const-wide/32 v3, 0x5265c00

    invoke-virtual {p0, v3, v4}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVirusUpdateJob() result : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VirusAutoUpdateJobService"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private e()V
    .locals 2

    const-string v0, "VirusAutoUpdateJobService"

    const-string v1, "updateAvlURLRules"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/miui/antivirus/service/VirusAutoUpdateJobService$b;

    invoke-direct {v1, p0}, Lcom/miui/antivirus/service/VirusAutoUpdateJobService$b;-><init>(Lcom/miui/antivirus/service/VirusAutoUpdateJobService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStartJob: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VirusAutoUpdateJobService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lp4/d;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lef/x;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lqg/a;->a()V

    :cond_0
    invoke-static {p0}, Lx4/u;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lef/x;->z()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/miui/antivirus/service/VirusAutoUpdateJobService$d;

    invoke-direct {v0, p0, p1}, Lcom/miui/antivirus/service/VirusAutoUpdateJobService$d;-><init>(Lcom/miui/antivirus/service/VirusAutoUpdateJobService;Landroid/app/job/JobParameters;)V

    invoke-static {p0}, Lj2/a;->e(Landroid/content/Context;)Lj2/a;

    move-result-object p1

    new-instance v2, Lcom/miui/antivirus/service/VirusAutoUpdateJobService$a;

    invoke-direct {v2, p0, v0}, Lcom/miui/antivirus/service/VirusAutoUpdateJobService$a;-><init>(Lcom/miui/antivirus/service/VirusAutoUpdateJobService;Lcom/miui/antivirus/service/VirusAutoUpdateJobService$d;)V

    invoke-virtual {p1, v2}, Lj2/a;->d(Lj2/a$b;)V

    invoke-static {p0}, Lw2/t;->G(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "NOT IN FBE MODE"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/miui/antivirus/service/VirusAutoUpdateJobService;->b(Lcom/miui/antivirus/service/VirusAutoUpdateJobService$d;)V

    invoke-direct {p0}, Lcom/miui/antivirus/service/VirusAutoUpdateJobService;->e()V

    goto :goto_0

    :cond_1
    const-string p1, "IN FBE MODE"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {}, Lme/c;->g()Lme/c;

    move-result-object p1

    invoke-virtual {p1, v0}, Lme/c;->m(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/miui/antivirus/service/VirusAutoUpdateJobService;->a:Landroid/os/Handler;

    const-wide/16 v1, 0x2ee0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
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

    const-string v0, "VirusAutoUpdateJobService"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method
