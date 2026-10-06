.class Lcom/miui/firstaidkit/ui/DoubleCircleAnimView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->b(Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->c(Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
