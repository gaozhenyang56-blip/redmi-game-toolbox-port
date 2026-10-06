.class Ld7/l$c;
.super La8/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld7/l;->U(Landroid/content/Context;ZLandroid/view/WindowManager$LayoutParams;Lcom/miui/dock/sidebar/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/dock/sidebar/j;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Z

.field final synthetic d:Ld7/l;


# direct methods
.method constructor <init>(Ld7/l;Lcom/miui/dock/sidebar/j;Landroid/content/Context;Z)V
    .locals 0

    iput-object p1, p0, Ld7/l$c;->d:Ld7/l;

    iput-object p2, p0, Ld7/l$c;->a:Lcom/miui/dock/sidebar/j;

    iput-object p3, p0, Ld7/l$c;->b:Landroid/content/Context;

    iput-boolean p4, p0, Ld7/l$c;->c:Z

    invoke-direct {p0}, La8/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    invoke-super {p0, p1}, La8/a;->onAnimationCancel(Landroid/animation/Animator;)V

    iget-object p1, p0, Ld7/l$c;->d:Ld7/l;

    iget-object v0, p0, Ld7/l$c;->a:Lcom/miui/dock/sidebar/j;

    iget-boolean v1, p0, Ld7/l$c;->c:Z

    invoke-static {p1, v0, v1}, Ld7/l;->p(Ld7/l;Lcom/miui/dock/sidebar/j;Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    invoke-super {p0, p1}, La8/a;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Ld7/l$c;->d:Ld7/l;

    iget-object v0, p0, Ld7/l$c;->a:Lcom/miui/dock/sidebar/j;

    iget-boolean v1, p0, Ld7/l$c;->c:Z

    invoke-static {p1, v0, v1}, Ld7/l;->p(Ld7/l;Lcom/miui/dock/sidebar/j;Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    iget-object p1, p0, Ld7/l$c;->d:Ld7/l;

    iget-object v0, p0, Ld7/l$c;->a:Lcom/miui/dock/sidebar/j;

    iget-object v1, p0, Ld7/l$c;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070a2f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-static {p1, v0, v1}, Ld7/l;->n(Ld7/l;Lcom/miui/dock/sidebar/j;I)V

    iget-object p1, p0, Ld7/l$c;->d:Ld7/l;

    invoke-static {p1}, Ld7/l;->o(Ld7/l;)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lcom/miui/gamebooster/shoulderkey/widget/TbGuideView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Ld7/l$c;->d:Ld7/l;

    invoke-static {p1}, Ld7/l;->o(Ld7/l;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/gamebooster/shoulderkey/widget/TbGuideView;

    iget-object v0, p0, Ld7/l$c;->d:Ld7/l;

    invoke-static {v0}, Ld7/l;->g(Ld7/l;)Ld7/v;

    move-result-object v0

    invoke-virtual {v0}, Ld7/v;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/gamebooster/shoulderkey/widget/TbGuideView;->h(Ljava/lang/String;)V

    iget-object p1, p0, Ld7/l$c;->d:Ld7/l;

    invoke-static {p1}, Ld7/l;->g(Ld7/l;)Ld7/v;

    move-result-object p1

    invoke-virtual {p1}, Ld7/v;->c()V

    :cond_0
    return-void
.end method
