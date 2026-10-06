.class public Lcom/miui/networkassistant/ui/view/LoadingButton;
.super Landroid/widget/TextView;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# static fields
.field private static final BACKGROUND_COLOR:I

.field private static final BACKGROUND_COLOR_B:I

.field private static final BACKGROUND_COLOR_P:I

.field private static final LOADING_COLOR:I

.field private static final POINT_A:I = 0x0

.field private static final POINT_B:I = 0x64

.field private static final POINT_C:I = 0x96

.field private static final POINT_D:I = 0xc8

.field private static final POINT_E:I = 0xfa

.field private static final POINT_F:I = 0x12c

.field private static final SCALE_AX:F = 0.3659f

.field private static final SCALE_AY:F = 0.4588f

.field private static final SCALE_BX:F = 0.5041f

.field private static final SCALE_BY:F = 0.6006f

.field private static final SCALE_CX:F = 0.7553f

.field private static final SCALE_CY:F = 0.3388f

.field private static final TICK_WIDTH:I = 0x78


# instance fields
.field private d:I

.field private dstBitmap:Landroid/graphics/Bitmap;

.field private enable:Z

.field private mBaseBgPaint:Landroid/graphics/Paint;

.field private mHeight:I

.field private mProgress:I

.field private mTickBitmap:Landroid/graphics/Bitmap;

.field private mTickOffsetX:I

.field private mTickPaint:Landroid/graphics/Paint;

.field private mWidth:I

.field private r:I

.field private srcBitmap:Landroid/graphics/Bitmap;

.field private textTmp:Ljava/lang/String;

.field private xfermodeBitmap:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "#26FFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/miui/networkassistant/ui/view/LoadingButton;->BACKGROUND_COLOR:I

    const-string v0, "#1CFFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/miui/networkassistant/ui/view/LoadingButton;->BACKGROUND_COLOR_P:I

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/miui/networkassistant/ui/view/LoadingButton;->BACKGROUND_COLOR_B:I

    const-string v0, "#8CFFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/miui/networkassistant/ui/view/LoadingButton;->LOADING_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->enable:Z

    const/4 p1, 0x6

    iput p1, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->d:I

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->r:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->mProgress:I

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/view/LoadingButton;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->enable:Z

    const/4 p1, 0x6

    iput p1, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->d:I

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->r:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->mProgress:I

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/view/LoadingButton;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->enable:Z

    const/4 p1, 0x6

    iput p1, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->d:I

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->r:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->mProgress:I

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/view/LoadingButton;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->enable:Z

    const/4 p1, 0x6

    iput p1, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->d:I

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->r:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->mProgress:I

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/view/LoadingButton;->init()V

    return-void
.end method

