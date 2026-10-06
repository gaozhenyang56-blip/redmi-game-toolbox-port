.class public Lx4/z0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/concurrent/ExecutorService;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/Boolean;

.field private static d:Lx4/z0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lx4/z0;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lx4/z0;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b([BZ)[B
    .locals 0

    invoke-static {p0, p1}, Lx4/z0;->l([BZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c()Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Lx4/z0;->i()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d(I[BZ)[B
    .locals 0

    invoke-static {p0, p1, p2}, Lx4/z0;->k(I[BZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized g()Lx4/z0;
    .locals 2

    const-class v0, Lx4/z0;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lx4/z0;->d:Lx4/z0;

    if-nez v1, :cond_0

    new-instance v1, Lx4/z0;

    invoke-direct {v1}, Lx4/z0;-><init>()V

    sput-object v1, Lx4/z0;->d:Lx4/z0;

    :cond_0
    sget-object v1, Lx4/z0;->d:Lx4/z0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static h()Landroid/content/SharedPreferences;
    .locals 3

    invoke-static {}, Lcom/miui/common/e;->d()Landroid/app/Application;

    move-result-object v0

    const-string v1, "passport_fid_signer"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic i()Ljava/lang/Boolean;
    .locals 4

    new-instance v0, Lcom/xiaomi/security/devicecredential/b;

    invoke-static {}, Lcom/miui/common/e;->d()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/security/devicecredential/b;-><init>(Landroid/content/Context;)V

    :try_start_0
    invoke-virtual {v0}, Lcom/xiaomi/security/devicecredential/b;->c()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {v0}, Lcom/xiaomi/security/devicecredential/b;->d()V

    const-class v2, Lx4/z0;

    monitor-enter v2

    :try_start_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lx4/z0;->c:Ljava/lang/Boolean;

    invoke-static {}, Lx4/z0;->h()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "can_sign"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v0, "MiuiFidSigner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canSign get from binder "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lx4/z0;->c:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Lcom/xiaomi/security/devicecredential/b;->d()V

    throw v1
.end method

.method private static synthetic j()Ljava/lang/String;
    .locals 4

    new-instance v0, Lcom/xiaomi/security/devicecredential/b;

    invoke-static {}, Lcom/miui/common/e;->d()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/security/devicecredential/b;-><init>(Landroid/content/Context;)V

    :try_start_0
    invoke-virtual {v0}, Lcom/xiaomi/security/devicecredential/b;->a()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {v0}, Lcom/xiaomi/security/devicecredential/b;->d()V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lx4/z0;

    monitor-enter v0

    :try_start_1
    sput-object v1, Lx4/z0;->b:Ljava/lang/String;

    invoke-static {}, Lx4/z0;->h()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "fid"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_0
    :goto_0
    const-string v0, "MiuiFidSigner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFid get from binder "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lx4/z0;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Lcom/xiaomi/security/devicecredential/b;->d()V

    throw v1
.end method

.method private static synthetic k(I[BZ)[B
    .locals 2

    new-instance v0, Lcom/xiaomi/security/devicecredential/b;

    invoke-static {}, Lcom/miui/common/e;->d()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/security/devicecredential/b;-><init>(Landroid/content/Context;)V

    :try_start_0
    invoke-virtual {v0, p0, p1, p2}, Lcom/xiaomi/security/devicecredential/b;->f(I[BZ)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/xiaomi/security/devicecredential/b;->d()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lcom/xiaomi/security/devicecredential/b;->d()V

    throw p0
.end method

.method private static synthetic l([BZ)[B
    .locals 2

    new-instance v0, Lcom/xiaomi/security/devicecredential/b;

    invoke-static {}, Lcom/miui/common/e;->d()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/security/devicecredential/b;-><init>(Landroid/content/Context;)V

    :try_start_0
    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/security/devicecredential/b;->g([BZ)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/xiaomi/security/devicecredential/b;->d()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lcom/xiaomi/security/devicecredential/b;->d()V

    throw p0
.end method

.method private m(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    sget-object v0, Lx4/z0;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    const-wide/16 v0, 0x5

    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v1, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public e()Z
    .locals 4

    const-class v0, Lx4/z0;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lx4/z0;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    const-string v1, "MiuiFidSigner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canSign get from memory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lx4/z0;->c:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lx4/z0;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v0

    return v1

    :cond_0
    invoke-static {}, Lx4/z0;->h()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "can_sign"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "can_sign"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    sput-object v1, Lx4/z0;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    const-string v1, "MiuiFidSigner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canSign get from sp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lx4/z0;->c:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lx4/z0;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v0

    return v1

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lx4/x0;

    invoke-direct {v0}, Lx4/x0;-><init>()V

    invoke-direct {p0, v0}, Lx4/z0;->m(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public f()Ljava/lang/String;
    .locals 4

    const-class v0, Lx4/z0;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lx4/z0;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "MiuiFidSigner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFid get from memory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lx4/z0;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lx4/z0;->b:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :cond_0
    invoke-static {}, Lx4/z0;->h()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "fid"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lx4/z0;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "MiuiFidSigner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFid get from sp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lx4/z0;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lx4/z0;->b:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lx4/y0;

    invoke-direct {v0}, Lx4/y0;-><init>()V

    invoke-direct {p0, v0}, Lx4/z0;->m(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public n(I[BZ)[B
    .locals 1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lx4/v0;

    invoke-direct {v0, p1, p2, p3}, Lx4/v0;-><init>(I[BZ)V

    invoke-direct {p0, v0}, Lx4/z0;->m(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method public o([BZ)[B
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lx4/w0;

    invoke-direct {v0, p1, p2}, Lx4/w0;-><init>([BZ)V

    invoke-direct {p0, v0}, Lx4/z0;->m(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method
