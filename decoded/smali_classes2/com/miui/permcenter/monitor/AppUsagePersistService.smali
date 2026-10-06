.class public Lcom/miui/permcenter/monitor/AppUsagePersistService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private final a:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Landroid/os/Handler;

.field private final c:Landroid/os/Messenger;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/miui/permcenter/monitor/AppUsagePersistService;->a:Landroid/util/ArrayMap;

    new-instance v0, Lcom/miui/permcenter/monitor/AppUsagePersistService$a;

    invoke-static {}, Lxc/q;->b()Lxc/q;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/permcenter/monitor/AppUsagePersistService$a;-><init>(Lcom/miui/permcenter/monitor/AppUsagePersistService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/permcenter/monitor/AppUsagePersistService;->b:Landroid/os/Handler;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/miui/permcenter/monitor/AppUsagePersistService;->c:Landroid/os/Messenger;

    return-void
.end method

.method public static synthetic a(Lcom/miui/permcenter/monitor/AppUsagePersistService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/permcenter/monitor/AppUsagePersistService;->d()V

    return-void
.end method

.method static synthetic b(Lcom/miui/permcenter/monitor/AppUsagePersistService;)Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/monitor/AppUsagePersistService;->a:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static synthetic c(Lcom/miui/permcenter/monitor/AppUsagePersistService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/permcenter/monitor/AppUsagePersistService;->e()V

    return-void
.end method

.method private synthetic d()V
    .locals 5

    iget-object v0, p0, Lcom/miui/permcenter/monitor/AppUsagePersistService;->a:Landroid/util/ArrayMap;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/miui/permcenter/monitor/AppUsagePersistService;->a:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/miui/permcenter/monitor/AppUsagePersistService;->a:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/permcenter/monitor/AppUsagePersistService;->a:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2, v3}, Lzb/g;->e(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/miui/permcenter/monitor/AppUsagePersistService;->a:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    invoke-static {}, Lcom/miui/permcenter/monitor/a;->h()Lcom/miui/permcenter/monitor/a;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/miui/permcenter/monitor/a;->o(Landroid/content/Context;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private e()V
    .locals 2

    const-string v0, "Malicious-Persist"

    const-string v1, "persistToFile now"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lzb/h;

    invoke-direct {v0, p0}, Lzb/h;-><init>(Lcom/miui/permcenter/monitor/AppUsagePersistService;)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p1, p0, Lcom/miui/permcenter/monitor/AppUsagePersistService;->c:Landroid/os/Messenger;

    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
