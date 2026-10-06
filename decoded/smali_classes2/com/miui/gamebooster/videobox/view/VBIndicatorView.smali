.class public Lcom/miui/gamebooster/videobox/view/VBIndicatorView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/graphics/Paint;

.field private d:F

.field private e:I

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gamebooster/videobox/view/VBIndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x2

    iput p2, p0, Lcom/miui/gamebooster/videobox/view/VBIndicatorView;->e:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/miui/gamebooster/videobox/view/VBIndicatorView;->f:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0601f2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/miui/gamebooster/videobox/view/VBIndicatorView;->a:I

    const p2, 0x7f0601f1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/miui/gamebooster/videobox/view/VBIndicatorView;->b:I

    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/miui/gamebooster/videobox/view/VBIndicatorView;->c:Landroid/graphics/Paint;

    invoke-static {}, Lx4/t;->p()Z

    move-result p3

    if-eqz p3, :cond_0

    const p3, 0x7f071ceb

    goto :goto_0

    :cond_0
    const p3, 0x7f070c80

    :goto_0
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/miui/gamebooster/videobox/view/VBIndicatorView;->c:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/miui/gamebooster/videobox/view/VBIndicatorView;->c:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object p1, p0, Lcom/miui/gamebooster/videobox/view/VBIndicatorView;->c:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method


# virtual methods
.method public a(IF)V
    .locals 1

    iput p1, p0, Lcom/miui/gamebooster/videobox/view/VBIndicatorView;->f:I

    iput p2, p0, Lcom/miui/gamebooster/videobox/view/VBIndicatorView;->d:F

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float v0, p2, p1

    if-lez v0, :cond_0

    :goto_0
    iput p1, p0, Lcom/miui/gamebooster/videobox/view/VBIndicatorView;->d:F

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    cmpg-float p2, p2, p1

    if-gez p2, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/view/VBIndicatorView;->c:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/gamebooster/videobox/view/VBIndicatorView;->b:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/miui/gamebooster/videobox/view/VBIndicatorView;->h:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v7, v0

    iget v1, p0, Lcom/miui/gamebooster/videobox/view/VBIndicatorView;->g:I

    sub-int/2addr v1, v0

    int-to-float v4, v1

    iget-object v6, p0, Lcom/miui/gamebooster/videobox/view/VBIndicatorView;->c:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, v7

    move v3, v7

    move v5, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/miui/gamebooster/videobox/view/VBIndicatorView;->c:Landroid/graphics/Paint;

    iget v2, p0, Lcom/miui/gamebooster/videobox/view/VBIndicatorView;->a:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, p0, Lcom/miui/gamebooster/videobox/view/VBIndicatorView;->g:I

    iget v2, p0, Lcom/miui/gamebooster/videobox/view/VBIndicatorView;->e:I

    div-int v2, v1, v2

    mul-int/lit8 v3, v0, 0x2

    sub-int v3, v2, v3

    iget v4, p0, Lcom/miui/gamebooster/videobox/view/VBIndicatorView;->f:I

    mul-int/2addr v4, v2

    int-to-float v4, v4

    int-to-float v2, v2

    iget v5, p0, Lcom/miui/gamebooster/videobox/view/VBIndicatorView;->d:F

    mul-float/2addr v2, v5

    add-float/2addr v4, v2

    float-to-int v2, v4

    add-int/2addr v2, v0

    add-int v4, v2, v3

    sub-int v5, v1, v0

    if-le v4, v5, :cond_0

    sub-int/2addr v1, v0

    sub-int v2, v1, v3

    :cond_0
    int-to-float v0, v2

    add-int/2addr v2, v3

    int-to-float v4, v2

    iget-object v6, p0, Lcom/miui/gamebooster/videobox/view/VBIndicatorView;->c:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, v0

    move v3, v7

    move v5, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iput p1, p0, Lcom/miui/gamebooster/videobox/view/VBIndicatorView;->g:I

    iput p2, p0, Lcom/miui/gamebooster/videobox/view/VBIndicatorView;->h:I

    iget-object p1, p0, Lcom/miui/gamebooster/videobox/view/VBIndicatorView;->c:Landroid/graphics/Paint;

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public setTotalCount(I)V
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/videobox/view/VBIndicatorView;->e:I

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
