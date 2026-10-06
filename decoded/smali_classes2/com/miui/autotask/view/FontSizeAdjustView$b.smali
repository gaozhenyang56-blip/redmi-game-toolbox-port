.class Lcom/miui/autotask/view/FontSizeAdjustView$b;
.super Landroidx/customview/widget/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/autotask/view/FontSizeAdjustView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private a:Z

.field final synthetic b:Lcom/miui/autotask/view/FontSizeAdjustView;


# direct methods
.method public constructor <init>(Lcom/miui/autotask/view/FontSizeAdjustView;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/autotask/view/FontSizeAdjustView$b;->b:Lcom/miui/autotask/view/FontSizeAdjustView;

    invoke-direct {p0, p2}, Landroidx/customview/widget/a;-><init>(Landroid/view/View;)V

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/miui/autotask/view/FontSizeAdjustView$b;->a:Z

    return-void
.end method

.method private a(I)Landroid/graphics/Rect;
    .locals 4

    iget-boolean v0, p0, Lcom/miui/autotask/view/FontSizeAdjustView$b;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/autotask/view/FontSizeAdjustView$b;->b:Lcom/miui/autotask/view/FontSizeAdjustView;

    invoke-static {v0}, Lcom/miui/autotask/view/FontSizeAdjustView;->a(Lcom/miui/autotask/view/FontSizeAdjustView;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int p1, v0, p1

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/miui/autotask/view/FontSizeAdjustView$b;->b:Lcom/miui/autotask/view/FontSizeAdjustView;

    invoke-static {v1}, Lcom/miui/autotask/view/FontSizeAdjustView;->h(Lcom/miui/autotask/view/FontSizeAdjustView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v1, p0, Lcom/miui/autotask/view/FontSizeAdjustView$b;->b:Lcom/miui/autotask/view/FontSizeAdjustView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p1

    float-to-int p1, p1

    const/4 v2, 0x0

    float-to-int v1, v1

    iget-object v3, p0, Lcom/miui/autotask/view/FontSizeAdjustView$b;->b:Lcom/miui/autotask/view/FontSizeAdjustView;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v0, p1, v2, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-object v0
.end method

.method private b()I
    .locals 2

    iget-object v0, p0, Lcom/miui/autotask/view/FontSizeAdjustView$b;->b:Lcom/miui/autotask/view/FontSizeAdjustView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/miui/autotask/view/FontSizeAdjustView$b;->b:Lcom/miui/autotask/view/FontSizeAdjustView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/miui/autotask/view/FontSizeAdjustView$b;->b:Lcom/miui/autotask/view/FontSizeAdjustView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/miui/autotask/view/FontSizeAdjustView$b;->b:Lcom/miui/autotask/view/FontSizeAdjustView;

    invoke-static {v1}, Lcom/miui/autotask/view/FontSizeAdjustView;->a(Lcom/miui/autotask/view/FontSizeAdjustView;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v1, v1, 0x2

    div-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private c(F)I
    .locals 1

    float-to-int p1, p1

    iget-object v0, p0, Lcom/miui/autotask/view/FontSizeAdjustView$b;->b:Lcom/miui/autotask/view/FontSizeAdjustView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-direct {p0}, Lcom/miui/autotask/view/FontSizeAdjustView$b;->b()I

    move-result v0

    div-int/2addr p1, v0

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    div-int/lit8 p1, p1, 0x2

    iget-object v0, p0, Lcom/miui/autotask/view/FontSizeAdjustView$b;->b:Lcom/miui/autotask/view/FontSizeAdjustView;

    invoke-static {v0}, Lcom/miui/autotask/view/FontSizeAdjustView;->a(Lcom/miui/autotask/view/FontSizeAdjustView;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-boolean v0, p0, Lcom/miui/autotask/view/FontSizeAdjustView$b;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/autotask/view/FontSizeAdjustView$b;->b:Lcom/miui/autotask/view/FontSizeAdjustView;

    invoke-static {v0}, Lcom/miui/autotask/view/FontSizeAdjustView;->a(Lcom/miui/autotask/view/FontSizeAdjustView;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int p1, v0, p1

    :cond_0
    return p1
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/autotask/view/FontSizeAdjustView$b;->c(F)I

    move-result p1

    return p1
.end method

.method protected getVisibleVirtualViews(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/autotask/view/FontSizeAdjustView$b;->b:Lcom/miui/autotask/view/FontSizeAdjustView;

    invoke-static {v0}, Lcom/miui/autotask/view/FontSizeAdjustView;->a(Lcom/miui/autotask/view/FontSizeAdjustView;)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 2

    iget-boolean p3, p0, Lcom/miui/autotask/view/FontSizeAdjustView$b;->a:Z

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/miui/autotask/view/FontSizeAdjustView$b;->b:Lcom/miui/autotask/view/FontSizeAdjustView;

    invoke-static {p3}, Lcom/miui/autotask/view/FontSizeAdjustView;->a(Lcom/miui/autotask/view/FontSizeAdjustView;)I

    move-result p3

    sub-int/2addr p3, v0

    sub-int p1, p3, p1

    :cond_0
    const/4 p3, -0x1

    const/4 v1, 0x0

    if-ne p1, p3, :cond_1

    return v1

    :cond_1
    const/16 p3, 0x10

    if-eq p2, p3, :cond_2

    return v1

    :cond_2
    iget-object p2, p0, Lcom/miui/autotask/view/FontSizeAdjustView$b;->b:Lcom/miui/autotask/view/FontSizeAdjustView;

    invoke-static {p2}, Lcom/miui/autotask/view/FontSizeAdjustView;->b(Lcom/miui/autotask/view/FontSizeAdjustView;)I

    move-result p2

    if-eq p1, p2, :cond_5

    iget-object p2, p0, Lcom/miui/autotask/view/FontSizeAdjustView$b;->b:Lcom/miui/autotask/view/FontSizeAdjustView;

    invoke-static {p2, p1}, Lcom/miui/autotask/view/FontSizeAdjustView;->c(Lcom/miui/autotask/view/FontSizeAdjustView;I)I

    iget-object p2, p0, Lcom/miui/autotask/view/FontSizeAdjustView$b;->b:Lcom/miui/autotask/view/FontSizeAdjustView;

    invoke-static {p2}, Lcom/miui/autotask/view/FontSizeAdjustView;->d(Lcom/miui/autotask/view/FontSizeAdjustView;)Lcom/miui/autotask/view/FontSizeAdjustView$a;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/miui/autotask/view/FontSizeAdjustView$b;->b:Lcom/miui/autotask/view/FontSizeAdjustView;

    invoke-static {p2}, Lcom/miui/autotask/view/FontSizeAdjustView;->d(Lcom/miui/autotask/view/FontSizeAdjustView;)Lcom/miui/autotask/view/FontSizeAdjustView$a;

    move-result-object p2

    iget-object p3, p0, Lcom/miui/autotask/view/FontSizeAdjustView$b;->b:Lcom/miui/autotask/view/FontSizeAdjustView;

    invoke-static {p3}, Lcom/miui/autotask/view/FontSizeAdjustView;->e(Lcom/miui/autotask/view/FontSizeAdjustView;)Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/miui/autotask/view/FontSizeAdjustView$b;->b:Lcom/miui/autotask/view/FontSizeAdjustView;

    invoke-static {p3}, Lcom/miui/autotask/view/FontSizeAdjustView;->a(Lcom/miui/autotask/view/FontSizeAdjustView;)I

    move-result p3

    sub-int/2addr p3, v0

    iget-object v1, p0, Lcom/miui/autotask/view/FontSizeAdjustView$b;->b:Lcom/miui/autotask/view/FontSizeAdjustView;

    invoke-static {v1}, Lcom/miui/autotask/view/FontSizeAdjustView;->b(Lcom/miui/autotask/view/FontSizeAdjustView;)I

    move-result v1

    sub-int/2addr p3, v1

    goto :goto_0

    :cond_3
    iget-object p3, p0, Lcom/miui/autotask/view/FontSizeAdjustView$b;->b:Lcom/miui/autotask/view/FontSizeAdjustView;

    invoke-static {p3}, Lcom/miui/autotask/view/FontSizeAdjustView;->b(Lcom/miui/autotask/view/FontSizeAdjustView;)I

    move-result p3

    :goto_0
    invoke-interface {p2, p3}, Lcom/miui/autotask/view/FontSizeAdjustView$a;->a(I)V

    :cond_4
    iget-object p2, p0, Lcom/miui/autotask/view/FontSizeAdjustView$b;->b:Lcom/miui/autotask/view/FontSizeAdjustView;

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    iget-object p2, p0, Lcom/miui/autotask/view/FontSizeAdjustView$b;->b:Lcom/miui/autotask/view/FontSizeAdjustView;

    invoke-static {p2}, Lcom/miui/autotask/view/FontSizeAdjustView;->f(Lcom/miui/autotask/view/FontSizeAdjustView;)Lcom/miui/powercenter/autotask/k;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/powercenter/autotask/k;->c()V

    :cond_5
    invoke-virtual {p0, p1, v0}, Landroidx/customview/widget/a;->sendEventForVirtualView(II)Z

    return v0
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/autotask/view/FontSizeAdjustView$b;->b:Lcom/miui/autotask/view/FontSizeAdjustView;

    invoke-static {v0}, Lcom/miui/autotask/view/FontSizeAdjustView;->g(Lcom/miui/autotask/view/FontSizeAdjustView;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/autotask/view/FontSizeAdjustView$b;->b:Lcom/miui/autotask/view/FontSizeAdjustView;

    invoke-static {v0}, Lcom/miui/autotask/view/FontSizeAdjustView;->b(Lcom/miui/autotask/view/FontSizeAdjustView;)I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityRecord;->setChecked(Z)V

    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILc0/k;)V
    .locals 2

    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lc0/k;->n0(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p1}, Lcom/miui/autotask/view/FontSizeAdjustView$b;->a(I)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, v0}, Lc0/k;->j0(Landroid/graphics/Rect;)V

    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Lc0/k;->a(I)V

    iget-object v0, p0, Lcom/miui/autotask/view/FontSizeAdjustView$b;->b:Lcom/miui/autotask/view/FontSizeAdjustView;

    invoke-static {v0}, Lcom/miui/autotask/view/FontSizeAdjustView;->g(Lcom/miui/autotask/view/FontSizeAdjustView;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {p2, v0}, Lc0/k;->r0(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lc0/k;->o0(Z)V

    invoke-virtual {p2, v0}, Lc0/k;->l0(Z)V

    iget-object v1, p0, Lcom/miui/autotask/view/FontSizeAdjustView$b;->b:Lcom/miui/autotask/view/FontSizeAdjustView;

    invoke-static {v1}, Lcom/miui/autotask/view/FontSizeAdjustView;->b(Lcom/miui/autotask/view/FontSizeAdjustView;)I

    move-result v1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Lc0/k;->m0(Z)V

    return-void
.end method
