.class public Lvd/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/WindowManager;

.field private b:Landroid/view/View;

.field private c:Landroid/view/WindowManager$LayoutParams;

.field private d:Landroid/content/Context;

.field private e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private f:Landroid/os/Handler;

.field private g:Landroid/telephony/PhoneStateListener;

.field private h:Z

.field private i:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lvd/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lvd/c$c;

    invoke-direct {v0, p0}, Lvd/c$c;-><init>(Lvd/c;)V

    iput-object v0, p0, Lvd/c;->i:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lvd/c;->d:Landroid/content/Context;

    return-void
.end method

.method private A()V
    .locals 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lvd/c;->d:Landroid/content/Context;

    iget-object v2, p0, Lvd/c;->i:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x4

    invoke-static {v1, v2, v0, v3}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private static B(Landroid/content/Context;Z)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lx4/z1;->k()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private static C(Landroid/content/Context;Z)V
    .locals 7

    const-string v0, "android.provider.MiuiSettings$Global"

    invoke-static {v0}, Lbh/d$a;->d(Ljava/lang/String;)Lbh/d$a;

    move-result-object v0

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/ContentResolver;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    aput-object p0, v1, v4

    const-string p0, "force_fsg_nav_bar"

    aput-object p0, v1, v5

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v1, v6

    const-string p0, "putBoolean"

    invoke-virtual {v0, p0, v2, v1}, Lbh/d$a;->c(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;

    return-void
.end method

.method private E()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.phone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.android.phone.EmergencyDialer.DIAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lvd/c;->d:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private F()V
    .locals 3

    iget-boolean v0, p0, Lvd/c;->h:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lvd/c;->g:Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lvd/c;->h:Z

    iget-object v0, p0, Lvd/c;->d:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lvd/c;->g:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private G()V
    .locals 2

    iget-object v0, p0, Lvd/c;->i:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lvd/c;->d:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lvd/c;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lvd/c;->q(Z)V

    return-void
.end method

.method static synthetic b(Lvd/c;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lvd/c;->d:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic c(Lvd/c;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lvd/c;->b:Landroid/view/View;

    return-object p0
.end method

.method static synthetic d(Lvd/c;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lvd/c;->b:Landroid/view/View;

    return-object p1
.end method

.method static synthetic e(Lvd/c;)V
    .locals 0

    invoke-direct {p0}, Lvd/c;->E()V

    return-void
.end method

.method static synthetic f(Lvd/c;)Z
    .locals 0

    iget-boolean p0, p0, Lvd/c;->h:Z

    return p0
.end method

.method static synthetic g(Landroid/content/Context;Z)V
    .locals 0

    invoke-static {p0, p1}, Lvd/c;->B(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic h(Lvd/c;)V
    .locals 0

    invoke-direct {p0}, Lvd/c;->r()V

    return-void
.end method

.method static synthetic i(Lvd/c;)V
    .locals 0

    invoke-direct {p0}, Lvd/c;->F()V

    return-void
.end method

.method static synthetic j(Lvd/c;)V
    .locals 0

    invoke-direct {p0}, Lvd/c;->G()V

    return-void
.end method

.method static synthetic k(Lvd/c;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lvd/c;->s(Z)V

    return-void
.end method

.method static synthetic l(Lvd/c;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lvd/c;->f:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic m(Lvd/c;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    iput-object p1, p0, Lvd/c;->f:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic n(Lvd/c;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lvd/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic o(Lvd/c;)Landroid/view/WindowManager;
    .locals 0

    iget-object p0, p0, Lvd/c;->a:Landroid/view/WindowManager;

    return-object p0
.end method

.method public static p(Landroid/content/Context;)V
    .locals 4

    const-string v0, "HighTempWindowHelper"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkShouldRebootRestore full screen:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lgd/c;->R0()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",airMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lgd/c;->S()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lgd/c;->R0()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    invoke-static {p0, v3}, Lvd/c;->C(Landroid/content/Context;Z)V

    invoke-static {v2}, Lgd/c;->M1(I)V

    :cond_0
    invoke-static {}, Lgd/c;->S()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lvd/c;->B(Landroid/content/Context;Z)V

    invoke-static {v2}, Lgd/c;->L1(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "checkShouldRebootRestore error:"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private q(Z)V
    .locals 11

    const-class v0, Landroid/app/StatusBarManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    :try_start_0
    iget-object v3, p0, Lvd/c;->d:Landroid/content/Context;

    invoke-static {v3}, Lvd/c;->u(Landroid/content/Context;)I

    move-result v3

    if-ne v3, v1, :cond_0

    iget-object v3, p0, Lvd/c;->d:Landroid/content/Context;

    invoke-static {v3, v2}, Lvd/c;->C(Landroid/content/Context;Z)V

    :cond_0
    iget-object v3, p0, Lvd/c;->d:Landroid/content/Context;

    const-string v4, "statusbar"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "DISABLE_EXPAND"

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v4, v5}, Lbh/f;->n(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v6, "DISABLE_NOTIFICATION_ICONS"

    invoke-static {v0, v6, v5}, Lbh/f;->n(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, "DISABLE_NOTIFICATION_ALERTS"

    invoke-static {v0, v7, v5}, Lbh/f;->n(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string v8, "DISABLE_NOTIFICATION_TICKER"

    invoke-static {v0, v8, v5}, Lbh/f;->n(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const-string v9, "android.view.View"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const-string v10, "STATUS_BAR_DISABLE_RECENT"

    invoke-static {v9, v10, v5}, Lbh/f;->n(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eqz p1, :cond_1

    move v10, v2

    goto :goto_0

    :cond_1
    const-string v10, "DISABLE_HOME"

    invoke-static {v0, v10, v5}, Lbh/f;->n(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    :goto_0
    if-eqz p1, :cond_2

    move p1, v2

    goto :goto_1

    :cond_2
    const-string p1, "DISABLE_BACK"

    invoke-static {v0, p1, v5}, Lbh/f;->n(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_1
    or-int v0, v9, v6

    or-int/2addr v0, v7

    or-int/2addr v0, v8

    or-int/2addr v0, v4

    or-int/2addr v0, v10

    or-int/2addr p1, v0

    new-array v0, v1, [Ljava/lang/Class;

    aput-object v5, v0, v2

    const-string v4, "disable"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v3, v4, v0, v1}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string v0, "HighTempWindowHelper"

    const-string v1, "disableRecentAndStatusBar error:"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method private r()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lvd/c;->s(Z)V

    invoke-direct {p0, v0}, Lvd/c;->q(Z)V

    return-void
.end method

.method private s(Z)V
    .locals 5

    const/4 v0, 0x1

    if-nez p1, :cond_0

    :try_start_0
    invoke-static {}, Lgd/c;->R0()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lvd/c;->d:Landroid/content/Context;

    invoke-static {v1, v0}, Lvd/c;->C(Landroid/content/Context;Z)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    if-nez p1, :cond_1

    const/4 p1, -0x1

    invoke-static {p1}, Lgd/c;->M1(I)V

    :cond_1
    iget-object p1, p0, Lvd/c;->d:Landroid/content/Context;

    const-string v1, "statusbar"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-class v1, Landroid/app/StatusBarManager;

    const-string v2, "DISABLE_NONE"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v2, v3}, Lbh/f;->n(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-array v2, v0, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "disable"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {p1, v3, v2, v0}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string v0, "HighTempWindowHelper"

    const-string v1, "enableRecentAndStatusBar error:"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method private t(Landroid/content/Context;)I
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "airplane_mode_on"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method private static u(Landroid/content/Context;)I
    .locals 6

    const-string v0, "android.provider.MiuiSettings$Global"

    invoke-static {v0}, Lbh/d$a;->d(Ljava/lang/String;)Lbh/d$a;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/ContentResolver;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    aput-object p0, v1, v4

    const-string p0, "force_fsg_nav_bar"

    aput-object p0, v1, v5

    const-string p0, "getBoolean"

    invoke-virtual {v0, p0, v2, v1}, Lbh/d$a;->c(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lbh/d$a;->a()Z

    move-result p0

    return p0
.end method

.method private w(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x606

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method private x()V
    .locals 4

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "high_temp_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Lvd/c$a;

    invoke-direct {v3, p0, v0}, Lvd/c$a;-><init>(Lvd/c;Landroid/os/HandlerThread;)V

    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lvd/c;->f:Landroid/os/Handler;

    return-void
.end method

.method private y()V
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    iget-object v0, p0, Lvd/c;->d:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lvd/c;->a:Landroid/view/WindowManager;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lvd/c;->c:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7f6

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v1, 0x50328

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x1

    const/16 v3, 0x1c

    if-lt v1, v3, :cond_0

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    :cond_0
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    iget-object v0, p0, Lvd/c;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0573

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lvd/c;->b:Landroid/view/View;

    invoke-direct {p0, v0}, Lvd/c;->w(Landroid/view/View;)V

    iget-object v0, p0, Lvd/c;->b:Landroid/view/View;

    const v1, 0x7f0b0c6b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lx4/y;->s()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    new-instance v1, Lvd/c$b;

    invoke-direct {v1, p0}, Lvd/c$b;-><init>(Lvd/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method private z()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lvd/c;->h:Z

    new-instance v0, Lvd/c$d;

    invoke-direct {v0, p0}, Lvd/c$d;-><init>(Lvd/c;)V

    iput-object v0, p0, Lvd/c;->g:Landroid/telephony/PhoneStateListener;

    iget-object v0, p0, Lvd/c;->d:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lvd/c;->g:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method


# virtual methods
.method public declared-synchronized D(Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lvd/c;->f:Landroid/os/Handler;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lvd/c;->x()V

    :cond_0
    iget-object v0, p0, Lvd/c;->b:Landroid/view/View;

    if-nez v0, :cond_3

    if-nez p1, :cond_1

    iget-object p1, p0, Lvd/c;->d:Landroid/content/Context;

    invoke-static {p1}, Lvd/c;->u(Landroid/content/Context;)I

    move-result p1

    invoke-static {p1}, Lgd/c;->M1(I)V

    iget-object p1, p0, Lvd/c;->d:Landroid/content/Context;

    invoke-direct {p0, p1}, Lvd/c;->t(Landroid/content/Context;)I

    move-result p1

    invoke-static {p1}, Lgd/c;->L1(I)V

    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p1, v0, :cond_2

    invoke-direct {p0}, Lvd/c;->y()V

    :cond_2
    invoke-direct {p0}, Lvd/c;->z()V

    invoke-direct {p0}, Lvd/c;->A()V

    :cond_3
    iget-object p1, p0, Lvd/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_4

    monitor-exit p0

    return-void

    :cond_4
    :try_start_1
    iget-object p1, p0, Lvd/c;->a:Landroid/view/WindowManager;

    iget-object v0, p0, Lvd/c;->b:Landroid/view/View;

    iget-object v1, p0, Lvd/c;->c:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, v1}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lvd/c;->f:Landroid/os/Handler;

    const/16 v0, 0x3e8

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object p1, p0, Lvd/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lhd/a;->v0()V

    const-string p1, "HighTempWindowHelper"

    const-string v0, "showHighTempWindow"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized v(Z)V
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lvd/c;->f:Landroid/os/Handler;

    if-eqz p1, :cond_1

    const/16 v0, 0x7d0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lvd/c;->a:Landroid/view/WindowManager;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lvd/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lvd/c;->a:Landroid/view/WindowManager;

    iget-object v0, p0, Lvd/c;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lvd/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    :goto_0
    invoke-static {}, Lhd/a;->u0()V

    const-string p1, "HighTempWindowHelper"

    const-string v0, "hidenHighTempWindow"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
