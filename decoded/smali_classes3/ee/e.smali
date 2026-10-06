.class public Lee/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lee/e$b;,
        Lee/e$c;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lge/a;

.field private c:Z

.field private d:Landroid/content/BroadcastReceiver;

.field private e:Lkd/a;

.field private f:Lge/e;

.field private g:Lde/o;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lee/e;->a:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lee/e$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lee/e;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static declared-synchronized a()Lee/e;
    .locals 2

    const-class v0, Lee/e;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lee/e$c;->a()Lee/e;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static c()Z
    .locals 1

    invoke-static {}, Lme/q;->u()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lme/q;->A()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lsd/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private g()V
    .locals 2

    invoke-static {}, Lee/e;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lge/e;

    iget-object v1, p0, Lee/e;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lge/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lee/e;->f:Lge/e;

    invoke-virtual {v0}, Lge/e;->d()V

    :cond_0
    return-void
.end method

.method private j()V
    .locals 2

    invoke-static {}, Lme/q;->o()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PowerReceiverManager"

    const-string v1, "registerPowerUsbReceiver not support"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Lde/o;

    iget-object v1, p0, Lee/e;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lde/o;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lee/e;->g:Lde/o;

    invoke-virtual {v0}, Lde/o;->c()V

    return-void
.end method

.method private n()V
    .locals 1

    iget-object v0, p0, Lee/e;->f:Lge/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lge/e;->g()V

    :cond_0
    return-void
.end method

.method private p()V
    .locals 1

    iget-object v0, p0, Lee/e;->g:Lde/o;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lde/o;->e()V

    :cond_0
    return-void
.end method


# virtual methods
.method public b()V
    .locals 0

    invoke-virtual {p0}, Lee/e;->h()V

    invoke-virtual {p0}, Lee/e;->f()V

    invoke-direct {p0}, Lee/e;->g()V

    invoke-virtual {p0}, Lee/e;->e()V

    invoke-direct {p0}, Lee/e;->j()V

    return-void
.end method

.method public d(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lee/e;->b:Lge/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lge/a;->a(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 8

    new-instance v0, Lge/a;

    iget-object v1, p0, Lee/e;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lge/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lee/e;->b:Lge/a;

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    invoke-static {}, Lmd/c;->l()Z

    move-result v0

    iput-boolean v0, p0, Lee/e;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "miui.intent.action.ACTION_FULL_CHARGE_NAVIGATION"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lme/q;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "miui.intent.action.ACTION_LOW_TEMP_FAST_CHARGING"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_1
    const-string v0, "miui.intent.action.ACTION_POWER_CENTER_DIALOG"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lee/e;->a:Landroid/content/Context;

    iget-object v3, p0, Lee/e;->b:Lge/a;

    const/4 v6, 0x0

    const/4 v7, 0x2

    const-string v5, "com.xiaomi.permission.miuibatteryintelligence"

    invoke-static/range {v2 .. v7}, Lx4/v;->n(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    return-void
.end method

.method public f()V
    .locals 2

    invoke-static {}, Lme/q;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lkd/a;

    iget-object v1, p0, Lee/e;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lkd/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lee/e;->e:Lkd/a;

    invoke-virtual {v0}, Lkd/a;->j()V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 7

    invoke-static {}, Lme/w;->K0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lee/e;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lee/e$a;

    invoke-direct {v0, p0}, Lee/e$a;-><init>(Lee/e;)V

    iput-object v0, p0, Lee/e;->d:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.miui.powerkeeper.action.HIGH_FPS_NOTIFY"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lee/e;->a:Landroid/content/Context;

    iget-object v2, p0, Lee/e;->d:Landroid/content/BroadcastReceiver;

    const/4 v5, 0x0

    const/4 v6, 0x2

    const-string v4, "com.miui.powerkeeper.permission.POWER_NOTIFY"

    invoke-static/range {v1 .. v6}, Lx4/v;->n(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    :cond_1
    :goto_0
    return-void
.end method

.method public i(Lee/e$b;)V
    .locals 1

    iget-object v0, p0, Lee/e;->b:Lge/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lge/a;->c(Lee/e$b;)V

    :cond_0
    return-void
.end method

.method public k(Lsd/f$c;)V
    .locals 1

    iget-object v0, p0, Lee/e;->f:Lge/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lge/e;->e(Lsd/f$c;)V

    :cond_0
    return-void
.end method

.method public l()V
    .locals 2

    iget-object v0, p0, Lee/e;->b:Lge/a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lee/e;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public m()V
    .locals 1

    iget-object v0, p0, Lee/e;->e:Lkd/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lkd/a;->n()V

    :cond_0
    return-void
.end method

.method public o()V
    .locals 2

    iget-object v0, p0, Lee/e;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lee/e;->d:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public q()V
    .locals 0

    invoke-virtual {p0}, Lee/e;->o()V

    invoke-virtual {p0}, Lee/e;->m()V

    invoke-direct {p0}, Lee/e;->n()V

    invoke-virtual {p0}, Lee/e;->l()V

    invoke-direct {p0}, Lee/e;->p()V

    return-void
.end method
