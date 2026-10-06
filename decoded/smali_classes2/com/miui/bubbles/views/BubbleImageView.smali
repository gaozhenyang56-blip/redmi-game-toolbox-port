.class public Lcom/miui/bubbles/views/BubbleImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/bubbles/views/BubbleImageView$DragState;
    }
.end annotation


# static fields
.field private static final DELAY_ENABLE:I = 0xc8

.field private static final MAX_ALPHA:I = 0xff


# instance fields
.field private mAlpha:I

.field private mBubble:Lcom/miui/bubbles/BubbleViewProvider;

.field public mBubbleBackgroundColor:I

.field private final mBubbleBounds:Landroid/graphics/RectF;

.field public mBubbleCornerRadius:F

.field private final mDelayAlpha:Ljava/lang/Runnable;

.field private final mDragState:Lcom/miui/bubbles/views/BubbleImageView$DragState;

.field public mHeight:I

.field private mIconBitmap:Landroid/graphics/Bitmap;

.field private final mPaint:Landroid/graphics/Paint;

.field private mScaleCenterType:I

.field public mScaledHeight:I

.field public mScaledWidth:I

.field private mShadowAlpha:I

.field private final mShadowPaint:Landroid/graphics/Paint;

.field private mShadowRadiusBig:I

.field public mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/bubbles/views/BubbleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/bubbles/views/BubbleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/bubbles/views/BubbleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/miui/bubbles/views/BubbleImageView;->mPaint:Landroid/graphics/Paint;

    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/miui/bubbles/views/BubbleImageView;->mBubbleBounds:Landroid/graphics/RectF;

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/miui/bubbles/views/BubbleImageView;->mShadowPaint:Landroid/graphics/Paint;

    new-instance p4, Lcom/miui/bubbles/views/b;

    invoke-direct {p4, p0}, Lcom/miui/bubbles/views/b;-><init>(Lcom/miui/bubbles/views/BubbleImageView;)V

    iput-object p4, p0, Lcom/miui/bubbles/views/BubbleImageView;->mDelayAlpha:Ljava/lang/Runnable;

    invoke-virtual {p0, p2}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setClickable(Z)V

    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/view/View;->setLayoutDirection(I)V

    const/16 p4, 0x11

    iput p4, p0, Lcom/miui/bubbles/views/BubbleImageView;->mScaleCenterType:I

    new-instance p4, Lcom/miui/bubbles/views/BubbleImageView$DragState;

    invoke-direct {p4}, Lcom/miui/bubbles/views/BubbleImageView$DragState;-><init>()V

    iput-object p4, p0, Lcom/miui/bubbles/views/BubbleImageView;->mDragState:Lcom/miui/bubbles/views/BubbleImageView$DragState;

    sget-object v0, Lcom/miui/bubbles/data/FreeformMode;->MODE_EDGE:Lcom/miui/bubbles/data/FreeformMode;

    iput-object v0, p4, Lcom/miui/bubbles/views/BubbleImageView$DragState;->preMode:Lcom/miui/bubbles/data/FreeformMode;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-static {}, Lcom/miui/bubbles/utils/BubblesDimenUtils;->getBubbleCornerRadius()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/bubbles/views/BubbleImageView;->mBubbleCornerRadius:F

    sget v0, Lcom/miui/bubbles/R$color;->bubble_app_bg:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/bubbles/views/BubbleImageView;->mBubbleBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    sget p1, Lcom/miui/bubbles/R$dimen;->bubble_app_shadow_radius_big:I

    invoke-virtual {p4, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/miui/bubbles/views/BubbleImageView;->mShadowRadiusBig:I

    const/16 p1, 0xff

    iput p1, p0, Lcom/miui/bubbles/views/BubbleImageView;->mAlpha:I

    iput p2, p0, Lcom/miui/bubbles/views/BubbleImageView;->mShadowAlpha:I

    invoke-static {}, Lx4/p1;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/miui/bubbles/views/BubbleImageView$1;

    invoke-direct {p1, p0}, Lcom/miui/bubbles/views/BubbleImageView$1;-><init>(Lcom/miui/bubbles/views/BubbleImageView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/miui/bubbles/views/BubbleImageView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/bubbles/views/BubbleImageView;->lambda$disableForWhile$1()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/bubbles/views/BubbleImageView;)F
    .locals 0

    invoke-direct {p0}, Lcom/miui/bubbles/views/BubbleImageView;->getDelX()F

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/miui/bubbles/views/BubbleImageView;)F
    .locals 0

    invoke-direct {p0}, Lcom/miui/bubbles/views/BubbleImageView;->getDelY()F

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/miui/bubbles/views/BubbleImageView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/bubbles/views/BubbleImageView;->lambda$new$0()V

    return-void
