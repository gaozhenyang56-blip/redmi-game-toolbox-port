.class public Lcom/miui/networkassistant/ui/view/BackgroundView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private lastColor:I

.field private lastProgress:F

.field private mHeight:I

.field private mOffsetX:I

.field private mOffsetY:I

.field private mWavePaint:Landroid/graphics/Paint;

.field private mWavePath:Landroid/graphics/Path;

.field private mWidth:I

.field private rippleH:I

.field private rippleW:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->rippleW:I

    const/16 p1, 0x1e

    iput p1, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->rippleH:I

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->lastProgress:F

    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->lastColor:I

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/view/BackgroundView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->rippleW:I

    const/16 p1, 0x1e

    iput p1, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->rippleH:I

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->lastProgress:F

    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->lastColor:I

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/view/BackgroundView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->rippleW:I

    const/16 p1, 0x1e

    iput p1, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->rippleH:I

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->lastProgress:F

    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->lastColor:I

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/view/BackgroundView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->rippleW:I

    const/16 p1, 0x1e

    iput p1, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->rippleH:I

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->lastProgress:F

    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->lastColor:I

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/view/BackgroundView;->init()V

    return-void
.end method

.method public static synthetic a(Lcom/miui/networkassistant/ui/view/BackgroundView;ILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/ui/view/BackgroundView;->lambda$startAnimation$0(ILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic b(Lcom/miui/networkassistant/ui/view/BackgroundView;FFLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/networkassistant/ui/view/BackgroundView;->lambda$startAnimation$1(FFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method private drawWave(Landroid/graphics/Canvas;FFFF)V
    .locals 8

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mWavePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mWavePath:Landroid/graphics/Path;

    const/high16 v1, -0x3fc00000    # -3.0f

    mul-float/2addr v1, p2

    add-float/2addr v1, p4

    add-float v2, p3, p5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v0, -0x3

    :goto_0
    int-to-float v1, v0

    iget v3, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mWidth:I

    int-to-float v4, v3

    div-float/2addr v4, p2

    const/high16 v5, 0x40a00000    # 5.0f

    add-float/2addr v4, v5

    cmpg-float v4, v1, v4

    if-gez v4, :cond_0

    iget-object v3, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mWavePath:Landroid/graphics/Path;

    const/high16 v4, 0x40800000    # 4.0f

    div-float v5, p2, v4

    mul-float/2addr v1, p2

    add-float/2addr v5, v1

    add-float/2addr v5, p4

    const/high16 v6, 0x40000000    # 2.0f

    div-float v7, p2, v6

    add-float/2addr v7, v1

    add-float/2addr v7, p4

    invoke-virtual {v3, v5, p5, v7, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object v3, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mWavePath:Landroid/graphics/Path;

    const/high16 v5, 0x40400000    # 3.0f

    mul-float/2addr v5, p2

    div-float/2addr v5, v4

    add-float/2addr v5, v1

    add-float/2addr v5, p4

    mul-float/2addr v6, p3

    add-float/2addr v6, p5

    add-float/2addr v1, p2

    add-float/2addr v1, p4

    invoke-virtual {v3, v5, v6, v1, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mWavePath:Landroid/graphics/Path;

    int-to-float p3, v3

    invoke-virtual {p2, p3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p2, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mWavePath:Landroid/graphics/Path;

    iget p3, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mWidth:I

    int-to-float p3, p3

    iget p4, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mHeight:I

    int-to-float p4, p4

    invoke-virtual {p2, p3, p4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p2, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mWavePath:Landroid/graphics/Path;

    const/4 p3, 0x0

    iget p4, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mHeight:I

    int-to-float p4, p4

    invoke-virtual {p2, p3, p4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p2, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mWavePath:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mWavePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private init()V
    .locals 2

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mWavePath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mWavePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mWavePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mWavePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private synthetic lambda$startAnimation$0(ILandroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iget v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->rippleW:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int p2, v0

    add-int/2addr p2, p1

    iput p2, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mOffsetX:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$startAnimation$1(FFLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    sub-float/2addr p2, p1

    mul-float/2addr p2, p3

    add-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mOffsetY:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private startAnimation(F)V
    .locals 7

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    move p1, v0

    :cond_0
    iget v1, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->rippleW:I

    int-to-double v1, v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iget v2, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mHeight:I

    iget v3, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->rippleH:I

    const/4 v4, 0x2

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v0, p1

    mul-float/2addr v2, v0

    const/high16 p1, 0x42480000    # 50.0f

    add-float/2addr v2, p1

    iget p1, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mOffsetY:I

    int-to-float p1, p1

    new-array v0, v4, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v5, 0xbb8

    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Lcom/miui/networkassistant/ui/view/a;

    invoke-direct {v3, p0, v1}, Lcom/miui/networkassistant/ui/view/a;-><init>(Lcom/miui/networkassistant/ui/view/BackgroundView;I)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v1, v4, [F

    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/miui/networkassistant/ui/view/PhysicBasedInterpolator$Builder;

    invoke-direct {v3}, Lcom/miui/networkassistant/ui/view/PhysicBasedInterpolator$Builder;-><init>()V

    const v4, 0x3f19999a    # 0.6f

    invoke-virtual {v3, v4}, Lcom/miui/networkassistant/ui/view/PhysicBasedInterpolator$Builder;->setDamping(F)Lcom/miui/networkassistant/ui/view/PhysicBasedInterpolator$Builder;

    move-result-object v3

    const/high16 v4, 0x3f200000    # 0.625f

    invoke-virtual {v3, v4}, Lcom/miui/networkassistant/ui/view/PhysicBasedInterpolator$Builder;->setResponse(F)Lcom/miui/networkassistant/ui/view/PhysicBasedInterpolator$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/networkassistant/ui/view/PhysicBasedInterpolator$Builder;->build()Lcom/miui/networkassistant/ui/view/PhysicBasedInterpolator;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Lcom/miui/networkassistant/ui/view/b;

    invoke-direct {v3, p0, p1, v2}, Lcom/miui/networkassistant/ui/view/b;-><init>(Lcom/miui/networkassistant/ui/view/BackgroundView;FF)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->rippleW:I

    int-to-float v3, v0

    iget v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->rippleH:I

    int-to-float v4, v0

    iget v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mOffsetX:I

    int-to-float v5, v0

    iget v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mOffsetY:I

    int-to-float v6, v0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/miui/networkassistant/ui/view/BackgroundView;->drawWave(Landroid/graphics/Canvas;FFFF)V

    iget v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->rippleW:I

    int-to-float v0, v0

    const v1, 0x3fa66666    # 1.3f

    mul-float v4, v0, v1

    iget v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->rippleH:I

    int-to-float v5, v0

    iget v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mOffsetX:I

    int-to-float v0, v0

    const v1, -0x4059999a    # -1.3f

    mul-float v6, v0, v1

    iget v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mOffsetY:I

    int-to-float v7, v0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/miui/networkassistant/ui/view/BackgroundView;->drawWave(Landroid/graphics/Canvas;FFFF)V

    iget v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->rippleW:I

    int-to-float v0, v0

    const v1, 0x3f8ccccd    # 1.1f

    mul-float v4, v0, v1

    iget v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->rippleH:I

    int-to-float v5, v0

    iget v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mOffsetX:I

    int-to-float v0, v0

    const v1, -0x40733333    # -1.1f

    mul-float v6, v0, v1

    iget v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mOffsetY:I

    int-to-float v7, v0

    invoke-direct/range {v2 .. v7}, Lcom/miui/networkassistant/ui/view/BackgroundView;->drawWave(Landroid/graphics/Canvas;FFFF)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 8

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mWidth:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mHeight:I

    iget p1, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mWidth:I

    int-to-float p1, p1

    const/high16 p2, 0x3f400000    # 0.75f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->rippleW:I

    new-instance p1, Landroid/graphics/LinearGradient;

    iget p2, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->rippleH:I

    int-to-float v2, p2

    iget p2, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mHeight:I

    int-to-float v4, p2

    const/4 p2, 0x2

    new-array v5, p2, [I

    const-string p2, "#28F0F0F0"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    const/4 p4, 0x0

    aput p3, v5, p4

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    const/4 p3, 0x1

    aput p2, v5, p3

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iget-object p2, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mWavePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget p1, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->lastProgress:F

    const/high16 p2, -0x40800000    # -1.0f

    cmpl-float p2, p1, p2

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->lastColor:I

    invoke-virtual {p0, p2, p1, p3}, Lcom/miui/networkassistant/ui/view/BackgroundView;->setParam(IFZ)V

    :cond_0
    return-void
.end method

.method public setParam(IFZ)V
    .locals 8

    if-nez p3, :cond_0

    iget p3, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->lastProgress:F

    cmpl-float p3, p3, p2

    if-nez p3, :cond_0

    return-void

    :cond_0
    iput p2, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->lastProgress:F

    iput p1, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->lastColor:I

    iget p3, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mHeight:I

    if-nez p3, :cond_1

    return-void

    :cond_1
    new-instance p3, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    iget v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->rippleH:I

    int-to-float v2, v0

    const/4 v3, 0x0

    iget v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mHeight:I

    int-to-float v4, v0

    const/4 v0, 0x2

    new-array v5, v0, [I

    const/4 v0, 0x0

    aput p1, v5, v0

    const/4 p1, 0x1

    aput v0, v5, p1

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v0, p3

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mWavePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-direct {p0, p2}, Lcom/miui/networkassistant/ui/view/BackgroundView;->startAnimation(F)V

    return-void
.end method
