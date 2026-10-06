.class Lcom/miui/securityscan/scanner/k$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrf/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/scanner/k;->z(Lrf/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrf/i;

.field final synthetic b:Lcom/miui/securityscan/scanner/k;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/scanner/k;Lrf/i;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/scanner/k$d;->b:Lcom/miui/securityscan/scanner/k;

    iput-object p2, p0, Lcom/miui/securityscan/scanner/k$d;->a:Lrf/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IILjava/lang/Object;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/securityscan/scanner/k$d;->b:Lcom/miui/securityscan/scanner/k;

    invoke-static {p1}, Lcom/miui/securityscan/scanner/k;->a(Lcom/miui/securityscan/scanner/k;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public c(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/securityscan/model/GroupModel;",
            ">;I)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/miui/securityscan/scanner/k$d;->b:Lcom/miui/securityscan/scanner/k;

    invoke-static {p2}, Lcom/miui/securityscan/scanner/k;->f(Lcom/miui/securityscan/scanner/k;)Lcom/miui/securityscan/scanner/ScoreManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/miui/securityscan/scanner/ScoreManager;->J(Ljava/util/List;)V

    :cond_0
    iget-object p1, p0, Lcom/miui/securityscan/scanner/k$d;->a:Lrf/i;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lrf/i;->h()V

    :cond_1
    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/k$d;->a:Lrf/i;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lrf/i;->b()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/k$d;->a:Lrf/i;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lrf/i;->i()V

    :cond_0
    return-void
.end method
