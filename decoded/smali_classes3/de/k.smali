.class public Lde/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final s:Ljava/lang/String;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/os/Handler;

.field private c:Landroid/os/CountDownTimer;

.field private d:Landroid/app/AlarmManager;

.field private e:Landroid/app/PendingIntent;

.field private f:Lcom/miui/common/ui/d;

.field private g:Loe/a;

.field private h:I

.field private i:I

.field private j:Z

.field private k:Z

.field private l:J

.field private m:Lw4/b$b;

.field private n:Lw4/b$b;

.field private o:Lw4/b$b;

.field private p:Ljava/lang/Runnable;

.field private q:Landroid/content/BroadcastReceiver;

.field private r:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ro.product.device"

    const-string v1, "unknown"

    invoke-static {v0, v1}, Lx4/v1;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/k;->s:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lde/k;->i:I

    iput-boolean v0, p0, Lde/k;->j:Z

    iput-boolean v0, p0, Lde/k;->k:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lde/k;->l:J

    new-instance v1, Lde/k$a;

    invoke-direct {v1, p0}, Lde/k$a;-><init>(Lde/k;)V

    iput-object v1, p0, Lde/k;->p:Ljava/lang/Runnable;

    new-instance v1, Lde/k$b;

    invoke-direct {v1, p0}, Lde/k$b;-><init>(Lde/k;)V

    iput-object v1, p0, Lde/k;->q:Landroid/content/BroadcastReceiver;

    new-instance v1, Lde/k$c;

    invoke-direct {v1, p0}, Lde/k$c;-><init>(Lde/k;)V

    iput-object v1, p0, Lde/k;->r:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lde/k;->a:Landroid/content/Context;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lde/k;->b:Landroid/os/Handler;

    new-instance v1, Loe/b;

    iget-object v2, p0, Lde/k;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Loe/b;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lde/k;->g:Loe/a;

    invoke-virtual {p0}, Lde/k;->s()V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lde/k;->q:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x4

    invoke-static {p1, v2, v1, v3}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lde/k;->b:Landroid/os/Handler;

    new-instance v3, Lde/k$d;

    invoke-direct {v3, p0, v1}, Lde/k$d;-><init>(Lde/k;Landroid/content/Intent;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "miui.intent.action.ACTION_SHUTDOWN_DELAY"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "miui.intent.action.ACTION_WIRELESS_FW_UPDATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "miui.intent.action.ACTION_CHECK_CHARGE_DETECT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lme/w;->T()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "com.miui.securitycenter.extreme.endurance.shutdown"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_1
    iget-object v3, p0, Lde/k;->g:Loe/a;

    invoke-interface {v3}, Loe/a;->d()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "miui.intent.action.ACTION_ANTI_BURN"

    :goto_0
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    sget-object v3, Lde/k;->s:Ljava/lang/String;

    const-string v4, "lilac"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "persist.vendor.hightemp.notice"

    invoke-static {v3, v0}, Lx4/v1;->a(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    const-string v3, "miui.intent.action.ACTION_TYPE_C_HIGH_TEMP"

    goto :goto_0

    :cond_4
    :goto_1
    iget-object v3, p0, Lde/k;->a:Landroid/content/Context;

    iget-object v4, p0, Lde/k;->r:Landroid/content/BroadcastReceiver;

    const/4 v5, 0x2

    invoke-static {v3, v4, v1, v5}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    iget-object v1, p0, Lde/k;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "wireless_reverse_charging"

    invoke-static {v1, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/16 v4, 0x14

    if-ge v1, v4, :cond_5

    iget-object v1, p0, Lde/k;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/16 v4, 0x1e

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_5
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lde/k;->a:Landroid/content/Context;

    const/high16 v3, 0x4000000

    invoke-static {v2, v0, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lde/k;->e:Landroid/app/PendingIntent;

    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p1, p0, Lde/k;->d:Landroid/app/AlarmManager;

    return-void
.end method

.method private A()Z
    .locals 2

    iget-object v0, p0, Lde/k;->a:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    return v0
.end method

.method private B()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lde/k;->a:Landroid/content/Context;

    const-class v2, Lcom/miui/powercenter/powerui/ChargeHighTempWarningDialogActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lde/k;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private C()V
    .locals 7

    new-instance v0, Lw4/b$b;

    iget-object v1, p0, Lde/k;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lw4/b$b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/k;->o:Lw4/b$b;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lde/k;->a:Landroid/content/Context;

    const-class v2, Lcom/miui/powercenter/powerui/ChargeHighTempWarningDialogActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lde/k;->o:Lw4/b$b;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lw4/b$b;->l(I)Lw4/b$b;

    move-result-object v1

    iget-object v2, p0, Lde/k;->a:Landroid/content/Context;

    const v3, 0x7f120379

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.miui.powercenter.high"

    invoke-virtual {v1, v3, v2}, Lw4/b$b;->e(Ljava/lang/String;Ljava/lang/String;)Lw4/b$b;

    move-result-object v1

    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const v3, 0x7f080812

    const v4, 0x7f080811

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-virtual {v1, v2}, Lw4/b$b;->v(I)Lw4/b$b;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lw4/b$b;->i(Z)Lw4/b$b;

    move-result-object v1

    invoke-virtual {v1, v2}, Lw4/b$b;->j(Z)Lw4/b$b;

    move-result-object v1

    const v5, 0x7f1204db

    invoke-virtual {v1, v5}, Lw4/b$b;->r(I)Lw4/b$b;

    move-result-object v1

    sget-boolean v6, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    invoke-virtual {v1, v3}, Lw4/b$b;->q(I)Lw4/b$b;

    move-result-object v1

    iget-object v3, p0, Lde/k;->a:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lw4/b$b;->h(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object v1

    iget-object v3, p0, Lde/k;->a:Landroid/content/Context;

    const v4, 0x7f1204da

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lw4/b$b;->g(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lw4/b$b;->u(Landroid/content/Intent;I)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lw4/b$b;->d(Z)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0}, Lw4/b$b;->a()Lw4/b;

    move-result-object v0

    invoke-virtual {v0}, Lw4/b;->I()V

    return-void
.end method

.method private D()V
    .locals 3

    const-string v0, "PowerOffUI"

    const-string v1, "showing charger detect error dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lde/k;->a:Landroid/content/Context;

    const-class v2, Lcom/miui/powercenter/powerui/ChargeWarningDialogActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lde/k;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private E()V
    .locals 4

    new-instance v0, Lw4/b$b;

    iget-object v1, p0, Lde/k;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lw4/b$b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/k;->n:Lw4/b$b;

    iget-object v0, p0, Lde/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lme/q;->v(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/k;->a:Landroid/content/Context;

    const-string v1, "charge_nonstandard"

    invoke-static {v0, v1}, Lod/c;->h(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lde/k;->a:Landroid/content/Context;

    const-class v2, Lcom/miui/powercenter/powerui/ChargeWarningDialogActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_0
    iget-object v1, p0, Lde/k;->a:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x4000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lde/k;->n:Lw4/b$b;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lw4/b$b;->l(I)Lw4/b$b;

    move-result-object v1

    iget-object v2, p0, Lde/k;->a:Landroid/content/Context;

    const v3, 0x7f120379

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.miui.powercenter.high"

    invoke-virtual {v1, v3, v2}, Lw4/b$b;->e(Ljava/lang/String;Ljava/lang/String;)Lw4/b$b;

    move-result-object v1

    const v2, 0x7f080e95

    invoke-virtual {v1, v2}, Lw4/b$b;->v(I)Lw4/b$b;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lw4/b$b;->i(Z)Lw4/b$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lw4/b$b;->f(Landroid/app/PendingIntent;)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lw4/b$b;->j(Z)Lw4/b$b;

    move-result-object v0

    const v1, 0x7f1204e0

    invoke-virtual {v0, v1}, Lw4/b$b;->r(I)Lw4/b$b;

    move-result-object v0

    const v2, 0x7f08037a

    invoke-virtual {v0, v2}, Lw4/b$b;->q(I)Lw4/b$b;

    move-result-object v0

    iget-object v2, p0, Lde/k;->a:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw4/b$b;->h(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object v0

    iget-object v1, p0, Lde/k;->a:Landroid/content/Context;

    const v2, 0x7f1204dd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw4/b$b;->g(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0}, Lw4/b$b;->a()Lw4/b;

    move-result-object v0

    invoke-virtual {v0}, Lw4/b;->I()V

    return-void
.end method

.method private F()V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/k;->j:Z

    new-instance v1, Lw4/b$b;

    iget-object v2, p0, Lde/k;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lw4/b$b;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lde/k;->m:Lw4/b$b;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lw4/b$b;->l(I)Lw4/b$b;

    move-result-object v1

    iget-object v2, p0, Lde/k;->a:Landroid/content/Context;

    const v3, 0x7f120379

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.miui.powercenter.high"

    invoke-virtual {v1, v3, v2}, Lw4/b$b;->e(Ljava/lang/String;Ljava/lang/String;)Lw4/b$b;

    move-result-object v1

    const v2, 0x7f080e95

    invoke-virtual {v1, v2}, Lw4/b$b;->v(I)Lw4/b$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lw4/b$b;->i(Z)Lw4/b$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lw4/b$b;->j(Z)Lw4/b$b;

    move-result-object v1

    const v2, 0x7f1212b0

    invoke-virtual {v1, v2}, Lw4/b$b;->r(I)Lw4/b$b;

    move-result-object v1

    const v3, 0x7f08037a

    invoke-virtual {v1, v3}, Lw4/b$b;->q(I)Lw4/b$b;

    move-result-object v1

    iget-object v3, p0, Lde/k;->a:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lw4/b$b;->h(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object v1

    iget-object v2, p0, Lde/k;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lde/k;->h:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v0, v5

    const v4, 0x7f10010b

    invoke-virtual {v2, v4, v3, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lw4/b$b;->g(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0}, Lw4/b$b;->a()Lw4/b;

    move-result-object v0

    invoke-virtual {v0}, Lw4/b;->I()V

    return-void
.end method

.method private G()V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/k;->j:Z

    new-instance v1, Lcom/miui/common/ui/d$b;

    iget-object v2, p0, Lde/k;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/common/ui/d;->g(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f130455

    invoke-direct {v1, v2, v3}, Lcom/miui/common/ui/d$b;-><init>(Landroid/content/Context;I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/common/ui/d$b;->b(Z)Lcom/miui/common/ui/d$b;

    move-result-object v1

    iget-object v3, p0, Lde/k;->a:Landroid/content/Context;

    new-array v4, v0, [Ljava/lang/Object;

    const/16 v5, 0x1e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const v2, 0x7f1212af

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/common/ui/d$b;->f(Ljava/lang/CharSequence;)Lcom/miui/common/ui/d$b;

    move-result-object v1

    new-instance v2, Lde/k$g;

    invoke-direct {v2, p0}, Lde/k$g;-><init>(Lde/k;)V

    const v3, 0x7f1212ae

    invoke-virtual {v1, v3, v2}, Lcom/miui/common/ui/d$b;->i(ILandroid/content/DialogInterface$OnClickListener;)Lcom/miui/common/ui/d$b;

    move-result-object v1

    new-instance v2, Lde/k$f;

    invoke-direct {v2, p0}, Lde/k$f;-><init>(Lde/k;)V

    invoke-virtual {v1, v2}, Lcom/miui/common/ui/d$b;->h(Landroid/content/DialogInterface$OnDismissListener;)Lcom/miui/common/ui/d$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/common/ui/d$b;->a()Lcom/miui/common/ui/d;

    move-result-object v1

    iput-object v1, p0, Lde/k;->f:Lcom/miui/common/ui/d;

    invoke-virtual {v1}, Lcom/miui/common/ui/d;->j()V

    iget-object v1, p0, Lde/k;->f:Lcom/miui/common/ui/d;

    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    iget-object v1, p0, Lde/k;->a:Landroid/content/Context;

    invoke-static {v1}, Lx4/g;->g(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lde/k;->f:Lcom/miui/common/ui/d;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iget-object v0, p0, Lde/k;->f:Lcom/miui/common/ui/d;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private H()V
    .locals 4

    new-instance v0, Lw4/b$b;

    iget-object v1, p0, Lde/k;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lw4/b$b;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lw4/b$b;->l(I)Lw4/b$b;

    move-result-object v0

    iget-object v1, p0, Lde/k;->a:Landroid/content/Context;

    const v2, 0x7f120379

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.miui.powercenter.high"

    invoke-virtual {v0, v2, v1}, Lw4/b$b;->e(Ljava/lang/String;Ljava/lang/String;)Lw4/b$b;

    move-result-object v0

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const v2, 0x7f080923

    if-eqz v1, :cond_0

    const v1, 0x7f0808a0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lw4/b$b;->v(I)Lw4/b$b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lw4/b$b;->i(Z)Lw4/b$b;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lw4/b$b;->j(Z)Lw4/b$b;

    move-result-object v0

    const v3, 0x7f121336

    invoke-virtual {v0, v3}, Lw4/b$b;->r(I)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lw4/b$b;->q(I)Lw4/b$b;

    move-result-object v0

    iget-object v2, p0, Lde/k;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lw4/b$b;->h(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object v0

    iget-object v2, p0, Lde/k;->a:Landroid/content/Context;

    const v3, 0x7f121335

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lw4/b$b;->g(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object v0

    iget-object v2, p0, Lde/k;->a:Landroid/content/Context;

    const v3, 0x7f121334

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lw4/b$b;->c(Ljava/lang/String;)Lw4/b$b;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.miui.securitycenter.action.FIRMWARE_UPDATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1}, Lw4/b$b;->u(Landroid/content/Intent;I)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0}, Lw4/b$b;->a()Lw4/b;

    move-result-object v0

    invoke-virtual {v0}, Lw4/b;->I()V

    return-void
.end method

.method private I()V
    .locals 1

    const-string v0, "charger,low-battery"

    invoke-static {v0}, Lme/w;->G0(Ljava/lang/String;)V

    return-void
.end method

.method private J()V
    .locals 6

    iget v0, p0, Lde/k;->i:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lde/k;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "charger_detect_warning_dialog_disabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lme/w;->n()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "charger type = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "PowerOffUI"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "USB_FLOAT"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-direct {p0}, Lde/k;->L()V

    const-string v0, "order time one minute"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lde/k;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/high16 v3, 0x4000000

    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v1, Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    add-long/2addr v2, v4

    invoke-direct {v1, v2, v3, v0}, Landroid/app/AlarmManager$AlarmClockInfo;-><init>(JLandroid/app/PendingIntent;)V

    iget-object v0, p0, Lde/k;->d:Landroid/app/AlarmManager;

    iget-object v2, p0, Lde/k;->e:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlarmManager;->setAlarmClock(Landroid/app/AlarmManager$AlarmClockInfo;Landroid/app/PendingIntent;)V

    return-void
.end method

.method private K()V
    .locals 8

    invoke-direct {p0}, Lde/k;->A()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lde/k;->G()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lde/k;->F()V

    :goto_0
    const-string v0, "PowerOffUI"

    const-string v1, "Already displayed power off countdown"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lde/k$e;

    const-wide/16 v4, 0x7530

    const-wide/16 v6, 0x3e8

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lde/k$e;-><init>(Lde/k;JJ)V

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lde/k;->c:Landroid/os/CountDownTimer;

    return-void
.end method

.method private L()V
    .locals 2

    iget-object v0, p0, Lde/k;->e:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lde/k;->d:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method private N()V
    .locals 1

    iget-object v0, p0, Lde/k;->c:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lde/k;->c:Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method

.method private O()V
    .locals 7

    iget-object v0, p0, Lde/k;->m:Lw4/b$b;

    iget-object v1, p0, Lde/k;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lde/k;->h:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const v5, 0x7f10010b

    invoke-virtual {v1, v5, v2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw4/b$b;->g(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0, v6}, Lw4/b$b;->i(Z)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0, v3}, Lw4/b$b;->j(Z)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0}, Lw4/b$b;->a()Lw4/b;

    move-result-object v0

    invoke-virtual {v0}, Lw4/b;->I()V

    return-void
.end method

.method static synthetic a(Lde/k;)V
    .locals 0

    invoke-direct {p0}, Lde/k;->J()V

    return-void
.end method

.method static synthetic b(Lde/k;)Z
    .locals 0

    iget-boolean p0, p0, Lde/k;->j:Z

    return p0
.end method

.method static synthetic c(Lde/k;)Lcom/miui/common/ui/d;
    .locals 0

    iget-object p0, p0, Lde/k;->f:Lcom/miui/common/ui/d;

    return-object p0
.end method

.method static synthetic d(Lde/k;Lcom/miui/common/ui/d;)Lcom/miui/common/ui/d;
    .locals 0

    iput-object p1, p0, Lde/k;->f:Lcom/miui/common/ui/d;

    return-object p1
.end method

.method static synthetic e(Lde/k;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lde/k;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic f(Lde/k;)Lw4/b$b;
    .locals 0

    iget-object p0, p0, Lde/k;->m:Lw4/b$b;

    return-object p0
.end method

.method static synthetic g(Lde/k;)V
    .locals 0

    invoke-direct {p0}, Lde/k;->O()V

    return-void
.end method

.method static synthetic h(Lde/k;)V
    .locals 0

    invoke-direct {p0}, Lde/k;->I()V

    return-void
.end method

.method static synthetic i(Lde/k;)V
    .locals 0

    invoke-direct {p0}, Lde/k;->F()V

    return-void
.end method

.method static synthetic j(Lde/k;)I
    .locals 0

    iget p0, p0, Lde/k;->i:I

    return p0
.end method

.method static synthetic k(Lde/k;)V
    .locals 0

    invoke-direct {p0}, Lde/k;->K()V

    return-void
.end method

.method static synthetic l(Lde/k;)V
    .locals 0

    invoke-direct {p0}, Lde/k;->H()V

    return-void
.end method

.method static synthetic m(Lde/k;Z)Z
    .locals 0

    iput-boolean p1, p0, Lde/k;->k:Z

    return p1
.end method

.method static synthetic n(Lde/k;)V
    .locals 0

    invoke-direct {p0}, Lde/k;->w()V

    return-void
.end method

.method static synthetic o(Lde/k;)V
    .locals 0

    invoke-direct {p0}, Lde/k;->x()V

    return-void
.end method

.method static synthetic p(Lde/k;)V
    .locals 0

    invoke-direct {p0}, Lde/k;->v()V

    return-void
.end method

.method static synthetic q(Lde/k;)I
    .locals 0

    iget p0, p0, Lde/k;->h:I

    return p0
.end method

.method static synthetic r(Lde/k;I)I
    .locals 0

    iput p1, p0, Lde/k;->h:I

    return p1
.end method

.method private t()V
    .locals 1

    iget-object v0, p0, Lde/k;->f:Lcom/miui/common/ui/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lde/k;->f:Lcom/miui/common/ui/d;

    :cond_0
    return-void
.end method

.method private v()V
    .locals 3

    invoke-static {}, Lme/w;->n()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "charger type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PowerOffUI"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "USB_FLOAT"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lde/k;->i:I

    if-lez v0, :cond_1

    invoke-direct {p0}, Lde/k;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lde/k;->E()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lde/k;->D()V

    :cond_1
    :goto_0
    return-void
.end method

.method private w()V
    .locals 4

    iget-wide v0, p0, Lde/k;->l:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lde/k;->l:J

    invoke-direct {p0}, Lde/k;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lde/k;->C()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lde/k;->B()V

    :goto_0
    return-void
.end method

.method private x()V
    .locals 3

    iget-object v0, p0, Lde/k;->o:Lw4/b$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/k;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const v1, 0x7f1204db

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    iput-object v2, p0, Lde/k;->o:Lw4/b$b;

    :cond_0
    return-void
.end method

.method private y()V
    .locals 3

    iget-object v0, p0, Lde/k;->n:Lw4/b$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/k;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const v1, 0x7f1204e0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    iput-object v2, p0, Lde/k;->n:Lw4/b$b;

    :cond_0
    return-void
.end method

.method private z()V
    .locals 3

    iget-object v0, p0, Lde/k;->m:Lw4/b$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/k;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const v1, 0x7f1212b0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    iput-object v2, p0, Lde/k;->m:Lw4/b$b;

    :cond_0
    return-void
.end method


# virtual methods
.method public M()V
    .locals 2

    iget-object v0, p0, Lde/k;->a:Landroid/content/Context;

    iget-object v1, p0, Lde/k;->r:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public s()V
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lde/k;->a:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v1, Landroid/app/NotificationChannel;

    iget-object v2, p0, Lde/k;->a:Landroid/content/Context;

    const v3, 0x7f12128a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    const-string v4, "poweroffNotice"

    invoke-direct {v1, v4, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    invoke-static {v0, v1}, Landroidx/core/app/u0;->a(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    return-void
.end method

.method public u(Landroid/content/Intent;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lde/k;->i:I

    const-string v1, "plugged"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lde/k;->i:I

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    iget-boolean v0, p0, Lde/k;->k:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    invoke-direct {p0}, Lde/k;->H()V

    iput-boolean v2, p0, Lde/k;->k:Z

    :cond_3
    if-eqz v3, :cond_4

    if-nez v1, :cond_4

    invoke-direct {p0}, Lde/k;->t()V

    invoke-direct {p0}, Lde/k;->z()V

    invoke-direct {p0}, Lde/k;->N()V

    iget-object p1, p0, Lde/k;->b:Landroid/os/Handler;

    iget-object v0, p0, Lde/k;->p:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {p1, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v2, p0, Lde/k;->j:Z

    :cond_4
    if-nez v3, :cond_6

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lde/k;->y()V

    iget-object p1, p0, Lde/k;->b:Landroid/os/Handler;

    iget-object v0, p0, Lde/k;->p:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lde/k;->L()V

    iget-object p1, p0, Lde/k;->g:Loe/a;

    invoke-interface {p1}, Loe/a;->d()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-direct {p0}, Lde/k;->x()V

    :cond_5
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lde/k;->l:J

    :cond_6
    return-void
.end method
