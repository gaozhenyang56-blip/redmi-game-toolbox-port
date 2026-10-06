.class public Lcom/miui/warningcenter/disasterwarning/view/DrawBitmapView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private mBitPaint:Landroid/graphics/Paint;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mDet:Landroid/graphics/Rect;

.field private mImageHeight:I

.field private mImageWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/warningcenter/disasterwarning/view/DrawBitmapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/warningcenter/disasterwarning/view/DrawBitmapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/warningcenter/disasterwarning/view/DrawBitmapView;->initPaint(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 4

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object p2
.end method

.method private initPaint(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    sget-object v0, Lef/y;->T4:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/miui/warningcenter/disasterwarning/view/DrawBitmapView;->mImageHeight:I

    const/4 p2, 0x2

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/miui/warningcenter/disasterwarning/view/DrawBitmapView;->mImageWidth:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-static {p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/warningcenter/disasterwarning/view/DrawBitmapView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/view/DrawBitmapView;->mBitPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/view/DrawBitmapView;->mDet:Landroid/graphics/Rect;

    iput v1, p1, Landroid/graphics/Rect;->top:I

    iget p2, p0, Lcom/miui/warningcenter/disasterwarning/view/DrawBitmapView;->mImageWidth:I

    const p3, 0x7f070b1a

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    :goto_0
    iput p2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p0, Lcom/miui/warningcenter/disasterwarning/view/DrawBitmapView;->mImageHeight:I

    if-lez p1, :cond_1

    iget-object p2, p0, Lcom/miui/warningcenter/disasterwarning/view/DrawBitmapView;->mDet:Landroid/graphics/Rect;

    iput p1, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/view/DrawBitmapView;->mDet:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    :goto_1
    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/view/DrawBitmapView;->mDet:Landroid/graphics/Rect;

    iput v1, p1, Landroid/graphics/Rect;->left:I

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/view/DrawBitmapView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/warningcenter/disasterwarning/view/DrawBitmapView;->mDet:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/miui/warningcenter/disasterwarning/view/DrawBitmapView;->mBitPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    return-void
.end method

.method public setResourceId(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/miui/warningcenter/disasterwarning/view/DrawBitmapView;->getBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/view/DrawBitmapView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
