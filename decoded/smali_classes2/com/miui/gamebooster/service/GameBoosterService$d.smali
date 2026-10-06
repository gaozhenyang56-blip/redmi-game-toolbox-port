.class Lcom/miui/gamebooster/service/GameBoosterService$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/gamebooster/mutiwindow/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/service/GameBoosterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/service/GameBoosterService;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/service/GameBoosterService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterService$d;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Lf7/e;
    .locals 1

    sget-object v0, Lf7/e;->b:Lf7/e;

    return-object v0
.end method

.method public onForegroundInfoChanged(Lcom/gzy/redmiport/compat/process/ForegroundInfo;)Z
    .locals 6

    sget-boolean v0, Luf/a;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "GameBoosterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onForegroundInfoChanged"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/gamebooster/service/GameBoosterService$d;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v2}, Lcom/miui/gamebooster/service/GameBoosterService;->Q(Lcom/miui/gamebooster/service/GameBoosterService;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p1, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mForegroundUid:I

    invoke-static {v0}, Lx4/z1;->m(I)I

    move-result v0

    invoke-static {}, Lx4/z1;->y()I

    move-result v1

    const/16 v2, 0x3e7

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    const/16 v4, 0xa

    if-eq v1, v4, :cond_2

    :cond_1
    if-eq v0, v2, :cond_4

    if-eq v1, v0, :cond_4

    :cond_2
    iget-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterService$d;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {p1}, Lcom/miui/gamebooster/service/GameBoosterService;->p(Lcom/miui/gamebooster/service/GameBoosterService;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterService$d;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {p1}, Lcom/miui/gamebooster/service/GameBoosterService;->R(Lcom/miui/gamebooster/service/GameBoosterService;)V

    :cond_3
    return v3

    :cond_4
    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService$d;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterService;->r(Lcom/miui/gamebooster/service/GameBoosterService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lk6/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService$d;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterService;->r(Lcom/miui/gamebooster/service/GameBoosterService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lme/w;->S(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService$d;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterService;->r(Lcom/miui/gamebooster/service/GameBoosterService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, La8/x;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v3

    :cond_6
    invoke-static {}, La8/m;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    return v3

    :cond_7
    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService$d;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterService;->r(Lcom/miui/gamebooster/service/GameBoosterService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, La8/t1;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p1, "GameBoosterService"

    const-string v0, "screen locked!"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_8
    invoke-static {}, Lcom/miui/gamebooster/service/GameBoosterService;->S()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p1, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p1, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    const-string v1, "com.xiaomi.gamecenter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto/16 :goto_0

    :cond_9
    iget-object v0, p1, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    const-string v1, "com.android.wifi.dialog"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p1, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mLastForegroundPackageName:Ljava/lang/String;

    const-string v1, "com.xiaomi.miplay_client"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p1, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mLastForegroundPackageName:Ljava/lang/String;

    const-string v1, "com.milink.service"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    return v3

    :cond_b
    iget-object v0, p1, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p1, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mLastForegroundPackageName:Ljava/lang/String;

    const-string v1, "com.xiaomi.miplay_client"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p1, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mLastForegroundPackageName:Ljava/lang/String;

    const-string v1, "com.milink.service"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p1, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mLastForegroundPackageName:Ljava/lang/String;

    const-string v1, "com.miui.screenrecorder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    return v3

    :cond_d
    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService$d;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    iget-object v1, p1, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/service/u;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    return v3

    :cond_e
    const-string v0, "GameBoosterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onForegroundInfoChanged: Cur="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\t last="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mLastForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService$d;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterService;->T(Lcom/miui/gamebooster/service/GameBoosterService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/gamebooster/service/GameBoosterService$d;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v1}, Lcom/miui/gamebooster/service/GameBoosterService;->p(Lcom/miui/gamebooster/service/GameBoosterService;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/miui/gamebooster/service/GameBoosterService$d;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    iget-object v2, p1, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/miui/gamebooster/service/GameBoosterService;->U(Lcom/miui/gamebooster/service/GameBoosterService;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "GameBoosterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gameStartDelay foreground:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/gamebooster/service/GameBoosterService$d;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v1}, Lcom/miui/gamebooster/service/GameBoosterService;->P(Lcom/miui/gamebooster/service/GameBoosterService;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gamebooster/service/w;->B(Landroid/content/Context;Landroid/os/Handler;)Lcom/miui/gamebooster/service/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gamebooster/service/w;->y()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GameBoosterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gameStartDelay boosterPkgName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p1, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_f

    move v3, v2

    :cond_f
    iget-object v1, p0, Lcom/miui/gamebooster/service/GameBoosterService$d;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v1}, Lcom/miui/gamebooster/service/GameBoosterService;->P(Lcom/miui/gamebooster/service/GameBoosterService;)Landroid/os/Handler;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/miui/gamebooster/service/w;->B(Landroid/content/Context;Landroid/os/Handler;)Lcom/miui/gamebooster/service/w;

    move-result-object v1

    iget-object v4, p1, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/miui/gamebooster/service/w;->R(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/gamebooster/service/GameBoosterService$d;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v1}, Lcom/miui/gamebooster/service/GameBoosterService;->P(Lcom/miui/gamebooster/service/GameBoosterService;)Landroid/os/Handler;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/miui/gamebooster/service/w;->B(Landroid/content/Context;Landroid/os/Handler;)Lcom/miui/gamebooster/service/w;

    move-result-object v1

    iget v4, p1, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mForegroundUid:I

    invoke-virtual {v1, v4}, Lcom/miui/gamebooster/service/w;->a0(I)V

    iget-object v1, p0, Lcom/miui/gamebooster/service/GameBoosterService$d;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v1}, Lcom/miui/gamebooster/service/GameBoosterService;->P(Lcom/miui/gamebooster/service/GameBoosterService;)Landroid/os/Handler;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/miui/gamebooster/service/w;->B(Landroid/content/Context;Landroid/os/Handler;)Lcom/miui/gamebooster/service/w;

    move-result-object v1

    invoke-virtual {p1}, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->isColdStart()Z

    move-result p1

    invoke-virtual {v1, p1}, Lcom/miui/gamebooster/service/w;->V(Z)V

    iget-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterService$d;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {p1}, Lcom/miui/gamebooster/service/GameBoosterService;->P(Lcom/miui/gamebooster/service/GameBoosterService;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/miui/gamebooster/service/w;->B(Landroid/content/Context;Landroid/os/Handler;)Lcom/miui/gamebooster/service/w;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/gamebooster/service/GameBoosterService$d;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-virtual {v1}, Lcom/miui/gamebooster/service/u;->g()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/miui/gamebooster/service/w;->W(Z)V

    iget-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterService$d;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {p1, v3}, Lcom/miui/gamebooster/service/GameBoosterService;->s(Lcom/miui/gamebooster/service/GameBoosterService;Z)V

    monitor-exit v0

    return v2

    :cond_10
    iget-object v1, p0, Lcom/miui/gamebooster/service/GameBoosterService$d;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-virtual {v1}, Lcom/miui/gamebooster/service/u;->i()Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/miui/gamebooster/service/GameBoosterService$d;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    iget-object v2, p1, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/miui/gamebooster/service/GameBoosterService;->t(Lcom/miui/gamebooster/service/GameBoosterService;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/miui/gamebooster/service/GameBoosterService$d;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    iget-object v2, p1, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/miui/gamebooster/service/GameBoosterService;->u(Lcom/miui/gamebooster/service/GameBoosterService;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    :cond_11
    const-string p1, "GameBoosterService"

    const-string v1, "onForegroundInfoChanged:No Exit"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return v3

    :cond_12
    iget-object v1, p0, Lcom/miui/gamebooster/service/GameBoosterService$d;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v1, p1}, Lcom/miui/gamebooster/service/GameBoosterService;->v(Lcom/miui/gamebooster/service/GameBoosterService;Lcom/gzy/redmiport/compat/process/ForegroundInfo;)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/miui/gamebooster/service/GameBoosterService$d;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/miui/gamebooster/service/GameBoosterService;->w(Lcom/miui/gamebooster/service/GameBoosterService;J)J

    const-string v1, "GameBoosterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pop XunyouAlertActivity:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/miui/gamebooster/service/GameBoosterService$d;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v4}, Lcom/miui/gamebooster/service/GameBoosterService;->x(Lcom/miui/gamebooster/service/GameBoosterService;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    const-string v1, "GameBoosterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onGameStatusChange foreground:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterService$d;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {p1}, Lcom/miui/gamebooster/service/GameBoosterService;->R(Lcom/miui/gamebooster/service/GameBoosterService;)V

    monitor-exit v0

    return v3

    :cond_14
    const-string v1, "com.miui.home"

    iget-object p1, p1, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterService$d;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {p1}, Lcom/miui/gamebooster/service/GameBoosterService;->r(Lcom/miui/gamebooster/service/GameBoosterService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lm6/a;->e(Landroid/content/Context;)Lm6/a;

    move-result-object v1

    invoke-virtual {v1}, Lm6/a;->x()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/miui/gamebooster/service/GameBoosterService;->q(Lcom/miui/gamebooster/service/GameBoosterService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    :cond_15
    monitor-exit v0

    return v3

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_16
    :goto_0
    return v3

    :cond_17
    :goto_1
    iget-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterService$d;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {p1}, Lcom/miui/gamebooster/service/GameBoosterService;->R(Lcom/miui/gamebooster/service/GameBoosterService;)V

    return v3
.end method
