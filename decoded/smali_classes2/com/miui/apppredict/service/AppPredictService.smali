.class public Lcom/miui/apppredict/service/AppPredictService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/apppredict/service/AppPredictService$d;,
        Lcom/miui/apppredict/service/AppPredictService$f;,
        Lcom/miui/apppredict/service/AppPredictService$e;,
        Lcom/miui/apppredict/service/AppPredictService$h;,
        Lcom/miui/apppredict/service/AppPredictService$i;,
        Lcom/miui/apppredict/service/AppPredictService$g;,
        Lcom/miui/apppredict/service/AppPredictService$c;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/miui/apppredict/service/AppPredictService$f;

.field private c:Landroid/os/HandlerThread;

.field private d:Lcom/miui/apppredict/service/AppPredictService$d;

.field private e:Landroid/content/BroadcastReceiver;

.field private f:Landroid/content/BroadcastReceiver;

.field private g:Landroid/content/BroadcastReceiver;

.field private h:Landroid/content/BroadcastReceiver;

.field private i:Landroid/database/ContentObserver;

.field private j:Landroid/content/SharedPreferences;

.field private k:I

.field private l:Z

.field private m:Ljava/lang/String;

.field private final n:Lcom/miui/gamebooster/mutiwindow/b$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/apppredict/service/AppPredictService;->k:I

    iput-boolean v0, p0, Lcom/miui/apppredict/service/AppPredictService;->l:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/apppredict/service/AppPredictService;->m:Ljava/lang/String;

    new-instance v0, Lcom/miui/apppredict/service/AppPredictService$a;

    invoke-direct {v0, p0}, Lcom/miui/apppredict/service/AppPredictService$a;-><init>(Lcom/miui/apppredict/service/AppPredictService;)V

    iput-object v0, p0, Lcom/miui/apppredict/service/AppPredictService;->n:Lcom/miui/gamebooster/mutiwindow/b$b;

    return-void
.end method

.method static synthetic a(Lcom/miui/apppredict/service/AppPredictService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/apppredict/service/AppPredictService;->m:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/miui/apppredict/service/AppPredictService;)Lcom/miui/apppredict/service/AppPredictService$d;
    .locals 0

    iget-object p0, p0, Lcom/miui/apppredict/service/AppPredictService;->d:Lcom/miui/apppredict/service/AppPredictService$d;

    return-object p0
.end method

