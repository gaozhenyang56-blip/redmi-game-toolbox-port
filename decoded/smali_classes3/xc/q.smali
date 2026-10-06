.class public Lxc/q;
.super Landroid/os/HandlerThread;
.source "SourceFile"


# static fields
.field private static a:Lxc/q;

.field private static b:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 2

    const-string v0, "security_thread"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static a()V
    .locals 2

    sget-object v0, Lxc/q;->a:Lxc/q;

    if-nez v0, :cond_0

    new-instance v0, Lxc/q;

    invoke-direct {v0}, Lxc/q;-><init>()V

    sput-object v0, Lxc/q;->a:Lxc/q;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lxc/q;->a:Lxc/q;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lxc/q;->b:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public static b()Lxc/q;
    .locals 2

    const-class v0, Lxc/q;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lxc/q;->a()V

    sget-object v1, Lxc/q;->a:Lxc/q;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static c()Landroid/os/Handler;
    .locals 2

    const-class v0, Lxc/q;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lxc/q;->a()V

    sget-object v1, Lxc/q;->b:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
