.class Lmiuix/recyclerview/card/d$c;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/recyclerview/card/d;->f0(Landroidx/recyclerview/widget/RecyclerView$c0;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/RecyclerView$c0;

.field final synthetic b:I

.field final synthetic c:Landroid/view/View;

.field final synthetic d:I

.field final synthetic e:Landroid/view/ViewPropertyAnimator;

.field final synthetic f:Lmiuix/recyclerview/card/d;


# direct methods
.method constructor <init>(Lmiuix/recyclerview/card/d;Landroidx/recyclerview/widget/RecyclerView$c0;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V
    .locals 0

    iput-object p1, p0, Lmiuix/recyclerview/card/d$c;->f:Lmiuix/recyclerview/card/d;

    iput-object p2, p0, Lmiuix/recyclerview/card/d$c;->a:Landroidx/recyclerview/widget/RecyclerView$c0;

    iput p3, p0, Lmiuix/recyclerview/card/d$c;->b:I

    iput-object p4, p0, Lmiuix/recyclerview/card/d$c;->c:Landroid/view/View;

    iput p5, p0, Lmiuix/recyclerview/card/d$c;->d:I

    iput-object p6, p0, Lmiuix/recyclerview/card/d$c;->e:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget p1, p0, Lmiuix/recyclerview/card/d$c;->b:I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiuix/recyclerview/card/d$c;->c:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    :cond_0
    iget p1, p0, Lmiuix/recyclerview/card/d$c;->d:I

    if-eqz p1, :cond_1

    iget-object p1, p0, Lmiuix/recyclerview/card/d$c;->c:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lmiuix/recyclerview/card/d$c;->e:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Lmiuix/recyclerview/card/d$c;->f:Lmiuix/recyclerview/card/d;

    iget-object v0, p0, Lmiuix/recyclerview/card/d$c;->a:Landroidx/recyclerview/widget/RecyclerView$c0;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/z;->J(Landroidx/recyclerview/widget/RecyclerView$c0;)V

    iget-object p1, p0, Lmiuix/recyclerview/card/d$c;->f:Lmiuix/recyclerview/card/d;

    invoke-static {p1}, Lmiuix/recyclerview/card/d;->c0(Lmiuix/recyclerview/card/d;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lmiuix/recyclerview/card/d$c;->a:Landroidx/recyclerview/widget/RecyclerView$c0;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lmiuix/recyclerview/card/d$c;->f:Lmiuix/recyclerview/card/d;

    invoke-virtual {p1}, Lmiuix/recyclerview/card/d;->i0()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lmiuix/recyclerview/card/d$c;->f:Lmiuix/recyclerview/card/d;

    iget-object v0, p0, Lmiuix/recyclerview/card/d$c;->a:Landroidx/recyclerview/widget/RecyclerView$c0;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/z;->K(Landroidx/recyclerview/widget/RecyclerView$c0;)V

    return-void
.end method
