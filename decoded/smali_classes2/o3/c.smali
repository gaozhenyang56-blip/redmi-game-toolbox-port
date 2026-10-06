.class public Lo3/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile i:Lo3/c;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lea/b;

.field private g:Lcom/miui/apppredict/bean/RespImpl;

.field private volatile h:Z


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    iput-object v0, p0, Lo3/c;->a:Landroid/content/Context;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lo3/c;->b:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lo3/c;->c:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lo3/c;->d:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lo3/c;->e:Ljava/util/List;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lea/c;->a(Landroid/content/Context;Landroid/content/res/Resources;Ljava/lang/String;)Lea/b;

    move-result-object v0

    iput-object v0, p0, Lo3/c;->f:Lea/b;

    invoke-static {}, Lcom/miui/apppredict/bean/RespImpl;->getInstance()Lcom/miui/apppredict/bean/RespImpl;

    move-result-object v0

    iput-object v0, p0, Lo3/c;->g:Lcom/miui/apppredict/bean/RespImpl;

    return-void
.end method

.method public static synthetic a(Lo3/c;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lo3/c;->k(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lo3/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lo3/c;->h:Z

    return p1
.end method

.method private d()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/mlkit/mobilerec/bean/PredictApp;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lp3/k;->c()Lp3/k;

    move-result-object v1

    invoke-virtual {v1}, Lp3/k;->b()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lo3/c;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/usage/UsageStats;

    invoke-virtual {v4}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-gtz v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lp3/l;->b()Lp3/l;

    move-result-object v5

    invoke-virtual {v5}, Lp3/l;->a()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v7

    const-wide/16 v4, 0xbb8

    add-long v9, v7, v4

    new-instance v4, Lcom/miui/mlkit/mobilerec/bean/PredictApp;

    move-object v5, v4

    invoke-direct/range {v5 .. v11}, Lcom/miui/mlkit/mobilerec/bean/PredictApp;-><init>(Ljava/lang/String;JJLjava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/mlkit/mobilerec/bean/PredictApp;

    invoke-virtual {v2}, Lcom/miui/mlkit/mobilerec/bean/PredictApp;->getPkg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/miui/mlkit/mobilerec/bean/PredictApp;->getPkg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static f()Lo3/c;
    .locals 2

    sget-object v0, Lo3/c;->i:Lo3/c;

    if-nez v0, :cond_1

    const-class v0, Lo3/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lo3/c;->i:Lo3/c;

    if-nez v1, :cond_0

    new-instance v1, Lo3/c;

    invoke-direct {v1}, Lo3/c;-><init>()V

    sput-object v1, Lo3/c;->i:Lo3/c;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lo3/c;->i:Lo3/c;

    return-object v0
.end method

.method private synthetic k(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lo3/c;->n(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lo3/c;->q(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lo3/c;->p(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lo3/c;->o(Ljava/lang/String;)V

    return-void
.end method

.method private n(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lo3/c;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/16 v0, 0x14

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, -0x64

    :goto_0
    invoke-static {p1}, Lp3/n;->b(I)V

    return-void
.end method

.method private o(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lo3/c;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/16 v0, 0x14

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, -0x64

    :goto_0
    invoke-static {p1}, Lp3/n;->c(I)V

    return-void
.end method

.method private p(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lo3/c;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/16 v0, 0x14

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, -0x64

    :goto_0
    invoke-static {p1}, Lp3/n;->d(I)V

    return-void
.end method

.method private q(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lo3/c;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/16 v0, 0x14

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, -0x64

    :goto_0
    invoke-static {p1}, Lp3/n;->a(I)V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lp3/i;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lp3/i;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    sget-object v1, Lp3/g;->b:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lo3/c;->a:Landroid/content/Context;

    invoke-static {v1}, Lp3/i;->g(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lo3/c;->g:Lcom/miui/apppredict/bean/RespImpl;

    iget-object v1, p0, Lo3/c;->a:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Lcom/miui/apppredict/bean/RespImpl;->saveTrainData(Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {}, Lp3/l;->b()Lp3/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lp3/l;->e(Ljava/lang/String;)V

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Lo3/a;

    invoke-direct {v1, p0, p1}, Lo3/a;-><init>(Lo3/c;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lef/z;->b(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ForegroundAppChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", ignore !"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppPredictManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public e(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lo3/c;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lo3/c;->e:Ljava/util/List;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lo3/c;->e:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public g(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lo3/c;->a:Landroid/content/Context;

    invoke-static {v1}, Lp3/i;->g(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lo3/c;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, p1, :cond_0

    :cond_2
    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo3/c;->f:Lea/b;

    invoke-interface {v0}, Lea/b;->g()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo3/c;->f:Lea/b;

    invoke-interface {v0}, Lea/b;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()V
    .locals 6

    iget-object v0, p0, Lo3/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lm3/b;->o(Landroid/content/Context;)Lm3/b;

    move-result-object v0

    invoke-virtual {v0}, Lm3/b;->J()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initModels size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppPredictManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lo3/c;->f:Lea/b;

    invoke-direct {p0}, Lo3/c;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lea/b;->c(Ljava/util/List;)V

    iput-boolean v2, p0, Lo3/c;->h:Z

    goto :goto_2

    :cond_0
    invoke-static {}, Lp3/l;->b()Lp3/l;

    move-result-object v1

    invoke-virtual {v1}, Lp3/l;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x5

    if-lez v1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-lez v1, :cond_1

    if-ltz v3, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/mlkit/mobilerec/bean/PredictApp;

    iget-object v5, v5, Lcom/miui/mlkit/mobilerec/bean/PredictApp;->mPkg:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_1
    if-ltz v1, :cond_2

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {}, Lp3/l;->b()Lp3/l;

    move-result-object v3

    invoke-virtual {v3, v2}, Lp3/l;->e(Ljava/lang/String;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lo3/c;->f:Lea/b;

    new-instance v2, Lo3/c$a;

    invoke-direct {v2, p0}, Lo3/c$a;-><init>(Lo3/c;)V

    invoke-interface {v1, v0, v2}, Lea/b;->e(Ljava/util/List;Lea/a;)V

    :goto_2
    iget-object v0, p0, Lo3/c;->f:Lea/b;

    iget-object v1, p0, Lo3/c;->a:Landroid/content/Context;

    invoke-static {v1}, Lp3/i;->g(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lea/b;->d(Ljava/util/List;)V

    return-void
.end method

.method public l()V
    .locals 6

    iget-boolean v0, p0, Lo3/c;->h:Z

    const-string v1, "AppPredictManager"

    if-eqz v0, :cond_3

    invoke-static {}, Lp3/l;->b()Lp3/l;

    move-result-object v0

    invoke-virtual {v0}, Lp3/l;->d()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {}, Lp3/l;->b()Lp3/l;

    move-result-object v0

    invoke-virtual {v0}, Lp3/l;->c()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "predict: recentApps size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lo3/c;->f:Lea/b;

    invoke-interface {v3, v0}, Lea/b;->a(Ljava/util/List;)Lcom/miui/mlkit/mobilerec/bean/ResultWithMetrics;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "predict has error, e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-nez v2, :cond_1

    const-string v0, "predict: result is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v2, Lcom/miui/mlkit/mobilerec/bean/ResultWithMetrics;->mnnapps:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lo3/c;->d:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v2, Lcom/miui/mlkit/mobilerec/bean/ResultWithMetrics;->bayesapps:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lo3/c;->b:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v2, Lcom/miui/mlkit/mobilerec/bean/ResultWithMetrics;->pbbapps:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lo3/c;->c:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v2, v2, Lcom/miui/mlkit/mobilerec/bean/ResultWithMetrics;->apps:Ljava/util/List;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lo3/c;->e:Ljava/util/List;

    sget-boolean v2, Luf/a;->a:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "predict: recentApps = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "predict: mLastPredictListMnn = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo3/c;->d:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "predict: mLastPredictListBayes = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo3/c;->b:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "predict: mLastPredictListPbb = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo3/c;->c:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "predict: mLastPredictListCommixture = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo3/c;->e:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :try_start_1
    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v2, Lo3/b;

    invoke-direct {v2}, Lo3/b;-><init>()V

    invoke-virtual {v0, v2}, Lef/z;->b(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "predict: updatePreferenceStore has error, e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_3
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "predict: mIsInitBayesAndPbb = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lo3/c;->h:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isAvailable = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lp3/l;->b()Lp3/l;

    move-result-object v2

    invoke-virtual {v2}, Lp3/l;->d()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public m()V
    .locals 2

    iget-object v0, p0, Lo3/c;->g:Lcom/miui/apppredict/bean/RespImpl;

    iget-object v1, p0, Lo3/c;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/miui/apppredict/bean/RespImpl;->removeOldData(Landroid/content/Context;)V

    return-void
.end method

.method public r(Lcom/miui/mlkit/mobilerec/bean/TrainPlanBean;)V
    .locals 3

    iget-object v0, p0, Lo3/c;->g:Lcom/miui/apppredict/bean/RespImpl;

    iget-object v1, p0, Lo3/c;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/miui/apppredict/bean/RespImpl;->getTrainData(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lo3/c;->f:Lea/b;

    new-instance v2, Lo3/c$b;

    invoke-direct {v2, p0}, Lo3/c$b;-><init>(Lo3/c;)V

    invoke-interface {v1, v0, p1, v2}, Lea/b;->f(Ljava/util/List;Lcom/miui/mlkit/mobilerec/bean/TrainPlanBean;Lea/a;)V

    return-void
.end method
