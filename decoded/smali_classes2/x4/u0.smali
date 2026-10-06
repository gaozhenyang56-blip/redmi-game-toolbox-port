.class public Lx4/u0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx4/u0$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Z

.field private c:Lcom/xiaomi/bspsecurity/IMSCInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx4/u0;->a:Landroid/content/Context;

    return-void
.end method

.method private declared-synchronized b()Lcom/xiaomi/bspsecurity/IMSCInterface;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lx4/u0;->b:Z

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.xiaomi.bspsecurity.MSCService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.xiaomi.bspsecurity"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lx4/u0;->a:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lx4/u0;->b:Z

    goto :goto_0

    :cond_0
    new-instance v0, Lx4/u0$a;

    const-string v1, "Can\'t bind service"

    invoke-direct {v0, v1}, Lx4/u0$a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lx4/u0;->c:Lcom/xiaomi/bspsecurity/IMSCInterface;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()Z
    .locals 4

    invoke-static {}, Lvi/g;->a()V

    invoke-direct {p0}, Lx4/u0;->b()Lcom/xiaomi/bspsecurity/IMSCInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/bspsecurity/IMSCInterface;->getPowerOffPasswordFlagToFastboot()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPowerOffPasswordFlagToFastboot: result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MiSecurityService"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x2

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    new-instance v0, Lx4/u0$a;

    const-string v1, "Service error"

    invoke-direct {v0, v1}, Lx4/u0$a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lx4/u0;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lx4/u0;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d(Z)V
    .locals 3

    invoke-static {}, Lvi/g;->a()V

    invoke-direct {p0}, Lx4/u0;->b()Lcom/xiaomi/bspsecurity/IMSCInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaomi/bspsecurity/IMSCInterface;->setPowerOffPasswordFlagToFastboot(Z)J

    move-result-wide v0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPowerOffPasswordFlagToFastboot: result:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MiSecurityService"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Lcom/xiaomi/bspsecurity/IMSCInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/bspsecurity/IMSCInterface;

    move-result-object p1

    iput-object p1, p0, Lx4/u0;->c:Lcom/xiaomi/bspsecurity/IMSCInterface;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    const-string p1, "MiSecurityService"

    const-string p2, "onServiceConnected: "

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string p1, "MiSecurityService"

    const-string v0, "onServiceDisconnected: "

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
