.class Lcom/miui/securityscan/scanner/k$g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/scanner/k$g;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/securityscan/scanner/k$g;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/scanner/k$g;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/scanner/k$g$a;->a:Lcom/miui/securityscan/scanner/k$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/securityscan/scanner/k$g$a;->a:Lcom/miui/securityscan/scanner/k$g;

    iget-object v0, v0, Lcom/miui/securityscan/scanner/k$g;->a:Lrf/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lrf/c;->a()V

    :cond_0
    iget-object v0, p0, Lcom/miui/securityscan/scanner/k$g$a;->a:Lcom/miui/securityscan/scanner/k$g;

    iget-object v0, v0, Lcom/miui/securityscan/scanner/k$g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkf/c;

    iget-object v2, p0, Lcom/miui/securityscan/scanner/k$g$a;->a:Lcom/miui/securityscan/scanner/k$g;

    iget-object v2, v2, Lcom/miui/securityscan/scanner/k$g;->c:Lcom/miui/securityscan/scanner/k;

    invoke-static {v2}, Lcom/miui/securityscan/scanner/k;->f(Lcom/miui/securityscan/scanner/k;)Lcom/miui/securityscan/scanner/ScoreManager;

    move-result-object v2

    invoke-virtual {v1}, Lkf/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/miui/securityscan/scanner/ScoreManager;->B(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method
