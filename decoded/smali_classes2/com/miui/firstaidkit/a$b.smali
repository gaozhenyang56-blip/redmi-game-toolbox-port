.class Lcom/miui/firstaidkit/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/firstaidkit/a;->m(Lcom/miui/firstaidkit/a$g;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/firstaidkit/a$g;

.field final synthetic b:Lcom/miui/firstaidkit/a;


# direct methods
.method constructor <init>(Lcom/miui/firstaidkit/a;Lcom/miui/firstaidkit/a$g;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/firstaidkit/a$b;->b:Lcom/miui/firstaidkit/a;

    iput-object p2, p0, Lcom/miui/firstaidkit/a$b;->a:Lcom/miui/firstaidkit/a$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/firstaidkit/a$b;->b:Lcom/miui/firstaidkit/a;

    invoke-static {v0}, Lcom/miui/firstaidkit/a;->a(Lcom/miui/firstaidkit/a;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/firstaidkit/a$b;->b:Lcom/miui/firstaidkit/a;

    invoke-static {v0}, Lcom/miui/firstaidkit/a;->b(Lcom/miui/firstaidkit/a;)Lcom/miui/firstaidkit/b;

    move-result-object v0

    sget-object v1, Lo5/e;->c:Lo5/e;

    new-instance v2, Lcom/miui/securityscan/scanner/a;

    invoke-direct {v2, p1, p2, p3}, Lcom/miui/securityscan/scanner/a;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/firstaidkit/b;->c(Lo5/e;Lcom/miui/securityscan/scanner/a;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1
.end method

.method public b(Ljava/util/List;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/securityscan/model/AbsModel;",
            ">;II)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p2, p0, Lcom/miui/firstaidkit/a$b;->b:Lcom/miui/firstaidkit/a;

    invoke-static {p2}, Lcom/miui/firstaidkit/a;->c(Lcom/miui/firstaidkit/a;)Lo5/f;

    move-result-object p2

    invoke-virtual {p2, p1}, Lo5/f;->h(Ljava/util/List;)V

    :cond_0
    iget-object p1, p0, Lcom/miui/firstaidkit/a$b;->b:Lcom/miui/firstaidkit/a;

    invoke-static {p1, p3}, Lcom/miui/firstaidkit/a;->d(Lcom/miui/firstaidkit/a;I)I

    new-instance p1, Lcom/miui/securityscan/scanner/a;

    sget-object p2, Lcom/miui/securityscan/scanner/k$n;->b:Lcom/miui/securityscan/scanner/k$n;

    invoke-direct {p1, p2, p3}, Lcom/miui/securityscan/scanner/a;-><init>(Lcom/miui/securityscan/scanner/k$n;I)V

    iget-object p2, p0, Lcom/miui/firstaidkit/a$b;->b:Lcom/miui/firstaidkit/a;

    invoke-static {p2}, Lcom/miui/firstaidkit/a;->b(Lcom/miui/firstaidkit/a;)Lcom/miui/firstaidkit/b;

    move-result-object p2

    sget-object p3, Lo5/e;->c:Lo5/e;

    invoke-virtual {p2, p3, p1}, Lcom/miui/firstaidkit/b;->c(Lo5/e;Lcom/miui/securityscan/scanner/a;)V

    iget-object p1, p0, Lcom/miui/firstaidkit/a$b;->a:Lcom/miui/firstaidkit/a$g;

    if-eqz p1, :cond_1

    invoke-interface {p1, p3}, Lcom/miui/firstaidkit/a$g;->a(Lo5/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "FirstAidKitManager"

    const-string p3, "startScanInternet"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method
