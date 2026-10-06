.class public Le5/n;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field a:Landroid/graphics/Bitmap;

.field b:Landroid/graphics/Bitmap;

.field c:Landroid/graphics/Paint;

.field d:I

.field e:I

.field f:I

.field g:Z

.field private h:Landroid/graphics/Rect;

.field private i:Landroid/graphics/Rect;

.field private j:Landroid/graphics/RectF;

.field private k:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Le5/n;->c:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Rect;ILandroid/graphics/Bitmap;)V
    .locals 1

    invoke-direct {p0, p1}, Le5/n;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Le5/n;->h:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Le5/n;->i:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Le5/n;->j:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Le5/n;->k:Landroid/graphics/Rect;

    invoke-virtual {p0, p3}, Le5/n;->setIconLength(I)V

    iput-object p4, p0, Le5/n;->a:Landroid/graphics/Bitmap;

    invoke-static {p1, p4}, Le5/j;->b(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Le5/n;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f071a6d

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Le5/n;->d:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f071a6f

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Le5/n;->e:I

    iget-object p2, p0, Le5/n;->c:Landroid/graphics/Paint;

    const p3, 0x7f06025f

    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1d

    if-lt p1, p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isForceDarkAllowed()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setForceDarkAllowed(Z)V

    :cond_0
    return-void
.end method

.method private getBgRectF()Landroid/graphics/RectF;
    .locals 4

    iget-object v0, p0, Le5/n;->j:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Le5/n;->j:Landroid/graphics/RectF;

    return-object v0
.end method

.method private getIconRect()Landroid/graphics/Rect;
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p0, Le5/n;->f:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v2, p0, Le5/n;->f:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget-object v3, p0, Le5/n;->k:Landroid/graphics/Rect;

    add-int v4, v0, v2

    add-int/2addr v2, v1

    invoke-virtual {v3, v0, v1, v4, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Le5/n;->k:Landroid/graphics/Rect;

    return-object v0
.end method


# virtual methods
.method public getCurrentRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Le5/n;->h:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getViewRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Le5/n;->i:Landroid/graphics/Rect;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Le5/n;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Le5/n;->c:Landroid/graphics/Paint;

    iget v1, p0, Le5/n;->d:I

    int-to-float v1, v1

    iget v2, p0, Le5/n;->e:I

    int-to-float v3, v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f060d15

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    invoke-direct {p0}, Le5/n;->getBgRectF()Landroid/graphics/RectF;

    move-result-object v0

    iget v1, p0, Le5/n;->d:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Le5/n;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Le5/n;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->clearShadowLayer()V

    :try_start_0
    iget-object v0, p0, Le5/n;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Le5/n;->g:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/lit16 v1, v1, -0x320

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/lit16 v3, v3, -0x320

    int-to-float v3, v3

    div-float/2addr v3, v2

    iget-object v2, p0, Le5/n;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    iget-object v0, p0, Le5/n;->a:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-direct {p0}, Le5/n;->getIconRect()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Le5/n;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDraw: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShadowedIconView"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 1

    iput-object p1, p0, Le5/n;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Le5/n;->a:Landroid/graphics/Bitmap;

    invoke-static {p1, v0}, Le5/j;->b(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Le5/n;->b:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setIconLength(I)V
    .locals 0

    iput p1, p0, Le5/n;->f:I

    return-void
.end method

.method public setShowShadowIcon(Z)V
    .locals 0

    iput-boolean p1, p0, Le5/n;->g:Z

    return-void
.end method
