.class Lcom/miui/gamebooster/service/VideoToolBoxService$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/gamebooster/mutiwindow/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/service/VideoToolBoxService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/service/VideoToolBoxService;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/service/VideoToolBoxService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/VideoToolBoxService$c;->a:Lcom/miui/gamebooster/service/VideoToolBoxService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Lf7/e;
    .locals 1

    sget-object v0, Lf7/e;->c:Lf7/e;

    return-object v0
.end method

.method public onForegroundInfoChanged(Lcom/gzy/redmiport/compat/process/ForegroundInfo;)Z
    .locals 7

    iget-object v0, p1, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    iget v1, p1, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mForegroundUid:I

    invoke-static {v1}, Lx4/z1;->m(I)I

    move-result v1

    invoke-static {}, Lx4/z1;->y()I

    move-result v2

    const/16 v3, 0x3e7

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne v1, v3, :cond_0

    const/16 v6, 0xa

    if-eq v2, v6, :cond_1

    :cond_0
    if-eq v1, v3, :cond_3

    if-eq v2, v1, :cond_3

    :cond_1
    iget-object p1, p0, Lcom/miui/gamebooster/service/VideoToolBoxService$c;->a:Lcom/miui/gamebooster/service/VideoToolBoxService;

    invoke-static {p1}, Lcom/miui/gamebooster/service/VideoToolBoxService;->o(Lcom/miui/gamebooster/service/VideoToolBoxService;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/gamebooster/service/VideoToolBoxService$c;->a:Lcom/miui/gamebooster/service/VideoToolBoxService;

    invoke-static {p1}, Lcom/miui/gamebooster/service/VideoToolBoxService;->s(Lcom/miui/gamebooster/service/VideoToolBoxService;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    const-string p1, "VideoToolBoxService"

    const-string v0, "Not same space"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_3
    invoke-static {}, Lj8/s;->f()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object p1, p0, Lcom/miui/gamebooster/service/VideoToolBoxService$c;->a:Lcom/miui/gamebooster/service/VideoToolBoxService;

    invoke-static {p1}, Lcom/miui/gamebooster/service/VideoToolBoxService;->s(Lcom/miui/gamebooster/service/VideoToolBoxService;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string p1, "VideoToolBoxService"

    const-string v0, "vtb not support but service running"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_4
    iget-object v1, p0, Lcom/miui/gamebooster/service/VideoToolBoxService$c;->a:Lcom/miui/gamebooster/service/VideoToolBoxService;

    invoke-static {v1}, Lcom/miui/gamebooster/service/VideoToolBoxService;->o(Lcom/miui/gamebooster/service/VideoToolBoxService;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string p1, "VideoToolBoxService"

    const-string v1, "vtb is closed!!!"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "com.miui.home"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/gamebooster/service/VideoToolBoxService$c;->a:Lcom/miui/gamebooster/service/VideoToolBoxService;

    invoke-static {p1}, Lcom/miui/gamebooster/service/VideoToolBoxService;->q(Lcom/miui/gamebooster/service/VideoToolBoxService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Li8/c;->D(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/miui/gamebooster/service/VideoToolBoxService;->p(Lcom/miui/gamebooster/service/VideoToolBoxService;Z)Z

    :cond_5
    return v5

    :cond_6
    iget-object v1, p0, Lcom/miui/gamebooster/service/VideoToolBoxService$c;->a:Lcom/miui/gamebooster/service/VideoToolBoxService;

    invoke-static {v1}, Lcom/miui/gamebooster/service/VideoToolBoxService;->q(Lcom/miui/gamebooster/service/VideoToolBoxService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, La8/x;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string p1, "VideoToolBoxService"

    const-string v0, "kid space skip"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_7
    invoke-static {}, Lcom/miui/gamebooster/service/VideoToolBoxService;->t()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string p1, "VideoToolBoxService"

    const-string v0, "filter app skip"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_8
    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p1, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mLastForegroundPackageName:Ljava/lang/String;

    const-string v2, "com.miui.screenrecorder"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string p1, "VideoToolBoxService"

    const-string v0, "system UI skip case1"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_9
    iget-object v1, p1, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    const-string v2, "com.android.wifi.dialog"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p1, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mLastForegroundPackageName:Ljava/lang/String;

    const-string v2, "com.xiaomi.miplay_client"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p1, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mLastForegroundPackageName:Ljava/lang/String;

    const-string v2, "com.milink.service"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_a
    const-string p1, "VideoToolBoxService"

    const-string v0, "system UI skip case2"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_b
    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p1, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mLastForegroundPackageName:Ljava/lang/String;

    const-string v2, "com.xiaomi.miplay_client"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p1, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mLastForegroundPackageName:Ljava/lang/String;

    const-string v2, "com.milink.service"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_c
    const-string p1, "VideoToolBoxService"

    const-string v0, "system UI skip case3"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_d
    const-string v1, "com.xiaomi.bluetooth"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/miui/gamebooster/service/VideoToolBoxService$c;->a:Lcom/miui/gamebooster/service/VideoToolBoxService;

    iget-object v2, p1, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mLastForegroundPackageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/miui/gamebooster/service/VideoToolBoxService;->u(Lcom/miui/gamebooster/service/VideoToolBoxService;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string p1, "VideoToolBoxService"

    const-string v0, "system UI skip case4"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_e
    iget-object v1, p0, Lcom/miui/gamebooster/service/VideoToolBoxService$c;->a:Lcom/miui/gamebooster/service/VideoToolBoxService;

    invoke-virtual {v1, v0}, Lcom/miui/gamebooster/service/u;->j(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string p1, "VideoToolBoxService"

    const-string v0, "system UI skip case5"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_f
    iget-object v1, p0, Lcom/miui/gamebooster/service/VideoToolBoxService$c;->a:Lcom/miui/gamebooster/service/VideoToolBoxService;

    invoke-virtual {v1, v0}, Lcom/miui/gamebooster/service/u;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string p1, "VideoToolBoxService"

    const-string v0, "onForegroundInfoChanged: vtb skip, permission activity"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_10
    iget-object v1, p0, Lcom/miui/gamebooster/service/VideoToolBoxService$c;->a:Lcom/miui/gamebooster/service/VideoToolBoxService;

    invoke-static {v1, v0}, Lcom/miui/gamebooster/service/VideoToolBoxService;->w(Lcom/miui/gamebooster/service/VideoToolBoxService;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/gamebooster/service/VideoToolBoxService$c;->a:Lcom/miui/gamebooster/service/VideoToolBoxService;

    invoke-static {v1}, Lcom/miui/gamebooster/service/VideoToolBoxService;->x(Lcom/miui/gamebooster/service/VideoToolBoxService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/miui/gamebooster/service/VideoToolBoxService$c;->a:Lcom/miui/gamebooster/service/VideoToolBoxService;

    invoke-static {v2, v0}, Lcom/miui/gamebooster/service/VideoToolBoxService;->u(Lcom/miui/gamebooster/service/VideoToolBoxService;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/miui/gamebooster/service/VideoToolBoxService$c;->a:Lcom/miui/gamebooster/service/VideoToolBoxService;

    invoke-static {v2}, Lcom/miui/gamebooster/service/VideoToolBoxService;->q(Lcom/miui/gamebooster/service/VideoToolBoxService;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gamebooster/service/VideoToolBoxService$c;->a:Lcom/miui/gamebooster/service/VideoToolBoxService;

    invoke-static {v3}, Lcom/miui/gamebooster/service/VideoToolBoxService;->s(Lcom/miui/gamebooster/service/VideoToolBoxService;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v2, v3}, La7/o;->e(Landroid/content/Context;Landroid/os/Handler;)La7/o;

    move-result-object v2

    invoke-virtual {v2, v0}, La7/o;->i(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->isColdStart()Z

    move-result v3

    invoke-virtual {v2, v3}, La7/o;->j(Z)V

    iget p1, p1, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mForegroundUid:I

    invoke-virtual {v2, v0, p1}, La7/o;->k(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/miui/gamebooster/service/VideoToolBoxService$c;->a:Lcom/miui/gamebooster/service/VideoToolBoxService;

    invoke-static {p1}, Lcom/miui/gamebooster/service/VideoToolBoxService;->s(Lcom/miui/gamebooster/service/VideoToolBoxService;)Landroid/os/Handler;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string p1, "VideoToolBoxService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onForegroundInfoChanged: Enter Vtb pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return v2

    :cond_11
    iget-object p1, p0, Lcom/miui/gamebooster/service/VideoToolBoxService$c;->a:Lcom/miui/gamebooster/service/VideoToolBoxService;

    invoke-static {p1, v0}, Lcom/miui/gamebooster/service/VideoToolBoxService;->y(Lcom/miui/gamebooster/service/VideoToolBoxService;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_12

    iget-object v0, p0, Lcom/miui/gamebooster/service/VideoToolBoxService$c;->a:Lcom/miui/gamebooster/service/VideoToolBoxService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/VideoToolBoxService;->s(Lcom/miui/gamebooster/service/VideoToolBoxService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_12
    const-string v0, "VideoToolBoxService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not support vtb. skipExit : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return v5

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
