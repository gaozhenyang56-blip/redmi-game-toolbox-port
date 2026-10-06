.class Lij/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lij/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lij/d;


# direct methods
.method constructor <init>(Lij/d;)V
    .locals 0

    iput-object p1, p0, Lij/d$a;->a:Lij/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lij/d$a;)V
    .locals 0

    invoke-direct {p0}, Lij/d$a;->e()V

    return-void
.end method

.method public static synthetic b(Lij/d$a;)V
    .locals 0

    invoke-direct {p0}, Lij/d$a;->c()V

    return-void
.end method

.method private c()V
    .locals 2

    const-string v0, "MiTrustManager"

    const-string v1, "binderDied!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lij/d$a;->a:Lij/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lij/d;->b(Lij/d;Z)Z

    iget-object v0, p0, Lij/d$a;->a:Lij/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lij/d;->c(Lij/d;Lcom/xiaomi/trustservice/IMiTrustService;)Lcom/xiaomi/trustservice/IMiTrustService;

    iget-object v0, p0, Lij/d$a;->a:Lij/d;

    invoke-static {v0}, Lij/d;->f(Lij/d;)V

    return-void
.end method

.method private d(ZI)V
    .locals 3

    const-class v0, Lij/d;

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lij/d$a;->a:Lij/d;

    invoke-static {p1}, Lij/d;->d(Lij/d;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ldj/a;

    iget-object v1, p0, Lij/d$a;->a:Lij/d;

    invoke-static {v1, p2}, Lij/d;->e(Lij/d;Ldj/a;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lij/d$a;->a:Lij/d;

    invoke-static {p1}, Lij/d;->d(Lij/d;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldj/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2}, Ldj/a;->c(Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lij/d$a;->a:Lij/d;

    invoke-static {p1}, Lij/d;->d(Lij/d;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private synthetic e()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lij/d$a;->d(ZI)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MiTrustManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lij/d$a;->a:Lij/d;

    const/4 v2, 0x1

    invoke-static {p1, v2}, Lij/d;->b(Lij/d;Z)Z

    iget-object p1, p0, Lij/d$a;->a:Lij/d;

    invoke-static {p2}, Lcom/xiaomi/trustservice/IMiTrustService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/trustservice/IMiTrustService;

    move-result-object v2

    invoke-static {p1, v2}, Lij/d;->c(Lij/d;Lcom/xiaomi/trustservice/IMiTrustService;)Lcom/xiaomi/trustservice/IMiTrustService;

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object p1

    new-instance v2, Lij/b;

    invoke-direct {v2, p0}, Lij/b;-><init>(Lij/d$a;)V

    invoke-virtual {p1, v2}, Lef/z;->a(Ljava/lang/Runnable;)V

    :try_start_0
    new-instance p1, Lij/c;

    invoke-direct {p1, p0}, Lij/c;-><init>(Lij/d$a;)V

    const/4 v2, 0x0

    invoke-interface {p2, p1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lij/d$a;->a:Lij/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lij/d;->b(Lij/d;Z)Z

    iget-object v0, p0, Lij/d$a;->a:Lij/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lij/d;->c(Lij/d;Lcom/xiaomi/trustservice/IMiTrustService;)Lcom/xiaomi/trustservice/IMiTrustService;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceDisconnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MiTrustManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
