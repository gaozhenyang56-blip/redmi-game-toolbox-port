.class Lcom/miui/securityscan/scanner/k$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrf/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/securityscan/scanner/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "o"
.end annotation


# instance fields
.field private final a:Z

.field private final b:Lrf/c;

.field private final c:Lcom/miui/securityscan/scanner/k$m;

.field private final d:Lcom/miui/securityscan/scanner/k$k;

.field private final e:J

.field private final f:Ljava/lang/String;

.field final synthetic g:Lcom/miui/securityscan/scanner/k;


# direct methods
.method public constructor <init>(Lcom/miui/securityscan/scanner/k;ZLrf/c;Lcom/miui/securityscan/scanner/k$m;Lcom/miui/securityscan/scanner/k$k;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/scanner/k$o;->g:Lcom/miui/securityscan/scanner/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/miui/securityscan/scanner/k$o;->a:Z

    iput-object p3, p0, Lcom/miui/securityscan/scanner/k$o;->b:Lrf/c;

    iput-object p4, p0, Lcom/miui/securityscan/scanner/k$o;->c:Lcom/miui/securityscan/scanner/k$m;

    iput-object p5, p0, Lcom/miui/securityscan/scanner/k$o;->d:Lcom/miui/securityscan/scanner/k$k;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    iput-wide p3, p0, Lcom/miui/securityscan/scanner/k$o;->e:J

    if-eqz p2, :cond_0

    const-string p1, "incremental_scan_bg"

    invoke-virtual {p6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "pre_scan"

    iput-object p1, p0, Lcom/miui/securityscan/scanner/k$o;->f:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p6, p0, Lcom/miui/securityscan/scanner/k$o;->f:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public static synthetic f(Lcom/miui/securityscan/scanner/k$o;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/securityscan/scanner/k$o;->g(I)V

    return-void
.end method

.method private synthetic g(I)V
    .locals 8

    const/16 v0, 0xa

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Lcom/miui/securityscan/scanner/k$o;->g:Lcom/miui/securityscan/scanner/k;

    invoke-static {p1}, Lcom/miui/securityscan/scanner/k;->f(Lcom/miui/securityscan/scanner/k;)Lcom/miui/securityscan/scanner/ScoreManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/securityscan/scanner/ScoreManager;->T()V

    iget-object p1, p0, Lcom/miui/securityscan/scanner/k$o;->g:Lcom/miui/securityscan/scanner/k;

    invoke-static {p1}, Lcom/miui/securityscan/scanner/k;->f(Lcom/miui/securityscan/scanner/k;)Lcom/miui/securityscan/scanner/ScoreManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/securityscan/scanner/ScoreManager;->M()V

    iget-boolean p1, p0, Lcom/miui/securityscan/scanner/k$o;->a:Z

    if-eqz p1, :cond_1

    :try_start_0
    iget-object p1, p0, Lcom/miui/securityscan/scanner/k$o;->g:Lcom/miui/securityscan/scanner/k;

    invoke-static {p1}, Lcom/miui/securityscan/scanner/k;->d(Lcom/miui/securityscan/scanner/k;)Lcom/miui/securityscan/scanner/b;

    move-result-object p1

    sget-object v0, Lzf/g;->c:Lzf/g;

    new-instance v1, Lcom/miui/securityscan/scanner/a;

    sget-object v2, Lcom/miui/securityscan/scanner/k$n;->b:Lcom/miui/securityscan/scanner/k$n;

    invoke-direct {v1, v2}, Lcom/miui/securityscan/scanner/a;-><init>(Lcom/miui/securityscan/scanner/k$n;)V

    invoke-virtual {p1, v0, v1}, Lcom/miui/securityscan/scanner/b;->c(Lzf/g;Lcom/miui/securityscan/scanner/a;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/k$o;->c:Lcom/miui/securityscan/scanner/k$m;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/miui/securityscan/scanner/k$m;->d()V

    :cond_0
    const-string v0, "SecurityManager"

    const-string v1, "startScanSystemApps onFinishScan()  InterruptedException"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    :cond_1
    iget-object p1, p0, Lcom/miui/securityscan/scanner/k$o;->g:Lcom/miui/securityscan/scanner/k;

    invoke-static {p1}, Lcom/miui/securityscan/scanner/k;->f(Lcom/miui/securityscan/scanner/k;)Lcom/miui/securityscan/scanner/ScoreManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/securityscan/scanner/ScoreManager;->r()Ljava/util/List;

    move-result-object p1

    invoke-static {}, Lcom/miui/securityscan/scanner/ScoreManager;->j()Lcom/miui/securityscan/scanner/ScoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/ScoreManager;->z()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/securityscan/scanner/k$o;->g:Lcom/miui/securityscan/scanner/k;

    invoke-static {v1}, Lcom/miui/securityscan/scanner/k;->f(Lcom/miui/securityscan/scanner/k;)Lcom/miui/securityscan/scanner/ScoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/securityscan/scanner/ScoreManager;->l()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/securityscan/model/GroupModel;

    invoke-virtual {v4}, Lcom/miui/securityscan/model/GroupModel;->getModelList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/securityscan/model/AbsModel;

    instance-of v7, v6, Lcom/miui/securityscan/model/system/VirusScanModel;

    if-eqz v7, :cond_3

    move-object v2, v4

    move-object v3, v6

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    if-eqz v2, :cond_6

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Lcom/miui/securityscan/model/GroupModel;->getModelList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    if-nez v2, :cond_6

    if-nez v3, :cond_6

    new-instance v0, Lcom/miui/securityscan/model/GroupModel;

    invoke-direct {v0}, Lcom/miui/securityscan/model/GroupModel;-><init>()V

    new-instance v1, Lcom/miui/securityscan/model/system/VirusScanModel;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "VIRUS"

    invoke-direct {v1, v4, v3}, Lcom/miui/securityscan/model/system/VirusScanModel;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/model/GroupModel;->addModel(Lcom/miui/securityscan/model/AbsModel;)Z

    invoke-virtual {v0}, Lcom/miui/securityscan/model/GroupModel;->scan()V

    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/miui/securityscan/scanner/k$o;->g:Lcom/miui/securityscan/scanner/k;

    invoke-static {v3}, Lcom/miui/securityscan/scanner/k;->f(Lcom/miui/securityscan/scanner/k;)Lcom/miui/securityscan/scanner/ScoreManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/securityscan/scanner/ScoreManager;->l()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/securityscan/scanner/k$o;->g:Lcom/miui/securityscan/scanner/k;

    invoke-static {v0}, Lcom/miui/securityscan/scanner/k;->f(Lcom/miui/securityscan/scanner/k;)Lcom/miui/securityscan/scanner/ScoreManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/scanner/ScoreManager;->J(Ljava/util/List;)V

    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/miui/securityscan/scanner/k$o;->g:Lcom/miui/securityscan/scanner/k;

    iget-object v1, p0, Lcom/miui/securityscan/scanner/k$o;->b:Lrf/c;

    iget-object v2, p0, Lcom/miui/securityscan/scanner/k$o;->d:Lcom/miui/securityscan/scanner/k$k;

    invoke-static {v0, v1, p1, v2}, Lcom/miui/securityscan/scanner/k;->c(Lcom/miui/securityscan/scanner/k;Lrf/c;Ljava/util/List;Lcom/miui/securityscan/scanner/k$k;)V

    :goto_2
    iget-object p1, p0, Lcom/miui/securityscan/scanner/k$o;->f:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/securityscan/scanner/k$o;->e:J

    sub-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Lqf/c;->Q0(Ljava/lang/String;J)V

    :cond_7
    return-void
.end method


# virtual methods
.method public a(IILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/scanner/k$o;->g:Lcom/miui/securityscan/scanner/k;

    invoke-static {v0}, Lcom/miui/securityscan/scanner/k;->a(Lcom/miui/securityscan/scanner/k;)Z

    move-result v0

    if-nez v0, :cond_3

    instance-of v0, p3, Lcom/miui/antivirus/model/i;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/securityscan/scanner/k$o;->g:Lcom/miui/securityscan/scanner/k;

    invoke-static {v0}, Lcom/miui/securityscan/scanner/k;->f(Lcom/miui/securityscan/scanner/k;)Lcom/miui/securityscan/scanner/ScoreManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/miui/securityscan/scanner/ScoreManager;->L(I)V

    check-cast p3, Lcom/miui/antivirus/model/i;

    invoke-virtual {p3}, Lcom/miui/antivirus/model/i;->g()Lo2/b$d;

    move-result-object v0

    sget-object v1, Lo2/b$d;->a:Lo2/b$d;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/scanner/k$o;->g:Lcom/miui/securityscan/scanner/k;

    invoke-static {v0}, Lcom/miui/securityscan/scanner/k;->f(Lcom/miui/securityscan/scanner/k;)Lcom/miui/securityscan/scanner/ScoreManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/miui/securityscan/scanner/ScoreManager;->c(Lcom/miui/antivirus/model/i;)V

    :cond_0
    new-instance v0, Lcom/miui/securityscan/scanner/a;

    invoke-virtual {p3}, Lcom/miui/antivirus/model/i;->b()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p1, p2, p3}, Lcom/miui/securityscan/scanner/a;-><init>(IILjava/lang/String;)V

    iget-boolean p1, p0, Lcom/miui/securityscan/scanner/k$o;->a:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/securityscan/scanner/k$o;->g:Lcom/miui/securityscan/scanner/k;

    invoke-static {p1}, Lcom/miui/securityscan/scanner/k;->d(Lcom/miui/securityscan/scanner/k;)Lcom/miui/securityscan/scanner/b;

    move-result-object p1

    sget-object p2, Lzf/g;->c:Lzf/g;

    invoke-virtual {p1, p2, v0}, Lcom/miui/securityscan/scanner/b;->c(Lzf/g;Lcom/miui/securityscan/scanner/a;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/securityscan/scanner/k$o;->g:Lcom/miui/securityscan/scanner/k;

    invoke-static {p1}, Lcom/miui/securityscan/scanner/k;->e(Lcom/miui/securityscan/scanner/k;)Lcom/miui/securityscan/scanner/g;

    move-result-object p1

    sget-object p2, Lzf/d;->e:Lzf/d;

    invoke-virtual {p1, p2, v0}, Lcom/miui/securityscan/scanner/g;->c(Lzf/d;Lcom/miui/securityscan/scanner/a;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public c(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/securityscan/model/GroupModel;",
            ">;I)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "startScanSystemApps =============> onFinishScan  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SecurityManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/securityscan/scanner/k$o;->g:Lcom/miui/securityscan/scanner/k;

    invoke-static {p1}, Lcom/miui/securityscan/scanner/k;->g(Lcom/miui/securityscan/scanner/k;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/miui/securityscan/scanner/l;

    invoke-direct {v0, p0, p2}, Lcom/miui/securityscan/scanner/l;-><init>(Lcom/miui/securityscan/scanner/k$o;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public d()V
    .locals 3

    const-string v0, "SecurityManager"

    const-string v1, "startScanSystemApps -------------> onStartScan "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/securityscan/scanner/k$o;->f:Ljava/lang/String;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lqf/c;->Q0(Ljava/lang/String;J)V

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/k$o;->c:Lcom/miui/securityscan/scanner/k$m;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/miui/securityscan/scanner/k$m;->d()V

    :cond_0
    return-void
.end method
