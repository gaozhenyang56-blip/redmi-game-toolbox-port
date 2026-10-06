.class public Lh2/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static e:Ljava/lang/String; = "URLFilterManager"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/concurrent/CountDownLatch;

.field private c:Lcom/miui/guardprovider/aidl/IURLScanServer;

.field private d:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lh2/f$a;

    invoke-direct {v0, p0}, Lh2/f$a;-><init>(Lh2/f;)V

    iput-object v0, p0, Lh2/f;->d:Landroid/content/ServiceConnection;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lh2/f;->a:Landroid/content/Context;

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lh2/f;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Lh2/f;->c()V

    :try_start_0
    iget-object p1, p0, Lh2/f;->b:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v0, 0x8

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    sget-object v0, Lh2/f;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCountDownLatch.await result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lh2/f;->e:Ljava/lang/String;

    const-string v1, "exception when create URLFilterManager: "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method static synthetic a(Lh2/f;Lcom/miui/guardprovider/aidl/IURLScanServer;)Lcom/miui/guardprovider/aidl/IURLScanServer;
    .locals 0

    iput-object p1, p0, Lh2/f;->c:Lcom/miui/guardprovider/aidl/IURLScanServer;

    return-object p1
.end method

.method static synthetic b(Lh2/f;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    iget-object p0, p0, Lh2/f;->b:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method private c()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.guardprovider.action.urlscan"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.miui.guardprovider"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lh2/f;->a:Landroid/content/Context;

    iget-object v2, p0, Lh2/f;->d:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lh2/f;->c:Lcom/miui/guardprovider/aidl/IURLScanServer;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lh2/f;->c:Lcom/miui/guardprovider/aidl/IURLScanServer;

    iget-object v0, p0, Lh2/f;->a:Landroid/content/Context;

    iget-object v1, p0, Lh2/f;->d:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    sget-object v0, Lh2/f;->e:Ljava/lang/String;

    const-string v1, "unbindGuardProviderService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;)I
    .locals 4

    const/4 v0, -0x1

    :try_start_0
    iget-object v1, p0, Lh2/f;->c:Lcom/miui/guardprovider/aidl/IURLScanServer;

    if-eqz v1, :cond_0

    const-string v2, "AVL"

    invoke-interface {v1, v2, p1}, Lcom/miui/guardprovider/aidl/IURLScanServer;->S5(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    invoke-direct {p0}, Lh2/f;->e()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    sget-object v1, Lh2/f;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception in scanURL : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    sget-object p1, Lh2/f;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scanURL result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :goto_2
    invoke-direct {p0}, Lh2/f;->e()V

    throw p1
.end method

.method public f()V
    .locals 5

    const/4 v0, -0x1

    :try_start_0
    iget-object v1, p0, Lh2/f;->c:Lcom/miui/guardprovider/aidl/IURLScanServer;

    if-eqz v1, :cond_0

    const-string v2, "AVL"

    invoke-interface {v1, v2}, Lcom/miui/guardprovider/aidl/IURLScanServer;->b0(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-direct {p0}, Lh2/f;->e()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v1

    :try_start_1
    sget-object v2, Lh2/f;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception in updateURLRule : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lh2/f;->e()V

    move v1, v0

    :goto_1
    if-ne v1, v0, :cond_1

    sget-object v0, Lh2/f;->e:Ljava/lang/String;

    const-string v1, "AVL URL rules update failed !"

    :goto_2
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_1
    if-eqz v1, :cond_2

    const/4 v0, 0x1

    if-ne v1, v0, :cond_3

    :cond_2
    sget-object v0, Lh2/f;->e:Ljava/lang/String;

    const-string v1, "AVL URL rules update success !"

    goto :goto_2

    :cond_3
    :goto_3
    return-void

    :goto_4
    invoke-direct {p0}, Lh2/f;->e()V

    throw v0
.end method
