.class public Lcom/miui/gamebooster/customview/h;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Path;

.field private c:Landroid/content/res/Resources;

.field private d:I

.field private e:I

.field private f:Landroid/graphics/Bitmap;

.field private g:Landroid/graphics/Bitmap;

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gamebooster/customview/h;->d:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gamebooster/customview/h;->c:Landroid/content/res/Resources;

    const v0, 0x7f060385

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/miui/gamebooster/customview/h;->e:I

    iget-object p1, p0, Lcom/miui/gamebooster/customview/h;->c:Landroid/content/res/Resources;

    const v0, 0x7f070f15

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/miui/gamebooster/customview/h;->h:F

    iget-object p1, p0, Lcom/miui/gamebooster/customview/h;->c:Landroid/content/res/Resources;

    const v0, 0x7f070f11

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/miui/gamebooster/customview/h;->j:F

    iget-object p1, p0, Lcom/miui/gamebooster/customview/h;->c:Landroid/content/res/Resources;

    const v0, 0x7f070f0f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/miui/gamebooster/customview/h;->k:F

    iget-object p1, p0, Lcom/miui/gamebooster/customview/h;->c:Landroid/content/res/Resources;

    const v0, 0x7f070f10

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/miui/gamebooster/customview/h;->l:F

    iget-object p1, p0, Lcom/miui/gamebooster/customview/h;->c:Landroid/content/res/Resources;

    const v0, 0x7f070f0e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/miui/gamebooster/customview/h;->m:F

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/miui/gamebooster/customview/h;->a:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/miui/gamebooster/customview/h;->a:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/miui/gamebooster/customview/h;->a:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/miui/gamebooster/customview/h;->b:Landroid/graphics/Path;

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/customview/h;->f:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/miui/gamebooster/customview/h;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v2, p0, Lcom/miui/gamebooster/customview/h;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v2, p0, Lcom/miui/gamebooster/customview/h;->f:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/miui/gamebooster/customview/h;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 11

    iget-object v0, p0, Lcom/miui/gamebooster/customview/h;->c:Landroid/content/res/Resources;

    const v1, 0x7f060df0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/gamebooster/customview/h;->h:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v1, v2

    sub-float/2addr v3, v1

    div-float/2addr v3, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v1

    div-float/2addr v4, v2

    new-instance v2, Landroid/graphics/RectF;

    add-float v5, v3, v1

    add-float/2addr v1, v4

    invoke-direct {v2, v3, v4, v5, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lcom/miui/gamebooster/customview/h;->a:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/miui/gamebooster/customview/h;->c:Landroid/content/res/Resources;

    const v4, 0x7f060388

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/miui/gamebooster/customview/h;->a:Landroid/graphics/Paint;

    iget v3, p0, Lcom/miui/gamebooster/customview/h;->h:F

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v10, p0, Lcom/miui/gamebooster/customview/h;->a:Landroid/graphics/Paint;

    const/4 v7, 0x0

    const/high16 v8, 0x43b40000    # 360.0f

    const/4 v9, 0x0

    move-object v5, p1

    move-object v6, v2

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/miui/gamebooster/customview/h;->g:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v3, p0, Lcom/miui/gamebooster/customview/h;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v3, p0, Lcom/miui/gamebooster/customview/h;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v3, p0, Lcom/miui/gamebooster/customview/h;->g:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/miui/gamebooster/customview/h;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1, v0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    iget v0, p0, Lcom/miui/gamebooster/customview/h;->i:F

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/miui/gamebooster/customview/h;->a:Landroid/graphics/Paint;

    iget v3, p0, Lcom/miui/gamebooster/customview/h;->e:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/miui/gamebooster/customview/h;->a:Landroid/graphics/Paint;

    iget v3, p0, Lcom/miui/gamebooster/customview/h;->h:F

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v7, -0x3d4c0000    # -90.0f

    int-to-float v8, v0

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/miui/gamebooster/customview/h;->a:Landroid/graphics/Paint;

    move-object v5, p1

    move-object v6, v2

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-direct {p0}, Lcom/miui/gamebooster/customview/h;->j()V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/h;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/gamebooster/customview/h;->h:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/h;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/gamebooster/customview/h;->e:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/h;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/h;->b:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/miui/gamebooster/customview/h;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/customview/h;->g:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/miui/gamebooster/customview/h;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v2, p0, Lcom/miui/gamebooster/customview/h;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v2, p0, Lcom/miui/gamebooster/customview/h;->g:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/miui/gamebooster/customview/h;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private j()V
    .locals 8

    iget-object v0, p0, Lcom/miui/gamebooster/customview/h;->b:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/gamebooster/customview/h;->j:F

    sub-float v3, v1, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v5, p0, Lcom/miui/gamebooster/customview/h;->b:Landroid/graphics/Path;

    int-to-float v0, v0

    invoke-virtual {v5, v0, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v3, p0, Lcom/miui/gamebooster/customview/h;->b:Landroid/graphics/Path;

    invoke-virtual {v3, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget v2, p0, Lcom/miui/gamebooster/customview/h;->m:F

    iget v3, p0, Lcom/miui/gamebooster/customview/h;->h:F

    add-float/2addr v2, v3

    const/4 v3, 0x0

    add-float/2addr v2, v3

    iget v3, p0, Lcom/miui/gamebooster/customview/h;->k:F

    sub-float v5, v1, v3

    div-float/2addr v5, v4

    add-float/2addr v3, v5

    iget-object v6, p0, Lcom/miui/gamebooster/customview/h;->b:Landroid/graphics/Path;

    sub-float v7, v0, v2

    invoke-virtual {v6, v7, v5}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v6, p0, Lcom/miui/gamebooster/customview/h;->b:Landroid/graphics/Path;

    invoke-virtual {v6, v7, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v6, p0, Lcom/miui/gamebooster/customview/h;->b:Landroid/graphics/Path;

    add-float v7, v0, v2

    invoke-virtual {v6, v7, v5}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v5, p0, Lcom/miui/gamebooster/customview/h;->b:Landroid/graphics/Path;

    invoke-virtual {v5, v7, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget v3, p0, Lcom/miui/gamebooster/customview/h;->m:F

    iget v5, p0, Lcom/miui/gamebooster/customview/h;->h:F

    add-float/2addr v3, v5

    add-float/2addr v2, v3

    iget v3, p0, Lcom/miui/gamebooster/customview/h;->l:F

    sub-float/2addr v1, v3

    div-float/2addr v1, v4

    add-float/2addr v3, v1

    iget-object v4, p0, Lcom/miui/gamebooster/customview/h;->b:Landroid/graphics/Path;

    sub-float v5, v0, v2

    invoke-virtual {v4, v5, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v4, p0, Lcom/miui/gamebooster/customview/h;->b:Landroid/graphics/Path;

    invoke-virtual {v4, v5, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v4, p0, Lcom/miui/gamebooster/customview/h;->b:Landroid/graphics/Path;

    add-float/2addr v0, v2

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v1, p0, Lcom/miui/gamebooster/customview/h;->b:Landroid/graphics/Path;

    invoke-virtual {v1, v0, v3}, Landroid/graphics/Path;->lineTo(FF)V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/customview/h;->d:I

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    iget v0, p0, Lcom/miui/gamebooster/customview/h;->d:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/gamebooster/customview/h;->b(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/gamebooster/customview/h;->c(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/miui/gamebooster/customview/h;->a(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public e(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/customview/h;->f:Landroid/graphics/Bitmap;

    return-void
.end method

.method public f(F)V
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/customview/h;->i:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public g(I)V
    .locals 4

    const v0, 0x7f070f10

    const v1, 0x7f070f0f

    const v2, 0x7f070f11

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/gamebooster/customview/h;->c:Landroid/content/res/Resources;

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/miui/gamebooster/customview/h;->j:F

    iget-object p1, p0, Lcom/miui/gamebooster/customview/h;->c:Landroid/content/res/Resources;

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/miui/gamebooster/customview/h;->k:F

    iget-object p1, p0, Lcom/miui/gamebooster/customview/h;->c:Landroid/content/res/Resources;

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    :goto_0
    int-to-float p1, p1

    iput p1, p0, Lcom/miui/gamebooster/customview/h;->l:F

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    iget-object p1, p0, Lcom/miui/gamebooster/customview/h;->c:Landroid/content/res/Resources;

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/miui/gamebooster/customview/h;->j:F

    iget-object p1, p0, Lcom/miui/gamebooster/customview/h;->c:Landroid/content/res/Resources;

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/miui/gamebooster/customview/h;->k:F

    iget-object p1, p0, Lcom/miui/gamebooster/customview/h;->c:Landroid/content/res/Resources;

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public h(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/customview/h;->g:Landroid/graphics/Bitmap;

    return-void
.end method

.method public i(I)V
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/customview/h;->d:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
