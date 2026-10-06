.class Lcom/miui/securitycenter/service/ConnectivityChangeJobService2$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securitycenter/service/ConnectivityChangeJobService2;->w(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2$d;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2$d;->c(Landroid/content/Context;)V

    return-void
.end method

.method private b()V
    .locals 3

    invoke-static {}, Lo2/h;->c()I

    move-result v0

    invoke-static {}, Lo2/h;->f()J

    move-result-wide v1

    invoke-static {v1, v2}, Lx4/x1;->c(J)I

    move-result v1

    if-lt v1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2$d;->a:Landroid/content/Context;

    invoke-static {v0}, Lw2/k;->e(Landroid/content/Context;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lo2/h;->G(J)V

    :cond_0
    return-void
.end method

.method private static synthetic c(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lg9/b;->b(Landroid/content/Context;)V

    return-void
.end method

.method private d()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.securitycenter.action.TRACK_EVERY_DAY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.miui.securityadd"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2$d;->a:Landroid/content/Context;

    const-string v2, "com.miui.securitycenter.permission.RECEIVE_TRACK_DAY"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lef/x;->l()J

    move-result-wide v0

    invoke-static {v0, v1}, Lx4/x1;->c(J)I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2$d;->a:Landroid/content/Context;

    invoke-static {v0}, Lqf/c;->X0(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2$d;->a:Landroid/content/Context;

    invoke-static {v0}, Lq2/b;->k(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2$d;->a:Landroid/content/Context;

    invoke-static {v0}, La3/a;->g(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2$d;->a:Landroid/content/Context;

    invoke-static {v0}, La3/c;->c(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2$d;->a:Landroid/content/Context;

    invoke-static {v0}, Lhd/a;->p1(Landroid/content/Context;)V

    invoke-static {}, Lgb/a;->t()V

    iget-object v0, p0, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2$d;->a:Landroid/content/Context;

    invoke-static {v0}, Lc2/a;->m(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2$d;->a:Landroid/content/Context;

    invoke-static {v0}, Ln5/a;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2$d;->a:Landroid/content/Context;

    invoke-static {v0}, Lm9/a;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2$d;->a:Landroid/content/Context;

    invoke-static {v0}, Lr9/a;->c(Landroid/content/Context;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lef/x;->a0(J)V

    invoke-static {}, Lx4/z1;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.securitycenter.action.TRACK_EVERY_WEEK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.miui.securitycore"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2$d;->a:Landroid/content/Context;

    const-string v2, "com.miui.securitycenter.permission.RECEIVE_TRACK_EVERYWEEK"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2$d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcf/a;->k(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2$d;->a:Landroid/content/Context;

    invoke-static {v0}, Lf3/a;->p(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2$d;->a:Landroid/content/Context;

    invoke-static {v0}, Lqe/a;->e(Landroid/content/Context;)V

    invoke-static {}, Lcom/miui/earthquakewarning/analytics/AnalyticHelper;->trackUpdateToggleStat()V

    invoke-static {}, Lcom/miui/warningcenter/analytics/AnalyticHelper;->trackUpdateToggleStat()V

    invoke-static {}, Lcom/miui/warningcenter/analytics/AnalyticHelper;->trackDisasterStat()V

    iget-object v0, p0, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2$d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/xman/XmanHelper;->uploadXmanData(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2$d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/zman/ZmanHelper;->trackSecurityShareStateEvent(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2$d;->a:Landroid/content/Context;

    invoke-static {v0}, Lf3/a;->m(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2$d;->a:Landroid/content/Context;

    invoke-static {v0}, Lmb/a;->k(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2$d;->a:Landroid/content/Context;

    invoke-static {v0}, Lmb/b;->j(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2$d;->a:Landroid/content/Context;

    invoke-static {v0}, Lmb/b;->n(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2$d;->a:Landroid/content/Context;

    invoke-static {v0}, Lmb/b;->l(Landroid/content/Context;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2$d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/miui/gamebooster/utils/a;->V()V

    invoke-static {}, Lcom/miui/bubbles/utils/BubbleMessageTrackUtil;->trackDaily()V

    invoke-static {}, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->getInstance()Lcom/miui/earthquakewarning/EarthquakeWarningManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->requestSignature()V

    iget-object v0, p0, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2$d;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, La8/o1;->h(Landroid/content/Context;)V

    invoke-static {}, Lx5/p;->G1()V

    iget-object v0, p0, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2$d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2$d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2;->c(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2$d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2;->d(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2$d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2;->e(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2$d;->a:Landroid/content/Context;

    invoke-static {v0}, Li8/b;->i(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2$d;->a:Landroid/content/Context;

    invoke-static {v0}, Li8/b;->t(Landroid/content/Context;)V

    invoke-static {}, Lcom/miui/gamebooster/utils/c;->j()Lcom/miui/gamebooster/utils/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/utils/c;->t()V

    invoke-static {}, Lra/q;->a()Lra/q;

    move-result-object v0

    invoke-virtual {v0}, Lra/q;->c()V

    iget-object v0, p0, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2$d;->a:Landroid/content/Context;

    invoke-static {v0}, Lhb/a;->c(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2$d;->a:Landroid/content/Context;

    invoke-static {v0}, Ltf/a;->b(Landroid/content/Context;)V

    invoke-static {}, Lf7/f;->b()V

    invoke-direct {p0}, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2$d;->d()V

    invoke-direct {p0}, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2$d;->b()V

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2$d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/permcenter/g;->a(Landroid/content/Context;)Lcom/miui/permcenter/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/permcenter/g;->c()V

    :cond_2
    invoke-static {}, Lcom/miui/securityscan/model/ModelUpdater;->getInstance()Lcom/miui/securityscan/model/ModelUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/securityscan/model/ModelUpdater;->checkAndUpdate()V

    iget-object v0, p0, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2$d;->a:Landroid/content/Context;

    invoke-static {v0}, Ljg/a;->o(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2$d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/simlock/c;->t(Landroid/content/Context;)V

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2$d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/antifraud/d;->v(Landroid/content/Context;)V

    :cond_3
    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2$d;->a:Landroid/content/Context;

    new-instance v2, Lcom/miui/securitycenter/service/c;

    invoke-direct {v2, v1}, Lcom/miui/securitycenter/service/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lef/z;->b(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2$d;->a:Landroid/content/Context;

    invoke-static {v0}, Lr9/a;->b(Landroid/content/Context;)V

    return-void
.end method
