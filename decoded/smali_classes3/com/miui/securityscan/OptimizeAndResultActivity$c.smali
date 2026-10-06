.class Lcom/miui/securityscan/OptimizeAndResultActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/OptimizeAndResultActivity;->W(Lzf/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lzf/d;

.field final synthetic b:Lcom/miui/securityscan/OptimizeAndResultActivity;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/OptimizeAndResultActivity;Lzf/d;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity$c;->b:Lcom/miui/securityscan/OptimizeAndResultActivity;

    iput-object p2, p0, Lcom/miui/securityscan/OptimizeAndResultActivity$c;->a:Lzf/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity$c;->b:Lcom/miui/securityscan/OptimizeAndResultActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/miui/securityscan/OptimizeAndResultActivity;->G:Z

    iget-object v1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity$c;->a:Lzf/d;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/miui/securityscan/OptimizeAndResultActivity;->n0(Lcom/miui/securityscan/OptimizeAndResultActivity;)Lcom/miui/securityscan/ui/main/OptimizingBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity$c;->b:Lcom/miui/securityscan/OptimizeAndResultActivity;

    invoke-static {v0}, Lcom/miui/securityscan/OptimizeAndResultActivity;->n0(Lcom/miui/securityscan/OptimizeAndResultActivity;)Lcom/miui/securityscan/ui/main/OptimizingBar;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity$c;->a:Lzf/d;

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/ui/main/OptimizingBar;->a(Lzf/d;)V

    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity$c;->a:Lzf/d;

    iget-object v1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity$c;->b:Lcom/miui/securityscan/OptimizeAndResultActivity;

    invoke-static {v1, v0}, Leg/q;->b(Landroid/content/Context;Lzf/d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzf/d;->b(Ljava/lang/String;)V

    const-string v0, "OptimizeAndResultActivity"

    const-string v1, "PopOptimizeEntryListener  onFinishScan"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity$c;->b:Lcom/miui/securityscan/OptimizeAndResultActivity;

    invoke-virtual {v0}, Lcom/miui/securityscan/OptimizeAndResultActivity;->M0()V

    :cond_0
    return-void
.end method
