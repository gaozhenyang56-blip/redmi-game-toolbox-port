.class Lcom/miui/optimizemanage/ResultFragment$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/optimizemanage/ResultFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "n"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/optimizemanage/ResultFragment;",
            ">;"
        }
    .end annotation
.end field

.field private final b:I

.field private final c:I


# direct methods
.method constructor <init>(Lcom/miui/optimizemanage/ResultFragment;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/optimizemanage/ResultFragment$n;->a:Ljava/lang/ref/WeakReference;

    iput p2, p0, Lcom/miui/optimizemanage/ResultFragment$n;->b:I

    iput p3, p0, Lcom/miui/optimizemanage/ResultFragment$n;->c:I

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/optimizemanage/ResultFragment$n;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/optimizemanage/ResultFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    neg-float v1, p1

    iget v2, p0, Lcom/miui/optimizemanage/ResultFragment$n;->b:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-static {v0}, Lcom/miui/optimizemanage/ResultFragment;->j0(Lcom/miui/optimizemanage/ResultFragment;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setTranslationY(F)V

    iget v2, p0, Lcom/miui/optimizemanage/ResultFragment$n;->c:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v0}, Lcom/miui/optimizemanage/ResultFragment;->k0(Lcom/miui/optimizemanage/ResultFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationY(F)V

    invoke-static {v0}, Lcom/miui/optimizemanage/ResultFragment;->l0(Lcom/miui/optimizemanage/ResultFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationY(F)V

    invoke-static {v0}, Lcom/miui/optimizemanage/ResultFragment;->w0(Lcom/miui/optimizemanage/ResultFragment;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-static {v0}, Lcom/miui/optimizemanage/ResultFragment;->x0(Lcom/miui/optimizemanage/ResultFragment;)Lcom/miui/common/customview/AutoPasteListView;

    move-result-object v1

    invoke-static {v0}, Lcom/miui/optimizemanage/ResultFragment;->w0(Lcom/miui/optimizemanage/ResultFragment;)I

    move-result v0

    sub-int/2addr v0, p1

    int-to-float p1, v0

    invoke-virtual {v1, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    :goto_0
    return-void
.end method
