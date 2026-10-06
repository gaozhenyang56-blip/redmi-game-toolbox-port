.class public Lcom/xiaomi/security/devicecredential/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/security/devicecredential/b$b;
    }
.end annotation


# static fields
.field private static final d:[Landroid/content/Intent;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/xiaomi/security/devicecredential/ISecurityDeviceCredentialManager;

.field private c:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/content/Intent;

    sput-object v0, Lcom/xiaomi/security/devicecredential/b;->d:[Landroid/content/Intent;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.xiaomi.account.action.BIND_SECURITY_DEVICE_CREDENTIAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.xiaomi.account"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.xiaomi.finddevice.action.BIND_SECURITY_DEVICE_CREDENTIAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.xiaomi.finddevice"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/security/devicecredential/b;->a:Landroid/content/Context;

    return-void
.end method

.method private b()Lcom/xiaomi/security/devicecredential/ISecurityDeviceCredentialManager;
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/security/devicecredential/b;->b:Lcom/xiaomi/security/devicecredential/ISecurityDeviceCredentialManager;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/security/devicecredential/b;->c:Ljava/util/concurrent/CountDownLatch;

    sget-object v0, Lcom/xiaomi/security/devicecredential/b;->d:[Landroid/content/Intent;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/xiaomi/security/devicecredential/b;->a:Landroid/content/Context;

    invoke-virtual {v5, v4, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v0, p0, Lcom/xiaomi/security/devicecredential/b;->c:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0xa

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    const-string v1, "SecurityDeviceCredentialAbility"

    if-eqz v0, :cond_1

    const-string v0, "bind service and get"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/security/devicecredential/b;->b:Lcom/xiaomi/security/devicecredential/ISecurityDeviceCredentialManager;

    return-object v0

    :cond_1
    const-string v0, "wait bind service timeout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/xiaomi/security/devicecredential/c$d;

    const/16 v1, -0x6e

    invoke-direct {v0, v1}, Lcom/xiaomi/security/devicecredential/c$d;-><init>(I)V

    throw v0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/xiaomi/security/devicecredential/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/security/devicecredential/b$b;-><init>(Lcom/xiaomi/security/devicecredential/b$a;)V

    throw v0
.end method

.method private e(Landroid/os/RemoteException;)V
    .locals 1

    invoke-static {p1}, Lcj/a;->a(Landroid/os/RemoteException;)Lcj/a;

    move-result-object p1

    iget-object v0, p1, Lcj/a;->a:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object p1, p1, Lcj/a;->b:Landroid/os/RemoteException;

    throw p1

    :cond_0
    new-instance v0, Lcom/xiaomi/security/devicecredential/c$d;

    iget-object p1, p1, Lcj/a;->a:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {v0, p1}, Lcom/xiaomi/security/devicecredential/c$d;-><init>(I)V

    throw v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/security/devicecredential/b;->b()Lcom/xiaomi/security/devicecredential/ISecurityDeviceCredentialManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/security/devicecredential/ISecurityDeviceCredentialManager;->q5()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/xiaomi/security/devicecredential/b$b; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/xiaomi/security/devicecredential/b;->e(Landroid/os/RemoteException;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "should never happen"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    invoke-static {}, Lcom/xiaomi/security/devicecredential/c;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/security/devicecredential/b;->b()Lcom/xiaomi/security/devicecredential/ISecurityDeviceCredentialManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/security/devicecredential/ISecurityDeviceCredentialManager;->z5()Z

    move-result v0
    :try_end_0
    .catch Lcom/xiaomi/security/devicecredential/b$b; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/xiaomi/security/devicecredential/b;->e(Landroid/os/RemoteException;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "should never happen"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    invoke-static {}, Lcom/xiaomi/security/devicecredential/c;->c()Z

    move-result v0

    return v0
.end method

.method public d()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/security/devicecredential/b;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public f(I[BZ)[B
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/security/devicecredential/b;->b()Lcom/xiaomi/security/devicecredential/ISecurityDeviceCredentialManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaomi/security/devicecredential/ISecurityDeviceCredentialManager;->k1(I[BZ)[B

    move-result-object p1
    :try_end_0
    .catch Lcom/xiaomi/security/devicecredential/b$b; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/xiaomi/security/devicecredential/b;->e(Landroid/os/RemoteException;)V

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "should never happen"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    invoke-static {p1, p2, p3}, Lcom/xiaomi/security/devicecredential/c;->d(I[BZ)[B

    move-result-object p1

    return-object p1
.end method

.method public g([BZ)[B
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/xiaomi/security/devicecredential/b;->f(I[BZ)[B

    move-result-object p1

    return-object p1
.end method

.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/xiaomi/security/devicecredential/b;->b:Lcom/xiaomi/security/devicecredential/ISecurityDeviceCredentialManager;

    invoke-virtual {p0}, Lcom/xiaomi/security/devicecredential/b;->d()V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    invoke-static {p2}, Lcom/xiaomi/security/devicecredential/ISecurityDeviceCredentialManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/security/devicecredential/ISecurityDeviceCredentialManager;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/security/devicecredential/b;->b:Lcom/xiaomi/security/devicecredential/ISecurityDeviceCredentialManager;

    iget-object p1, p0, Lcom/xiaomi/security/devicecredential/b;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/xiaomi/security/devicecredential/b;->b:Lcom/xiaomi/security/devicecredential/ISecurityDeviceCredentialManager;

    invoke-virtual {p0}, Lcom/xiaomi/security/devicecredential/b;->d()V

    return-void
.end method
