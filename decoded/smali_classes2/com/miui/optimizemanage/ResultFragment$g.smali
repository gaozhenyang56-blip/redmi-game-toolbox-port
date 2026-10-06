.class Lcom/miui/optimizemanage/ResultFragment$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/optimizemanage/ResultFragment;->O0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/optimizemanage/ResultFragment;


# direct methods
.method constructor <init>(Lcom/miui/optimizemanage/ResultFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizemanage/ResultFragment$g;->a:Lcom/miui/optimizemanage/ResultFragment;

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

    iget-object v0, p0, Lcom/miui/optimizemanage/ResultFragment$g;->a:Lcom/miui/optimizemanage/ResultFragment;

    invoke-static {v0}, Lcom/miui/optimizemanage/ResultFragment;->k0(Lcom/miui/optimizemanage/ResultFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/miui/optimizemanage/ResultFragment$g;->a:Lcom/miui/optimizemanage/ResultFragment;

    invoke-static {v0}, Lcom/miui/optimizemanage/ResultFragment;->l0(Lcom/miui/optimizemanage/ResultFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
