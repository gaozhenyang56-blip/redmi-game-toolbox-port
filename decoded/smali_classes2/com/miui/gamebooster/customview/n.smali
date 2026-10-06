.class public Lcom/miui/gamebooster/customview/n;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/content/Context;

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:I

.field private i:I

.field private j:I

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/16 v0, 0xff

    iput v0, p0, Lcom/miui/gamebooster/customview/n;->h:I

    iput-object p1, p0, Lcom/miui/gamebooster/customview/n;->b:Landroid/content/Context;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/miui/gamebooster/customview/n;->a:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/miui/gamebooster/customview/n;->a:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/miui/gamebooster/customview/n;->a:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object p1, p0, Lcom/miui/gamebooster/customview/n;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070f1b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/miui/gamebooster/customview/n;->c:F

    iget-object p1, p0, Lcom/miui/gamebooster/customview/n;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070f02

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/miui/gamebooster/customview/n;->f:F

    iget-object p1, p0, Lcom/miui/gamebooster/customview/n;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070f19

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/miui/gamebooster/customview/n;->d:F

    iput p1, p0, Lcom/miui/gamebooster/customview/n;->e:F

    iget-object p1, p0, Lcom/miui/gamebooster/customview/n;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070f18

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/miui/gamebooster/customview/n;->g:F

    iget-object p1, p0, Lcom/miui/gamebooster/customview/n;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060385

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/miui/gamebooster/customview/n;->i:I

    iget-object p1, p0, Lcom/miui/gamebooster/customview/n;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060382

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/miui/gamebooster/customview/n;->j:I

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/customview/n;->k:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public b(F)V
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/customview/n;->e:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/miui/gamebooster/customview/n;->d:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 12

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    iget v0, p0, Lcom/miui/gamebooster/customview/n;->d:F

    invoke-static {v0, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lcom/miui/gamebooster/customview/n;->c:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v2, p0, Lcom/miui/gamebooster/customview/n;->g:F

    mul-float/2addr v0, v1

    sub-float v3, v2, v0

    div-float/2addr v3, v1

    sub-float/2addr v2, v0

    div-float/2addr v2, v1

    iget-object v4, p0, Lcom/miui/gamebooster/customview/n;->a:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v4, p0, Lcom/miui/gamebooster/customview/n;->a:Landroid/graphics/Paint;

    iget v5, p0, Lcom/miui/gamebooster/customview/n;->h:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-boolean v4, p0, Lcom/miui/gamebooster/customview/n;->k:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/miui/gamebooster/customview/n;->j:I

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/miui/gamebooster/customview/n;->i:I

    :goto_0
    iget-object v5, p0, Lcom/miui/gamebooster/customview/n;->a:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, p0, Lcom/miui/gamebooster/customview/n;->a:Landroid/graphics/Paint;

    iget v5, p0, Lcom/miui/gamebooster/customview/n;->c:F

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v7, Landroid/graphics/RectF;

    add-float v4, v3, v0

    add-float/2addr v0, v2

    invoke-direct {v7, v3, v2, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v8, 0x0

    const/high16 v9, 0x43b40000    # 360.0f

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/miui/gamebooster/customview/n;->a:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/miui/gamebooster/customview/n;->d:F

    iget v2, p0, Lcom/miui/gamebooster/customview/n;->c:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/miui/gamebooster/customview/n;->f:F

    mul-float/2addr v2, v1

    sub-float/2addr v0, v2

    div-float/2addr v0, v1

    iget-object v2, p0, Lcom/miui/gamebooster/customview/n;->a:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v2, p0, Lcom/miui/gamebooster/customview/n;->g:F

    div-float/2addr v2, v1

    iget-object v1, p0, Lcom/miui/gamebooster/customview/n;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/customview/n;->h:I

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
