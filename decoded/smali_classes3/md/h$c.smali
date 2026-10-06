.class Lmd/h$c;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmd/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private b:I

.field private c:Z

.field private d:J

.field private e:J

.field private f:J

.field private g:J

.field private h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private i:Landroid/os/Handler;

.field private j:Landroid/os/HandlerThread;

.field private k:Z

.field final synthetic l:Lmd/h;


# direct methods
.method public constructor <init>(Lmd/h;)V
    .locals 1

    iput-object p1, p0, Lmd/h$c;->l:Lmd/h;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lmd/h$c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput v0, p0, Lmd/h$c;->b:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmd/h$c;->c:Z

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lmd/h$c;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static synthetic a(Lmd/h$c;)V
    .locals 0

    invoke-direct {p0}, Lmd/h$c;->i()V

    return-void
.end method

.method public static synthetic b(Lmd/h$c;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmd/h$c;->g(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic c(Lmd/h$c;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmd/h$c;->j(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic d(Lmd/h$c;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lmd/h$c;->h(Landroid/content/Context;)V

    return-void
.end method

.method private e()Lzd/b;
    .locals 8

    new-instance v0, Lzd/b;

    invoke-direct {v0}, Lzd/b;-><init>()V

    iget-wide v1, p0, Lmd/h$c;->d:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lmd/h$c;->l:Lmd/h;

    new-instance v5, Ljava/util/Date;

    iget-wide v6, p0, Lmd/h$c;->d:J

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-static {v1, v5}, Lmd/h;->q(Lmd/h;Ljava/util/Date;)I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Lzd/b;->k(I)V

    iget-wide v5, p0, Lmd/h$c;->e:J

    cmp-long v1, v5, v3

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lmd/h$c;->l:Lmd/h;

    new-instance v5, Ljava/util/Date;

    iget-wide v6, p0, Lmd/h$c;->e:J

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-static {v1, v5}, Lmd/h;->q(Lmd/h;Ljava/util/Date;)I

    move-result v1

    :goto_1
    invoke-virtual {v0, v1}, Lzd/b;->g(I)V

    iget-wide v5, p0, Lmd/h$c;->f:J

    cmp-long v1, v5, v3

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lmd/h$c;->l:Lmd/h;

    new-instance v5, Ljava/util/Date;

    iget-wide v6, p0, Lmd/h$c;->f:J

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-static {v1, v5}, Lmd/h;->q(Lmd/h;Ljava/util/Date;)I

    move-result v1

    :goto_2
    invoke-virtual {v0, v1}, Lzd/b;->h(I)V

    iget-wide v5, p0, Lmd/h$c;->g:J

    cmp-long v1, v5, v3

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lmd/h$c;->l:Lmd/h;

    new-instance v2, Ljava/util/Date;

    iget-wide v5, p0, Lmd/h$c;->g:J

    invoke-direct {v2, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-static {v1, v2}, Lmd/h;->q(Lmd/h;Ljava/util/Date;)I

    move-result v2

    :goto_3
    invoke-virtual {v0, v2}, Lzd/b;->j(I)V

    iget-wide v1, p0, Lmd/h$c;->f:J

    invoke-virtual {v0, v1, v2}, Lzd/b;->i(J)V

    iget-wide v1, p0, Lmd/h$c;->f:J

    iget-wide v5, p0, Lmd/h$c;->d:J

    sub-long/2addr v1, v5

    const-wide/32 v5, 0xea60

    div-long/2addr v1, v5

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lzd/b;->m(I)V

    iget-wide v1, p0, Lmd/h$c;->g:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_4

    iget-wide v3, p0, Lmd/h$c;->f:J

    sub-long/2addr v3, v1

    div-long/2addr v3, v5

    long-to-int v1, v3

    invoke-virtual {v0, v1}, Lzd/b;->l(I)V

    :cond_4
    return-object v0
.end method

.method private f(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const-string v0, "level"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "scale"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0x64

    mul-int/2addr v0, v2

    div-int/2addr v0, v1

    invoke-static {p2}, Lme/w;->M(Landroid/content/Intent;)Z

    move-result p2

    iget v1, p0, Lmd/h$c;->b:I

    if-eq v1, v0, :cond_2

    if-eqz p2, :cond_2

    const/16 v1, 0x50

    if-ne v0, v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lmd/h$c;->e:J

    :cond_0
    if-lt v0, v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lmd/h$c;->g:J

    :cond_1
    iput v0, p0, Lmd/h$c;->b:I

    :cond_2
    iget-boolean v1, p0, Lmd/h$c;->c:Z

    if-eq v1, p2, :cond_8

    const-string v1, "BaseChargeProtect_Night"

    if-nez p2, :cond_6

    invoke-static {}, Lmd/h;->X()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lmd/h$c;->f:J

    invoke-direct {p0}, Lmd/h$c;->e()Lzd/b;

    move-result-object v2

    invoke-virtual {v2}, Lzd/b;->e()Z

    move-result v3

    iget-object v4, p0, Lmd/h$c;->l:Lmd/h;

    invoke-virtual {v4, v2}, Lmd/h;->S(Lzd/b;)Z

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isCompleteCharge "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " isNightCharge "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    iget-object v3, p0, Lmd/h$c;->l:Lmd/h;

    invoke-virtual {v3, v2}, Lmd/h;->Y(Lzd/b;)V

    iget-object v3, p0, Lmd/h$c;->l:Lmd/h;

    invoke-virtual {v3}, Lmd/h;->t()V

    :cond_3
    iget-object v3, p0, Lmd/h$c;->l:Lmd/h;

    invoke-virtual {v3}, Lmd/h;->U()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lmd/h$c;->l:Lmd/h;

    invoke-virtual {v3, v2, v0}, Lmd/h;->O(Lzd/b;I)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lmd/h$c;->l:Lmd/h;

    invoke-virtual {v0, p1}, Lmd/h;->o(Landroid/content/Context;)V

    :cond_5
    iget-object v0, p0, Lmd/h$c;->l:Lmd/h;

    invoke-virtual {v0, p1}, Lmd/h;->B(Landroid/content/Context;)V

    invoke-direct {p0}, Lmd/h$c;->l()V

    invoke-virtual {v2}, Lzd/b;->f()V

    goto :goto_0

    :cond_6
    invoke-static {}, Lmd/h;->X()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lmd/h$c;->d:J

    iget-object v0, p0, Lmd/h$c;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lmd/h$c;->l:Lmd/h;

    invoke-virtual {v0, p1}, Lmd/h;->R(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lmd/h$c;->l:Lmd/h;

    invoke-virtual {v0, p1}, Lmd/h;->a0(Landroid/content/Context;)V

    :cond_7
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Charge status changed, mOldCharging "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lmd/h$c;->c:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isCharging "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p2, p0, Lmd/h$c;->c:Z

    :cond_8
    return-void
.end method

.method private synthetic g(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmd/h$c;->f(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic h(Landroid/content/Context;)V
    .locals 2

    const-string v0, "BaseChargeProtect_Night"

    const-string v1, "receiver  ACTION_SCREEN_OFF"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmd/h$c;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmd/h$c;->l:Lmd/h;

    invoke-virtual {v0, p1}, Lmd/h;->R(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmd/h$c;->l:Lmd/h;

    invoke-virtual {v0}, Lmd/h;->V()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmd/h$c;->l:Lmd/h;

    invoke-virtual {v0, p1}, Lmd/h;->a0(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private synthetic i()V
    .locals 3

    iget-object v0, p0, Lmd/h$c;->l:Lmd/h;

    invoke-virtual {v0}, Lmd/h;->U()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receiver  ACTION_USER_PRESENT  misNightChargeProtectionStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BaseChargeProtect_Night"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmd/h$c;->l:Lmd/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnd/a;->j(Z)V

    const-string v0, "start recharge for ACTION_USER_PRESENT "

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private synthetic j(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmd/h$c;->f(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private l()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmd/h$c;->d:J

    iput-wide v0, p0, Lmd/h$c;->f:J

    iput-wide v0, p0, Lmd/h$c;->g:J

    return-void
.end method


# virtual methods
.method public k(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lmd/h$c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lmd/h$c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lmd/h;->X()Z

    move-result v0

    iput-boolean v0, p0, Lmd/h$c;->k:Z

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NightChargeReceiver"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmd/h$c;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lmd/h$c;->j:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lmd/h$c;->i:Landroid/os/Handler;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-boolean v1, p0, Lmd/h$c;->k:Z

    if-eqz v1, :cond_0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x2

    invoke-static {p1, p0, v0, v1}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lmd/h$c;->i:Landroid/os/Handler;

    new-instance v2, Lmd/i;

    invoke-direct {v2, p0, p1, v0}, Lmd/i;-><init>(Lmd/h$c;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    const-string p1, "BaseChargeProtect_Night"

    const-string v0, "register complete!!!"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Lmd/h$c;->i:Landroid/os/Handler;

    const-string v1, "BaseChargeProtect_Night"

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "action "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " mHandler is null, return"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmd/h$c;->i:Landroid/os/Handler;

    new-instance v1, Lmd/j;

    invoke-direct {v1, p0, p1, p2}, Lmd/j;-><init>(Lmd/h$c;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p2, p0, Lmd/h$c;->l:Lmd/h;

    invoke-virtual {p2}, Lmd/h;->U()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lmd/h$c;->l:Lmd/h;

    invoke-virtual {p2, p1}, Lmd/h;->o(Landroid/content/Context;)V

    const-string p1, "start recharge for ACTION_SHUTDOWN "

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {}, Lmd/c;->b()V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p2, p0, Lmd/h$c;->i:Landroid/os/Handler;

    new-instance v0, Lmd/k;

    invoke-direct {v0, p0, p1}, Lmd/k;-><init>(Lmd/h$c;Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lmd/h$c;->i:Landroid/os/Handler;

    new-instance p2, Lmd/l;

    invoke-direct {p2, p0}, Lmd/l;-><init>(Lmd/h$c;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "start recharge for ACTION_TIMEZONE_CHANGED "

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lmd/h$c;->l:Lmd/h;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lnd/a;->j(Z)V

    invoke-static {p2}, Lgd/c;->Z1(Z)V

    iget-object p1, p0, Lmd/h$c;->l:Lmd/h;

    invoke-static {p1}, Lmd/h;->p(Lmd/h;)V

    :cond_6
    :goto_0
    return-void
.end method
