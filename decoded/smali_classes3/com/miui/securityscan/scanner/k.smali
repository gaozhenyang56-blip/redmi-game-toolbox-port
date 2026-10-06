.class public Lcom/miui/securityscan/scanner/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/securityscan/scanner/k$o;,
        Lcom/miui/securityscan/scanner/k$j;,
        Lcom/miui/securityscan/scanner/k$i;,
        Lcom/miui/securityscan/scanner/k$k;,
        Lcom/miui/securityscan/scanner/k$m;,
        Lcom/miui/securityscan/scanner/k$l;,
        Lcom/miui/securityscan/scanner/k$n;
    }
.end annotation


# static fields
.field private static s:Lcom/miui/securityscan/scanner/k;


# instance fields
.field private volatile a:Z

.field private b:Landroid/content/Context;

.field private c:Lcom/miui/securityscan/scanner/m;

.field private d:Lcom/miui/securityscan/scanner/CacheCheckManager;

.field private e:Lcom/miui/securityscan/scanner/d;

.field private f:Lcom/miui/securityscan/scanner/c;

.field private g:Lcom/miui/securityscan/scanner/ScoreManager;

.field private h:Li4/a;

.field private i:Lo4/a;

.field private j:Lzf/f;

.field private k:Landroid/os/Handler;

.field private l:Lcom/miui/securityscan/scanner/b;

.field private m:Lcom/miui/securityscan/scanner/g;

.field private n:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lzf/g;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lzf/d;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/miui/securityscan/scanner/k$j;

.field private q:Lcom/miui/securityscan/scanner/k$j;

.field private r:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/securityscan/scanner/k;->a:Z

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/scanner/k;->n:Ljava/util/Queue;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/scanner/k;->o:Ljava/util/Queue;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/scanner/k;->r:Ljava/lang/Object;

    iput-object p1, p0, Lcom/miui/securityscan/scanner/k;->b:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/securityscan/scanner/k;->k:Landroid/os/Handler;

    new-instance v0, Lcom/miui/securityscan/scanner/b;

    invoke-direct {v0}, Lcom/miui/securityscan/scanner/b;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/scanner/k;->l:Lcom/miui/securityscan/scanner/b;

    new-instance v0, Lcom/miui/securityscan/scanner/g;

    invoke-direct {v0}, Lcom/miui/securityscan/scanner/g;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/scanner/k;->m:Lcom/miui/securityscan/scanner/g;

    invoke-static {}, Lcom/miui/securityscan/scanner/ScoreManager;->j()Lcom/miui/securityscan/scanner/ScoreManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/scanner/k;->g:Lcom/miui/securityscan/scanner/ScoreManager;

    invoke-static {p1}, Lcom/miui/securityscan/scanner/d;->h(Landroid/content/Context;)Lcom/miui/securityscan/scanner/d;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/scanner/k;->e:Lcom/miui/securityscan/scanner/d;

    invoke-static {p1}, Lcom/miui/securityscan/scanner/m;->g(Landroid/content/Context;)Lcom/miui/securityscan/scanner/m;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/scanner/k;->c:Lcom/miui/securityscan/scanner/m;

    invoke-static {p1}, Lcom/miui/securityscan/scanner/CacheCheckManager;->b(Landroid/content/Context;)Lcom/miui/securityscan/scanner/CacheCheckManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/scanner/k;->d:Lcom/miui/securityscan/scanner/CacheCheckManager;

    invoke-static {p1}, Lcom/miui/securityscan/scanner/c;->d(Landroid/content/Context;)Lcom/miui/securityscan/scanner/c;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/scanner/k;->f:Lcom/miui/securityscan/scanner/c;

    invoke-static {p1}, Li4/a;->k(Landroid/content/Context;)Li4/a;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/scanner/k;->h:Li4/a;

    invoke-static {p1}, Lo4/a;->c(Landroid/content/Context;)Lo4/a;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/securityscan/scanner/k;->i:Lo4/a;

    invoke-static {}, Lzf/f;->c()Lzf/f;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/securityscan/scanner/k;->j:Lzf/f;

    return-void
.end method

.method private A(ZLrf/i;)V
    .locals 2

    const-string v0, "SecurityManager startScanManualItem(1)"

    invoke-static {v0}, Lx4/q0;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/securityscan/scanner/k;->f:Lcom/miui/securityscan/scanner/c;

    new-instance v1, Lcom/miui/securityscan/scanner/k$e;

    invoke-direct {v1, p0, p2, p1}, Lcom/miui/securityscan/scanner/k$e;-><init>(Lcom/miui/securityscan/scanner/k;Lrf/i;Z)V

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/scanner/c;->e(Lrf/e;)V

    return-void
