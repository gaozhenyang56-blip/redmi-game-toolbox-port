.class public Llf/a;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/res/Resources;

.field private b:Landroid/graphics/Xfermode;

.field private c:Landroid/graphics/Path;

.field private d:Landroid/graphics/Paint;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:F

.field private k:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/16 v0, 0x3c

    iput v0, p0, Llf/a;->g:I

    const/4 v0, 0x0

    iput v0, p0, Llf/a;->j:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Llf/a;->a:Landroid/content/res/Resources;

    const p1, 0x7f060b4c

    iput p1, p0, Llf/a;->f:I

    iput p2, p0, Llf/a;->e:I

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Llf/a;->d:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Llf/a;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object p1, p0, Llf/a;->d:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Llf/a;->b:Landroid/graphics/Xfermode;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Llf/a;->c:Landroid/graphics/Path;

    iget-object p1, p0, Llf/a;->a:Landroid/content/res/Resources;

    const p2, 0x7f07164a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Llf/a;->h:I

    iget-object p1, p0, Llf/a;->a:Landroid/content/res/Resources;

    const p2, 0x7f071649

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Llf/a;->i:I

    iget-object p1, p0, Llf/a;->a:Landroid/content/res/Resources;

    iget p2, p0, Llf/a;->e:I

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Llf/a;->k:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Llf/a;->f:I

    return-void
.end method

.method public b(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    iput v0, p0, Llf/a;->j:F

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v4, p0, Llf/a;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int v4, v1, v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Llf/a;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int v5, v0, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v6, v2, Landroid/graphics/Rect;->left:I

    int-to-float v8, v6

    iget v6, v2, Landroid/graphics/Rect;->top:I

    int-to-float v9, v6

    iget v6, v2, Landroid/graphics/Rect;->right:I

    int-to-float v10, v6

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v11, v2

    iget-object v12, p0, Llf/a;->d:Landroid/graphics/Paint;

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result v2

    iget-object v6, p0, Llf/a;->k:Landroid/graphics/Bitmap;

    iget-object v7, p0, Llf/a;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v4, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v4, p0, Llf/a;->d:Landroid/graphics/Paint;

    iget-object v5, p0, Llf/a;->b:Landroid/graphics/Xfermode;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v4, p0, Llf/a;->d:Landroid/graphics/Paint;

    iget-object v5, p0, Llf/a;->a:Landroid/content/res/Resources;

    const v6, 0x7f060b4d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v0, v0

    iget v4, p0, Llf/a;->j:F

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iget v4, p0, Llf/a;->g:I

    div-int v4, v1, v4

    int-to-double v4, v4

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    iget-object v5, p0, Llf/a;->c:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    iget-object v5, p0, Llf/a;->c:Landroid/graphics/Path;

    iget v6, p0, Llf/a;->g:I

    neg-int v6, v6

    int-to-float v6, v6

    int-to-float v7, v0

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_0

    iget-object v6, p0, Llf/a;->c:Landroid/graphics/Path;

    iget v8, p0, Llf/a;->g:I

    neg-int v9, v8

    mul-int/lit8 v9, v9, 0x3

    div-int/lit8 v9, v9, 0x4

    mul-int v10, v5, v8

    add-int/2addr v9, v10

    int-to-float v9, v9

    add-int/lit8 v10, v0, -0x7

    int-to-float v10, v10

    neg-int v11, v8

    div-int/lit8 v11, v11, 0x2

    mul-int/2addr v8, v5

    add-int/2addr v11, v8

    int-to-float v8, v11

    invoke-virtual {v6, v9, v10, v8, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object v6, p0, Llf/a;->c:Landroid/graphics/Path;

    iget v8, p0, Llf/a;->g:I

    neg-int v9, v8

    mul-int/lit8 v9, v9, 0x1

    div-int/lit8 v9, v9, 0x4

    mul-int v10, v5, v8

    add-int/2addr v9, v10

    int-to-float v9, v9

    add-int/lit8 v10, v0, 0x7

    int-to-float v10, v10

    mul-int/2addr v8, v5

    add-int/2addr v8, v3

    int-to-float v8, v8

    invoke-virtual {v6, v9, v10, v8, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Llf/a;->c:Landroid/graphics/Path;

    int-to-float v1, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Llf/a;->c:Landroid/graphics/Path;

    invoke-virtual {v0, v3, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Llf/a;->c:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, p0, Llf/a;->c:Landroid/graphics/Path;

    iget-object v1, p0, Llf/a;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Llf/a;->d:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Llf/a;->d:Landroid/graphics/Paint;

    iget-object v1, p0, Llf/a;->a:Landroid/content/res/Resources;

    iget v3, p0, Llf/a;->f:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget v0, p0, Llf/a;->i:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget v0, p0, Llf/a;->h:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method
