.class Lcom/miui/optimizemanage/CleanFragment$q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/optimizemanage/CleanFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "q"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/optimizemanage/CleanFragment;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lfb/a$c;


# direct methods
.method constructor <init>(Lcom/miui/optimizemanage/CleanFragment;Lfb/a$c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/optimizemanage/CleanFragment$q;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/miui/optimizemanage/CleanFragment$q;->b:Lfb/a$c;

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/optimizemanage/CleanFragment$q;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/optimizemanage/CleanFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/miui/optimizemanage/CleanFragment$q;->b:Lfb/a$c;

    iget-object v0, v0, Lfb/a$c;->d:Lmiuix/androidbasewidget/widget/ProgressBar;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v2, v1, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/miui/optimizemanage/CleanFragment$q;->b:Lfb/a$c;

    iget-object v0, v0, Lfb/a$c;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    cmpl-float p1, p1, v1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/optimizemanage/CleanFragment$q;->b:Lfb/a$c;

    iget-object p1, p1, Lfb/a$c;->d:Lmiuix/androidbasewidget/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
