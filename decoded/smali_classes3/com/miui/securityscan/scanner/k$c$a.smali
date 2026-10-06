.class Lcom/miui/securityscan/scanner/k$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/scanner/k$c;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/securityscan/scanner/k$c;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/scanner/k$c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/scanner/k$c$a;->a:Lcom/miui/securityscan/scanner/k$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/securityscan/scanner/k$c$a;->a:Lcom/miui/securityscan/scanner/k$c;

    iget-object v0, v0, Lcom/miui/securityscan/scanner/k$c;->k:Lcom/miui/securityscan/scanner/k;

    invoke-static {v0}, Lcom/miui/securityscan/scanner/k;->k(Lcom/miui/securityscan/scanner/k;)V

    iget-object v0, p0, Lcom/miui/securityscan/scanner/k$c$a;->a:Lcom/miui/securityscan/scanner/k$c;

    iget-object v0, v0, Lcom/miui/securityscan/scanner/k$c;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/securityscan/scanner/ScoreManager$ResultModel;

    iget-object v2, p0, Lcom/miui/securityscan/scanner/k$c$a;->a:Lcom/miui/securityscan/scanner/k$c;

    iget-object v2, v2, Lcom/miui/securityscan/scanner/k$c;->k:Lcom/miui/securityscan/scanner/k;

    invoke-static {v2}, Lcom/miui/securityscan/scanner/k;->f(Lcom/miui/securityscan/scanner/k;)Lcom/miui/securityscan/scanner/ScoreManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/miui/securityscan/scanner/ScoreManager;->a(Lcom/miui/securityscan/scanner/ScoreManager$ResultModel;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/securityscan/scanner/k$c$a;->a:Lcom/miui/securityscan/scanner/k$c;

    iget-object v0, v0, Lcom/miui/securityscan/scanner/k$c;->k:Lcom/miui/securityscan/scanner/k;

    invoke-static {v0}, Lcom/miui/securityscan/scanner/k;->f(Lcom/miui/securityscan/scanner/k;)Lcom/miui/securityscan/scanner/ScoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/ScoreManager;->F()V

    return-void
.end method