.end method

.method private drawIconWithBackground(Landroid/graphics/Canvas;)V
    .locals 8

    iget-object v0, p0, Lcom/miui/bubbles/views/BubbleImageView;->mBubbleBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/miui/bubbles/views/BubbleImageView;->mScaledWidth:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/miui/bubbles/views/BubbleImageView;->mShadowRadiusBig:I

    add-int/lit16 v2, v2, 0xc8

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    sub-float v3, v0, v1

    iget-object v0, p0, Lcom/miui/bubbles/views/BubbleImageView;->mBubbleBounds:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/miui/bubbles/views/BubbleImageView;->mShadowRadiusBig:I

    int-to-float v4, v2

    sub-float v4, v1, v4

    iget v1, v0, Landroid/graphics/RectF;->right:F

    int-to-float v5, v2

    add-float/2addr v5, v1

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    int-to-float v1, v2

    add-float v6, v0, v1

    iget v7, p0, Lcom/miui/bubbles/views/BubbleImageView;->mAlpha:I

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFI)I

    move-result v0

    invoke-direct {p0}, Lcom/miui/bubbles/views/BubbleImageView;->getDelX()F

    move-result v1

    invoke-direct {p0}, Lcom/miui/bubbles/views/BubbleImageView;->getDelY()F

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/miui/bubbles/views/BubbleImageView;->mBubbleBounds:Landroid/graphics/RectF;

    iget v2, p0, Lcom/miui/bubbles/views/BubbleImageView;->mBubbleCornerRadius:F

    iget-object v3, p0, Lcom/miui/bubbles/views/BubbleImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/miui/bubbles/views/BubbleImageView;->mIconBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/miui/bubbles/views/BubbleImageView;->mScaledWidth:I

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    iget v1, p0, Lcom/miui/bubbles/views/BubbleImageView;->mScaledHeight:I

    iget-object v3, p0, Lcom/miui/bubbles/views/BubbleImageView;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    iget-object v3, p0, Lcom/miui/bubbles/views/BubbleImageView;->mIconBitmap:Landroid/graphics/Bitmap;

    int-to-float v2, v2

    int-to-float v1, v1

    iget-object v4, p0, Lcom/miui/bubbles/views/BubbleImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private drawShadow(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-static {}, Lx4/p1;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/bubbles/views/BubbleImageView;->getShadowAlpha()I

    move-result p1

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/miui/bubbles/views/BubbleImageView;->getShadowDelY()I

    move-result p1

    int-to-float v4, p1

    invoke-direct {p0}, Lcom/miui/bubbles/views/BubbleImageView;->getShadowRadius()I

    move-result p1

    int-to-float v5, p1

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lx4/p1;->b(Landroid/view/View;IFFFF)V

    return-void

    :cond_0
    iget v0, p0, Lcom/miui/bubbles/views/BubbleImageView;->mScaledWidth:I

    iget v1, p0, Lcom/miui/bubbles/views/BubbleImageView;->mWidth:I

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/miui/bubbles/views/BubbleImageView;->mBubbleBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    div-int/lit8 v0, v0, 0x2

    iget v2, p0, Lcom/miui/bubbles/views/BubbleImageView;->mShadowRadiusBig:I

    add-int/lit16 v2, v2, 0xc8

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    sub-float v3, v1, v0

    iget-object v0, p0, Lcom/miui/bubbles/views/BubbleImageView;->mBubbleBounds:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/miui/bubbles/views/BubbleImageView;->mShadowRadiusBig:I

    int-to-float v4, v2

    sub-float v4, v1, v4

    iget v1, v0, Landroid/graphics/RectF;->right:F

    int-to-float v5, v2

    add-float/2addr v5, v1

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    int-to-float v1, v2

    add-float v6, v0, v1

    iget v7, p0, Lcom/miui/bubbles/views/BubbleImageView;->mShadowAlpha:I

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFI)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    :goto_0
    invoke-direct {p0}, Lcom/miui/bubbles/views/BubbleImageView;->getDelX()F

    move-result v1

    invoke-direct {p0}, Lcom/miui/bubbles/views/BubbleImageView;->getDelY()F

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/miui/bubbles/views/BubbleImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/bubbles/R$color;->bubble_app_shadow_big:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sget v3, Lcom/miui/bubbles/R$dimen;->bubble_app_shadow_offset:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/miui/bubbles/views/BubbleImageView;->mShadowPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/miui/bubbles/views/BubbleImageView;->mShadowRadiusBig:I

    int-to-float v5, v5

    int-to-float v3, v3

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v3, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget-object v2, p0, Lcom/miui/bubbles/views/BubbleImageView;->mBubbleBounds:Landroid/graphics/RectF;

    iget v4, p0, Lcom/miui/bubbles/views/BubbleImageView;->mBubbleCornerRadius:F

    iget-object v5, p0, Lcom/miui/bubbles/views/BubbleImageView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    sget v2, Lcom/miui/bubbles/R$dimen;->bubble_app_shadow_radius_small:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v4, Lcom/miui/bubbles/R$color;->bubble_app_shadow_small:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iget-object v4, p0, Lcom/miui/bubbles/views/BubbleImageView;->mShadowPaint:Landroid/graphics/Paint;

    int-to-float v2, v2

    invoke-virtual {v4, v2, v6, v3, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget-object v1, p0, Lcom/miui/bubbles/views/BubbleImageView;->mBubbleBounds:Landroid/graphics/RectF;

    iget v2, p0, Lcom/miui/bubbles/views/BubbleImageView;->mBubbleCornerRadius:F

    iget-object v3, p0, Lcom/miui/bubbles/views/BubbleImageView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private getDelX()F
    .locals 2

    iget v0, p0, Lcom/miui/bubbles/views/BubbleImageView;->mScaleCenterType:I

    const/16 v1, 0x11

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    iget v0, p0, Lcom/miui/bubbles/views/BubbleImageView;->mScaledWidth:I

    iget v1, p0, Lcom/miui/bubbles/views/BubbleImageView;->mWidth:I

    sub-int/2addr v0, v1

    neg-int v0, v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private getDelY()F
    .locals 2

    iget v0, p0, Lcom/miui/bubbles/views/BubbleImageView;->mScaleCenterType:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/miui/bubbles/views/BubbleImageView;->mScaledHeight:I

    iget v1, p0, Lcom/miui/bubbles/views/BubbleImageView;->mHeight:I

    sub-int/2addr v0, v1

    neg-int v0, v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getShadowAlpha()I
    .locals 2

    iget-object v0, p0, Lcom/miui/bubbles/views/BubbleImageView;->mBubble:Lcom/miui/bubbles/BubbleViewProvider;

    invoke-interface {v0}, Lcom/miui/bubbles/BubbleViewProvider;->getPreMode()Lcom/miui/bubbles/data/FreeformMode;

    move-result-object v0

    sget-object v1, Lcom/miui/bubbles/data/FreeformMode;->MODE_MINI:Lcom/miui/bubbles/data/FreeformMode;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/miui/bubbles/views/BubbleImageView;->mScaledWidth:I

    iget v1, p0, Lcom/miui/bubbles/views/BubbleImageView;->mWidth:I

    if-eq v0, v1, :cond_0

    const/16 v0, 0x7f

    return v0

    :cond_0
    const/16 v0, 0x66

    return v0
.end method

.method private getShadowDelY()I
    .locals 2

    iget-object v0, p0, Lcom/miui/bubbles/views/BubbleImageView;->mBubble:Lcom/miui/bubbles/BubbleViewProvider;

    invoke-interface {v0}, Lcom/miui/bubbles/BubbleViewProvider;->getPreMode()Lcom/miui/bubbles/data/FreeformMode;

    move-result-object v0

    sget-object v1, Lcom/miui/bubbles/data/FreeformMode;->MODE_FREEFORM:Lcom/miui/bubbles/data/FreeformMode;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/miui/bubbles/views/BubbleImageView;->mScaledWidth:I

    iget v1, p0, Lcom/miui/bubbles/views/BubbleImageView;->mWidth:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/bubbles/R$dimen;->bubble_app_freeform_del_y:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/bubbles/views/BubbleImageView;->mBubble:Lcom/miui/bubbles/BubbleViewProvider;

    invoke-interface {v0}, Lcom/miui/bubbles/BubbleViewProvider;->getPreMode()Lcom/miui/bubbles/data/FreeformMode;

    move-result-object v0

    sget-object v1, Lcom/miui/bubbles/data/FreeformMode;->MODE_MINI:Lcom/miui/bubbles/data/FreeformMode;

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/miui/bubbles/views/BubbleImageView;->mScaledWidth:I

    iget v1, p0, Lcom/miui/bubbles/views/BubbleImageView;->mWidth:I

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/bubbles/R$dimen;->bubble_app_mini_del_y:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private getShadowRadius()I
    .locals 2

    iget-object v0, p0, Lcom/miui/bubbles/views/BubbleImageView;->mBubble:Lcom/miui/bubbles/BubbleViewProvider;

    invoke-interface {v0}, Lcom/miui/bubbles/BubbleViewProvider;->getPreMode()Lcom/miui/bubbles/data/FreeformMode;

    move-result-object v0

    sget-object v1, Lcom/miui/bubbles/data/FreeformMode;->MODE_FREEFORM:Lcom/miui/bubbles/data/FreeformMode;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/miui/bubbles/views/BubbleImageView;->mScaledWidth:I

    iget v1, p0, Lcom/miui/bubbles/views/BubbleImageView;->mWidth:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/bubbles/R$dimen;->bubble_app_freeform:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/bubbles/views/BubbleImageView;->mBubble:Lcom/miui/bubbles/BubbleViewProvider;

    invoke-interface {v0}, Lcom/miui/bubbles/BubbleViewProvider;->getPreMode()Lcom/miui/bubbles/data/FreeformMode;

    move-result-object v0

    sget-object v1, Lcom/miui/bubbles/data/FreeformMode;->MODE_MINI:Lcom/miui/bubbles/data/FreeformMode;

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/miui/bubbles/views/BubbleImageView;->mScaledWidth:I

    iget v1, p0, Lcom/miui/bubbles/views/BubbleImageView;->mWidth:I

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/bubbles/R$dimen;->bubble_app_mini:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/bubbles/R$dimen;->bubble_app_edge:I

    goto :goto_0
.end method

.method private synthetic lambda$disableForWhile$1()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    const v0, 0x3ecccccd    # 0.4f

    invoke-static {p0, v0}, Lcom/miui/bubbles/animation/BubbleAnimator;->animateAlphaTo(Landroid/view/View;F)V

    return-void
.end method

.method private resetPath()V
    .locals 4

    iget-object v0, p0, Lcom/miui/bubbles/views/BubbleImageView;->mBubbleBounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/miui/bubbles/views/BubbleImageView;->mScaledWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/bubbles/views/BubbleImageView;->mScaledHeight:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method


# virtual methods
.method public disableForWhile(Landroid/os/Handler;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    new-instance v0, Lcom/miui/bubbles/views/a;

    invoke-direct {v0, p0}, Lcom/miui/bubbles/views/a;-><init>(Lcom/miui/bubbles/views/BubbleImageView;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/bubbles/views/BubbleImageView;->isEdgeState()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-object v0
.end method

.method public getBubbleCornerRadius()F
    .locals 1

    iget v0, p0, Lcom/miui/bubbles/views/BubbleImageView;->mBubbleCornerRadius:F

    return v0
.end method

.method public getDragState()Lcom/miui/bubbles/views/BubbleImageView$DragState;
    .locals 1

    iget-object v0, p0, Lcom/miui/bubbles/views/BubbleImageView;->mDragState:Lcom/miui/bubbles/views/BubbleImageView$DragState;

    return-object v0
.end method

.method public getEdgeState()Lcom/miui/bubbles/data/EdgeState;
    .locals 1

    iget-object v0, p0, Lcom/miui/bubbles/views/BubbleImageView;->mDragState:Lcom/miui/bubbles/views/BubbleImageView$DragState;

    iget-object v0, v0, Lcom/miui/bubbles/views/BubbleImageView$DragState;->edgeState:Lcom/miui/bubbles/data/EdgeState;

    return-object v0
.end method

.method public getFinalCornerRadius(Z)F
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/bubbles/views/BubbleImageView;->mBubble:Lcom/miui/bubbles/BubbleViewProvider;

    instance-of v0, p1, Lcom/miui/bubbles/Bubble;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/miui/bubbles/Bubble;

    iget v0, v0, Lcom/miui/bubbles/Bubble;->windowRoundCorner:F

    check-cast p1, Lcom/miui/bubbles/Bubble;

    iget p1, p1, Lcom/miui/bubbles/Bubble;->windowScaleX:F

    mul-float/2addr v0, p1

    return v0

    :cond_0
    invoke-static {}, Lcom/miui/bubbles/utils/BubblesDimenUtils;->getBubbleCornerRadius()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p1, v0

    return p1
.end method

.method public getScaledHeight()I
    .locals 1

    iget v0, p0, Lcom/miui/bubbles/views/BubbleImageView;->mScaledHeight:I

    return v0
.end method

.method public getScaledWidth()I
    .locals 1

    iget v0, p0, Lcom/miui/bubbles/views/BubbleImageView;->mScaledWidth:I

    return v0
.end method

.method public isEdgeState()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/bubbles/views/BubbleImageView;->mDragState:Lcom/miui/bubbles/views/BubbleImageView$DragState;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEdgeState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/bubbles/views/BubbleImageView;->mDragState:Lcom/miui/bubbles/views/BubbleImageView$DragState;

    iget-object v2, v2, Lcom/miui/bubbles/views/BubbleImageView$DragState;->edgeState:Lcom/miui/bubbles/data/EdgeState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MiuiBubbles."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/bubbles/views/BubbleImageView;->mDragState:Lcom/miui/bubbles/views/BubbleImageView$DragState;

    iget-object v0, v0, Lcom/miui/bubbles/views/BubbleImageView$DragState;->edgeState:Lcom/miui/bubbles/data/EdgeState;

    sget-object v2, Lcom/miui/bubbles/data/EdgeState;->PINNED:Lcom/miui/bubbles/data/EdgeState;

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/miui/bubbles/R$color;->bubble_app_bg:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/miui/bubbles/views/BubbleImageView;->mBubbleBackgroundColor:I

    iget-object v0, p0, Lcom/miui/bubbles/views/BubbleImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/bubbles/views/BubbleImageView;->resetPath()V

    invoke-direct {p0, p1}, Lcom/miui/bubbles/views/BubbleImageView;->drawShadow(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/miui/bubbles/views/BubbleImageView;->drawIconWithBackground(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    iput p1, p0, Lcom/miui/bubbles/views/BubbleImageView;->mWidth:I

    iput p2, p0, Lcom/miui/bubbles/views/BubbleImageView;->mHeight:I

    iput p2, p0, Lcom/miui/bubbles/views/BubbleImageView;->mScaledHeight:I

    iput p1, p0, Lcom/miui/bubbles/views/BubbleImageView;->mScaledWidth:I

    return-void
.end method

.method public postReduceAlphaTask(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/bubbles/views/BubbleImageView;->mDelayAlpha:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scaleTo(II)V
    .locals 0
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iput p1, p0, Lcom/miui/bubbles/views/BubbleImageView;->mScaledWidth:I

    iput p2, p0, Lcom/miui/bubbles/views/BubbleImageView;->mScaledHeight:I

    invoke-virtual {p0}, Landroid/view/View;->invalidateOutline()V

    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/miui/bubbles/views/BubbleImageView;->mAlpha:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setBubbleCornerRadius(F)V
    .locals 0

    iput p1, p0, Lcom/miui/bubbles/views/BubbleImageView;->mBubbleCornerRadius:F

    return-void
.end method

.method public setEdgeState(Lcom/miui/bubbles/data/EdgeState;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/bubbles/views/BubbleImageView;->mDragState:Lcom/miui/bubbles/views/BubbleImageView$DragState;

    if-eqz v0, :cond_0

    iput-object p1, v0, Lcom/miui/bubbles/views/BubbleImageView$DragState;->edgeState:Lcom/miui/bubbles/data/EdgeState;

    :cond_0
    iget-object v0, p0, Lcom/miui/bubbles/views/BubbleImageView;->mBubble:Lcom/miui/bubbles/BubbleViewProvider;

    instance-of v0, v0, Lcom/miui/bubbles/Bubble;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/miui/bubbles/data/EdgeState;->PINNED:Lcom/miui/bubbles/data/EdgeState;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/miui/bubbles/views/BubbleImageView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/bubbles/settings/BubblesSettings;->getInstance(Landroid/content/Context;)Lcom/miui/bubbles/settings/BubblesSettings;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/bubbles/views/BubbleImageView;->mBubble:Lcom/miui/bubbles/BubbleViewProvider;

    check-cast v0, Lcom/miui/bubbles/Bubble;

    invoke-virtual {p1, v0}, Lcom/miui/bubbles/settings/BubblesSettings;->addActiveBubble(Lcom/miui/bubbles/Bubble;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/bubbles/views/BubbleImageView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/bubbles/settings/BubblesSettings;->getInstance(Landroid/content/Context;)Lcom/miui/bubbles/settings/BubblesSettings;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/bubbles/views/BubbleImageView;->mBubble:Lcom/miui/bubbles/BubbleViewProvider;

    check-cast v0, Lcom/miui/bubbles/Bubble;

    invoke-virtual {p1, v0}, Lcom/miui/bubbles/settings/BubblesSettings;->removeActiveBubble(Lcom/miui/bubbles/Bubble;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setIconBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/bubbles/views/BubbleImageView;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setRenderedBubble(Lcom/miui/bubbles/BubbleViewProvider;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/bubbles/views/BubbleImageView;->mBubble:Lcom/miui/bubbles/BubbleViewProvider;

    iput-object p2, p0, Lcom/miui/bubbles/views/BubbleImageView;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-interface {p1}, Lcom/miui/bubbles/BubbleViewProvider;->getPreMode()Lcom/miui/bubbles/data/FreeformMode;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/bubbles/views/BubbleImageView;->updateScaleCenterTypeByMode(Lcom/miui/bubbles/data/FreeformMode;)V

    return-void
.end method

.method public setShadowAlpha(F)V
    .locals 1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/miui/bubbles/views/BubbleImageView;->mShadowAlpha:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public updateScaleCenterTypeByMode(Lcom/miui/bubbles/data/FreeformMode;)V
    .locals 1

    sget-object v0, Lcom/miui/bubbles/data/FreeformMode;->MODE_FREEFORM:Lcom/miui/bubbles/data/FreeformMode;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/16 p1, 0x11

    :goto_0
    iput p1, p0, Lcom/miui/bubbles/views/BubbleImageView;->mScaleCenterType:I

    return-void
.end method
