.class Lcom/miui/securityscan/scanner/k$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/scanner/k$f;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/securityscan/scanner/k$f;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/scanner/k$f;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/scanner/k$f$a;->a:Lcom/miui/securityscan/scanner/k$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/securityscan/scanner/k$f$a;->a:Lcom/miui/securityscan/scanner/k$f;

    iget-object v0, v0, Lcom/miui/securityscan/scanner/k$f;->a:Lrf/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lrf/c;->b()V

    :cond_0
    :try_start_0
    new-instance v0, Lcom/miui/securityscan/scanner/a;

    sget-object v1, Lcom/miui/securityscan/scanner/k$n;->b:Lcom/miui/securityscan/scanner/k$n;

    invoke-direct {v0, v1}, Lcom/miui/securityscan/scanner/a;-><init>(Lcom/miui/securityscan/scanner/k$n;)V

    iget-object v1, p0, Lcom/miui/securityscan/scanner/k$f$a;->a:Lcom/miui/securityscan/scanner/k$f;

    iget-object v1, v1, Lcom/miui/securityscan/scanner/k$f;->b:Lcom/miui/securityscan/scanner/k;

    invoke-static {v1}, Lcom/miui/securityscan/scanner/k;->e(Lcom/miui/securityscan/scanner/k;)Lcom/miui/securityscan/scanner/g;

    move-result-object v1

    sget-object v2, Lzf/d;->e:Lzf/d;

    invoke-virtual {v1, v2, v0}, Lcom/miui/securityscan/scanner/g;->c(Lzf/d;Lcom/miui/securityscan/scanner/a;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
