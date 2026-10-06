.class Lcom/miui/securityscan/scanner/k$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrf/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/scanner/k;->u(Lrf/c;Ljava/util/List;Lcom/miui/securityscan/scanner/k$k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrf/c;

.field final synthetic b:Lcom/miui/securityscan/scanner/k;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/scanner/k;Lrf/c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/scanner/k$f;->b:Lcom/miui/securityscan/scanner/k;

    iput-object p2, p0, Lcom/miui/securityscan/scanner/k$f;->a:Lrf/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "SecurityManager"

    const-string v1, "startOptimizeSystemAppAfterScanSystem onFinishOptimize() callback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/securityscan/scanner/k$f;->b:Lcom/miui/securityscan/scanner/k;

    invoke-static {v0}, Lcom/miui/securityscan/scanner/k;->g(Lcom/miui/securityscan/scanner/k;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/securityscan/scanner/k$f$a;

    invoke-direct {v1, p0}, Lcom/miui/securityscan/scanner/k$f$a;-><init>(Lcom/miui/securityscan/scanner/k$f;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
