.class Lcom/miui/securityscan/scanner/k$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/scanner/k$a;->c(Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/miui/securityscan/scanner/k$a;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/scanner/k$a;ILjava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/scanner/k$a$a;->c:Lcom/miui/securityscan/scanner/k$a;

    iput p2, p0, Lcom/miui/securityscan/scanner/k$a$a;->a:I

    iput-object p3, p0, Lcom/miui/securityscan/scanner/k$a$a;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget v0, p0, Lcom/miui/securityscan/scanner/k$a$a;->a:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/securityscan/scanner/k$a$a;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/k$a$a;->c:Lcom/miui/securityscan/scanner/k$a;

    iget-object v0, v0, Lcom/miui/securityscan/scanner/k$a;->c:Lcom/miui/securityscan/scanner/k;

    invoke-static {v0}, Lcom/miui/securityscan/scanner/k;->f(Lcom/miui/securityscan/scanner/k;)Lcom/miui/securityscan/scanner/ScoreManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securityscan/scanner/k$a$a;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/scanner/ScoreManager;->K(Ljava/util/List;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/securityscan/scanner/k$a$a;->c:Lcom/miui/securityscan/scanner/k$a;

    iget-boolean v1, v0, Lcom/miui/securityscan/scanner/k$a;->a:Z

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/miui/securityscan/scanner/k$a;->c:Lcom/miui/securityscan/scanner/k;

    invoke-static {v0}, Lcom/miui/securityscan/scanner/k;->d(Lcom/miui/securityscan/scanner/k;)Lcom/miui/securityscan/scanner/b;

    move-result-object v0

    sget-object v1, Lzf/g;->b:Lzf/g;

    new-instance v2, Lcom/miui/securityscan/scanner/a;

    sget-object v3, Lcom/miui/securityscan/scanner/k$n;->b:Lcom/miui/securityscan/scanner/k$n;

    invoke-direct {v2, v3}, Lcom/miui/securityscan/scanner/a;-><init>(Lcom/miui/securityscan/scanner/k$n;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/securityscan/scanner/b;->c(Lzf/g;Lcom/miui/securityscan/scanner/a;)V

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lcom/miui/securityscan/scanner/k$a;->c:Lcom/miui/securityscan/scanner/k;

    invoke-static {v0}, Lcom/miui/securityscan/scanner/k;->e(Lcom/miui/securityscan/scanner/k;)Lcom/miui/securityscan/scanner/g;

    move-result-object v0

    sget-object v1, Lzf/d;->c:Lzf/d;

    new-instance v2, Lcom/miui/securityscan/scanner/a;

    sget-object v3, Lcom/miui/securityscan/scanner/k$n;->b:Lcom/miui/securityscan/scanner/k$n;

    invoke-direct {v2, v3}, Lcom/miui/securityscan/scanner/a;-><init>(Lcom/miui/securityscan/scanner/k$n;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/securityscan/scanner/g;->c(Lzf/d;Lcom/miui/securityscan/scanner/a;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/miui/securityscan/scanner/k$a$a;->c:Lcom/miui/securityscan/scanner/k$a;

    iget-object v1, v1, Lcom/miui/securityscan/scanner/k$a;->b:Lcom/miui/securityscan/scanner/k$m;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/miui/securityscan/scanner/k$m;->d()V

    :cond_3
    const-string v1, "SecurityManager"

    const-string v2, "startScanAutoItem onFinishScan()  InterruptedException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
