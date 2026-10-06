.class public Lp9/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp9/a$d;,
        Lp9/a$c;,
        Lp9/a$b;
    }
.end annotation


# static fields
.field private static g:Lp9/a;


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:Z

.field private d:Lcom/miui/guardprovider/aidl/IAntiVirusServer;

.field private e:Lp9/a$d;

.field private final f:Landroid/os/IBinder$DeathRecipient;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lp9/a;->c:Z

    new-instance v1, Lp9/a$a;

    invoke-direct {v1, p0}, Lp9/a$a;-><init>(Lp9/a;)V

    iput-object v1, p0, Lp9/a;->f:Landroid/os/IBinder$DeathRecipient;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lp9/a;->a:Landroid/content/Context;

    const/4 p1, 0x0

    iput-object p1, p0, Lp9/a;->d:Lcom/miui/guardprovider/aidl/IAntiVirusServer;

    iput v0, p0, Lp9/a;->b:I

    new-instance v0, Lp9/a$d;

    invoke-direct {v0, p0, p1}, Lp9/a$d;-><init>(Lp9/a;Lp9/a$a;)V

    iput-object v0, p0, Lp9/a;->e:Lp9/a$d;

    return-void
.end method

.method static synthetic a(Lp9/a;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    iget-object p0, p0, Lp9/a;->f:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method static synthetic b(Lp9/a;)Lcom/miui/guardprovider/aidl/IAntiVirusServer;
    .locals 0

    iget-object p0, p0, Lp9/a;->d:Lcom/miui/guardprovider/aidl/IAntiVirusServer;

    return-object p0
.end method

.method static synthetic c(Lp9/a;Lcom/miui/guardprovider/aidl/IAntiVirusServer;)Lcom/miui/guardprovider/aidl/IAntiVirusServer;
    .locals 0

    iput-object p1, p0, Lp9/a;->d:Lcom/miui/guardprovider/aidl/IAntiVirusServer;

    return-object p1
.end method

.method static synthetic d(Lp9/a;I)I
    .locals 0

    iput p1, p0, Lp9/a;->b:I

    return p1
.end method

.method static synthetic e(Lp9/a;)V
    .locals 0

    invoke-direct {p0}, Lp9/a;->n()V

    return-void
.end method

.method static synthetic f(Lp9/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lp9/a;->c:Z

    return p1
.end method

.method private h()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.guardprovider.action.antivirusservice"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.miui.guardprovider"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lp9/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lp9/a;->e:Lp9/a$d;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public static declared-synchronized j(Landroid/content/Context;)Lp9/a;
    .locals 2

    const-class v0, Lp9/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lp9/a;->g:Lp9/a;

    if-nez v1, :cond_0

    new-instance v1, Lp9/a;

    invoke-direct {v1, p0}, Lp9/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lp9/a;->g:Lp9/a;

    :cond_0
    sget-object p0, Lp9/a;->g:Lp9/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private n()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lp9/a;->d:Lcom/miui/guardprovider/aidl/IAntiVirusServer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lp9/a;->c:Z

    iget-object v0, p0, Lp9/a;->e:Lp9/a$d;

    invoke-virtual {v0}, Lp9/a$d;->d()V

    iget-object v0, p0, Lp9/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lp9/a;->e:Lp9/a$d;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unbindGpServiceInternal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GpBinderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    invoke-direct {p0}, Lp9/a;->n()V

    return-void
.end method

.method public g(Lp9/a$b;)V
    .locals 2

    iget v0, p0, Lp9/a;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lp9/a;->b:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindCount : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lp9/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GpBinderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lp9/a;->i(Lp9/a$b;)V

    return-void
.end method

.method public i(Lp9/a$b;)V
    .locals 1

    iget-object v0, p0, Lp9/a;->d:Lcom/miui/guardprovider/aidl/IAntiVirusServer;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_3

    invoke-interface {p1, v0}, Lp9/a$b;->a(Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V

    goto :goto_0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lp9/a;->d:Lcom/miui/guardprovider/aidl/IAntiVirusServer;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lp9/a;->i(Lp9/a$b;)V

    monitor-exit p0

    return-void

    :cond_1
    iget-object v0, p0, Lp9/a;->e:Lp9/a$d;

    invoke-virtual {v0, p1}, Lp9/a$d;->a(Lp9/a$b;)V

    iget-boolean p1, p0, Lp9/a;->c:Z

    if-nez p1, :cond_2

    invoke-direct {p0}, Lp9/a;->h()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lp9/a;->c:Z

    :cond_2
    monitor-exit p0

    :cond_3
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public k(Lp9/a$c;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lp9/a;->e:Lp9/a$d;

    invoke-virtual {v0, p1}, Lp9/a$d;->b(Lp9/a$c;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public l(Lp9/a$b;)V
    .locals 1

    iget-object v0, p0, Lp9/a;->e:Lp9/a$d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lp9/a$d;->c(Lp9/a$b;)V

    :cond_0
    return-void
.end method

.method public m()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lp9/a;->d:Lcom/miui/guardprovider/aidl/IAntiVirusServer;

    if-eqz v0, :cond_0

    iget v0, p0, Lp9/a;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lp9/a;->b:I

    const-string v0, "GpBinderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unbindCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lp9/a;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lp9/a;->b:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lp9/a;->n()V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public o(Lp9/a$c;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lp9/a;->e:Lp9/a$d;

    invoke-virtual {v0, p1}, Lp9/a$d;->e(Lp9/a$c;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
