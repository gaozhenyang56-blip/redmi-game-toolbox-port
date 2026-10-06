.class Lcom/miui/optimizemanage/view/OptimizeMainView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/optimizemanage/view/OptimizeMainView;->setAnimProgress(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/optimizemanage/view/OptimizeMainView;


# direct methods
.method constructor <init>(Lcom/miui/optimizemanage/view/OptimizeMainView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizemanage/view/OptimizeMainView$b;->a:Lcom/miui/optimizemanage/view/OptimizeMainView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/miui/optimizemanage/view/OptimizeMainView$b;->a:Lcom/miui/optimizemanage/view/OptimizeMainView;

    invoke-static {v0}, Lcom/miui/optimizemanage/view/OptimizeMainView;->h(Lcom/miui/optimizemanage/view/OptimizeMainView;)Lcom/miui/common/ui/VlcTextureView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/common/ui/VlcTextureView;->setRenderState(F)V

    return-void
.end method
