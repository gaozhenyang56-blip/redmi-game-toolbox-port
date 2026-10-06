.class Lcom/miui/gamebooster/beauty/BeautyView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/beauty/BeautyView;->n(Landroid/view/View;Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Z

.field final synthetic d:Lcom/miui/gamebooster/beauty/BeautyView;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/beauty/BeautyView;Landroid/view/View;Landroid/view/View;Z)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/beauty/BeautyView$b;->d:Lcom/miui/gamebooster/beauty/BeautyView;

    iput-object p2, p0, Lcom/miui/gamebooster/beauty/BeautyView$b;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/miui/gamebooster/beauty/BeautyView$b;->b:Landroid/view/View;

    iput-boolean p4, p0, Lcom/miui/gamebooster/beauty/BeautyView$b;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object p1, p0, Lcom/miui/gamebooster/beauty/BeautyView$b;->a:Landroid/view/View;

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    iget-object p1, p0, Lcom/miui/gamebooster/beauty/BeautyView$b;->b:Landroid/view/View;

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object p1, p0, Lcom/miui/gamebooster/beauty/BeautyView$b;->d:Lcom/miui/gamebooster/beauty/BeautyView;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/miui/gamebooster/beauty/BeautyView;->e(Lcom/miui/gamebooster/beauty/BeautyView;I)I

    iget-object p1, p0, Lcom/miui/gamebooster/beauty/BeautyView$b;->d:Lcom/miui/gamebooster/beauty/BeautyView;

    invoke-static {p1}, Lcom/miui/gamebooster/beauty/BeautyView;->d(Lcom/miui/gamebooster/beauty/BeautyView;)I

    move-result p1

    invoke-static {p1}, Lw5/f;->n0(I)V

    iget-boolean p1, p0, Lcom/miui/gamebooster/beauty/BeautyView$b;->c:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/miui/gamebooster/beauty/BeautyView$b;->d:Lcom/miui/gamebooster/beauty/BeautyView;

    invoke-static {p1}, Lcom/miui/gamebooster/beauty/BeautyView;->g(Lcom/miui/gamebooster/beauty/BeautyView;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyView$b;->d:Lcom/miui/gamebooster/beauty/BeautyView;

    invoke-static {v0}, Lcom/miui/gamebooster/beauty/BeautyView;->f(Lcom/miui/gamebooster/beauty/BeautyView;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/miui/gamebooster/beauty/BeautyView$b;->a:Landroid/view/View;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/miui/gamebooster/beauty/BeautyView$b;->a:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/miui/gamebooster/beauty/BeautyView$b;->b:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
