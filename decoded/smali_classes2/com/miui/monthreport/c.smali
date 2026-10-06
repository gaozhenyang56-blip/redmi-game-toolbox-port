.class public Lcom/miui/monthreport/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/monthreport/c$d;,
        Lcom/miui/monthreport/c$c;
    }
.end annotation


# static fields
.field private static final g:Ljava/lang/String; = "c"

.field private static h:Lcom/miui/monthreport/c;

.field private static final i:Ljava/util/concurrent/Executor;


# instance fields
.field private a:Lcom/miui/monthreport/a;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/Exception;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile e:Z

.field private f:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/miui/monthreport/c;->i:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/monthreport/c;->c:Ljava/lang/Exception;

    iput-object v0, p0, Lcom/miui/monthreport/c;->d:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/monthreport/c;->e:Z

    new-instance v0, Lcom/miui/monthreport/c$a;

    invoke-direct {v0, p0}, Lcom/miui/monthreport/c$a;-><init>(Lcom/miui/monthreport/c;)V

    iput-object v0, p0, Lcom/miui/monthreport/c;->f:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/monthreport/c;->b:Landroid/content/Context;

    invoke-static {}, Lcom/miui/monthreport/a;->f()Lcom/miui/monthreport/a;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/monthreport/c;->a:Lcom/miui/monthreport/a;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/monthreport/c;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/miui/monthreport/c;Ljava/lang/String;Lcom/miui/monthreport/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/monthreport/c;->n(Ljava/lang/String;Lcom/miui/monthreport/b;)V

    return-void
.end method

.method static synthetic c(Lcom/miui/monthreport/c;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/monthreport/c;->f:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic d(Lcom/miui/monthreport/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/monthreport/c;->q()V

    return-void
.end method

.method static synthetic e(Lcom/miui/monthreport/c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/monthreport/c;->e:Z

    return p0
.end method

.method static synthetic f(Lcom/miui/monthreport/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/monthreport/c;->e:Z

    return p1
.end method

.method static synthetic g()Ljava/util/concurrent/Executor;
    .locals 1

    sget-object v0, Lcom/miui/monthreport/c;->i:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic h(Lcom/miui/monthreport/c;)Lcom/miui/monthreport/a;
    .locals 0

    iget-object p0, p0, Lcom/miui/monthreport/c;->a:Lcom/miui/monthreport/a;

    return-object p0
.end method

.method static synthetic i(Lcom/miui/monthreport/c;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/miui/monthreport/c;->d:Ljava/util/List;

    return-object p1
.end method

.method static synthetic j(Lcom/miui/monthreport/c;)Ljava/lang/Exception;
    .locals 0

    iget-object p0, p0, Lcom/miui/monthreport/c;->c:Ljava/lang/Exception;

    return-object p0
.end method

.method static synthetic k(Lcom/miui/monthreport/c;Ljava/lang/Exception;)Ljava/lang/Exception;
    .locals 0

    iput-object p1, p0, Lcom/miui/monthreport/c;->c:Ljava/lang/Exception;

    return-object p1
.end method

.method static synthetic l(Lcom/miui/monthreport/c;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/monthreport/c;->b:Landroid/content/Context;

    return-object p0
.end method

.method public static declared-synchronized m(Landroid/content/Context;)Lcom/miui/monthreport/c;
    .locals 2

    const-class v0, Lcom/miui/monthreport/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/monthreport/c;->h:Lcom/miui/monthreport/c;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/monthreport/c;

    invoke-direct {v1, p0}, Lcom/miui/monthreport/c;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/monthreport/c;->h:Lcom/miui/monthreport/c;

    :cond_0
    sget-object p0, Lcom/miui/monthreport/c;->h:Lcom/miui/monthreport/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private n(Ljava/lang/String;Lcom/miui/monthreport/b;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/monthreport/c;->f:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/miui/monthreport/c;->f:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v0, Lcom/miui/monthreport/c$d;

    invoke-direct {v0, p0, p2}, Lcom/miui/monthreport/c$d;-><init>(Lcom/miui/monthreport/c;Lcom/miui/monthreport/b;)V

    sget-object p2, Lcom/miui/monthreport/c;->i:Ljava/util/concurrent/Executor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p2, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private q()V
    .locals 3

    iget-object v0, p0, Lcom/miui/monthreport/c;->d:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/monthreport/c;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/monthreport/c;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/miui/monthreport/c;->n(Ljava/lang/String;Lcom/miui/monthreport/b;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/miui/monthreport/c;->g:Ljava/lang/String;

    const-string v2, "Module is null"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/miui/monthreport/c;->e:Z

    :goto_0
    return-void
.end method


# virtual methods
.method public o()V
    .locals 2

    iget-object v0, p0, Lcom/miui/monthreport/c;->f:Landroid/os/Handler;

    new-instance v1, Lcom/miui/monthreport/c$b;

    invoke-direct {v1, p0}, Lcom/miui/monthreport/c$b;-><init>(Lcom/miui/monthreport/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public p()V
    .locals 1

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/monthreport/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/monthreport/c;->m(Landroid/content/Context;)Lcom/miui/monthreport/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/monthreport/c;->o()V

    return-void
.end method
