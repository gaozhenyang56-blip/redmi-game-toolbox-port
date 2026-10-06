.class public Lcom/miui/maml/util/MamlAccessHelper;
.super Landroidx/customview/widget/a;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "MamlAccessHelper"


# instance fields
.field mHostView:Landroid/view/View;

.field mRoot:Lcom/miui/maml/ScreenElementRoot;


# direct methods
.method public constructor <init>(Lcom/miui/maml/ScreenElementRoot;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p2}, Landroidx/customview/widget/a;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/miui/maml/util/MamlAccessHelper;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    iput-object p2, p0, Lcom/miui/maml/util/MamlAccessHelper;->mHostView:Landroid/view/View;

    invoke-virtual {p1, p0}, Lcom/miui/maml/ScreenElementRoot;->setMamlAccessHelper(Lcom/miui/maml/util/MamlAccessHelper;)V

    return-void
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .locals 4

    iget-object v0, p0, Lcom/miui/maml/util/MamlAccessHelper;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getAccessibleElements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/elements/AnimatedScreenElement;

    invoke-virtual {v2}, Lcom/miui/maml/elements/ScreenElement;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->touched(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/high16 p1, -0x80000000

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

    iget-object v0, p0, Lcom/miui/maml/util/MamlAccessHelper;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getAccessibleElements()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/elements/AnimatedScreenElement;

    invoke-virtual {v2}, Lcom/miui/maml/elements/ScreenElement;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 2

    iget-object p3, p0, Lcom/miui/maml/util/MamlAccessHelper;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    const/16 v1, 0x10

    if-eq p2, v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p3}, Lcom/miui/maml/ScreenElementRoot;->getAccessibleElements()Ljava/util/List;

    move-result-object p2

    if-ltz p1, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge p1, p3, :cond_2

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/maml/elements/AnimatedScreenElement;

    const-string p2, "up"

    invoke-virtual {p1, p2}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    instance-of p2, p1, Lcom/miui/maml/elements/ButtonScreenElement;

    if-eqz p2, :cond_1

    check-cast p1, Lcom/miui/maml/elements/ButtonScreenElement;

    invoke-virtual {p1}, Lcom/miui/maml/elements/ButtonScreenElement;->onActionUp()V

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/maml/util/MamlAccessHelper;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getAccessibleElements()Ljava/util/List;

    move-result-object v0

    if-ltz p1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/maml/elements/AnimatedScreenElement;

    invoke-virtual {p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->getContentDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityRecord;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILc0/k;)V
    .locals 5
    .param p2    # Lc0/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/maml/util/MamlAccessHelper;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getAccessibleElements()Ljava/util/List;

    move-result-object v0

    const-string v1, ""

    const-string v2, "MamlAccessHelper"

    if-ltz p1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge p1, v3, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/maml/elements/AnimatedScreenElement;

    invoke-virtual {p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->getContentDescription()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "element.getContentDescription() == null "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/maml/elements/ScreenElement;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-virtual {p2, v1}, Lc0/k;->r0(Ljava/lang/CharSequence;)V

    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Lc0/k;->a(I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAbsoluteLeft()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAbsoluteTop()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAbsoluteLeft()F

    move-result v3

    invoke-virtual {p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->getWidth()F

    move-result v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAbsoluteTop()F

    move-result v4

    invoke-virtual {p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    move-result p1

    add-float/2addr v4, p1

    float-to-int p1, v4

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p2, v0}, Lc0/k;->j0(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "virtualViewId not found "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2, v1}, Lc0/k;->r0(Ljava/lang/CharSequence;)V

    new-instance p1, Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p2, p1}, Lc0/k;->j0(Landroid/graphics/Rect;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public performAccessibilityAction(II)V
    .locals 2

    iget-object v0, p0, Lcom/miui/maml/util/MamlAccessHelper;->mHostView:Landroid/view/View;

    new-instance v1, Lcom/miui/maml/util/MamlAccessHelper$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/maml/util/MamlAccessHelper$1;-><init>(Lcom/miui/maml/util/MamlAccessHelper;II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public removeRoot()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/maml/util/MamlAccessHelper;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    return-void
.end method
