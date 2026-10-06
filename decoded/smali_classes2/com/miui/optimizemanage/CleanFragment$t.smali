.class Lcom/miui/optimizemanage/CleanFragment$t;
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
    name = "t"
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

.field private final b:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/miui/optimizemanage/CleanFragment;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/optimizemanage/CleanFragment$t;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/miui/optimizemanage/CleanFragment$t;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/optimizemanage/CleanFragment$t;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/optimizemanage/CleanFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/optimizemanage/CleanFragment$t;->b:Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, p0, Lcom/miui/optimizemanage/CleanFragment$t;->b:Landroid/view/View;

    invoke-static {v0, v1, p1}, Lcom/miui/optimizemanage/CleanFragment;->g0(Lcom/miui/optimizemanage/CleanFragment;Landroid/view/View;I)V

    :cond_1
    :goto_0
    return-void
.end method
