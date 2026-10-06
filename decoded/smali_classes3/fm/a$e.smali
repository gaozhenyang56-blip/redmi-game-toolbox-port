.class Lfm/a$e;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfm/a;->W(Landroidx/recyclerview/widget/RecyclerView$c0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/RecyclerView$c0;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/view/ViewPropertyAnimator;

.field final synthetic d:Lfm/a;


# direct methods
.method constructor <init>(Lfm/a;Landroidx/recyclerview/widget/RecyclerView$c0;Landroid/view/View;Landroid/view/ViewPropertyAnimator;)V
    .locals 0

    iput-object p1, p0, Lfm/a$e;->d:Lfm/a;

    iput-object p2, p0, Lfm/a$e;->a:Landroidx/recyclerview/widget/RecyclerView$c0;

    iput-object p3, p0, Lfm/a$e;->b:Landroid/view/View;

    iput-object p4, p0, Lfm/a$e;->c:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lfm/a$e;->b:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lfm/a$e;->c:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Lfm/a$e;->d:Lfm/a;

    iget-object v0, p0, Lfm/a$e;->a:Landroidx/recyclerview/widget/RecyclerView$c0;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/z;->F(Landroidx/recyclerview/widget/RecyclerView$c0;)V

    iget-object p1, p0, Lfm/a$e;->d:Lfm/a;

    iget-object p1, p1, Lfm/a;->o:Ljava/util/ArrayList;

    iget-object v0, p0, Lfm/a$e;->a:Landroidx/recyclerview/widget/RecyclerView$c0;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lfm/a$e;->d:Lfm/a;

    invoke-virtual {p1}, Lfm/a;->b0()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lfm/a$e;->d:Lfm/a;

    iget-object v0, p0, Lfm/a$e;->a:Landroidx/recyclerview/widget/RecyclerView$c0;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/z;->G(Landroidx/recyclerview/widget/RecyclerView$c0;)V

    return-void
.end method
