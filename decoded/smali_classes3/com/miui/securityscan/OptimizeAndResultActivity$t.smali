.class Lcom/miui/securityscan/OptimizeAndResultActivity$t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/securityscan/OptimizeAndResultActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "t"
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

.field private b:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/miui/securityscan/OptimizeAndResultActivity;Ljava/lang/Integer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity$t;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/miui/securityscan/OptimizeAndResultActivity$t;->b:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity$t;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/OptimizeAndResultActivity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/miui/securityscan/OptimizeAndResultActivity;->u0(Lcom/miui/securityscan/OptimizeAndResultActivity;)Lwf/a;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/securityscan/OptimizeAndResultActivity$t;->b:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Lwf/a;->setScoreText(I)V

    invoke-static {v0}, Lcom/miui/securityscan/OptimizeAndResultActivity;->u0(Lcom/miui/securityscan/OptimizeAndResultActivity;)Lwf/a;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/securityscan/OptimizeAndResultActivity$t;->b:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Lwf/a;->setResultScoreText(I)V

    invoke-static {v0}, Lcom/miui/securityscan/OptimizeAndResultActivity;->u0(Lcom/miui/securityscan/OptimizeAndResultActivity;)Lwf/a;

    move-result-object v1

    invoke-static {v0}, Lcom/miui/securityscan/OptimizeAndResultActivity;->o0(Lcom/miui/securityscan/OptimizeAndResultActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/miui/securityscan/OptimizeAndResultActivity$t;->b:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lwf/a;->q(II)V

    invoke-static {v0}, Lcom/miui/securityscan/OptimizeAndResultActivity;->u0(Lcom/miui/securityscan/OptimizeAndResultActivity;)Lwf/a;

    move-result-object v1

    invoke-static {v0}, Lcom/miui/securityscan/OptimizeAndResultActivity;->o0(Lcom/miui/securityscan/OptimizeAndResultActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/miui/securityscan/OptimizeAndResultActivity$t;->b:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lwf/a;->k(II)V

    iget-object v1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity$t;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/OptimizeAndResultActivity;->U0(I)V

    :cond_1
    :goto_0
    return-void
.end method
