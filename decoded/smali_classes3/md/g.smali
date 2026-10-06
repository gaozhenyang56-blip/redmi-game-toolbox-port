.class public Lmd/g;
.super Lnd/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmd/g$a;
    }
.end annotation


# instance fields
.field private g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lnd/c;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lmd/g;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    iput v0, p0, Lmd/g;->h:I

    return-void
.end method

.method public static synthetic m(Lmd/g;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmd/g;->r(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic n(Lmd/g;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmd/g;->s(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic o(Lmd/g;)I
    .locals 0

    iget p0, p0, Lmd/g;->h:I

    return p0
.end method

.method static synthetic p(Lmd/g;I)I
    .locals 0

    iput p1, p0, Lmd/g;->h:I

    return p1
.end method

.method private synthetic r(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lmd/g;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v1, "miui.intent.extra.FULL_CHARGER_NAVIGATION"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isNavigationCharge ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lmd/g;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaseChargeProtect_Navigation"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lmd/g;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p2}, Lme/w;->Q(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p2}, Lme/w;->S(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lmd/g;->q()V

    return-void
.end method

.method private synthetic s(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "miui.intent.action.ACTION_FULL_CHARGE_NAVIGATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lde/i;->M()Lde/i;

    move-result-object v0

    new-instance v1, Lmd/f;

    invoke-direct {v1, p0, p2, p1}, Lmd/f;-><init>(Lmd/g;Landroid/content/Intent;Landroid/content/Context;)V

    const-wide/16 p1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lde/i;->h0(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method private t()V
    .locals 2

    new-instance v0, Lmd/e;

    invoke-direct {v0, p0}, Lmd/e;-><init>(Lmd/g;)V

    invoke-static {}, Lee/e;->a()Lee/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lee/e;->i(Lee/e$b;)V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "MODE_NAVIGATION"

    return-object v0
.end method

.method public e()V
    .locals 2

    invoke-super {p0}, Lnd/a;->e()V

    invoke-static {}, Lmd/c;->o()V

    const-string v0, "BaseChargeProtect_Navigation"

    const-string v1, "openProtect NavigationChargeProtectManager"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public f()V
    .locals 2

    invoke-super {p0}, Lnd/a;->f()V

    invoke-static {}, Lmd/c;->b()V

    const-string v0, "BaseChargeProtect_Navigation"

    const-string v1, "closeProtect NavigationChargeProtectManager"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public g(Landroid/content/Context;Lmd/o$b;Lmd/p;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lnd/a;->g(Landroid/content/Context;Lmd/o$b;Lmd/p;)V

    invoke-direct {p0}, Lmd/g;->t()V

    invoke-static {}, Lde/i;->M()Lde/i;

    move-result-object p1

    new-instance p2, Lmd/g$a;

    invoke-direct {p2, p0}, Lmd/g$a;-><init>(Lmd/g;)V

    invoke-virtual {p1, p2}, Lde/i;->B(Lde/g;)V

    return-void
.end method

.method public q()V
    .locals 1

    iget-object v0, p0, Lmd/g;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-virtual {p0, v0}, Lnd/a;->j(Z)V

    return-void
.end method
