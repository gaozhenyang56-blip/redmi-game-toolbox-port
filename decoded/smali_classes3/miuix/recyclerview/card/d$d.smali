.class Lmiuix/recyclerview/card/d$d;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/recyclerview/card/d;->e0(Lmiuix/recyclerview/card/d$f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmiuix/recyclerview/card/d$f;

.field final synthetic b:Landroid/view/ViewPropertyAnimator;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Lmiuix/recyclerview/card/d;


# direct methods
.method constructor <init>(Lmiuix/recyclerview/card/d;Lmiuix/recyclerview/card/d$f;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lmiuix/recyclerview/card/d$d;->d:Lmiuix/recyclerview/card/d;

    iput-object p2, p0, Lmiuix/recyclerview/card/d$d;->a:Lmiuix/recyclerview/card/d$f;

    iput-object p3, p0, Lmiuix/recyclerview/card/d$d;->b:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Lmiuix/recyclerview/card/d$d;->c:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lmiuix/recyclerview/card/d$d;->b:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Lmiuix/recyclerview/card/d$d;->c:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lmiuix/recyclerview/card/d$d;->c:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lmiuix/recyclerview/card/d$d;->c:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lmiuix/recyclerview/card/d$d;->d:Lmiuix/recyclerview/card/d;

    iget-object v0, p0, Lmiuix/recyclerview/card/d$d;->a:Lmiuix/recyclerview/card/d$f;

    invoke-static {v0}, Lmiuix/recyclerview/card/d$f;->a(Lmiuix/recyclerview/card/d$f;)Landroidx/recyclerview/widget/RecyclerView$c0;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/z;->H(Landroidx/recyclerview/widget/RecyclerView$c0;Z)V

    iget-object p1, p0, Lmiuix/recyclerview/card/d$d;->d:Lmiuix/recyclerview/card/d;

    invoke-static {p1}, Lmiuix/recyclerview/card/d;->Z(Lmiuix/recyclerview/card/d;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lmiuix/recyclerview/card/d$d;->a:Lmiuix/recyclerview/card/d$f;

    invoke-static {v0}, Lmiuix/recyclerview/card/d$f;->a(Lmiuix/recyclerview/card/d$f;)Landroidx/recyclerview/widget/RecyclerView$c0;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lmiuix/recyclerview/card/d$d;->d:Lmiuix/recyclerview/card/d;

    invoke-virtual {p1}, Lmiuix/recyclerview/card/d;->i0()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lmiuix/recyclerview/card/d$d;->d:Lmiuix/recyclerview/card/d;

    iget-object v0, p0, Lmiuix/recyclerview/card/d$d;->a:Lmiuix/recyclerview/card/d$f;

    invoke-static {v0}, Lmiuix/recyclerview/card/d$f;->a(Lmiuix/recyclerview/card/d$f;)Landroidx/recyclerview/widget/RecyclerView$c0;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/z;->I(Landroidx/recyclerview/widget/RecyclerView$c0;Z)V

    return-void
.end method
