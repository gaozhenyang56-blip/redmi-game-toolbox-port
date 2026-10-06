.class public Lm5/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/miui/dock/sidebar/j;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adjustLayoutMargins: fullScreen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SidebarLayoutUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/dock/sidebar/j;->H()Z

    move-result v0

    invoke-virtual {p0}, Lcom/miui/dock/sidebar/j;->A()Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;

    move-result-object v1

    invoke-static {p0, v1, v0, p1}, Lm5/g;->l(Lcom/miui/dock/sidebar/j;Landroid/view/View;ZZ)V

    invoke-virtual {p0}, Lcom/miui/dock/sidebar/j;->w()Lcom/miui/dock/sidebar/RegionSamplingImageView;

    move-result-object v1

    invoke-static {p0, v1, v0, p1}, Lm5/g;->l(Lcom/miui/dock/sidebar/j;Landroid/view/View;ZZ)V

    return-void
.end method

.method public static b(Landroid/content/Context;II)I
    .locals 1

    invoke-static {p0}, La8/k2;->h(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0}, La8/k2;->j(Landroid/content/Context;)I

    move-result p0

    sub-int/2addr p0, v0

    add-int v0, p1, p2

    if-le v0, p0, :cond_0

    sub-int p1, p0, p2

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "adjustSidebarY: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "SidebarLayoutUtils"

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public static c(Landroid/content/res/Resources;)F
    .locals 1

    const v0, 0x7f071006

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public static d(Landroid/content/Context;Z)I
    .locals 2

    invoke-static {p0}, La8/k2;->L(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0, p1}, La8/k2;->E(Landroid/content/Context;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, La8/k2;->i(Landroid/content/Context;)I

    move-result p1

    neg-int p1, p1

    const/high16 v0, 0x40200000    # 2.5f

    invoke-static {p0, v0}, La8/k2;->a(Landroid/content/Context;F)I

    move-result p0

    add-int/2addr p1, p0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getLineStartX: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SidebarLayoutUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :cond_1
    return v1
.end method

.method public static e(Landroid/view/View;ZZ)I
    .locals 0

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, La8/k2;->l(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    sub-int/2addr p1, p0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static f(Landroid/content/Context;Lcom/miui/dock/sidebar/j;Landroid/view/View;Z)I
    .locals 0

    if-eqz p3, :cond_0

    invoke-static {p0}, La8/k2;->L(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-static {p1}, Lm5/g;->i(Lcom/miui/dock/sidebar/j;)I

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-static {p0, p1, p2}, Lm5/g;->b(Landroid/content/Context;II)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getLpTopMargin: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SidebarLayoutUtils"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static g(Landroid/view/View;)V
    .locals 5

    if-nez p0, :cond_0

    return-void

    :cond_0
    instance-of v0, p0, Lcom/miui/dock/sidebar/RegionSamplingImageView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071a90

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f071a83

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public static h(Landroid/content/Context;)I
    .locals 5

    invoke-static {p0}, La8/k2;->L(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-static {}, Lk5/a;->c()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    invoke-static {p0}, La8/k2;->y(Landroid/content/Context;)Z

    move-result v0

    invoke-static {}, Lx4/a0;->x()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lx4/a0;->n(Landroid/content/Context;)I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070ff0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    if-nez v0, :cond_1

    move v1, v2

    :cond_1
    sub-int v0, v3, v1

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071a83

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-static {p0, v0, v1}, Lm5/g;->b(Landroid/content/Context;II)I

    move-result v1

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getSidebarY, y = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SidebarLayoutUtils"

    invoke-static {v0, p0}, Lb8/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static i(Lcom/miui/dock/sidebar/j;)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSidebarY: wrapper currentHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/dock/sidebar/j;->y()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SidebarLayoutUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/dock/sidebar/j;->y()I

    move-result p0

    return p0
.end method

.method public static j(Lcom/miui/dock/sidebar/j;Landroid/view/View;)V
    .locals 2

    const-string v0, "SidebarLayoutUtils"

    const-string v1, "resizeLayout"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    invoke-static {v0, v1}, La8/k2;->H(Landroid/view/WindowManager$LayoutParams;Z)V

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/miui/dock/sidebar/j;->o()Ls8/h;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Ls8/h;->v1(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public static k(Lcom/miui/dock/sidebar/j;Landroid/view/View;Z)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resizeWindow: fullScreen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SidebarLayoutUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    invoke-static {v0, p2}, La8/k2;->H(Landroid/view/WindowManager$LayoutParams;Z)V

    const/4 v1, -0x1

    const/4 v2, -0x2

    if-eqz p2, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {p0}, Lm5/g;->i(Lcom/miui/dock/sidebar/j;)I

    move-result v1

    :goto_2
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p0}, Lcom/miui/dock/sidebar/j;->o()Ls8/h;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Ls8/h;->v1(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public static l(Lcom/miui/dock/sidebar/j;Landroid/view/View;ZZ)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {p1}, Lm5/g;->g(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0, p1, p3}, Lm5/g;->f(Landroid/content/Context;Lcom/miui/dock/sidebar/j;Landroid/view/View;Z)I

    move-result p0

    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-static {p1, p2, p3}, Lm5/g;->e(Landroid/view/View;ZZ)I

    move-result p0

    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-static {}, La8/k2;->A()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, La8/k2;->l(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    sub-int/2addr p0, p2

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
