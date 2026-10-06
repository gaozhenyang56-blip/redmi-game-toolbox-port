.class Lcom/miui/securityscan/scanner/k$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrf/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/scanner/k;->A(ZLrf/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrf/i;

.field final synthetic b:Z

.field final synthetic c:Lcom/miui/securityscan/scanner/k;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/scanner/k;Lrf/i;Z)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/scanner/k$e;->c:Lcom/miui/securityscan/scanner/k;

    iput-object p2, p0, Lcom/miui/securityscan/scanner/k$e;->a:Lrf/i;

    iput-boolean p3, p0, Lcom/miui/securityscan/scanner/k$e;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IILjava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/securityscan/scanner/k$e;->c:Lcom/miui/securityscan/scanner/k;

    invoke-static {v0}, Lcom/miui/securityscan/scanner/k;->a(Lcom/miui/securityscan/scanner/k;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p3, Ljava/lang/String;

    iget-boolean v0, p0, Lcom/miui/securityscan/scanner/k$e;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/scanner/k$e;->c:Lcom/miui/securityscan/scanner/k;

    invoke-static {v0}, Lcom/miui/securityscan/scanner/k;->d(Lcom/miui/securityscan/scanner/k;)Lcom/miui/securityscan/scanner/b;

    move-result-object v0

    sget-object v1, Lzf/g;->a:Lzf/g;

    new-instance v2, Lcom/miui/securityscan/scanner/a;

    invoke-direct {v2, p1, p2, p3}, Lcom/miui/securityscan/scanner/a;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/securityscan/scanner/b;->c(Lzf/g;Lcom/miui/securityscan/scanner/a;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public c(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/securityscan/model/GroupModel;",
            ">;I)V"
        }
    .end annotation

    const-string p2, "SecurityManager"

    const-string v0, "startScanManualItem =============> onFinishScan"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/miui/securityscan/scanner/k$e;->c:Lcom/miui/securityscan/scanner/k;

    invoke-static {p2}, Lcom/miui/securityscan/scanner/k;->f(Lcom/miui/securityscan/scanner/k;)Lcom/miui/securityscan/scanner/ScoreManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/miui/securityscan/scanner/ScoreManager;->J(Ljava/util/List;)V

    :cond_0
    :try_start_0
    iget-boolean p1, p0, Lcom/miui/securityscan/scanner/k$e;->b:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/securityscan/scanner/k$e;->c:Lcom/miui/securityscan/scanner/k;

    invoke-static {p1}, Lcom/miui/securityscan/scanner/k;->d(Lcom/miui/securityscan/scanner/k;)Lcom/miui/securityscan/scanner/b;

    move-result-object p1

    sget-object p2, Lzf/g;->a:Lzf/g;

    new-instance v0, Lcom/miui/securityscan/scanner/a;

    sget-object v1, Lcom/miui/securityscan/scanner/k$n;->b:Lcom/miui/securityscan/scanner/k$n;

    invoke-direct {v0, v1}, Lcom/miui/securityscan/scanner/a;-><init>(Lcom/miui/securityscan/scanner/k$n;)V

    invoke-virtual {p1, p2, v0}, Lcom/miui/securityscan/scanner/b;->c(Lzf/g;Lcom/miui/securityscan/scanner/a;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p1, p0, Lcom/miui/securityscan/scanner/k$e;->a:Lrf/i;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lrf/i;->i()V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/miui/securityscan/scanner/k$e;->a:Lrf/i;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lrf/i;->h()V

    :cond_2
    return-void
.end method

.method public d()V
    .locals 2

    const-string v0, "SecurityManager"

    const-string v1, "startScanManualItem -------------> onStartScan"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/securityscan/scanner/k$e;->a:Lrf/i;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lrf/i;->b()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    const-string v0, "SecurityManager"

    const-string v1, "startScanManualItem =============> onInterrupted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/securityscan/scanner/k$e;->a:Lrf/i;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lrf/i;->i()V

    :cond_0
    return-void
.end method