.method public static synthetic a(Lcom/miui/networkassistant/ui/view/LoadingButton;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/view/LoadingButton;->lambda$startAnim$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/networkassistant/ui/view/LoadingButton;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->mBaseBgPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$102(Lcom/miui/networkassistant/ui/view/LoadingButton;I)I
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->mProgress:I

    return p1
.end method

.method static synthetic access$200()I
    .locals 1

    sget v0, Lcom/miui/networkassistant/ui/view/LoadingButton;->BACKGROUND_COLOR:I

    return v0
.end method

.method static synthetic access$300(Lcom/miui/networkassistant/ui/view/LoadingButton;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/view/LoadingButton;->setColor(I)V

    return-void
.end method

.method static synthetic access$401(Lcom/miui/networkassistant/ui/view/LoadingButton;Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.method private createDstBitmap()V
    .locals 9

    iget v0, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->mWidth:I

    iget v1, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->mHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->dstBitmap:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->dstBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f071600    # 1.7956E38f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget v2, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->mWidth:I

    int-to-float v4, v2

    iget v2, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->mHeight:I

    int-to-float v5, v2

    int-to-float v7, v0

    iget-object v8, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->mBaseBgPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v6, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private createSrcBitmap()V
    .locals 7

    iget v0, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->mWidth:I

    iget v1, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->mHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->srcBitmap:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->srcBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    sget v0, Lcom/miui/networkassistant/ui/view/LoadingButton;->LOADING_COLOR:I

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->mWidth:I

    iget v2, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->mProgress:I

    mul-int/2addr v0, v2

    int-to-float v0, v0

    const/high16 v2, 0x42c80000    # 100.0f

    div-float v4, v0, v2

    iget v0, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->mHeight:I

    int-to-float v5, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private createXfermodeBitmap()V
    .locals 6

    iget v0, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->mWidth:I

    iget v1, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->mHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->dstBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v4, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->srcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v4, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v4, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->dstBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v4, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->xfermodeBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private init()V
    .locals 3

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->mBaseBgPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->mBaseBgPaint:Landroid/graphics/Paint;

    sget v1, Lcom/miui/networkassistant/ui/view/LoadingButton;->BACKGROUND_COLOR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->mBaseBgPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->mTickPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->mTickPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->mTickPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->mTickPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private initBackgroundView()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/view/LoadingButton;->createDstBitmap()V

    return-void
.end method

.method private isCancelEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-ltz v2, :cond_1

    iget v2, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->mWidth:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_1

    cmpg-float v0, p1, v1

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->mHeight:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private synthetic lambda$startAnim$0(Landroid/animation/ValueAnimator;)V
    .locals 5

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->mProgress:I

    const/high16 v0, 0x437f0000    # 255.0f

    const/high16 v1, 0x42480000    # 50.0f

    const/16 v2, 0x64

    if-le p1, v2, :cond_0

    const/16 v3, 0x96

    if-gt p1, v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p1

    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->mProgress:I

    sub-int/2addr v4, v2

    int-to-float v2, v4

    div-float/2addr v2, v1

    sub-float/2addr v3, v2

    mul-float/2addr v3, v0

    float-to-int v2, v3

    invoke-virtual {p1, v2}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    iget p1, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->mProgress:I

    const/16 v2, 0xfa

    if-le p1, v2, :cond_2

    const/16 v3, 0x12c

    if-gt p1, v3, :cond_2

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->textTmp:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->textTmp:Ljava/lang/String;

    sget-object v3, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-static {p0, p1, v3}, Lcom/miui/networkassistant/ui/view/LoadingButton;->access$401(Lcom/miui/networkassistant/ui/view/LoadingButton;Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->textTmp:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p1

    iget v3, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->mProgress:I

    sub-int/2addr v3, v2

    int-to-float v2, v3

    div-float/2addr v2, v1

    mul-float/2addr v2, v0

    float-to-int v0, v2

    invoke-virtual {p1, v0}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private setColor(I)V
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->mProgress:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->mWidth:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->mBaseBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/view/LoadingButton;->initBackgroundView()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->mProgress:I

    const/16 v1, 0x12c

    const/16 v2, 0x64

    const/high16 v3, 0x42480000    # 50.0f

    const/16 v4, 0xc8

    const/16 v5, 0x96

    const/4 v6, 0x0

    const/16 v7, 0xfa

    const/4 v8, 0x0

    if-lez v0, :cond_1

    if-gt v0, v2, :cond_1

    const/16 v9, 0x5f

    if-lt v0, v9, :cond_0

    iput v2, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->mProgress:I

    :cond_0
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/view/LoadingButton;->createSrcBitmap()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/view/LoadingButton;->createXfermodeBitmap()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->xfermodeBitmap:Landroid/graphics/Bitmap;

    goto :goto_2

    :cond_1
    if-le v0, v2, :cond_5

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->mBaseBgPaint:Landroid/graphics/Paint;

    sget v2, Lcom/miui/networkassistant/ui/view/LoadingButton;->BACKGROUND_COLOR:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->mProgress:I

    if-le v0, v5, :cond_2

    if-gt v0, v4, :cond_2

    iget-object v2, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->mBaseBgPaint:Landroid/graphics/Paint;

    const/high16 v9, 0x42980000    # 76.0f

    sub-int/2addr v0, v5

    mul-int/lit8 v0, v0, 0x26

    int-to-float v0, v0

    div-float/2addr v0, v3

    add-float/2addr v0, v9

    float-to-int v0, v0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1

    :cond_2
    if-le v0, v4, :cond_3

    if-gt v0, v7, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->mBaseBgPaint:Landroid/graphics/Paint;

    const/16 v2, 0x72

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1

    :cond_3
    if-le v0, v7, :cond_4

    if-gt v0, v1, :cond_4

    iget-object v2, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->mBaseBgPaint:Landroid/graphics/Paint;

    const/high16 v9, 0x42e40000    # 114.0f

    sub-int/2addr v0, v7

    mul-int/lit8 v0, v0, 0x26

    int-to-float v0, v0

    div-float/2addr v0, v3

    sub-float/2addr v9, v0

    float-to-int v0, v9

    goto :goto_0

    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/view/LoadingButton;->createDstBitmap()V

    :cond_5
    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->dstBitmap:Landroid/graphics/Bitmap;

    :goto_2
    invoke-virtual {p1, v0, v8, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->mProgress:I

    if-le v0, v5, :cond_6

    if-gt v0, v4, :cond_6

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->mTickBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->mProgress:I

    sub-int/2addr v2, v5

    mul-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr v0, v3

    float-to-int v0, v0

    if-lez v0, :cond_6

    iget-object v2, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->mTickBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v9, 0x0

    invoke-static {v2, v9, v9, v0, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v2, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->mTickOffsetX:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_6
    iget v0, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->mProgress:I

    if-le v0, v4, :cond_7

    if-gt v0, v7, :cond_7

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->mTickBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->mTickOffsetX:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_7
    iget v0, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->mProgress:I

    if-le v0, v7, :cond_8

    if-gt v0, v1, :cond_8

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->mTickPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    sub-int/2addr v0, v7

    int-to-float v0, v0

    div-float/2addr v0, v3

    sub-float/2addr v2, v0

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v2, v0

    float-to-int v0, v2

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->mTickBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->mTickOffsetX:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->mTickPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v8, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_8
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 7

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->mWidth:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->mHeight:I

    iget p2, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->mWidth:I

    if-lez p2, :cond_1

    if-gtz p1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/view/LoadingButton;->initBackgroundView()V

    const/16 p1, 0x78

    iget p2, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->mHeight:I

    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->mTickBitmap:Landroid/graphics/Bitmap;

    new-instance p1, Landroid/graphics/Canvas;

    iget-object p2, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->mTickBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iget p3, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->mWidth:I

    div-int/lit8 p3, p3, 0x2

    add-int/lit8 p3, p3, -0x3c

    iput p3, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->mTickOffsetX:I

    iget p3, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->mHeight:I

    div-int/lit8 p3, p3, 0x2

    add-int/lit8 p3, p3, -0x3c

    const p4, 0x425c3958    # 55.056f

    int-to-float p3, p3

    add-float/2addr p4, p3

    iget v0, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->d:I

    int-to-float v0, v0

    add-float/2addr v0, p4

    const v1, 0x422fa1cb    # 43.908f

    invoke-virtual {p2, v1, v0}, Landroid/graphics/Path;->moveTo(FF)V

    const v0, 0x429024dd

    add-float/2addr v0, p3

    iget v2, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->d:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    const v3, 0x4271f7d0

    invoke-virtual {p2, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget v2, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->r:I

    int-to-float v4, v2

    add-float/2addr v4, v3

    int-to-float v2, v2

    add-float/2addr v2, v0

    iget v5, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->d:I

    int-to-float v6, v5

    add-float/2addr v2, v6

    int-to-float v6, v5

    add-float/2addr v6, v3

    int-to-float v5, v5

    add-float/2addr v5, v0

    invoke-virtual {p2, v4, v2, v6, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget v2, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->d:I

    int-to-float v4, v2

    const v5, 0x42b545a2

    add-float/2addr v4, v5

    const v6, 0x42229fbf

    add-float/2addr p3, v6

    int-to-float v2, v2

    add-float/2addr v2, p3

    invoke-virtual {p2, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget v2, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->d:I

    int-to-float v4, v2

    add-float/2addr v4, v5

    iget v6, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->r:I

    int-to-float v6, v6

    add-float/2addr v6, p3

    int-to-float v2, v2

    add-float/2addr p3, v2

    invoke-virtual {p2, v4, v6, v5, p3}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget p3, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->d:I

    int-to-float p3, p3

    add-float/2addr p3, v3

    invoke-virtual {p2, p3, v0}, Landroid/graphics/Path;->lineTo(FF)V

    iget p3, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->r:I

    int-to-float v2, p3

    add-float/2addr v2, v3

    int-to-float p3, p3

    add-float/2addr p3, v0

    invoke-virtual {p2, v2, p3, v3, v0}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget p3, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->d:I

    int-to-float v0, p3

    add-float/2addr v0, v1

    int-to-float p3, p3

    add-float/2addr p3, p4

    invoke-virtual {p2, v0, p3}, Landroid/graphics/Path;->lineTo(FF)V

    iget p3, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->r:I

    int-to-float v0, p3

    add-float/2addr v0, v1

    int-to-float p3, p3

    add-float/2addr p3, p4

    iget v2, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->d:I

    int-to-float v2, v2

    add-float/2addr p4, v2

    invoke-virtual {p2, v0, p3, v1, p4}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object p3, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->mTickPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "onSizeChanged"

    const-string p2, "onSizeChanged:width or height <=0 "

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    const/4 v3, 0x3

    if-eq v0, v2, :cond_1

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    sget p1, Lcom/miui/networkassistant/ui/view/LoadingButton;->BACKGROUND_COLOR:I

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/view/LoadingButton;->setColor(I)V

    return v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/view/LoadingButton;->isCancelEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/view/LoadingButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_2
    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/view/LoadingButton;->performClick()Z

    goto :goto_0

    :cond_3
    iget-boolean p1, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->enable:Z

    if-nez p1, :cond_4

    return v1

    :cond_4
    sget p1, Lcom/miui/networkassistant/ui/view/LoadingButton;->BACKGROUND_COLOR_P:I

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/view/LoadingButton;->setColor(I)V

    :goto_0
    return v2
.end method

.method public performClick()Z
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->performClick()Z

    move-result v0

    return v0
.end method

.method public setEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->enable:Z

    if-nez p1, :cond_0

    sget p1, Lcom/miui/networkassistant/ui/view/LoadingButton;->BACKGROUND_COLOR_P:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/miui/networkassistant/ui/view/LoadingButton;->BACKGROUND_COLOR:I

    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/view/LoadingButton;->setColor(I)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->textTmp:Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->mProgress:I

    if-lez v0, :cond_1

    const/16 v1, 0x96

    if-ge v0, v1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->textTmp:Ljava/lang/String;

    return-void

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.method public startAnim()V
    .locals 3

    iget v0, p0, Lcom/miui/networkassistant/ui/view/LoadingButton;->mProgress:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/miui/networkassistant/ui/view/LoadingButton;->BACKGROUND_COLOR_B:I

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/view/LoadingButton;->setColor(I)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/networkassistant/ui/view/e;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/ui/view/e;-><init>(Lcom/miui/networkassistant/ui/view/LoadingButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/miui/networkassistant/ui/view/LoadingButton$1;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/ui/view/LoadingButton$1;-><init>(Lcom/miui/networkassistant/ui/view/LoadingButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x12c
    .end array-data
.end method
