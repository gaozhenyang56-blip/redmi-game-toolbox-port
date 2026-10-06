.class public Lje/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static g:Ljava/lang/String; = "miui.intent.action.ACTION_POGO_CONNECTED_STATE"

.field public static h:Ljava/lang/String; = "miui.intent.extra.EXTRA_POGO_CONNECTED_STATE"

.field public static i:Ljava/lang/String; = "persist.vendor.battery.high.temp.protect"

.field private static volatile j:Lje/c;

.field private static k:Z


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Z

.field private c:Z

.field private d:I

.field private e:Z

.field private final f:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lje/c;->c:Z

    new-instance v0, Lje/c$a;

    invoke-direct {v0, p0}, Lje/c$a;-><init>(Lje/c;)V

    iput-object v0, p0, Lje/c;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lje/c;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a()Z
    .locals 1

    sget-boolean v0, Lje/c;->k:Z

    return v0
.end method

.method static synthetic b(Z)Z
    .locals 0

    sput-boolean p0, Lje/c;->k:Z

    return p0
.end method

.method static synthetic c(Lje/c;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lje/c;->g(Z)V

    return-void
.end method

.method private d()V
    .locals 2

    invoke-static {}, Lx4/z1;->r()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SmartChargeManager"

    const-string v1, "closePogoProtect user is not owner\uff01\uff01"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lmd/c;->r(I)Ljava/lang/Boolean;

    return-void
.end method

.method private e()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lje/c;->c:Z

    invoke-direct {p0}, Lje/c;->d()V

    iget-object v0, p0, Lje/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lde/j;->n(Landroid/content/Context;)V

    return-void
.end method

.method public static f(Landroid/content/Context;)Lje/c;
    .locals 2

    sget-object v0, Lje/c;->j:Lje/c;

    if-nez v0, :cond_0

    const-class v0, Lje/c;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lje/c;

    invoke-direct {v1, p0}, Lje/c;-><init>(Landroid/content/Context;)V

    sput-object v1, Lje/c;->j:Lje/c;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    sget-object p0, Lje/c;->j:Lje/c;

    return-object p0
.end method

.method private declared-synchronized g(Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lje/c;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "SmartChargeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePogoConnectChanged: isConnect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    invoke-direct {p0}, Lje/c;->e()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lje/c;->l()V

    iget p1, p0, Lje/c;->d:I

    invoke-direct {p0, p1}, Lje/c;->o(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized h()V
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sget-object v1, Lje/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-boolean v1, p0, Lje/c;->e:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lje/c;->a:Landroid/content/Context;

    iget-object v2, p0, Lje/c;->f:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x4

    invoke-static {v1, v2, v0, v3}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lje/c;->e:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "SmartChargeManager"

    const-string v2, "initBroadcastReceiver: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static j()Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cloud control param enable state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lgd/c;->I()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " device support pogo state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lje/c;->i:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lx4/v1;->a(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartChargeManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lgd/c;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lme/q;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private l()V
    .locals 2

    invoke-static {}, Lx4/z1;->r()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SmartChargeManager"

    const-string v1, "openPogoProtect user is not owner\uff01\uff01"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lmd/o;->q()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Lmd/c;->r(I)Ljava/lang/Boolean;

    :cond_1
    return-void
.end method

.method private n(I)Z
    .locals 1

    const/16 v0, 0x4f

    if-lt p1, v0, :cond_0

    iget-boolean p1, p0, Lje/c;->c:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private o(I)V
    .locals 1

    sget-boolean v0, Lje/c;->k:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lgd/c;->E0()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lje/c;->n(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lje/c;->c:Z

    iget-object p1, p0, Lje/c;->a:Landroid/content/Context;

    invoke-static {p1}, Lde/j;->i0(Landroid/content/Context;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized i()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lje/c;->j()Z

    move-result v0

    iput-boolean v0, p0, Lje/c;->b:Z

    invoke-static {}, Lme/w;->w()Z

    move-result v0

    sput-boolean v0, Lje/c;->k:Z

    if-nez v0, :cond_0

    invoke-static {}, Lme/q;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lje/c;->e()V

    :cond_0
    iget-boolean v0, p0, Lje/c;->b:Z

    if-nez v0, :cond_1

    const-string v0, "SmartChargeManager"

    const-string v1, "initialize: skip, device not support pogo charge protection."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-direct {p0}, Lje/c;->h()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public k(II)V
    .locals 2

    iget-boolean v0, p0, Lje/c;->b:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lje/c;->c:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput p2, p0, Lje/c;->d:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Battery changed from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\tisPogoConnected="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p1, Lje/c;->k:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SmartChargeManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lje/c;->o(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized m()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lje/c;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lje/c;->a:Landroid/content/Context;

    iget-object v1, p0, Lje/c;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lje/c;->e:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "SmartChargeManager"

    const-string v2, "release: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public p()V
    .locals 2

    invoke-static {}, Lje/c;->j()Z

    move-result v0

    iget-boolean v1, p0, Lje/c;->b:Z

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean v0, p0, Lje/c;->b:Z

    invoke-static {}, Lgd/c;->I()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lje/c;->e()V

    invoke-virtual {p0}, Lje/c;->m()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lje/c;->h()V

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePogoPinCloudData:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lje/c;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartChargeManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
