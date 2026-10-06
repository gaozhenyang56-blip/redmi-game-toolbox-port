.class public Lcom/miui/earthquakewarning/view/RoundRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field public mStrokeColor:I

.field public mStrokeWidth:F

.field private final maskPaint:Landroid/graphics/Paint;

.field private roundCorner:F

.field private final roundRect:Landroid/graphics/RectF;

.field private final strokePaint:Landroid/graphics/Paint;

.field private final zonePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/earthquakewarning/view/RoundRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/earthquakewarning/view/RoundRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/miui/earthquakewarning/view/RoundRelativeLayout;->roundRect:Landroid/graphics/RectF;

    const/4 p3, 0x0

    iput p3, p0, Lcom/miui/earthquakewarning/view/RoundRelativeLayout;->roundCorner:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/earthquakewarning/view/RoundRelativeLayout;->maskPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/miui/earthquakewarning/view/RoundRelativeLayout;->zonePaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/miui/earthquakewarning/view/RoundRelativeLayout;->strokePaint:Landroid/graphics/Paint;

    iput p3, p0, Lcom/miui/earthquakewarning/view/RoundRelativeLayout;->mStrokeWidth:F

    const/4 p3, -0x1

    iput p3, p0, Lcom/miui/earthquakewarning/view/RoundRelativeLayout;->mStrokeColor:I

    const/4 v3, 0x1

    if-eqz p2, :cond_0

    sget-object v4, Lef/y;->M0:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    iget p2, p0, Lcom/miui/earthquakewarning/view/RoundRelativeLayout;->mStrokeColor:I

    invoke-virtual {p1, v3, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/miui/earthquakewarning/view/RoundRelativeLayout;->mStrokeColor:I

    const/4 p2, 0x2

    const/4 v4, 0x0

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/miui/earthquakewarning/view/RoundRelativeLayout;->mStrokeWidth:F

    invoke-virtual {p1, v4, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/miui/earthquakewarning/view/RoundRelativeLayout;->roundCorner:F

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget p1, p0, Lcom/miui/earthquakewarning/view/RoundRelativeLayout;->mStrokeColor:I

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget p1, p0, Lcom/miui/earthquakewarning/view/RoundRelativeLayout;->mStrokeWidth:F

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0, p3}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    iget v0, p0, Lcom/miui/earthquakewarning/view/RoundRelativeLayout;->roundCorner:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/earthquakewarning/view/RoundRelativeLayout;->roundRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/earthquakewarning/view/RoundRelativeLayout;->zonePaint:Landroid/graphics/Paint;

    const/16 v2, 0x1f

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    iget-object v0, p0, Lcom/miui/earthquakewarning/view/RoundRelativeLayout;->roundRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/miui/earthquakewarning/view/RoundRelativeLayout;->roundCorner:F

    iget-object v3, p0, Lcom/miui/earthquakewarning/view/RoundRelativeLayout;->zonePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/view/RoundRelativeLayout;->roundRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/earthquakewarning/view/RoundRelativeLayout;->maskPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iget-object v1, p0, Lcom/miui/earthquakewarning/view/RoundRelativeLayout;->roundRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/miui/earthquakewarning/view/RoundRelativeLayout;->mStrokeWidth:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, v3, v4

    add-float/2addr v2, v5

    iget v5, v1, Landroid/graphics/RectF;->top:F

    div-float v6, v3, v4

    add-float/2addr v5, v6

    iget v6, v1, Landroid/graphics/RectF;->right:F

    div-float v7, v3, v4

    sub-float/2addr v6, v7

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v3, v4

    sub-float/2addr v1, v3

    invoke-virtual {v0, v2, v5, v6, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget v1, p0, Lcom/miui/earthquakewarning/view/RoundRelativeLayout;->roundCorner:F

    iget-object v2, p0, Lcom/miui/earthquakewarning/view/RoundRelativeLayout;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    iget-object p3, p0, Lcom/miui/earthquakewarning/view/RoundRelativeLayout;->roundRect:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public setCorner(F)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/miui/earthquakewarning/view/RoundRelativeLayout;->roundCorner:F

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/miui/earthquakewarning/view/RoundRelativeLayout;->roundCorner:F

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/miui/earthquakewarning/view/RoundRelativeLayout;->mStrokeWidth:F

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/miui/earthquakewarning/view/RoundRelativeLayout;->mStrokeWidth:F

    :goto_0
    iget-object p1, p0, Lcom/miui/earthquakewarning/view/RoundRelativeLayout;->strokePaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/miui/earthquakewarning/view/RoundRelativeLayout;->mStrokeWidth:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
