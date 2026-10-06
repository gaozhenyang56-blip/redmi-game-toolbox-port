.class Lcom/miui/securityscan/OptimizeAndResultActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/OptimizeAndResultActivity;->l(Lcom/miui/securityscan/scanner/a;Lzf/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lzf/d;

.field final synthetic b:Lcom/miui/securityscan/scanner/a;

.field final synthetic c:Lcom/miui/securityscan/OptimizeAndResultActivity;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/OptimizeAndResultActivity;Lzf/d;Lcom/miui/securityscan/scanner/a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity$b;->c:Lcom/miui/securityscan/OptimizeAndResultActivity;

    iput-object p2, p0, Lcom/miui/securityscan/OptimizeAndResultActivity$b;->a:Lzf/d;

    iput-object p3, p0, Lcom/miui/securityscan/OptimizeAndResultActivity$b;->b:Lcom/miui/securityscan/scanner/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity$b;->a:Lzf/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity$b;->c:Lcom/miui/securityscan/OptimizeAndResultActivity;

    invoke-static {v0}, Lcom/miui/securityscan/OptimizeAndResultActivity;->n0(Lcom/miui/securityscan/OptimizeAndResultActivity;)Lcom/miui/securityscan/ui/main/OptimizingBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity$b;->c:Lcom/miui/securityscan/OptimizeAndResultActivity;

    invoke-static {v0}, Lcom/miui/securityscan/OptimizeAndResultActivity;->n0(Lcom/miui/securityscan/OptimizeAndResultActivity;)Lcom/miui/securityscan/ui/main/OptimizingBar;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity$b;->a:Lzf/d;

    iget-object v2, p0, Lcom/miui/securityscan/OptimizeAndResultActivity$b;->b:Lcom/miui/securityscan/scanner/a;

    iget-object v2, v2, Lcom/miui/securityscan/scanner/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/miui/securityscan/ui/main/OptimizingBar;->e(Lzf/d;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity$b;->c:Lcom/miui/securityscan/OptimizeAndResultActivity;

    invoke-static {v0}, Lcom/miui/securityscan/OptimizeAndResultActivity;->n0(Lcom/miui/securityscan/OptimizeAndResultActivity;)Lcom/miui/securityscan/ui/main/OptimizingBar;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity$b;->a:Lzf/d;

    iget-object v2, p0, Lcom/miui/securityscan/OptimizeAndResultActivity$b;->b:Lcom/miui/securityscan/scanner/a;

    iget v3, v2, Lcom/miui/securityscan/scanner/a;->a:I

    mul-int/lit8 v3, v3, 0x64

    iget v2, v2, Lcom/miui/securityscan/scanner/a;->b:I

    div-int/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Lcom/miui/securityscan/ui/main/OptimizingBar;->d(Lzf/d;I)V

    :cond_0
    return-void
.end method
