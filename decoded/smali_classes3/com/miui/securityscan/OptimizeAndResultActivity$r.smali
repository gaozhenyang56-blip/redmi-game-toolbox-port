.class Lcom/miui/securityscan/OptimizeAndResultActivity$r;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/securityscan/OptimizeAndResultActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "r"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/securityscan/OptimizeAndResultActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/securityscan/OptimizeAndResultActivity;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity$r;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-static {}, Lcom/miui/securityscan/scanner/ScoreManager;->j()Lcom/miui/securityscan/scanner/ScoreManager;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/securityscan/OptimizeAndResultActivity$r;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/securityscan/OptimizeAndResultActivity;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p2}, Lcom/miui/securityscan/OptimizeAndResultActivity;->i0(Lcom/miui/securityscan/OptimizeAndResultActivity;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p2}, Lcom/miui/securityscan/OptimizeAndResultActivity;->k0(Lcom/miui/securityscan/OptimizeAndResultActivity;)Lrf/j;

    move-result-object p1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lrf/j;->b:Z

    invoke-static {p2}, Lcom/miui/securityscan/scanner/k;->n(Landroid/content/Context;)Lcom/miui/securityscan/scanner/k;

    move-result-object p1

    invoke-static {p2}, Lcom/miui/securityscan/OptimizeAndResultActivity;->k0(Lcom/miui/securityscan/OptimizeAndResultActivity;)Lrf/j;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/securityscan/scanner/k;->z(Lrf/i;)V

    :cond_1
    :goto_0
    return-void
.end method
