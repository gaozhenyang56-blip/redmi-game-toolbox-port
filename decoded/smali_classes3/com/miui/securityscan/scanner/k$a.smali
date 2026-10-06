.class Lcom/miui/securityscan/scanner/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrf/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/scanner/k;->x(ZLcom/miui/securityscan/scanner/k$m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/miui/securityscan/scanner/k$m;

.field final synthetic c:Lcom/miui/securityscan/scanner/k;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/scanner/k;ZLcom/miui/securityscan/scanner/k$m;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/scanner/k$a;->c:Lcom/miui/securityscan/scanner/k;

    iput-boolean p2, p0, Lcom/miui/securityscan/scanner/k$a;->a:Z

    iput-object p3, p0, Lcom/miui/securityscan/scanner/k$a;->b:Lcom/miui/securityscan/scanner/k$m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IILjava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/securityscan/scanner/k$a;->c:Lcom/miui/securityscan/scanner/k;

    invoke-static {v0}, Lcom/miui/securityscan/scanner/k;->a(Lcom/miui/securityscan/scanner/k;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p3, :cond_1

    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p3, Ljava/lang/String;

    iget-boolean v0, p0, Lcom/miui/securityscan/scanner/k$a;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/scanner/k$a;->c:Lcom/miui/securityscan/scanner/k;

    invoke-static {v0}, Lcom/miui/securityscan/scanner/k;->d(Lcom/miui/securityscan/scanner/k;)Lcom/miui/securityscan/scanner/b;

    move-result-object v0

    sget-object v1, Lzf/g;->b:Lzf/g;

    new-instance v2, Lcom/miui/securityscan/scanner/a;

    invoke-direct {v2, p1, p2, p3}, Lcom/miui/securityscan/scanner/a;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/securityscan/scanner/b;->c(Lzf/g;Lcom/miui/securityscan/scanner/a;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/securityscan/scanner/k$a;->c:Lcom/miui/securityscan/scanner/k;

    invoke-static {v0}, Lcom/miui/securityscan/scanner/k;->e(Lcom/miui/securityscan/scanner/k;)Lcom/miui/securityscan/scanner/g;

    move-result-object v0

    sget-object v1, Lzf/d;->c:Lzf/d;

    new-instance v2, Lcom/miui/securityscan/scanner/a;

    invoke-direct {v2, p1, p2, p3}, Lcom/miui/securityscan/scanner/a;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/securityscan/scanner/g;->c(Lzf/d;Lcom/miui/securityscan/scanner/a;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
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

    const-string v0, "SecurityManager"

    const-string v1, "startScanAutoItem =============> onFinishScan"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/securityscan/scanner/k$a;->c:Lcom/miui/securityscan/scanner/k;

    invoke-static {v0}, Lcom/miui/securityscan/scanner/k;->g(Lcom/miui/securityscan/scanner/k;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/securityscan/scanner/k$a$a;

    invoke-direct {v1, p0, p2, p1}, Lcom/miui/securityscan/scanner/k$a$a;-><init>(Lcom/miui/securityscan/scanner/k$a;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public d()V
    .locals 2

    const-string v0, "SecurityManager"

    const-string v1, "startScanAutoItem -------------> onStartScan"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public e()V
    .locals 2

    const-string v0, "SecurityManager"

    const-string v1, "startScanAutoItem onInterrupted()  "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/securityscan/scanner/k$a;->b:Lcom/miui/securityscan/scanner/k$m;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/miui/securityscan/scanner/k$m;->d()V

    :cond_0
    return-void
.end method
