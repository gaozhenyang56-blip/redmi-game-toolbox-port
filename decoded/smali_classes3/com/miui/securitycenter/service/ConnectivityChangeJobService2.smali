.class public Lcom/miui/securitycenter/service/ConnectivityChangeJobService2;
.super Landroid/app/job/JobService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/securitycenter/service/ConnectivityChangeJobService2$h;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2;->h(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic b(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2;->q(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic c(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2;->n(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic d(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2;->k(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic e(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2;->p(Landroid/content/Context;)V

    return-void
.end method

.method private f()V
    .locals 3

    new-instance v0, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2$h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2$h;-><init>(Lcom/miui/securitycenter/service/ConnectivityChangeJobService2;Lcom/miui/securitycenter/service/ConnectivityChangeJobService2$a;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private static g()V
    .locals 8

    const-string v0, "miui.securitycenter.utils.WNCheckManager"

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "supportWNChecker"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v1, v2, v4, v5}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getCheckResultSchedule"

    new-array v2, v3, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v6

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v1, v2, v3}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lef/x;->Y(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2;->a:Ljava/lang/String;

    const-string v2, "checkWnSchedule:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private static h(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/push/a;->b(Landroid/content/Context;)Lcom/miui/push/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/push/a;->c()V

    return-void
.end method

.method private static i(Landroid/app/job/JobScheduler;I)Z
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

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static j()V
    .locals 1

    new-instance v0, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2$b;

    invoke-direct {v0}, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2$b;-><init>()V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static k(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v0

    invoke-virtual {v0}, Lw5/f;->f0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Li8/b;->l(Landroid/content/Context;)V

    invoke-static {p0}, Li8/b;->m(Landroid/content/Context;)V

    :cond_0
    invoke-static {}, Lw5/f;->a0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Li8/b;->o(Landroid/content/Context;)V

    invoke-static {p0}, Li8/b;->n(Landroid/content/Context;)V

    invoke-static {p0}, Li8/b;->p(Landroid/content/Context;)V

    :cond_1
    invoke-static {}, Lw5/f;->O()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Li8/b;->z(Landroid/content/Context;)V

    :cond_2
    invoke-static {}, Lw5/f;->Y()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Li8/b;->y(Landroid/content/Context;)V

    :cond_3
    invoke-static {}, Lx5/p;->H0()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p0}, Li8/b;->r(Landroid/content/Context;)V

    invoke-static {p0}, Li8/b;->s(Landroid/content/Context;)V

    invoke-static {}, Lx5/p;->J0()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p0}, Li8/b;->x(Landroid/content/Context;)V

    :cond_4
    invoke-static {}, Lj8/u;->D()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p0}, Li8/b;->A(Landroid/content/Context;)V

    :cond_5
    invoke-static {p0}, Li8/b;->k(Landroid/content/Context;)V

    invoke-static {}, Lx5/p;->D0()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p0}, Li8/b;->B(Landroid/content/Context;)V

    :cond_6
    invoke-static {p0}, Li8/b;->H(Landroid/content/Context;)V

    :cond_7
    return-void
.end method

.method private l()V
    .locals 1

    new-instance v0, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2$f;

    invoke-direct {v0, p0}, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2$f;-><init>(Lcom/miui/securitycenter/service/ConnectivityChangeJobService2;)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private m()V
    .locals 1

    new-instance v0, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2$e;

    invoke-direct {v0, p0}, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2$e;-><init>(Lcom/miui/securitycenter/service/ConnectivityChangeJobService2;)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static n(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Li8/b;->Z(Landroid/content/Context;)V

    invoke-static {p0}, Li8/b;->X(Landroid/content/Context;)V

    invoke-static {p0}, Li8/b;->S(Landroid/content/Context;)V

    invoke-static {p0}, Li8/b;->R(Landroid/content/Context;)V

    invoke-static {p0}, Li8/b;->N(Landroid/content/Context;)V

    invoke-static {p0}, Li8/b;->W(Landroid/content/Context;)V

    invoke-static {p0}, Li8/b;->b0(Landroid/content/Context;)V

    invoke-static {p0}, Li8/b;->L(Landroid/content/Context;)V

    invoke-static {p0}, Li8/b;->K(Landroid/content/Context;)V

    invoke-static {p0}, Li8/b;->g(Landroid/content/Context;)V

    invoke-static {p0}, Li8/b;->h(Landroid/content/Context;)V

    invoke-static {}, Li7/i;->l()Li7/i;

    move-result-object v0

    invoke-virtual {v0}, Li7/i;->I()V

    invoke-static {p0}, Li8/b;->c0(Landroid/content/Context;)V

    invoke-static {p0}, Li8/b;->I(Landroid/content/Context;)V

    invoke-static {p0}, Li8/b;->M(Landroid/content/Context;)V

    return-void
.end method

.method private o()V
    .locals 1

    new-instance v0, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2$g;

    invoke-direct {v0, p0}, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2$g;-><init>(Lcom/miui/securitycenter/service/ConnectivityChangeJobService2;)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static p(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, La8/g0;->A()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lq8/a;->c(Landroid/content/Context;)V

    return-void
.end method

.method private static q(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Li8/b;->U(Landroid/content/Context;)V

    invoke-static {p0}, Li8/b;->f(Landroid/content/Context;)V

    invoke-static {}, Lx5/p;->H0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lj8/u;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Li8/b;->q(Landroid/content/Context;)V

    :cond_0
    invoke-static {}, Lj8/s;->f()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {p0}, Li8/b;->C(Landroid/content/Context;)V

    invoke-static {}, Lj8/u;->E()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lj8/u;->w()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-static {p0}, Li8/b;->w(Landroid/content/Context;)V

    :cond_3
    invoke-static {}, Lj8/u;->D()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p0}, Li8/b;->u(Landroid/content/Context;)V

    :cond_4
    invoke-static {}, La8/t;->l()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p0}, Li8/b;->v(Landroid/content/Context;)V

    :cond_5
    invoke-static {}, Lcom/miui/gamebooster/videobox/utils/MiSoundEffectUtils;->d()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/miui/gamebooster/videobox/utils/MiSoundEffectUtils;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    invoke-static {p0}, Li8/b;->Y(Landroid/content/Context;)V

    :cond_7
    invoke-static {}, Lj8/p;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p0}, Li8/b;->j(Landroid/content/Context;)V

    :cond_8
    return-void
.end method

.method public static r()V
    .locals 1

    new-instance v0, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2$a;

    invoke-direct {v0}, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2$a;-><init>()V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static s(Landroid/content/Context;)V
    .locals 5

    sget-object v0, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2;->a:Ljava/lang/String;

    const-string v1, "setSchedule:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "jobscheduler"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    if-eqz v0, :cond_1

    const v1, 0x334b4

    invoke-static {v0, v1}, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2;->i(Landroid/app/job/JobScheduler;I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/app/job/JobInfo$Builder;

    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2;

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v2, v1, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const-wide/32 v3, 0x5265c00

    invoke-virtual {v2, v3, v4}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private t(Landroid/content/Context;)V
    .locals 7

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/antispam/service/AntiSpamService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/miui/antispam/service/AntiSpamService;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    const-string v1, "startServiceAsUser"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Intent;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Landroid/os/UserHandle;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v5

    sget-object v0, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    aput-object v0, v2, v6

    invoke-static {p1, v1, v3, v2}, Lbh/f;->f(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2;->a:Ljava/lang/String;

    const-string v1, "startCloudPhoneListUpdate exception: "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private u(Landroid/content/Context;)V
    .locals 7

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/securitycenter/service/CloudThirdDesktopService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :try_start_0
    const-string v1, "startServiceAsUser"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Intent;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Landroid/os/UserHandle;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v5

    sget-object v0, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    aput-object v0, v2, v6

    invoke-static {p1, v1, v3, v2}, Lbh/f;->f(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2;->a:Ljava/lang/String;

    const-string v1, "startCloudThirdDesktopUpdate exception: "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private v(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2$c;

    invoke-direct {v0, p0, p1}, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2$c;-><init>(Lcom/miui/securitycenter/service/ConnectivityChangeJobService2;Landroid/content/Context;)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static w(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2$d;

    invoke-direct {v0, p0}, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2$d;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 7

    const-string v0, "ai_guard_function_switch"

    sget-object v1, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStartJob:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2;->w(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/miui/monthreport/c;->m(Landroid/content/Context;)Lcom/miui/monthreport/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/monthreport/c;->p()V

    invoke-static {p0}, Lx4/v;->j(Landroid/content/Context;)I

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0, p0}, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2;->t(Landroid/content/Context;)V

    invoke-direct {p0, p0}, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2;->u(Landroid/content/Context;)V

    :cond_0
    invoke-direct {p0}, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2;->m()V

    invoke-direct {p0}, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2;->l()V

    invoke-direct {p0}, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2;->o()V

    invoke-static {p0}, Lcom/miui/networkassistant/xman/XmanHelper;->checkXmanCloudDataAsync(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/miui/networkassistant/zman/ZmanHelper;->checkZmanCloudDataAsync(Landroid/content/Context;)V

    invoke-static {p0}, Ljg/a;->c(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2;->f()V

    invoke-direct {p0, p0}, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2;->v(Landroid/content/Context;)V

    invoke-static {p0}, Lfe/b;->g(Landroid/content/Context;)Lfe/b;

    move-result-object p1

    invoke-virtual {p1}, Lfe/b;->i()V

    invoke-static {}, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2;->j()V

    invoke-static {}, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2;->r()V

    invoke-static {p0}, Ldf/e;->c(Landroid/content/Context;)V

    invoke-static {}, Lsd/g;->b()V

    invoke-static {}, Ljg/a;->q()V

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lec/c;->w(Landroid/content/Context;Z)V

    invoke-static {}, Lgh/d;->b()V

    invoke-static {p0}, Lcom/miui/permcenter/q;->p(Landroid/content/Context;)V

    invoke-static {p0}, Lof/e;->m(Landroid/content/Context;)V

    invoke-static {p0}, Lhd/d;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2;->g()V

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_2

    :try_start_0
    const-class v1, Lcom/miui/electricrisk/AiGuardUtils;

    const-string v2, "isAiGuardSupported"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, p1

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, p1

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Landroidx/preference/f;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v5, "COMMAND"

    const/4 v6, 0x3

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.miui.guardprovider/.aiguard.AiGuardService"

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    const-class v0, Lcom/miui/electricrisk/AiGuardCloudController;

    const-string v1, "check"

    new-array v2, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p0, v1, p1

    invoke-virtual {v0, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 3

    sget-object v0, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStopJob:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method
