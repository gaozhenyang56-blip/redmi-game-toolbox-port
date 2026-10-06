.class public Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;
.super Lcom/miui/common/widgets/gif/GifImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/videobox/view/VideoEffectImageView$a;
    }
.end annotation


# instance fields
.field private m:Landroid/graphics/Xfermode;

.field private n:I

.field private o:Landroid/graphics/RectF;

.field private p:Landroid/graphics/Paint;

.field private q:Landroid/graphics/Path;

.field private r:Landroid/graphics/Bitmap;

.field private s:I

.field private t:I

.field private u:Z

.field private v:Z

.field private w:Lcom/miui/gamebooster/videobox/view/VideoEffectImageView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/common/widgets/gif/GifImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f071ccc

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;->n:I

    sget-object p3, Lef/y;->L4:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;->u:Z

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;->v:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;->p()V

    return-void
.end method

.method static synthetic j(Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;)Lcom/miui/gamebooster/videobox/view/VideoEffectImageView$a;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;->w:Lcom/miui/gamebooster/videobox/view/VideoEffectImageView$a;

    return-object p0
.end method

.method static synthetic k(Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;)I
    .locals 0

    iget p0, p0, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;->s:I

    return p0
.end method

.method static synthetic l(Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;)I
    .locals 0

    iget p0, p0, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;->t:I

    return p0
.end method

.method static synthetic m(Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;->o:Landroid/graphics/RectF;

    return-object p0
.end method

.method private n()V
    .locals 5

    iget-boolean v0, p0, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;->u:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;->o:Landroid/graphics/RectF;

    iget v2, p0, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;->s:I

    :goto_0
    int-to-float v2, v2

    iget v3, p0, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;->t:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;->v:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;->o:Landroid/graphics/RectF;

    iget v2, p0, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;->s:I

    iget v3, p0, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;->n:I

    add-int/2addr v2, v3

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;->o:Landroid/graphics/RectF;

    iget v2, p0, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;->n:I

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;->s:I

    int-to-float v3, v3

    iget v4, p0, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;->t:I

    int-to-float v4, v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_1
    return-void
.end method

.method private o(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;->p:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;->m:Landroid/graphics/Xfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;->r:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;->o:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;->o:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    float-to-int v1, v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;->r:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;->r:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;->o:Landroid/graphics/RectF;

    iget v3, p0, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;->n:I

    int-to-float v4, v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v4, v3, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;->r:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;->p:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object p1, p0, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;->p:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method private p()V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;->q:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;->o:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;->m:Landroid/graphics/Xfermode;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;->o:Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/16 v2, 0x1f

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    move-result v0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;->p:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->reset()V

    iget-object v1, p0, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;->q:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;->o(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    iput p1, p0, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;->s:I

    iput p2, p0, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;->t:I

    invoke-direct {p0}, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;->n()V

    return-void
.end method

.method public q()V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;->w:Lcom/miui/gamebooster/videobox/view/VideoEffectImageView$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView$a;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView$a;-><init>(Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;)V

    iput-object v0, p0, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;->w:Lcom/miui/gamebooster/videobox/view/VideoEffectImageView$a;

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;->w:Lcom/miui/gamebooster/videobox/view/VideoEffectImageView$a;

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
