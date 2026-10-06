.class public Lcom/miui/gamebooster/videobox/view/DisplayStyleImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Xfermode;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Landroid/graphics/RectF;

.field private g:Landroid/graphics/RectF;

.field private h:Landroid/graphics/Paint;

.field private i:Landroid/graphics/Path;

.field private j:Landroid/graphics/Bitmap;

.field private k:I

.field private l:I

.field private m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gamebooster/videobox/view/DisplayStyleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    iput p2, p0, Lcom/miui/gamebooster/videobox/view/DisplayStyleImageView;->c:I

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/miui/gamebooster/videobox/view/DisplayStyleImageView;->m:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0601f0

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/miui/gamebooster/videobox/view/DisplayStyleImageView;->c:I

    const p2, 0x7f071cd9

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/miui/gamebooster/videobox/view/DisplayStyleImageView;->d:I

    const p2, 0x7f071cda

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/miui/gamebooster/videobox/view/DisplayStyleImageView;->b:I

    invoke-direct {p0}, Lcom/miui/gamebooster/videobox/view/DisplayStyleImageView;->d()V

    return-void
.end method

.method private a()V
    .locals 6

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/view/DisplayStyleImageView;->f:Landroid/graphics/RectF;

    iget v1, p0, Lcom/miui/gamebooster/videobox/view/DisplayStyleImageView;->k:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/gamebooster/videobox/view/DisplayStyleImageView;->l:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget v0, p0, Lcom/miui/gamebooster/videobox/view/DisplayStyleImageView;->b:I

    div-int/lit8 v1, v0, 0x3

    div-int/lit8 v0, v0, 0x3

    iget-object v2, p0, Lcom/miui/gamebooster/videobox/view/DisplayStyleImageView;->g:Landroid/graphics/RectF;

    int-to-float v3, v1

    int-to-float v4, v0

    iget v5, p0, Lcom/miui/gamebooster/videobox/view/DisplayStyleImageView;->k:I

    sub-int/2addr v5, v1

    int-to-float v1, v5

    iget v5, p0, Lcom/miui/gamebooster/videobox/view/DisplayStyleImageView;->l:I

    sub-int/2addr v5, v0

    int-to-float v0, v5

    invoke-virtual {v2, v3, v4, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/view/DisplayStyleImageView;->i:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/view/DisplayStyleImageView;->h:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/gamebooster/videobox/view/DisplayStyleImageView;->b:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/view/DisplayStyleImageView;->h:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/gamebooster/videobox/view/DisplayStyleImageView;->c:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/view/DisplayStyleImageView;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/view/DisplayStyleImageView;->i:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/miui/gamebooster/videobox/view/DisplayStyleImageView;->g:Landroid/graphics/RectF;

    iget v2, p0, Lcom/miui/gamebooster/videobox/view/DisplayStyleImageView;->e:I

    int-to-float v3, v2

    int-to-float v2, v2

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/view/DisplayStyleImageView;->i:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/miui/gamebooster/videobox/view/DisplayStyleImageView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/view/DisplayStyleImageView;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/view/DisplayStyleImageView;->h:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/miui/gamebooster/videobox/view/DisplayStyleImageView;->a:Landroid/graphics/Xfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/view/DisplayStyleImageView;->j:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/view/DisplayStyleImageView;->f:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/miui/gamebooster/videobox/view/DisplayStyleImageView;->f:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    float-to-int v1, v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/videobox/view/DisplayStyleImageView;->j:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/miui/gamebooster/videobox/view/DisplayStyleImageView;->j:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/miui/gamebooster/videobox/view/DisplayStyleImageView;->f:Landroid/graphics/RectF;

    iget v3, p0, Lcom/miui/gamebooster/videobox/view/DisplayStyleImageView;->d:I

    int-to-float v4, v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v4, v3, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/videobox/view/DisplayStyleImageView;->j:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/miui/gamebooster/videobox/view/DisplayStyleImageView;->h:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object p1, p0, Lcom/miui/gamebooster/videobox/view/DisplayStyleImageView;->h:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method private d()V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gamebooster/videobox/view/DisplayStyleImageView;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/videobox/view/DisplayStyleImageView;->i:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/videobox/view/DisplayStyleImageView;->f:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/miui/gamebooster/videobox/view/DisplayStyleImageView;->a:Landroid/graphics/Xfermode;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/videobox/view/DisplayStyleImageView;->g:Landroid/graphics/RectF;

    iget v0, p0, Lcom/miui/gamebooster/videobox/view/DisplayStyleImageView;->d:I

    iget v1, p0, Lcom/miui/gamebooster/videobox/view/DisplayStyleImageView;->b:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/miui/gamebooster/videobox/view/DisplayStyleImageView;->e:I

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/view/DisplayStyleImageView;->f:Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/16 v2, 0x1f

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    move-result v0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/miui/gamebooster/videobox/view/DisplayStyleImageView;->h:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->reset()V

    iget-object v1, p0, Lcom/miui/gamebooster/videobox/view/DisplayStyleImageView;->i:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/videobox/view/DisplayStyleImageView;->c(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-boolean v0, p0, Lcom/miui/gamebooster/videobox/view/DisplayStyleImageView;->m:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/videobox/view/DisplayStyleImageView;->b(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    iput p1, p0, Lcom/miui/gamebooster/videobox/view/DisplayStyleImageView;->k:I

    iput p2, p0, Lcom/miui/gamebooster/videobox/view/DisplayStyleImageView;->l:I

    invoke-direct {p0}, Lcom/miui/gamebooster/videobox/view/DisplayStyleImageView;->a()V

    return-void
.end method

.method public setDrawBorder(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/videobox/view/DisplayStyleImageView;->m:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
