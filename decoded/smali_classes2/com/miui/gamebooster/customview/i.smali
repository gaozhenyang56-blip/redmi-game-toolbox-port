.class public Lcom/miui/gamebooster/customview/i;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Paint;

.field private c:I

.field private d:I

.field private e:Landroid/graphics/RectF;

.field private f:Landroid/graphics/RectF;

.field private g:Z

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIII)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/gamebooster/customview/i;->g:Z

    iput p2, p0, Lcom/miui/gamebooster/customview/i;->i:I

    iput p5, p0, Lcom/miui/gamebooster/customview/i;->h:I

    iput p3, p0, Lcom/miui/gamebooster/customview/i;->c:I

    iput p4, p0, Lcom/miui/gamebooster/customview/i;->d:I

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/miui/gamebooster/customview/i;->a:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/miui/gamebooster/customview/i;->a:Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/miui/gamebooster/customview/i;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/miui/gamebooster/customview/i;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/customview/i;->b:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/miui/gamebooster/customview/i;->b:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 p4, 0x3fc00000    # 1.5f

    invoke-static {p2, p4}, La8/k2;->a(Landroid/content/Context;F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/miui/gamebooster/customview/i;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/miui/gamebooster/customview/i;->e:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 p3, 0x40800000    # 4.0f

    invoke-static {p2, p3}, La8/k2;->a(Landroid/content/Context;F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p5

    invoke-static {p5, p3}, La8/k2;->a(Landroid/content/Context;F)I

    move-result p5

    int-to-float p5, p5

    iget v0, p0, Lcom/miui/gamebooster/customview/i;->c:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p3}, La8/k2;->a(Landroid/content/Context;F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/gamebooster/customview/i;->d:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p3}, La8/k2;->a(Landroid/content/Context;F)I

    move-result p3

    sub-int/2addr v1, p3

    int-to-float p3, v1

    invoke-virtual {p1, p2, p5, v0, p3}, Landroid/graphics/RectF;->set(FFFF)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/miui/gamebooster/customview/i;->f:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p4}, La8/k2;->a(Landroid/content/Context;F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p4}, La8/k2;->a(Landroid/content/Context;F)I

    move-result p3

    int-to-float p3, p3

    iget p5, p0, Lcom/miui/gamebooster/customview/i;->c:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p4}, La8/k2;->a(Landroid/content/Context;F)I

    move-result v0

    sub-int/2addr p5, v0

    int-to-float p5, p5

    iget v0, p0, Lcom/miui/gamebooster/customview/i;->d:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p4}, La8/k2;->a(Landroid/content/Context;F)I

    move-result p4

    sub-int/2addr v0, p4

    int-to-float p4, v0

    invoke-virtual {p1, p2, p3, p5, p4}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/customview/i;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/gamebooster/customview/i;->h:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/i;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/gamebooster/customview/i;->h:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/customview/i;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/gamebooster/customview/i;->i:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/i;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/gamebooster/customview/i;->i:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/i;->e:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/gamebooster/customview/i;->a:Landroid/graphics/Paint;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-boolean v0, p0, Lcom/miui/gamebooster/customview/i;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/customview/i;->f:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/gamebooster/customview/i;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget p1, p0, Lcom/miui/gamebooster/customview/i;->c:I

    iget p2, p0, Lcom/miui/gamebooster/customview/i;->d:I

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setSelect(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/customview/i;->g:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    :cond_1
    iput-boolean p1, p0, Lcom/miui/gamebooster/customview/i;->g:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method
