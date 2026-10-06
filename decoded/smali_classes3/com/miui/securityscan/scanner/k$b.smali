.class Lcom/miui/securityscan/scanner/k$b;
.super Lcom/miui/securityscan/scanner/d$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/scanner/k;->B(ZLrf/c;Lcom/miui/securityscan/scanner/k$m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/miui/securityscan/scanner/k$m;

.field final synthetic c:Lrf/c;

.field final synthetic d:Lcom/miui/securityscan/scanner/k;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/scanner/k;ZLcom/miui/securityscan/scanner/k$m;Lrf/c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/scanner/k$b;->d:Lcom/miui/securityscan/scanner/k;

    iput-boolean p2, p0, Lcom/miui/securityscan/scanner/k$b;->a:Z

    iput-object p3, p0, Lcom/miui/securityscan/scanner/k$b;->b:Lcom/miui/securityscan/scanner/k$m;

    iput-object p4, p0, Lcom/miui/securityscan/scanner/k$b;->c:Lrf/c;

    invoke-direct {p0}, Lcom/miui/securityscan/scanner/d$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkf/c;",
            ">;)V"
        }
    .end annotation

    const-string v0, "SecurityManager"

    const-string v1, "startScanMemoryItem =============> onFinishScan"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/securityscan/scanner/k$b;->d:Lcom/miui/securityscan/scanner/k;

    invoke-static {v0}, Lcom/miui/securityscan/scanner/k;->g(Lcom/miui/securityscan/scanner/k;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/securityscan/scanner/k$b$a;

    invoke-direct {v1, p0, p1}, Lcom/miui/securityscan/scanner/k$b$a;-><init>(Lcom/miui/securityscan/scanner/k$b;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public d()V
    .locals 8

    const-string v0, "SecurityManager"

    const-string v1, "startScanMemoryItem -------------> onStartScan"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/miui/securityscan/scanner/k$b;->a:Z

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/miui/securityscan/scanner/k$b;->d:Lcom/miui/securityscan/scanner/k;

    invoke-static {v1}, Lcom/miui/securityscan/scanner/k;->h(Lcom/miui/securityscan/scanner/k;)Li4/a;

    move-result-object v1

    invoke-virtual {v1}, Li4/a;->j()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/miui/securityscan/scanner/k$b;->d:Lcom/miui/securityscan/scanner/k;

    invoke-static {v3}, Lcom/miui/securityscan/scanner/k;->i(Lcom/miui/securityscan/scanner/k;)Landroid/content/Context;

    move-result-object v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Lx4/f1;->O(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/securityscan/scanner/k$b;->d:Lcom/miui/securityscan/scanner/k;

    invoke-static {v4}, Lcom/miui/securityscan/scanner/k;->d(Lcom/miui/securityscan/scanner/k;)Lcom/miui/securityscan/scanner/b;

    move-result-object v4

    sget-object v5, Lzf/g;->d:Lzf/g;

    new-instance v6, Lcom/miui/securityscan/scanner/a;

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v2, v7, v3}, Lcom/miui/securityscan/scanner/a;-><init>(IILjava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Lcom/miui/securityscan/scanner/b;->c(Lzf/g;Lcom/miui/securityscan/scanner/a;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/miui/securityscan/scanner/k$b;->b:Lcom/miui/securityscan/scanner/k$m;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/miui/securityscan/scanner/k$m;->d()V

    :cond_0
    const-string v2, "startScanMemoryItem onStartScan() callback InterruptedException"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method public m()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/k$b;->d:Lcom/miui/securityscan/scanner/k;

    invoke-static {v0}, Lcom/miui/securityscan/scanner/k;->a(Lcom/miui/securityscan/scanner/k;)Z

    move-result v0

    return v0
.end method
