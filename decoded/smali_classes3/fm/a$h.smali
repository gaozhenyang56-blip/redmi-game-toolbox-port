.class Lfm/a$h;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfm/a;->X(Lfm/a$i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfm/a$i;

.field final synthetic b:Landroid/view/ViewPropertyAnimator;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Lfm/a;


# direct methods
.method constructor <init>(Lfm/a;Lfm/a$i;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lfm/a$h;->d:Lfm/a;

    iput-object p2, p0, Lfm/a$h;->a:Lfm/a$i;

    iput-object p3, p0, Lfm/a$h;->b:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Lfm/a$h;->c:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lfm/a$h;->b:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Lfm/a$h;->c:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lfm/a$h;->c:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lfm/a$h;->c:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lfm/a$h;->d:Lfm/a;

    iget-object v0, p0, Lfm/a$h;->a:Lfm/a$i;

    iget-object v0, v0, Lfm/a$i;->b:Landroidx/recyclerview/widget/RecyclerView$c0;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/z;->H(Landroidx/recyclerview/widget/RecyclerView$c0;Z)V

    iget-object p1, p0, Lfm/a$h;->d:Lfm/a;

    iget-object p1, p1, Lfm/a;->r:Ljava/util/ArrayList;

    iget-object v0, p0, Lfm/a$h;->a:Lfm/a$i;

    iget-object v0, v0, Lfm/a$i;->b:Landroidx/recyclerview/widget/RecyclerView$c0;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lfm/a$h;->d:Lfm/a;

    invoke-virtual {p1}, Lfm/a;->b0()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lfm/a$h;->d:Lfm/a;

    iget-object v0, p0, Lfm/a$h;->a:Lfm/a$i;

    iget-object v0, v0, Lfm/a$i;->b:Landroidx/recyclerview/widget/RecyclerView$c0;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/z;->I(Landroidx/recyclerview/widget/RecyclerView$c0;Z)V

    return-void
.end method
