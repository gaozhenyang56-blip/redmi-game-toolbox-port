.class public Lf7/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf7/d$b;,
        Lf7/d$d;,
        Lf7/d$c;
    }
.end annotation


# static fields
.field private static c:Lf7/d;

.field private static d:Landroid/content/Context;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Lf7/d$c;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lf7/d;->d:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lf7/d;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lf7/d;->a:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic b(Lf7/d;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lf7/d;->i(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Landroid/content/Context;ILjava/lang/String;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lf7/d;->f(Landroid/content/Context;ILjava/lang/String;Z)V

    return-void
.end method

.method static synthetic d()Landroid/content/Context;
    .locals 1

    sget-object v0, Lf7/d;->d:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized e(Landroid/content/Context;)Lf7/d;
    .locals 2

    const-class v0, Lf7/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lf7/d;->c:Lf7/d;

    if-nez v1, :cond_0

    new-instance v1, Lf7/d;

    invoke-direct {v1, p0}, Lf7/d;-><init>(Landroid/content/Context;)V

    sput-object v1, Lf7/d;->c:Lf7/d;

    :cond_0
    sget-object p0, Lf7/d;->c:Lf7/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static f(Landroid/content/Context;ILjava/lang/String;Z)V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.gamebooster.UNINSTALLAPP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "uid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "pkgName"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "isInstalled"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "com.miui.dock.permission.DOCK_EVENT"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "InstalledAppMonitor"

    const-string p2, "notifyAppUnInstalled: "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private i(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lm6/a;->M()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lf7/d$a;

    invoke-direct {v0, p0, p1, p2}, Lf7/d$a;-><init>(Lf7/d;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public g()V
    .locals 5

    :try_start_0
    invoke-static {}, La8/m;->c()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lf7/d;->d:Landroid/content/Context;

    invoke-static {v0}, Lk6/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lj8/s;->f()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lf7/d$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lf7/d$c;-><init>(Lf7/d;Lf7/d$a;)V

    iput-object v0, p0, Lf7/d;->b:Lf7/d$c;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    sget-object v1, Lf7/d;->d:Landroid/content/Context;

    iget-object v2, p0, Lf7/d;->b:Lf7/d$c;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x4

    invoke-static {v1, v2, v3, v0, v4}, Lx4/v;->o(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public h(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lf7/d;->a:Landroid/os/Handler;

    return-void
.end method

.method public j()V
    .locals 2

    :try_start_0
    invoke-static {}, La8/m;->c()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lf7/d;->d:Landroid/content/Context;

    invoke-static {v0}, Lk6/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lj8/s;->f()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lf7/d;->d:Landroid/content/Context;

    iget-object v1, p0, Lf7/d;->b:Lf7/d$c;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method
