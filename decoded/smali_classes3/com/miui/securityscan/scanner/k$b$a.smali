.class Lcom/miui/securityscan/scanner/k$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/scanner/k$b;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/miui/securityscan/scanner/k$b;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/scanner/k$b;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/scanner/k$b$a;->b:Lcom/miui/securityscan/scanner/k$b;

    iput-object p2, p0, Lcom/miui/securityscan/scanner/k$b$a;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/securityscan/scanner/k$b$a;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkf/c;

    invoke-virtual {v1}, Lkf/c;->a()Landroid/util/SparseBooleanArray;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lkf/c;->h(Z)V

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v3}, Lkf/c;->h(Z)V

    :goto_1
    iget-object v2, p0, Lcom/miui/securityscan/scanner/k$b$a;->b:Lcom/miui/securityscan/scanner/k$b;

    iget-object v2, v2, Lcom/miui/securityscan/scanner/k$b;->d:Lcom/miui/securityscan/scanner/k;

    invoke-static {v2}, Lcom/miui/securityscan/scanner/k;->f(Lcom/miui/securityscan/scanner/k;)Lcom/miui/securityscan/scanner/ScoreManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/miui/securityscan/scanner/ScoreManager;->b(Lkf/c;)V

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/miui/securityscan/scanner/k$b$a;->b:Lcom/miui/securityscan/scanner/k$b;

    iget-object v0, v0, Lcom/miui/securityscan/scanner/k$b;->d:Lcom/miui/securityscan/scanner/k;

    invoke-static {v0}, Lcom/miui/securityscan/scanner/k;->f(Lcom/miui/securityscan/scanner/k;)Lcom/miui/securityscan/scanner/ScoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/ScoreManager;->G()V

    iget-object v0, p0, Lcom/miui/securityscan/scanner/k$b$a;->b:Lcom/miui/securityscan/scanner/k$b;

    iget-boolean v1, v0, Lcom/miui/securityscan/scanner/k$b;->a:Z

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/miui/securityscan/scanner/k$b;->d:Lcom/miui/securityscan/scanner/k;

    iget-object v0, v0, Lcom/miui/securityscan/scanner/k$b;->c:Lrf/c;

    invoke-static {v1}, Lcom/miui/securityscan/scanner/k;->f(Lcom/miui/securityscan/scanner/k;)Lcom/miui/securityscan/scanner/ScoreManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/securityscan/scanner/ScoreManager;->m()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/miui/securityscan/scanner/k;->j(Lcom/miui/securityscan/scanner/k;Lrf/c;Ljava/util/List;)V

    goto :goto_2

    :cond_2
    iget-object v0, v0, Lcom/miui/securityscan/scanner/k$b;->d:Lcom/miui/securityscan/scanner/k;

    invoke-static {v0}, Lcom/miui/securityscan/scanner/k;->d(Lcom/miui/securityscan/scanner/k;)Lcom/miui/securityscan/scanner/b;

    move-result-object v0

    sget-object v1, Lzf/g;->d:Lzf/g;

    new-instance v2, Lcom/miui/securityscan/scanner/a;

    sget-object v3, Lcom/miui/securityscan/scanner/k$n;->b:Lcom/miui/securityscan/scanner/k$n;

    invoke-direct {v2, v3}, Lcom/miui/securityscan/scanner/a;-><init>(Lcom/miui/securityscan/scanner/k$n;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/securityscan/scanner/b;->c(Lzf/g;Lcom/miui/securityscan/scanner/a;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/miui/securityscan/scanner/k$b$a;->b:Lcom/miui/securityscan/scanner/k$b;

    iget-object v1, v1, Lcom/miui/securityscan/scanner/k$b;->b:Lcom/miui/securityscan/scanner/k$m;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/miui/securityscan/scanner/k$m;->d()V

    :cond_3
    const-string v1, "SecurityManager"

    const-string v2, "startScanMemoryItem onFinishScan() callback InterruptedException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method
