.class Lcom/miui/gamebooster/service/GameBoosterService$g;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/service/GameBoosterService;->v0(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/miui/gamebooster/service/GameBoosterService;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/service/GameBoosterService;Z)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterService$g;->b:Lcom/miui/gamebooster/service/GameBoosterService;

    iput-boolean p2, p0, Lcom/miui/gamebooster/service/GameBoosterService$g;->a:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    const-string p1, "key_hang_up_pkg"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/miui/gamebooster/service/GameBoosterService$g;->b:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v2, p1, v1}, La8/k0;->v(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string p1, "key_hang_up_pkg"

    invoke-static {p1, v0}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterService$g;->b:Lcom/miui/gamebooster/service/GameBoosterService;

    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p1

    if-eqz v2, :cond_a

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_a

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.xiaomi.gamecenter.sdk.service"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    :cond_1
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v5, 0x64

    if-ne v4, v5, :cond_3

    iget v1, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    goto :goto_0

    :cond_5
    invoke-static {}, La8/a0;->v()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, La8/a0;->L()Ljava/lang/String;

    move-result-object v2

    :cond_6
    const-string p1, "GameBoosterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restartGameMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterService$g;->b:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {p1}, Lcom/miui/gamebooster/service/GameBoosterService;->T(Lcom/miui/gamebooster/service/GameBoosterService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v3, p0, Lcom/miui/gamebooster/service/GameBoosterService$g;->b:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v3}, Lcom/miui/gamebooster/service/GameBoosterService;->p(Lcom/miui/gamebooster/service/GameBoosterService;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/miui/gamebooster/service/GameBoosterService$g;->b:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v3, v2}, Lcom/miui/gamebooster/service/GameBoosterService;->U(Lcom/miui/gamebooster/service/GameBoosterService;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/miui/gamebooster/service/GameBoosterService$g;->b:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v3}, Lcom/miui/gamebooster/service/GameBoosterService;->P(Lcom/miui/gamebooster/service/GameBoosterService;)Landroid/os/Handler;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/gamebooster/service/w;->B(Landroid/content/Context;Landroid/os/Handler;)Lcom/miui/gamebooster/service/w;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/miui/gamebooster/service/w;->R(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/gamebooster/service/GameBoosterService$g;->b:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v2}, Lcom/miui/gamebooster/service/GameBoosterService;->P(Lcom/miui/gamebooster/service/GameBoosterService;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/gamebooster/service/w;->B(Landroid/content/Context;Landroid/os/Handler;)Lcom/miui/gamebooster/service/w;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/miui/gamebooster/service/w;->a0(I)V

    iget-object v1, p0, Lcom/miui/gamebooster/service/GameBoosterService$g;->b:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v1}, Lcom/miui/gamebooster/service/GameBoosterService;->K(Lcom/miui/gamebooster/service/GameBoosterService;)V

    goto :goto_1

    :cond_7
    iget-boolean v1, p0, Lcom/miui/gamebooster/service/GameBoosterService$g;->a:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/miui/gamebooster/service/GameBoosterService$g;->b:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v1}, Lcom/miui/gamebooster/service/GameBoosterService;->R(Lcom/miui/gamebooster/service/GameBoosterService;)V

    :cond_8
    :goto_1
    monitor-exit p1

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_9
    :goto_2
    const-string p1, "GameBoosterService"

    const-string v1, "restartGameMode: do nothing"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_3
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/service/GameBoosterService$g;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
