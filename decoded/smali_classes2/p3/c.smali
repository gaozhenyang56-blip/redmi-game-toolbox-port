.class public Lp3/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile b:Lp3/c;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp3/c;->a:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lp3/c;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lp3/c;->f(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lp3/c;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lp3/c;->g(Ljava/lang/String;)V

    return-void
.end method

.method public static d(Landroid/content/Context;)Lp3/c;
    .locals 2

    sget-object v0, Lp3/c;->b:Lp3/c;

    if-nez v0, :cond_1

    const-class v0, Lp3/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lp3/c;->b:Lp3/c;

    if-nez v1, :cond_0

    new-instance v1, Lp3/c;

    invoke-direct {v1, p0}, Lp3/c;-><init>(Landroid/content/Context;)V

    sput-object v1, Lp3/c;->b:Lp3/c;

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
    sget-object p0, Lp3/c;->b:Lp3/c;

    return-object p0
.end method

.method private synthetic f(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lef/x;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    invoke-static {v0}, Lef/x;->M(Ljava/util/ArrayList;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "label = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " register"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AiSpHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    const-string p1, "ai open"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    invoke-static {p1}, Lef/x;->L(Z)V

    :cond_1
    iget-object p1, p0, Lp3/c;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/apppredict/service/AppPredictService;->w(Landroid/content/Context;)V

    :cond_2
    return-void
.end method

.method private synthetic g(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lef/x;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v1, :cond_0

    invoke-static {v0}, Lef/x;->M(Ljava/util/ArrayList;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "label = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " unregister"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AiSpHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_0

    const-string p1, "ai close"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lp3/c;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/apppredict/service/AppPredictService;->y(Landroid/content/Context;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Lp3/a;

    invoke-direct {v1, p0, p1}, Lp3/a;-><init>(Lp3/c;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lef/z;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e(Ljava/lang/String;)Z
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-static {}, Lef/x;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public h(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Lp3/b;

    invoke-direct {v1, p0, p1}, Lp3/b;-><init>(Lp3/c;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lef/z;->b(Ljava/lang/Runnable;)V

    return-void
.end method
