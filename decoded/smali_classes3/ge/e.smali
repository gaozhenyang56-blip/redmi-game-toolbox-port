.class public Lge/e;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private a:Lsd/f$c;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lge/e;->b:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lge/e;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lge/e;->c(Landroid/content/Intent;)V

    return-void
.end method

.method private b(Landroid/content/Intent;)V
    .locals 4

    invoke-static {}, Lde/i;->M()Lde/i;

    move-result-object v0

    new-instance v1, Lge/d;

    invoke-direct {v1, p0, p1}, Lge/d;-><init>(Lge/e;Landroid/content/Intent;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lde/i;->h0(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic c(Landroid/content/Intent;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    const-string v1, "miui.intent.extra.EXTRA_SIC_MODE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Lge/e;->a:Lsd/f$c;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lsd/f$c;->a(I)V

    :cond_1
    return-void
.end method

.method private f(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lme/w;->N0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, La8/t1;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lde/j;->c0(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    const-string v0, "USE_STAND"

    invoke-static {p1, v0}, Lde/j;->m0(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public d()V
    .locals 7

    iget-object v0, p0, Lge/e;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "miui.intent.action.MIUI_PC_BATTERY_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lge/e;->b:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x4

    const-string v4, "com.miui.securitycenter.POWER_CENTER_COMMON_PERMISSION"

    move-object v2, p0

    invoke-static/range {v1 .. v6}, Lx4/v;->n(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    return-void
.end method

.method public e(Lsd/f$c;)V
    .locals 0

    iput-object p1, p0, Lge/e;->a:Lsd/f$c;

    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lge/e;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "miui.intent.action.MIUI_PC_BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "miui.intent.extra.EXTRA_LOW_TX_OFFSET_STATE"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lgd/c;->K0()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    if-ne v0, v3, :cond_0

    invoke-direct {p0, p1}, Lge/e;->f(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    invoke-static {p1}, Lde/j;->k(Landroid/content/Context;)V

    :cond_1
    :goto_0
    invoke-direct {p0, p2}, Lge/e;->b(Landroid/content/Intent;)V

    invoke-static {}, Lsd/b;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "miui.intent.extra.EXTRA_WIRED_REVERSE_QUICK_CHARGE"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v3, :cond_2

    invoke-static {p1}, Lde/j;->N(Landroid/content/Context;)V

    goto :goto_1

    :cond_2
    if-nez p2, :cond_3

    invoke-static {p1}, Lde/j;->w(Landroid/content/Context;)V

    :cond_3
    :goto_1
    return-void
.end method
