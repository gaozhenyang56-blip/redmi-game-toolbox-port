.class Lcom/miui/optimizemanage/view/b$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/optimizemanage/view/b;->startAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/optimizemanage/view/b;


# direct methods
.method constructor <init>(Lcom/miui/optimizemanage/view/b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizemanage/view/b$b;->a:Lcom/miui/optimizemanage/view/b;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/optimizemanage/view/b$b;->a:Lcom/miui/optimizemanage/view/b;

    invoke-static {p1}, Lcom/miui/optimizemanage/view/b;->e(Lcom/miui/optimizemanage/view/b;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/optimizemanage/view/b$b;->a:Lcom/miui/optimizemanage/view/b;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/optimizemanage/view/b;->c(Lcom/miui/optimizemanage/view/b;Z)Z

    iget-object p1, p0, Lcom/miui/optimizemanage/view/b$b;->a:Lcom/miui/optimizemanage/view/b;

    invoke-static {p1}, Lcom/miui/optimizemanage/view/b;->f(Lcom/miui/optimizemanage/view/b;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/optimizemanage/view/b$b;->a:Lcom/miui/optimizemanage/view/b;

    invoke-static {p1}, Lcom/miui/optimizemanage/view/b;->f(Lcom/miui/optimizemanage/view/b;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/optimizemanage/view/b$b;->a:Lcom/miui/optimizemanage/view/b;

    invoke-static {p1}, Lcom/miui/optimizemanage/view/b;->f(Lcom/miui/optimizemanage/view/b;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    :cond_0
    iget-object p1, p0, Lcom/miui/optimizemanage/view/b$b;->a:Lcom/miui/optimizemanage/view/b;

    invoke-static {p1}, Lcom/miui/optimizemanage/view/b;->g(Lcom/miui/optimizemanage/view/b;)Lcom/miui/common/ui/a$c;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/optimizemanage/view/b$b;->a:Lcom/miui/optimizemanage/view/b;

    invoke-static {p1}, Lcom/miui/optimizemanage/view/b;->g(Lcom/miui/optimizemanage/view/b;)Lcom/miui/common/ui/a$c;

    move-result-object p1

    invoke-interface {p1}, Lcom/miui/common/ui/a$c;->a()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/optimizemanage/view/b$b;->a:Lcom/miui/optimizemanage/view/b;

    invoke-static {p1}, Lcom/miui/optimizemanage/view/b;->h(Lcom/miui/optimizemanage/view/b;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    :cond_2
    :goto_0
    return-void
.end method