.end method

.method private B(ZLrf/c;Lcom/miui/securityscan/scanner/k$m;)V
    .locals 2

    const-string v0, "SecurityManager startScanMemoryItem(4)"

    invoke-static {v0}, Lx4/q0;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/securityscan/scanner/k;->e:Lcom/miui/securityscan/scanner/d;

    new-instance v1, Lcom/miui/securityscan/scanner/k$b;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/miui/securityscan/scanner/k$b;-><init>(Lcom/miui/securityscan/scanner/k;ZLcom/miui/securityscan/scanner/k$m;Lrf/c;)V

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/scanner/d;->n(Lkf/b;)V

    return-void
.end method

.method private C(ZLrf/c;Lcom/miui/securityscan/scanner/k$m;Lcom/miui/securityscan/scanner/k$k;)V
    .locals 9

    sget-object v0, Lcom/miui/securityscan/scanner/o;->o:Lcom/miui/securityscan/scanner/o$b;

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/o$b;->a()Lcom/miui/securityscan/scanner/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/securityscan/scanner/o;->E()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SecurityManager"

    const-string v2, "prepare to startIncrementalScan"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/o$b;->a()Lcom/miui/securityscan/scanner/o;

    move-result-object v0

    new-instance v8, Lcom/miui/securityscan/scanner/k$o;

    const-string v7, "incremental_scan_bg"

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/miui/securityscan/scanner/k$o;-><init>(Lcom/miui/securityscan/scanner/k;ZLrf/c;Lcom/miui/securityscan/scanner/k$m;Lcom/miui/securityscan/scanner/k$k;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lcom/miui/securityscan/scanner/o;->O(Lrf/e;)V

    return-void

    :cond_0
    const-string v0, "SecurityManager startScanSystemApps(3)"

    invoke-static {v0}, Lx4/q0;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/securityscan/scanner/k;->c:Lcom/miui/securityscan/scanner/m;

    new-instance v8, Lcom/miui/securityscan/scanner/k$o;

    const-string v7, "pre_scan"

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/miui/securityscan/scanner/k$o;-><init>(Lcom/miui/securityscan/scanner/k;ZLrf/c;Lcom/miui/securityscan/scanner/k$m;Lcom/miui/securityscan/scanner/k$k;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const/4 p2, 0x6

    goto :goto_0

    :cond_1
    const/4 p2, 0x7

    :goto_0
    const-string p3, "HOMEPAGE_SCAN"

    invoke-virtual {v0, p1, v8, p3, p2}, Lcom/miui/securityscan/scanner/m;->l(ZLrf/e;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/miui/securityscan/scanner/k;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/securityscan/scanner/k;->a:Z

    return p0
.end method

.method static synthetic b(Lcom/miui/securityscan/scanner/k;)Lo4/a;
    .locals 0

    iget-object p0, p0, Lcom/miui/securityscan/scanner/k;->i:Lo4/a;

    return-object p0
.end method

.method static synthetic c(Lcom/miui/securityscan/scanner/k;Lrf/c;Ljava/util/List;Lcom/miui/securityscan/scanner/k$k;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/securityscan/scanner/k;->u(Lrf/c;Ljava/util/List;Lcom/miui/securityscan/scanner/k$k;)V

    return-void
.end method

.method static synthetic d(Lcom/miui/securityscan/scanner/k;)Lcom/miui/securityscan/scanner/b;
    .locals 0

    iget-object p0, p0, Lcom/miui/securityscan/scanner/k;->l:Lcom/miui/securityscan/scanner/b;

    return-object p0
.end method

.method static synthetic e(Lcom/miui/securityscan/scanner/k;)Lcom/miui/securityscan/scanner/g;
    .locals 0

    iget-object p0, p0, Lcom/miui/securityscan/scanner/k;->m:Lcom/miui/securityscan/scanner/g;

    return-object p0
.end method

.method static synthetic f(Lcom/miui/securityscan/scanner/k;)Lcom/miui/securityscan/scanner/ScoreManager;
    .locals 0

    iget-object p0, p0, Lcom/miui/securityscan/scanner/k;->g:Lcom/miui/securityscan/scanner/ScoreManager;

    return-object p0
.end method

.method static synthetic g(Lcom/miui/securityscan/scanner/k;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/securityscan/scanner/k;->k:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic h(Lcom/miui/securityscan/scanner/k;)Li4/a;
    .locals 0

    iget-object p0, p0, Lcom/miui/securityscan/scanner/k;->h:Li4/a;

    return-object p0
.end method

.method static synthetic i(Lcom/miui/securityscan/scanner/k;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/securityscan/scanner/k;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic j(Lcom/miui/securityscan/scanner/k;Lrf/c;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/securityscan/scanner/k;->t(Lrf/c;Ljava/util/List;)V

    return-void
.end method

.method static synthetic k(Lcom/miui/securityscan/scanner/k;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/securityscan/scanner/k;->s()V

    return-void
.end method

.method public static declared-synchronized n(Landroid/content/Context;)Lcom/miui/securityscan/scanner/k;
    .locals 2

    const-class v0, Lcom/miui/securityscan/scanner/k;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/securityscan/scanner/k;->s:Lcom/miui/securityscan/scanner/k;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/securityscan/scanner/k;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/miui/securityscan/scanner/k;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/securityscan/scanner/k;->s:Lcom/miui/securityscan/scanner/k;

    :cond_0
    sget-object p0, Lcom/miui/securityscan/scanner/k;->s:Lcom/miui/securityscan/scanner/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private s()V
    .locals 2

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lc4/j;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lc4/j;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/securityscan/scanner/k;->i:Lo4/a;

    invoke-virtual {v1, v0}, Lo4/a;->h(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/securityscan/scanner/k;->i:Lo4/a;

    const-string v1, "com.miui.cleanmaster.action.CHECK_GARBAGE_CHECK"

    invoke-virtual {v0, v1}, Lo4/a;->h(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private t(Lrf/c;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrf/c;",
            "Ljava/util/List<",
            "Lkf/c;",
            ">;)V"
        }
    .end annotation

    const-string v0, "SecurityManager"

    const-string v1, "startOptimizeMemoryAfterScanMemory"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/securityscan/scanner/k;->e:Lcom/miui/securityscan/scanner/d;

    new-instance v1, Lcom/miui/securityscan/scanner/k$g;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/securityscan/scanner/k$g;-><init>(Lcom/miui/securityscan/scanner/k;Lrf/c;Ljava/util/List;)V

    invoke-virtual {v0, p2, v1}, Lcom/miui/securityscan/scanner/d;->m(Ljava/util/List;Lkf/a;)V

    return-void
.end method

.method private u(Lrf/c;Ljava/util/List;Lcom/miui/securityscan/scanner/k$k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrf/c;",
            "Ljava/util/List<",
            "Lcom/miui/securityscan/model/GroupModel;",
            ">;",
            "Lcom/miui/securityscan/scanner/k$k;",
            ")V"
        }
    .end annotation

    const-string v0, "SecurityManager"

    const-string v1, "startOptimizeSystemAppAfterScanSystem"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/securityscan/scanner/k;->c:Lcom/miui/securityscan/scanner/m;

    new-instance v1, Lcom/miui/securityscan/scanner/k$f;

    invoke-direct {v1, p0, p1}, Lcom/miui/securityscan/scanner/k$f;-><init>(Lcom/miui/securityscan/scanner/k;Lrf/c;)V

    invoke-virtual {v0, p2, p3, v1}, Lcom/miui/securityscan/scanner/m;->k(Ljava/util/List;Lcom/miui/securityscan/scanner/k$k;Lrf/d;)V

    return-void
.end method

.method private x(ZLcom/miui/securityscan/scanner/k$m;)V
    .locals 2

    const-string v0, "SecurityManager startScanAutoItem(2)"

    invoke-static {v0}, Lx4/q0;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/securityscan/scanner/k;->c:Lcom/miui/securityscan/scanner/m;

    new-instance v1, Lcom/miui/securityscan/scanner/k$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/securityscan/scanner/k$a;-><init>(Lcom/miui/securityscan/scanner/k;ZLcom/miui/securityscan/scanner/k$m;)V

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/scanner/m;->o(Lrf/e;)V

    return-void
.end method

.method private y(Lcom/miui/securityscan/scanner/k$m;)V
    .locals 2

    const-string v0, "SecurityManager startScanCacheItem(5)"

    invoke-static {v0}, Lx4/q0;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/securityscan/scanner/k;->d:Lcom/miui/securityscan/scanner/CacheCheckManager;

    new-instance v1, Lcom/miui/securityscan/scanner/k$c;

    invoke-direct {v1, p0}, Lcom/miui/securityscan/scanner/k$c;-><init>(Lcom/miui/securityscan/scanner/k;)V

    invoke-virtual {v0, p1, v1}, Lcom/miui/securityscan/scanner/CacheCheckManager;->c(Lcom/miui/securityscan/scanner/k$m;Lcom/miui/optimizecenter/garbagecheck/IGarbageScanCallback;)V

    return-void
.end method


# virtual methods
.method public l()Z
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {}, Lef/x;->k()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    sget-object v0, Lcom/miui/securityscan/scanner/o;->o:Lcom/miui/securityscan/scanner/o$b;

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/o$b;->a()Lcom/miui/securityscan/scanner/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/o;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/securityscan/scanner/k;->a:Z

    iget-object v0, p0, Lcom/miui/securityscan/scanner/k;->r:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/securityscan/scanner/k;->p:Lcom/miui/securityscan/scanner/k$j;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/securityscan/scanner/k;->p:Lcom/miui/securityscan/scanner/k$j;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    iput-object v2, p0, Lcom/miui/securityscan/scanner/k;->p:Lcom/miui/securityscan/scanner/k$j;

    :cond_0
    iget-object v1, p0, Lcom/miui/securityscan/scanner/k;->q:Lcom/miui/securityscan/scanner/k$j;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/securityscan/scanner/k;->q:Lcom/miui/securityscan/scanner/k$j;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    iput-object v2, p0, Lcom/miui/securityscan/scanner/k;->q:Lcom/miui/securityscan/scanner/k$j;

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/miui/securityscan/scanner/o;->o:Lcom/miui/securityscan/scanner/o$b;

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/o$b;->a()Lcom/miui/securityscan/scanner/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/securityscan/scanner/o;->E()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/o$b;->a()Lcom/miui/securityscan/scanner/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/o;->q()V

    :cond_2
    invoke-direct {p0}, Lcom/miui/securityscan/scanner/k;->s()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public o()Lzf/d;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/k;->o:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzf/d;

    return-object v0
.end method

.method public p()Lzf/g;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/k;->n:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzf/g;

    return-object v0
.end method

.method public q(Lzf/g;Lcom/miui/securityscan/scanner/k$l;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "popEntry : item = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecurityManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/miui/securityscan/scanner/k$h;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, "com.miui.guardprovider.action.antivirusservice"

    :goto_0
    new-instance v1, Lcom/miui/securityscan/scanner/k$j;

    iget-object v2, p0, Lcom/miui/securityscan/scanner/k;->l:Lcom/miui/securityscan/scanner/b;

    invoke-virtual {v2, p1}, Lcom/miui/securityscan/scanner/b;->b(Lzf/g;)Ljava/util/concurrent/BlockingQueue;

    move-result-object p1

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/miui/securityscan/scanner/k$j;-><init>(Lcom/miui/securityscan/scanner/k;Ljava/lang/String;Lcom/miui/securityscan/scanner/k$l;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/miui/securityscan/scanner/k;->p:Lcom/miui/securityscan/scanner/k$j;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public r(Lzf/d;Lcom/miui/securityscan/scanner/k$l;)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "popOptimizeEntry : item = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecurityManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/miui/securityscan/scanner/k$h;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-string v2, ""

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    :goto_0
    move-object v5, v2

    goto :goto_1

    :cond_0
    const-string v2, "com.miui.guardprovider.action.antivirusservice"

    goto :goto_0

    :goto_1
    new-instance v0, Lcom/miui/securityscan/scanner/k$j;

    iget-object v1, p0, Lcom/miui/securityscan/scanner/k;->m:Lcom/miui/securityscan/scanner/g;

    invoke-virtual {v1, p1}, Lcom/miui/securityscan/scanner/g;->b(Lzf/d;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v7

    const/4 v8, 0x1

    move-object v3, v0

    move-object v4, p0

    move-object v6, p2

    invoke-direct/range {v3 .. v8}, Lcom/miui/securityscan/scanner/k$j;-><init>(Lcom/miui/securityscan/scanner/k;Ljava/lang/String;Lcom/miui/securityscan/scanner/k$l;Ljava/util/concurrent/BlockingQueue;Z)V

    iput-object v0, p0, Lcom/miui/securityscan/scanner/k;->q:Lcom/miui/securityscan/scanner/k$j;

    invoke-virtual {v0, p1}, Lcom/miui/securityscan/scanner/k$j;->a(Lzf/d;)V

    iget-object p1, p0, Lcom/miui/securityscan/scanner/k;->q:Lcom/miui/securityscan/scanner/k$j;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public v(Lrf/i;Lcom/miui/securityscan/scanner/k$m;)V
    .locals 2

    const-string v0, "SecurityManager startPredictScan:---------------------------------"

    invoke-static {v0}, Lx4/q0;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/securityscan/scanner/k;->a:Z

    iget-object v0, p0, Lcom/miui/securityscan/scanner/k;->n:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    iget-object v0, p0, Lcom/miui/securityscan/scanner/k;->n:Ljava/util/Queue;

    invoke-static {}, Lzf/g;->values()[Lzf/g;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/miui/securityscan/scanner/k;->l:Lcom/miui/securityscan/scanner/b;

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/b;->a()V

    iget-object v0, p0, Lcom/miui/securityscan/scanner/k;->g:Lcom/miui/securityscan/scanner/ScoreManager;

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/ScoreManager;->E()V

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/miui/securityscan/scanner/k;->A(ZLrf/i;)V

    invoke-direct {p0, v0, p2}, Lcom/miui/securityscan/scanner/k;->x(ZLcom/miui/securityscan/scanner/k$m;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1, p2, p1}, Lcom/miui/securityscan/scanner/k;->C(ZLrf/c;Lcom/miui/securityscan/scanner/k$m;Lcom/miui/securityscan/scanner/k$k;)V

    invoke-direct {p0, v0, p1, p2}, Lcom/miui/securityscan/scanner/k;->B(ZLrf/c;Lcom/miui/securityscan/scanner/k$m;)V

    return-void
.end method

.method public w(Lcom/miui/securityscan/scanner/k$k;Lrf/i;Lrf/c;Lcom/miui/securityscan/scanner/k$m;)V
    .locals 3

    const-string v0, "SecurityManager startScanAndOptimize:---------------------------------"

    invoke-static {v0}, Lx4/q0;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/securityscan/scanner/k;->a:Z

    iget-object v1, p0, Lcom/miui/securityscan/scanner/k;->j:Lzf/f;

    invoke-virtual {v1}, Lzf/f;->a()V

    iget-object v1, p0, Lcom/miui/securityscan/scanner/k;->o:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    iget-object v1, p0, Lcom/miui/securityscan/scanner/k;->m:Lcom/miui/securityscan/scanner/g;

    invoke-virtual {v1}, Lcom/miui/securityscan/scanner/g;->a()V

    iget-object v1, p0, Lcom/miui/securityscan/scanner/k;->o:Ljava/util/Queue;

    invoke-static {}, Lzf/d;->values()[Lzf/d;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/miui/securityscan/scanner/k;->g:Lcom/miui/securityscan/scanner/ScoreManager;

    invoke-virtual {v1}, Lcom/miui/securityscan/scanner/ScoreManager;->E()V

    iget-object v1, p0, Lcom/miui/securityscan/scanner/k;->b:Landroid/content/Context;

    invoke-static {v1}, Leg/d;->h(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/securityscan/scanner/k;->b:Landroid/content/Context;

    invoke-static {v1}, Lpf/i;->k(Landroid/content/Context;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/miui/securityscan/scanner/k;->b:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lpf/i;->x(Landroid/content/Context;I)V

    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/miui/securityscan/scanner/k;->A(ZLrf/i;)V

    invoke-direct {p0, v0, p4}, Lcom/miui/securityscan/scanner/k;->x(ZLcom/miui/securityscan/scanner/k$m;)V

    invoke-direct {p0, v0, p3, p4, p1}, Lcom/miui/securityscan/scanner/k;->C(ZLrf/c;Lcom/miui/securityscan/scanner/k$m;Lcom/miui/securityscan/scanner/k$k;)V

    invoke-direct {p0, v0, p3, p4}, Lcom/miui/securityscan/scanner/k;->B(ZLrf/c;Lcom/miui/securityscan/scanner/k$m;)V

    invoke-direct {p0, p4}, Lcom/miui/securityscan/scanner/k;->y(Lcom/miui/securityscan/scanner/k$m;)V

    return-void
.end method

.method public z(Lrf/i;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/scanner/k;->f:Lcom/miui/securityscan/scanner/c;

    new-instance v1, Lcom/miui/securityscan/scanner/k$d;

    invoke-direct {v1, p0, p1}, Lcom/miui/securityscan/scanner/k$d;-><init>(Lcom/miui/securityscan/scanner/k;Lrf/i;)V

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/scanner/c;->e(Lrf/e;)V

    return-void
.end method
