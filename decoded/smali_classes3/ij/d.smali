.class public Lij/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ldj/a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ldj/a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/content/Context;

.field private d:Lcom/xiaomi/trustservice/IMiTrustService;

.field private e:Z

.field private f:Landroid/content/Intent;

.field private final g:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lij/d;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lij/d;->b:Ljava/util/List;

    new-instance v0, Lij/d$a;

    invoke-direct {v0, p0}, Lij/d$a;-><init>(Lij/d;)V

    iput-object v0, p0, Lij/d;->g:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lij/d;->c:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lij/d;Ldj/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lij/d;->s(Ldj/a;)V

    return-void
.end method

.method static synthetic b(Lij/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lij/d;->e:Z

    return p1
.end method

.method static synthetic c(Lij/d;Lcom/xiaomi/trustservice/IMiTrustService;)Lcom/xiaomi/trustservice/IMiTrustService;
    .locals 0

    iput-object p1, p0, Lij/d;->d:Lcom/xiaomi/trustservice/IMiTrustService;

    return-object p1
.end method

.method static synthetic d(Lij/d;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lij/d;->a:Ljava/util/List;

    return-object p0
.end method

.method static synthetic e(Lij/d;Ldj/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lij/d;->o(Ldj/a;)V

    return-void
.end method

.method static synthetic f(Lij/d;)V
    .locals 0

    invoke-direct {p0}, Lij/d;->i()V

    return-void
.end method

.method private g(Ldj/a;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addSuspendingTask: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiTrustManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lij/d;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private i()V
    .locals 5

    iget-object v0, p0, Lij/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "MiTrustManager"

    const-string v1, "endHandlingTasks"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-class v0, Lij/d;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lij/d;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldj/a;

    const/4 v3, 0x0

    const/16 v4, 0x3ec

    invoke-virtual {v2, v3, v4}, Ldj/a;->c(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lij/d;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private j(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lij/d;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/16 v2, 0x40

    :try_start_0
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    const-string v2, "package_name"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "version_code"

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "certificate_SHA256"

    iget-object v2, p0, Lij/d;->c:Landroid/content/Context;

    invoke-static {v2, p1}, Ljj/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAppStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MiTrustManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, ""

    return-object p1
.end method

.method private l(Ldj/a;)V
    .locals 7

    invoke-virtual {p1}, Ldj/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lij/d;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ldj/a;->a()Lgj/a;

    move-result-object v0

    instance-of v1, v0, Lgj/d;

    const/16 v2, 0x3e9

    const/4 v3, 0x0

    if-nez v1, :cond_1

    invoke-virtual {p1, v3, v2}, Ldj/a;->c(Ljava/lang/String;I)V

    iget-object v0, p0, Lij/d;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_1
    invoke-virtual {v0}, Lgj/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lij/d;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v4, Lij/d;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v5, p0, Lij/d;->d:Lcom/xiaomi/trustservice/IMiTrustService;

    if-eqz v5, :cond_2

    invoke-interface {v5}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v5}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lij/d;->d:Lcom/xiaomi/trustservice/IMiTrustService;

    invoke-direct {p0}, Lij/d;->m()[B

    move-result-object v6

    check-cast v0, Lgj/d;

    invoke-virtual {v0}, Lgj/d;->e()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v1, v6, v0}, Lcom/xiaomi/trustservice/IMiTrustService;->a7(Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v3

    :goto_0
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "error_code"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, p1, v0}, Lij/d;->p(Ldj/a;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ldj/a;->c(Ljava/lang/String;I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v3, v2}, Ldj/a;->c(Ljava/lang/String;I)V

    :goto_1
    iget-object v0, p0, Lij/d;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    const-string v0, "MiTrustManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleReqTask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method private m()[B
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x80t
    .end array-data
.end method

.method private n()Landroid/content/Intent;
    .locals 2

    iget-object v0, p0, Lij/d;->f:Landroid/content/Intent;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.trustservice.IMiTrustService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lij/d;->f:Landroid/content/Intent;

    const-string v1, "com.xiaomi.trustservice"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v0, p0, Lij/d;->f:Landroid/content/Intent;

    return-object v0
.end method

.method private o(Ldj/a;)V
    .locals 2

    iget-object v0, p0, Lij/d;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Lij/a;

    invoke-direct {v1, p0, p1}, Lij/a;-><init>(Lij/d;Ldj/a;)V

    invoke-virtual {v0, v1}, Lef/z;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private p(Ldj/a;Ljava/lang/String;)V
    .locals 3

    const/16 v0, 0x3e9

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "error_code"

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v1, "MiTrustManager"

    const-string v2, "handleServiceError: "

    invoke-static {v1, v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move p2, v0

    :goto_0
    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit16 p2, p2, 0xbb8

    :goto_1
    invoke-virtual {p1, v1, p2}, Ldj/a;->c(Ljava/lang/String;I)V

    return-void
.end method

.method private static q(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x4

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method private r()Z
    .locals 2

    iget-object v0, p0, Lij/d;->c:Landroid/content/Context;

    invoke-direct {p0}, Lij/d;->n()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lij/d;->q(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method private synthetic s(Ldj/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lij/d;->l(Ldj/a;)V

    return-void
.end method


# virtual methods
.method public h()V
    .locals 6

    iget-boolean v0, p0, Lij/d;->e:Z

    const-string v1, "MiTrustManager"

    if-eqz v0, :cond_0

    const-string v0, "Already bound."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string v2, "bindMiTrustService!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.xiaomi.trustservice.IMiTrustService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.xiaomi.trustservice"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lij/d;->c:Landroid/content/Context;

    iget-object v4, p0, Lij/d;->g:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    iput-boolean v2, p0, Lij/d;->e:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindMiTrustService: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lij/d;->e:Z

    iput-object v0, p0, Lij/d;->d:Lcom/xiaomi/trustservice/IMiTrustService;

    :goto_0
    iget-boolean v1, p0, Lij/d;->e:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lij/d;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldj/a;

    const/16 v3, 0x3f6

    invoke-virtual {v2, v0, v3}, Ldj/a;->c(Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public k(Ldj/a;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lij/d;->r()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const/16 v1, 0x3f5

    invoke-virtual {p1, v0, v1}, Ldj/a;->c(Ljava/lang/String;I)V

    :cond_1
    iget-object v0, p0, Lij/d;->d:Lcom/xiaomi/trustservice/IMiTrustService;

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lij/d;->g(Ldj/a;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lij/d;->o(Ldj/a;)V

    :goto_0
    return-void
.end method

.method public t()V
    .locals 3

    iget-boolean v0, p0, Lij/d;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lij/d;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lij/d;->d:Lcom/xiaomi/trustservice/IMiTrustService;

    :try_start_0
    iget-object v0, p0, Lij/d;->c:Landroid/content/Context;

    iget-object v1, p0, Lij/d;->g:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unbindService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiTrustManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-direct {p0}, Lij/d;->i()V

    return-void
.end method
