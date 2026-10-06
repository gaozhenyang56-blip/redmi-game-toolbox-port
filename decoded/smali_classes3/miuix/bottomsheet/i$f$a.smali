.class Lmiuix/bottomsheet/i$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiuix/bottomsheet/BottomSheetBehavior$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/bottomsheet/i$f;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmiuix/bottomsheet/i$f;


# direct methods
.method constructor <init>(Lmiuix/bottomsheet/i$f;)V
    .locals 0

    iput-object p1, p0, Lmiuix/bottomsheet/i$f$a;->a:Lmiuix/bottomsheet/i$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lmiuix/bottomsheet/i$f$a;->a:Lmiuix/bottomsheet/i$f;

    iget-object v0, v0, Lmiuix/bottomsheet/i$f;->a:Lmiuix/bottomsheet/i;

    invoke-static {v0}, Lmiuix/bottomsheet/i;->s(Lmiuix/bottomsheet/i;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiuix/bottomsheet/i$f$a;->a:Lmiuix/bottomsheet/i$f;

    iget-object v0, v0, Lmiuix/bottomsheet/i$f;->a:Lmiuix/bottomsheet/i;

    invoke-static {v0}, Lmiuix/bottomsheet/i;->g(Lmiuix/bottomsheet/i;)Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lpl/j;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Ltm/f;->b:F

    goto :goto_0

    :cond_0
    sget v0, Ltm/f;->a:F

    :goto_0
    iget-object v1, p0, Lmiuix/bottomsheet/i$f$a;->a:Lmiuix/bottomsheet/i$f;

    iget-object v1, v1, Lmiuix/bottomsheet/i$f;->a:Lmiuix/bottomsheet/i;

    invoke-static {v1}, Lmiuix/bottomsheet/i;->t(Lmiuix/bottomsheet/i;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public onAnimationEnd()V
    .locals 2

    iget-object v0, p0, Lmiuix/bottomsheet/i$f$a;->a:Lmiuix/bottomsheet/i$f;

    iget-object v0, v0, Lmiuix/bottomsheet/i$f;->a:Lmiuix/bottomsheet/i;

    invoke-static {v0}, Lmiuix/bottomsheet/i;->g(Lmiuix/bottomsheet/i;)Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setVisibility(I)V

    iget-object v0, p0, Lmiuix/bottomsheet/i$f$a;->a:Lmiuix/bottomsheet/i$f;

    iget-object v0, v0, Lmiuix/bottomsheet/i$f;->a:Lmiuix/bottomsheet/i;

    invoke-static {v0}, Lmiuix/bottomsheet/i;->h(Lmiuix/bottomsheet/i;)Lmiuix/bottomsheet/i$m;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/bottomsheet/i$f$a;->a:Lmiuix/bottomsheet/i$f;

    iget-object v0, v0, Lmiuix/bottomsheet/i$f;->a:Lmiuix/bottomsheet/i;

    invoke-static {v0}, Lmiuix/bottomsheet/i;->h(Lmiuix/bottomsheet/i;)Lmiuix/bottomsheet/i$m;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/bottomsheet/i$m;->onShow()V

    :cond_0
    iget-object v0, p0, Lmiuix/bottomsheet/i$f$a;->a:Lmiuix/bottomsheet/i$f;

    iget-object v0, v0, Lmiuix/bottomsheet/i$f;->a:Lmiuix/bottomsheet/i;

    invoke-static {v0}, Lmiuix/bottomsheet/i;->f(Lmiuix/bottomsheet/i;)Lmiuix/bottomsheet/BottomSheetView;

    move-result-object v0

    iget-object v1, p0, Lmiuix/bottomsheet/i$f$a;->a:Lmiuix/bottomsheet/i$f;

    iget-object v1, v1, Lmiuix/bottomsheet/i$f;->a:Lmiuix/bottomsheet/i;

    invoke-static {v1}, Lmiuix/bottomsheet/i;->i(Lmiuix/bottomsheet/i;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method
