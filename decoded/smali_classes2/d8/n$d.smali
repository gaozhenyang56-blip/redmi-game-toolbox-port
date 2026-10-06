.class Ld8/n$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld8/n;->t(Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Ld8/n;


# direct methods
.method constructor <init>(Ld8/n;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Ld8/n$d;->c:Ld8/n;

    iput-object p2, p0, Ld8/n$d;->a:Landroid/view/View;

    iput-object p3, p0, Ld8/n$d;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Ld8/n$d;->a:Landroid/view/View;

    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Ld8/n$d;->a:Landroid/view/View;

    iget-object v0, p0, Ld8/n$d;->c:Ld8/n;

    invoke-static {v0}, Ld8/n;->h(Ld8/n;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Ld8/n$d;->c:Ld8/n;

    invoke-static {p1, v0}, Ld8/n;->i(Ld8/n;Z)Z

    :cond_0
    iget-object p1, p0, Ld8/n$d;->a:Landroid/view/View;

    iget-object v1, p0, Ld8/n$d;->c:Ld8/n;

    invoke-static {v1}, Ld8/n;->j(Ld8/n;)Lcom/miui/gamebooster/videobox/view/SettingsDescLayout;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Ld8/n$d;->c:Ld8/n;

    invoke-static {p1, v0}, Ld8/n;->k(Ld8/n;Z)Z

    :cond_1
    iget-object p1, p0, Ld8/n$d;->b:Landroid/view/View;

    if-eqz p1, :cond_2

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Ld8/n$d;->a:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Ld8/n$d;->a:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