.method static synthetic c(Lcom/miui/apppredict/service/AppPredictService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/apppredict/service/AppPredictService;->n(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/miui/apppredict/service/AppPredictService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/apppredict/service/AppPredictService;->v()V

    return-void
.end method

.method static synthetic e(Lcom/miui/apppredict/service/AppPredictService;Lcom/miui/mlkit/mobilerec/bean/TrainPlanBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/apppredict/service/AppPredictService;->j(Lcom/miui/mlkit/mobilerec/bean/TrainPlanBean;)V

    return-void
.end method

.method static synthetic f(Lcom/miui/apppredict/service/AppPredictService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/apppredict/service/AppPredictService;->u()V

    return-void
.end method

.method static synthetic g(Lcom/miui/apppredict/service/AppPredictService;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/apppredict/service/AppPredictService;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic h(Lcom/miui/apppredict/service/AppPredictService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/apppredict/service/AppPredictService;->o()V

    return-void
.end method

.method static synthetic i(Lcom/miui/apppredict/service/AppPredictService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/apppredict/service/AppPredictService;->t()V

    return-void
.end method

.method private declared-synchronized j(Lcom/miui/mlkit/mobilerec/bean/TrainPlanBean;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/miui/apppredict/service/AppPredictService;->l(Lcom/miui/mlkit/mobilerec/bean/TrainPlanBean;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lo3/c;->f()Lo3/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo3/c;->r(Lcom/miui/mlkit/mobilerec/bean/TrainPlanBean;)V

    sget-object p1, Lp3/n;->b:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "key_last_train_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private k()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/apppredict/service/AppPredictService;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lp3/g;->c:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/miui/apppredict/service/AppPredictService;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private l(Lcom/miui/mlkit/mobilerec/bean/TrainPlanBean;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/mlkit/mobilerec/bean/TrainPlanBean;->canTrain()Z

    move-result p1

    const-string v1, "AppPredictService"

    if-nez p1, :cond_1

    const-string p1, "err, train on is 0"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    iget-object p1, p0, Lcom/miui/apppredict/service/AppPredictService;->j:Landroid/content/SharedPreferences;

    const-string v2, "train_enable"

    const/4 v3, 0x1

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "err, user cancel"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    const-string p1, "batterymanager"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/BatteryManager;

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result p1

    const/16 v2, 0x14

    if-ge p1, v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "power < 20, now is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3
    invoke-direct {p0}, Lcom/miui/apppredict/service/AppPredictService;->k()Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "checkBeforeTrain: ignore"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_4
    return v3
.end method

.method private m()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/apppredict/service/AppPredictService;->l:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/apppredict/service/AppPredictService;->l:Z

    const-string v0, "AppPredictService"

    const-string v1, "destory all"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/apppredict/service/AppPredictService;->c:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iput-object v1, p0, Lcom/miui/apppredict/service/AppPredictService;->c:Landroid/os/HandlerThread;

    :cond_1
    iget-object v0, p0, Lcom/miui/apppredict/service/AppPredictService;->d:Lcom/miui/apppredict/service/AppPredictService$d;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/miui/apppredict/service/AppPredictService;->d:Lcom/miui/apppredict/service/AppPredictService$d;

    :cond_2
    invoke-static {}, Lcom/miui/gamebooster/mutiwindow/b;->d()Lcom/miui/gamebooster/mutiwindow/b;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/apppredict/service/AppPredictService;->n:Lcom/miui/gamebooster/mutiwindow/b$b;

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/mutiwindow/b;->g(Lcom/miui/gamebooster/mutiwindow/b$b;)V

    iget-object v0, p0, Lcom/miui/apppredict/service/AppPredictService;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/apppredict/service/AppPredictService;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/miui/apppredict/service/AppPredictService;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/apppredict/service/AppPredictService;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/miui/apppredict/service/AppPredictService;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/apppredict/service/AppPredictService;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/miui/apppredict/service/AppPredictService;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/apppredict/service/AppPredictService;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/miui/apppredict/service/AppPredictService;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/apppredict/service/AppPredictService;->i:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private n(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/miui/apppredict/service/AppPredictService;->k()Z

    move-result v0

    const-string v1, "AppPredictService"

    if-nez v0, :cond_0

    const-string p1, "doPredict: ignore"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start doPredict "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lo3/c;->f()Lo3/c;

    move-result-object p1

    invoke-virtual {p1}, Lo3/c;->l()V

    return-void
.end method

.method private o()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/apppredict/service/AppPredictService;->n(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/apppredict/service/AppPredictService;->u()V

    return-void
.end method

.method public static p(Landroid/content/Context;Lcom/miui/mlkit/mobilerec/bean/TrainPlanBean;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/apppredict/service/AppPredictService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "type"

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "trainPlanData"

    invoke-virtual {p0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v0
.end method

.method public static q(Landroid/content/Context;Lcom/miui/mlkit/mobilerec/bean/TrainPlanBean;)Landroid/app/PendingIntent;
    .locals 2

    invoke-static {p0, p1}, Lcom/miui/apppredict/service/AppPredictService;->p(Landroid/content/Context;Lcom/miui/mlkit/mobilerec/bean/TrainPlanBean;)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0x3e8

    const/high16 v1, 0xc000000

    invoke-static {p0, v0, p1, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static r(Landroid/content/Context;ZLjava/lang/String;II)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/apppredict/service/AppPredictService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "type"

    const/4 v1, 0x5

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "is_xspace"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p0, "package_name"

    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "index"

    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "pkg_user_id"

    invoke-virtual {v0, p0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method private s()V
    .locals 6

    invoke-static {}, Lef/x;->u()Z

    move-result v0

    const-string v1, "AppPredictService"

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/apppredict/service/AppPredictService;->l:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/apppredict/service/AppPredictService;->l:Z

    const-string v0, "init success"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "BGThread"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/apppredict/service/AppPredictService;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :try_start_0
    iget-object v0, p0, Lcom/miui/apppredict/service/AppPredictService;->c:Landroid/os/HandlerThread;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setPriority(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set thread priority error :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v0, Lcom/miui/apppredict/service/AppPredictService$d;

    iget-object v1, p0, Lcom/miui/apppredict/service/AppPredictService;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/apppredict/service/AppPredictService$d;-><init>(Lcom/miui/apppredict/service/AppPredictService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/apppredict/service/AppPredictService;->d:Lcom/miui/apppredict/service/AppPredictService$d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-static {}, Lcom/miui/gamebooster/mutiwindow/b;->d()Lcom/miui/gamebooster/mutiwindow/b;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/apppredict/service/AppPredictService;->n:Lcom/miui/gamebooster/mutiwindow/b$b;

    invoke-virtual {v0, v2}, Lcom/miui/gamebooster/mutiwindow/b;->b(Lcom/miui/gamebooster/mutiwindow/b$b;)V

    new-instance v0, Lcom/miui/apppredict/service/AppPredictService$g;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v2}, Lcom/miui/apppredict/service/AppPredictService$g;-><init>(Lcom/miui/apppredict/service/AppPredictService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/apppredict/service/AppPredictService;->i:Landroid/database/ContentObserver;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lpe/a;->a:Landroid/net/Uri;

    iget-object v3, p0, Lcom/miui/apppredict/service/AppPredictService;->i:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v0, Lcom/miui/apppredict/service/AppPredictService$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/apppredict/service/AppPredictService$c;-><init>(Lcom/miui/apppredict/service/AppPredictService;Lcom/miui/apppredict/service/AppPredictService$a;)V

    iput-object v0, p0, Lcom/miui/apppredict/service/AppPredictService;->e:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/apppredict/service/AppPredictService;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/apppredict/service/AppPredictService;->e:Landroid/content/BroadcastReceiver;

    const/4 v4, -0x1

    invoke-static {v4}, Lx4/z1;->z(I)Landroid/os/UserHandle;

    move-result-object v4

    const/4 v5, 0x4

    invoke-static {v2, v3, v4, v0, v5}, Lx4/v;->o(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;I)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.WALLPAPER_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "miui.gallery.action.WALLPAPER_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.UPDATE_DESKTOP_VIDEO_WALLPAPER"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Lcom/miui/apppredict/service/AppPredictService$i;

    invoke-direct {v2, p0, v1}, Lcom/miui/apppredict/service/AppPredictService$i;-><init>(Lcom/miui/apppredict/service/AppPredictService;Lcom/miui/apppredict/service/AppPredictService$a;)V

    iput-object v2, p0, Lcom/miui/apppredict/service/AppPredictService;->f:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x2

    invoke-static {p0, v2, v0, v3}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Lcom/miui/apppredict/service/AppPredictService$h;

    invoke-direct {v2, p0, v1}, Lcom/miui/apppredict/service/AppPredictService$h;-><init>(Lcom/miui/apppredict/service/AppPredictService;Lcom/miui/apppredict/service/AppPredictService$a;)V

    iput-object v2, p0, Lcom/miui/apppredict/service/AppPredictService;->g:Landroid/content/BroadcastReceiver;

    invoke-static {p0, v2, v0, v5}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.miui.home.intent.action.LOADING_FINISHED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Lcom/miui/apppredict/service/AppPredictService$e;

    invoke-direct {v2, p0, v1}, Lcom/miui/apppredict/service/AppPredictService$e;-><init>(Lcom/miui/apppredict/service/AppPredictService;Lcom/miui/apppredict/service/AppPredictService$a;)V

    iput-object v2, p0, Lcom/miui/apppredict/service/AppPredictService;->h:Landroid/content/BroadcastReceiver;

    invoke-static {p0, v2, v0, v3}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    invoke-static {}, Lp3/e;->a()Lp3/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lp3/e;->c(Landroid/content/Context;)V

    return-void

    :cond_1
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init: fail mIsInit = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/apppredict/service/AppPredictService;->l:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private t()V
    .locals 1

    invoke-static {}, Lo3/c;->f()Lo3/c;

    move-result-object v0

    invoke-virtual {v0}, Lo3/c;->j()V

    return-void
.end method

.method private u()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/miui/apppredict/service/AppPredictService;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.miui.action.UPDATE_PREDICT_LIST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "update_list_is_null"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/apppredict/service/AppPredictService;->a:Landroid/content/Context;

    invoke-static {}, Lx4/z1;->d()Landroid/os/UserHandle;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lx4/v;->q(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v0, p0, Lcom/miui/apppredict/service/AppPredictService;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.action.UPDATE_PREDICT_LIST_EXTERNAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lx4/z1;->d()Landroid/os/UserHandle;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lx4/v;->q(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private v()V
    .locals 12

    const-string v0, "AppPredictService"

    invoke-static {}, Lo3/c;->f()Lo3/c;

    move-result-object v1

    invoke-virtual {v1}, Lo3/c;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Leg/j;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    new-instance v3, Lcom/miui/apppredict/service/AppPredictService$b;

    invoke-direct {v3, p0}, Lcom/miui/apppredict/service/AppPredictService$b;-><init>(Lcom/miui/apppredict/service/AppPredictService;)V

    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/apppredict/bean/BaseResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "request fail"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/miui/apppredict/bean/BaseResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/miui/apppredict/bean/BaseResult;->getData()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_2

    :cond_0
    sget-object v2, Lp3/n;->b:Landroid/content/SharedPreferences;

    const-string v3, "key_last_train_time"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/miui/apppredict/bean/BaseResult;->getData()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/mlkit/mobilerec/bean/TrainPlanBean;

    invoke-virtual {v6}, Lcom/miui/mlkit/mobilerec/bean/TrainPlanBean;->getPeriod()I

    move-result v6

    invoke-static {v2, v3}, Lx4/x1;->c(J)I

    move-result v7

    if-ge v7, v6, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "time is not ready, lastTrainTime = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", nowTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", period = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Lp3/g;->a(J)J

    move-result-wide v8

    invoke-virtual {v1}, Lcom/miui/apppredict/bean/BaseResult;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/mlkit/mobilerec/bean/TrainPlanBean;

    invoke-virtual {v3}, Lcom/miui/mlkit/mobilerec/bean/TrainPlanBean;->getStartTimeStamp()J

    move-result-wide v10

    cmp-long v3, v10, v4

    if-gez v3, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "target time is small zero, return, time is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/miui/apppredict/bean/BaseResult;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/mlkit/mobilerec/bean/TrainPlanBean;

    invoke-virtual {v1}, Lcom/miui/mlkit/mobilerec/bean/TrainPlanBean;->getStartTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    sub-long/2addr v6, v8

    cmp-long v3, v10, v6

    if-lez v3, :cond_3

    goto :goto_1

    :cond_3
    const-wide/32 v3, 0x5265c00

    add-long/2addr v8, v3

    :goto_1
    add-long/2addr v8, v10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "excludeTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v4, v8, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {v1}, Lcom/miui/apppredict/bean/BaseResult;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/mlkit/mobilerec/bean/TrainPlanBean;

    invoke-static {p0, v1}, Lcom/miui/apppredict/service/AppPredictService;->q(Landroid/content/Context;Lcom/miui/mlkit/mobilerec/bean/TrainPlanBean;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v2, v0, v8, v9, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void

    :cond_4
    :goto_2
    const-string v1, "train task stop, because data is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static w(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/apppredict/service/AppPredictService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "type"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lx4/z1;->A()Landroid/os/UserHandle;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lx4/v;->w(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static x(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lef/x;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lef/x;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/apppredict/service/AppPredictService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x2

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method public static y(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/apppredict/service/AppPredictService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "type"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private z()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lef/x;->L(Z)V

    invoke-static {}, Lp3/o;->f()Lp3/o;

    move-result-object v0

    invoke-virtual {v0}, Lp3/o;->h()V

    invoke-direct {p0}, Lcom/miui/apppredict/service/AppPredictService;->m()V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p1, p0, Lcom/miui/apppredict/service/AppPredictService;->b:Lcom/miui/apppredict/service/AppPredictService$f;

    invoke-virtual {p1}, Lcom/miui/apppredict/IPredictNextApp$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p0, Lcom/miui/apppredict/service/AppPredictService;->k:I

    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    const/16 v2, 0x9

    const-string v3, "AppPredictService"

    if-eq v0, v1, :cond_1

    iput v1, p0, Lcom/miui/apppredict/service/AppPredictService;->k:I

    const-string p1, "AppPredictService::onConfigurationChanged::Dark mode changed."

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/apppredict/service/AppPredictService;->c:Landroid/os/HandlerThread;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/apppredict/service/AppPredictService;->d:Lcom/miui/apppredict/service/AppPredictService$d;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void

    :cond_1
    :try_start_0
    const-string v0, "extraConfig"

    invoke-static {p1, v0}, Lbh/f;->j(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "themeChangedFlags"

    invoke-static {p1, v0}, Lbh/f;->j(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v4, 0x8

    and-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long p1, v0, v4

    if-eqz p1, :cond_2

    const-string p1, "AppPredictService::onConfigurationChanged::Icon changed."

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/apppredict/service/AppPredictService;->c:Landroid/os/HandlerThread;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/apppredict/service/AppPredictService;->d:Lcom/miui/apppredict/service/AppPredictService$d;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "AppPredictService"

    const-string v1, "onCreate: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p0, p0, Lcom/miui/apppredict/service/AppPredictService;->a:Landroid/content/Context;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const-string v1, "sp_apppredict"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/apppredict/service/AppPredictService;->j:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    iput v0, p0, Lcom/miui/apppredict/service/AppPredictService;->k:I

    new-instance v0, Lcom/miui/apppredict/service/AppPredictService$f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/apppredict/service/AppPredictService$f;-><init>(Lcom/miui/apppredict/service/AppPredictService;Lcom/miui/apppredict/service/AppPredictService$a;)V

    iput-object v0, p0, Lcom/miui/apppredict/service/AppPredictService;->b:Lcom/miui/apppredict/service/AppPredictService$f;

    invoke-direct {p0}, Lcom/miui/apppredict/service/AppPredictService;->s()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-direct {p0}, Lcom/miui/apppredict/service/AppPredictService;->m()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7

    invoke-direct {p0}, Lcom/miui/apppredict/service/AppPredictService;->s()V

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/miui/apppredict/service/AppPredictService;->d:Lcom/miui/apppredict/service/AppPredictService$d;

    if-eqz v0, :cond_b

    invoke-static {}, Lef/x;->u()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "type"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AppPredictService::onStartCommand::type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AppPredictService"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_a

    const/4 v2, 0x2

    if-eq v0, v2, :cond_9

    const/4 v2, 0x3

    if-eq v0, v2, :cond_6

    const/4 v2, 0x4

    if-eq v0, v2, :cond_5

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-direct {p0}, Lcom/miui/apppredict/service/AppPredictService;->u()V

    goto/16 :goto_4

    :cond_1
    const-string v0, "package_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "open app fail, pkgName is empty"

    :goto_0
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1

    :cond_2
    const/4 v2, -0x2

    const-string v3, "pkg_user_id"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "index"

    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v0, v2}, Lx4/t1;->f(Ljava/lang/String;I)Z

    move-result v5

    const/4 v6, 0x7

    if-eqz v5, :cond_3

    invoke-static {v4, v0, v2}, Lx4/t1;->j(ILjava/lang/String;I)V

    invoke-static {v0, v3}, Lp3/n;->i(Ljava/lang/String;I)V

    :goto_1
    iget-object v0, p0, Lcom/miui/apppredict/service/AppPredictService;->d:Lcom/miui/apppredict/service/AppPredictService$d;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_4

    :cond_3
    const-string v2, "is_xspace"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_b

    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {v0, v3}, Lp3/n;->i(Ljava/lang/String;I)V

    if-eqz v1, :cond_4

    const/16 v0, 0x3e7

    invoke-static {v0}, Lx4/z1;->z(I)Landroid/os/UserHandle;

    move-result-object v0

    goto :goto_2

    :cond_4
    invoke-static {}, Lx4/z1;->d()Landroid/os/UserHandle;

    move-result-object v0

    :goto_2
    invoke-static {p0, v2, v0}, Lx4/v;->u(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/miui/apppredict/service/AppPredictService;->z()V

    goto :goto_4

    :cond_6
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput v0, v1, Landroid/os/Message;->what:I

    const-string v0, "trainPlanData"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_7

    const-string v0, "begin train fail, task data bundle is null"

    goto :goto_0

    :cond_7
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/miui/mlkit/mobilerec/bean/TrainPlanBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    goto :goto_3

    :catch_0
    const-string v0, "begin train fail, task data is not serializable"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    if-nez v4, :cond_8

    const-string v0, "begin train fail, task data is null"

    goto :goto_0

    :cond_8
    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/apppredict/service/AppPredictService;->d:Lcom/miui/apppredict/service/AppPredictService$d;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4

    :cond_9
    iget-object v1, p0, Lcom/miui/apppredict/service/AppPredictService;->d:Lcom/miui/apppredict/service/AppPredictService$d;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lcom/miui/apppredict/service/AppPredictService;->d:Lcom/miui/apppredict/service/AppPredictService$d;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_b
    :goto_4
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
