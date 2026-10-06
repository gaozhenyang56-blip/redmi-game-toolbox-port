.class public Lri/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final i:I

.field private static volatile j:Lri/b;


# instance fields
.field private a:Ljava/util/concurrent/ExecutorService;

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lqi/d;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lqi/d;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Landroid/content/Context;

.field private e:Lqi/a;

.field private f:Ljava/lang/String;

.field private g:Lsi/a;

.field private h:Lsi/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lzi/p8;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    :goto_0
    sput v0, Lri/b;->i:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lri/b;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lri/b;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lri/b;->c:Ljava/util/HashMap;

    iput-object p1, p0, Lri/b;->d:Landroid/content/Context;

    return-void
.end method

.method private A()V
    .locals 7

    iget-object v0, p0, Lri/b;->d:Landroid/content/Context;

    invoke-static {v0}, Lri/b;->f(Landroid/content/Context;)Lri/b;

    move-result-object v0

    invoke-virtual {v0}, Lri/b;->d()Lqi/a;

    move-result-object v0

    invoke-virtual {v0}, Lqi/a;->h()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lzi/a1;

    iget-object v1, p0, Lri/b;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lzi/a1;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lri/b;->d:Landroid/content/Context;

    invoke-static {v1}, Lri/b;->f(Landroid/content/Context;)Lri/b;

    move-result-object v1

    invoke-virtual {v1}, Lri/b;->d()Lqi/a;

    move-result-object v1

    invoke-virtual {v1}, Lqi/a;->e()J

    move-result-wide v1

    long-to-int v1, v1

    const/16 v2, 0x708

    if-ge v1, v2, :cond_1

    move v1, v2

    :cond_1
    iget-object v2, p0, Lri/b;->d:Landroid/content/Context;

    invoke-static {v2}, Lzi/g1;->c(Landroid/content/Context;)Lzi/g1;

    move-result-object v2

    const-string v3, "sp_client_report_status"

    const-string v4, "perf_last_upload_time"

    const-wide/16 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lzi/g1;->a(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    mul-int/lit16 v2, v1, 0x3e8

    int-to-long v2, v2

    cmp-long v2, v4, v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lri/b;->d:Landroid/content/Context;

    invoke-static {v2}, Lzi/h;->f(Landroid/content/Context;)Lzi/h;

    move-result-object v2

    new-instance v3, Lri/j;

    invoke-direct {v3, p0, v0}, Lri/j;-><init>(Lri/b;Lzi/a1;)V

    const/16 v4, 0xf

    invoke-virtual {v2, v3, v4}, Lzi/h;->h(Ljava/lang/Runnable;I)V

    :cond_2
    const-class v2, Lri/b;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lri/b;->d:Landroid/content/Context;

    invoke-static {v3}, Lzi/h;->f(Landroid/content/Context;)Lzi/h;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lzi/h;->k(Lzi/h$a;I)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lri/b;->d:Landroid/content/Context;

    invoke-static {v3}, Lzi/h;->f(Landroid/content/Context;)Lzi/h;

    move-result-object v3

    const-string v4, "100887"

    invoke-virtual {v3, v4}, Lzi/h;->i(Ljava/lang/String;)Z

    iget-object v3, p0, Lri/b;->d:Landroid/content/Context;

    invoke-static {v3}, Lzi/h;->f(Landroid/content/Context;)Lzi/h;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lzi/h;->k(Lzi/h$a;I)Z

    :cond_3
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a()I
    .locals 5

    iget-object v0, p0, Lri/b;->c:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lri/b;->c:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    goto :goto_1

    :cond_0
    move v3, v1

    :goto_1
    add-int/2addr v2, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :cond_2
    return v1
.end method

.method static synthetic b(Lri/b;)I
    .locals 0

    invoke-direct {p0}, Lri/b;->a()I

    move-result p0

    return p0
.end method

.method static synthetic c(Lri/b;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    iget-object p0, p0, Lri/b;->a:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method public static f(Landroid/content/Context;)Lri/b;
    .locals 2

    sget-object v0, Lri/b;->j:Lri/b;

    if-nez v0, :cond_1

    const-class v0, Lri/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lri/b;->j:Lri/b;

    if-nez v1, :cond_0

    new-instance v1, Lri/b;

    invoke-direct {v1, p0}, Lri/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lri/b;->j:Lri/b;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lri/b;->j:Lri/b;

    return-object p0
.end method

.method static synthetic l(Lri/b;)V
    .locals 0

    invoke-direct {p0}, Lri/b;->x()V

    return-void
.end method

.method static synthetic m(Lri/b;Lqi/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lri/b;->t(Lqi/b;)V

    return-void
.end method

.method static synthetic n(Lri/b;Lqi/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lri/b;->u(Lqi/c;)V

    return-void
.end method

.method private o(Lzi/h$a;I)V
    .locals 1

    iget-object v0, p0, Lri/b;->d:Landroid/content/Context;

    invoke-static {v0}, Lzi/h;->f(Landroid/content/Context;)Lzi/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lzi/h;->n(Lzi/h$a;I)Z

    return-void
.end method

.method private q()I
    .locals 9

    iget-object v0, p0, Lri/b;->b:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lri/b;->b:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lqi/d;

    instance-of v5, v4, Lqi/c;

    if-eqz v5, :cond_1

    check-cast v4, Lqi/c;

    int-to-long v5, v1

    iget-wide v7, v4, Lqi/c;->i:J

    add-long/2addr v5, v7

    long-to-int v1, v5

    goto :goto_0

    :cond_2
    return v1
.end method

.method static synthetic r(Lri/b;)I
    .locals 0

    invoke-direct {p0}, Lri/b;->q()I

    move-result p0

    return p0
.end method

.method private t(Lqi/b;)V
    .locals 1

    iget-object v0, p0, Lri/b;->g:Lsi/a;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lsi/f;->c(Lqi/d;)V

    invoke-direct {p0}, Lri/b;->a()I

    move-result p1

    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    invoke-direct {p0}, Lri/b;->x()V

    iget-object p1, p0, Lri/b;->d:Landroid/content/Context;

    invoke-static {p1}, Lzi/h;->f(Landroid/content/Context;)Lzi/h;

    move-result-object p1

    const-string v0, "100888"

    invoke-virtual {p1, v0}, Lzi/h;->i(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Lri/e;

    invoke-direct {p1, p0}, Lri/e;-><init>(Lri/b;)V

    sget v0, Lri/b;->i:I

    invoke-direct {p0, p1, v0}, Lri/b;->o(Lzi/h$a;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private u(Lqi/c;)V
    .locals 1

    iget-object v0, p0, Lri/b;->h:Lsi/b;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lsi/f;->c(Lqi/d;)V

    invoke-direct {p0}, Lri/b;->q()I

    move-result p1

    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    invoke-direct {p0}, Lri/b;->y()V

    iget-object p1, p0, Lri/b;->d:Landroid/content/Context;

    invoke-static {p1}, Lzi/h;->f(Landroid/content/Context;)Lzi/h;

    move-result-object p1

    const-string v0, "100889"

    invoke-virtual {p1, v0}, Lzi/h;->i(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Lri/g;

    invoke-direct {p1, p0}, Lri/g;-><init>(Lri/b;)V

    sget v0, Lri/b;->i:I

    invoke-direct {p0, p1, v0}, Lri/b;->o(Lzi/h$a;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic v(Lri/b;)V
    .locals 0

    invoke-direct {p0}, Lri/b;->y()V

    return-void
.end method

.method private x()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lri/b;->g:Lsi/a;

    invoke-interface {v0}, Lsi/f;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "we: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lpi/c;->D(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private y()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lri/b;->h:Lsi/b;

    invoke-interface {v0}, Lsi/f;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lpi/c;->D(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private z()V
    .locals 7

    iget-object v0, p0, Lri/b;->d:Landroid/content/Context;

    invoke-static {v0}, Lri/b;->f(Landroid/content/Context;)Lri/b;

    move-result-object v0

    invoke-virtual {v0}, Lri/b;->d()Lqi/a;

    move-result-object v0

    invoke-virtual {v0}, Lqi/a;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lzi/z0;

    iget-object v1, p0, Lri/b;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lzi/z0;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lri/b;->d:Landroid/content/Context;

    invoke-static {v1}, Lri/b;->f(Landroid/content/Context;)Lri/b;

    move-result-object v1

    invoke-virtual {v1}, Lri/b;->d()Lqi/a;

    move-result-object v1

    invoke-virtual {v1}, Lqi/a;->c()J

    move-result-wide v1

    long-to-int v1, v1

    const/16 v2, 0x708

    if-ge v1, v2, :cond_1

    move v1, v2

    :cond_1
    iget-object v2, p0, Lri/b;->d:Landroid/content/Context;

    invoke-static {v2}, Lzi/g1;->c(Landroid/content/Context;)Lzi/g1;

    move-result-object v2

    const-string v3, "sp_client_report_status"

    const-string v4, "event_last_upload_time"

    const-wide/16 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lzi/g1;->a(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    mul-int/lit16 v2, v1, 0x3e8

    int-to-long v2, v2

    cmp-long v2, v4, v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lri/b;->d:Landroid/content/Context;

    invoke-static {v2}, Lzi/h;->f(Landroid/content/Context;)Lzi/h;

    move-result-object v2

    new-instance v3, Lri/i;

    invoke-direct {v3, p0, v0}, Lri/i;-><init>(Lri/b;Lzi/z0;)V

    const/16 v4, 0xa

    invoke-virtual {v2, v3, v4}, Lzi/h;->h(Ljava/lang/Runnable;I)V

    :cond_2
    const-class v2, Lri/b;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lri/b;->d:Landroid/content/Context;

    invoke-static {v3}, Lzi/h;->f(Landroid/content/Context;)Lzi/h;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lzi/h;->k(Lzi/h$a;I)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lri/b;->d:Landroid/content/Context;

    invoke-static {v3}, Lzi/h;->f(Landroid/content/Context;)Lzi/h;

    move-result-object v3

    const-string v4, "100886"

    invoke-virtual {v3, v4}, Lzi/h;->i(Ljava/lang/String;)Z

    iget-object v3, p0, Lri/b;->d:Landroid/content/Context;

    invoke-static {v3}, Lzi/h;->f(Landroid/content/Context;)Lzi/h;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lzi/h;->k(Lzi/h$a;I)Z

    :cond_3
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized d()Lqi/a;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lri/b;->e:Lqi/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lri/b;->d:Landroid/content/Context;

    invoke-static {v0}, Lqi/a;->a(Landroid/content/Context;)Lqi/a;

    move-result-object v0

    iput-object v0, p0, Lri/b;->e:Lqi/a;

    :cond_0
    iget-object v0, p0, Lri/b;->e:Lqi/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e(ILjava/lang/String;)Lqi/b;
    .locals 3

    new-instance v0, Lqi/b;

    invoke-direct {v0}, Lqi/b;-><init>()V

    iput-object p2, v0, Lqi/b;->k:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lqi/b;->j:J

    iput p1, v0, Lqi/b;->i:I

    const/4 p1, 0x6

    invoke-static {p1}, Lzi/q0;->a(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lqi/b;->h:Ljava/lang/String;

    const/16 p1, 0x3e8

    iput p1, v0, Lqi/d;->a:I

    const/16 p1, 0x3e9

    iput p1, v0, Lqi/d;->c:I

    const-string p1, "E100004"

    iput-object p1, v0, Lqi/d;->b:Ljava/lang/String;

    iget-object p1, p0, Lri/b;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lqi/d;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lri/b;->f:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lqi/d;->b(Ljava/lang/String;)V

    return-object v0
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lri/b;->d:Landroid/content/Context;

    invoke-static {v0}, Lri/b;->f(Landroid/content/Context;)Lri/b;

    move-result-object v0

    invoke-direct {v0}, Lri/b;->z()V

    iget-object v0, p0, Lri/b;->d:Landroid/content/Context;

    invoke-static {v0}, Lri/b;->f(Landroid/content/Context;)Lri/b;

    move-result-object v0

    invoke-direct {v0}, Lri/b;->A()V

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lri/b;->f:Ljava/lang/String;

    return-void
.end method

.method public i(Lqi/a;Lsi/a;Lsi/b;)V
    .locals 0

    iput-object p1, p0, Lri/b;->e:Lqi/a;

    iput-object p2, p0, Lri/b;->g:Lsi/a;

    iput-object p3, p0, Lri/b;->h:Lsi/b;

    iget-object p1, p0, Lri/b;->c:Ljava/util/HashMap;

    invoke-interface {p2, p1}, Lsi/a;->a(Ljava/util/HashMap;)V

    iget-object p1, p0, Lri/b;->h:Lsi/b;

    iget-object p2, p0, Lri/b;->b:Ljava/util/HashMap;

    invoke-interface {p1, p2}, Lsi/b;->b(Ljava/util/HashMap;)V

    return-void
.end method

.method public j(Lqi/b;)V
    .locals 2

    invoke-virtual {p0}, Lri/b;->d()Lqi/a;

    move-result-object v0

    invoke-virtual {v0}, Lqi/a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lri/b;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lri/c;

    invoke-direct {v1, p0, p1}, Lri/c;-><init>(Lri/b;Lqi/b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public k(Lqi/c;)V
    .locals 2

    invoke-virtual {p0}, Lri/b;->d()Lqi/a;

    move-result-object v0

    invoke-virtual {v0}, Lqi/a;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lri/b;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lri/d;

    invoke-direct {v1, p0, p1}, Lri/d;-><init>(Lri/b;Lqi/c;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public p(ZZJJ)V
    .locals 6

    iget-object v0, p0, Lri/b;->e:Lqi/a;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lqi/a;->g()Z

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lri/b;->e:Lqi/a;

    invoke-virtual {v0}, Lqi/a;->h()Z

    move-result v0

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lri/b;->e:Lqi/a;

    invoke-virtual {v0}, Lqi/a;->c()J

    move-result-wide v0

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lri/b;->e:Lqi/a;

    invoke-virtual {v0}, Lqi/a;->e()J

    move-result-wide v0

    cmp-long v0, p5, v0

    if-eqz v0, :cond_4

    :cond_0
    iget-object v0, p0, Lri/b;->e:Lqi/a;

    invoke-virtual {v0}, Lqi/a;->c()J

    move-result-wide v0

    iget-object v2, p0, Lri/b;->e:Lqi/a;

    invoke-virtual {v2}, Lqi/a;->e()J

    move-result-wide v2

    invoke-static {}, Lqi/a;->b()Lqi/a$a;

    move-result-object v4

    iget-object v5, p0, Lri/b;->d:Landroid/content/Context;

    invoke-static {v5}, Lzi/d1;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lqi/a$a;->i(Ljava/lang/String;)Lqi/a$a;

    move-result-object v4

    iget-object v5, p0, Lri/b;->e:Lqi/a;

    invoke-virtual {v5}, Lqi/a;->f()Z

    move-result v5

    invoke-virtual {v4, v5}, Lqi/a$a;->j(Z)Lqi/a$a;

    move-result-object v4

    invoke-virtual {v4, p1}, Lqi/a$a;->l(Z)Lqi/a$a;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Lqi/a$a;->k(J)Lqi/a$a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lqi/a$a;->o(Z)Lqi/a$a;

    move-result-object p1

    invoke-virtual {p1, p5, p6}, Lqi/a$a;->n(J)Lqi/a$a;

    move-result-object p1

    iget-object p2, p0, Lri/b;->d:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lqi/a$a;->h(Landroid/content/Context;)Lqi/a;

    move-result-object p1

    iput-object p1, p0, Lri/b;->e:Lqi/a;

    invoke-virtual {p1}, Lqi/a;->g()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lri/b;->d:Landroid/content/Context;

    invoke-static {p2}, Lzi/h;->f(Landroid/content/Context;)Lzi/h;

    move-result-object p2

    const-string p3, "100886"

    invoke-virtual {p2, p3}, Lzi/h;->i(Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lqi/a;->c()J

    move-result-wide p2

    cmp-long p2, v0, p2

    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lri/b;->d:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "reset event job "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lqi/a;->c()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lpi/c;->B(Ljava/lang/String;)V

    invoke-direct {p0}, Lri/b;->z()V

    :cond_2
    :goto_0
    iget-object p2, p0, Lri/b;->e:Lqi/a;

    invoke-virtual {p2}, Lqi/a;->h()Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p1, p0, Lri/b;->d:Landroid/content/Context;

    invoke-static {p1}, Lzi/h;->f(Landroid/content/Context;)Lzi/h;

    move-result-object p1

    const-string p2, "100887"

    invoke-virtual {p1, p2}, Lzi/h;->i(Ljava/lang/String;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lqi/a;->e()J

    move-result-wide p2

    cmp-long p2, v2, p2

    if-eqz p2, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lri/b;->d:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " reset perf job "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lqi/a;->e()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lpi/c;->B(Ljava/lang/String;)V

    invoke-direct {p0}, Lri/b;->A()V

    :cond_4
    :goto_1
    return-void
.end method

.method public s()V
    .locals 2

    invoke-virtual {p0}, Lri/b;->d()Lqi/a;

    move-result-object v0

    invoke-virtual {v0}, Lqi/a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lzi/b1;

    invoke-direct {v0}, Lzi/b1;-><init>()V

    iget-object v1, p0, Lri/b;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lzi/b1;->a(Landroid/content/Context;)V

    iget-object v1, p0, Lri/b;->g:Lsi/a;

    invoke-virtual {v0, v1}, Lzi/b1;->b(Lsi/e;)V

    iget-object v1, p0, Lri/b;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public w()V
    .locals 2

    invoke-virtual {p0}, Lri/b;->d()Lqi/a;

    move-result-object v0

    invoke-virtual {v0}, Lqi/a;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lzi/b1;

    invoke-direct {v0}, Lzi/b1;-><init>()V

    iget-object v1, p0, Lri/b;->h:Lsi/b;

    invoke-virtual {v0, v1}, Lzi/b1;->b(Lsi/e;)V

    iget-object v1, p0, Lri/b;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lzi/b1;->a(Landroid/content/Context;)V

    iget-object v1, p0, Lri/b;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
