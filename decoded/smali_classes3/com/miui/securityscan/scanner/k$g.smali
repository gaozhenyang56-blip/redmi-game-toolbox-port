.class Lcom/miui/securityscan/scanner/k$g;
.super Lcom/miui/securityscan/scanner/d$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/scanner/k;->t(Lrf/c;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrf/c;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/miui/securityscan/scanner/k;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/scanner/k;Lrf/c;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/scanner/k$g;->c:Lcom/miui/securityscan/scanner/k;

    iput-object p2, p0, Lcom/miui/securityscan/scanner/k$g;->a:Lrf/c;

    iput-object p3, p0, Lcom/miui/securityscan/scanner/k$g;->b:Ljava/util/List;

    invoke-direct {p0}, Lcom/miui/securityscan/scanner/d$c;-><init>()V

    return-void
.end method


# virtual methods
.method public i()V
    .locals 2

    invoke-super {p0}, Lcom/miui/securityscan/scanner/d$c;->i()V

    const-string v0, "SecurityManager"

    const-string v1, "startOptimizeMemoryAfterScanMemory onFinishCleanup() callback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/securityscan/scanner/k$g;->c:Lcom/miui/securityscan/scanner/k;

    invoke-static {v0}, Lcom/miui/securityscan/scanner/k;->g(Lcom/miui/securityscan/scanner/k;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/securityscan/scanner/k$g$a;

    invoke-direct {v1, p0}, Lcom/miui/securityscan/scanner/k$g$a;-><init>(Lcom/miui/securityscan/scanner/k$g;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public v()V
    .locals 0

    invoke-super {p0}, Lcom/miui/securityscan/scanner/d$c;->v()V

    return-void
.end method
