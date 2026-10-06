.class public Lcom/miui/powercenter/view/ShadowButton;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private a:Lne/d;

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/animation/ValueAnimator;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/powercenter/view/ShadowButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    const-string p3, "#10000000"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/miui/powercenter/view/ShadowButton;->d:I

    const-string p3, "#190099FF"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/miui/powercenter/view/ShadowButton;->e:I

    new-instance p3, Lne/d;

    invoke-direct {p3, p1}, Lne/d;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/miui/powercenter/view/ShadowButton;->a:Lne/d;

    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0717cb

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0717c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {p1, p3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object p3, p0, Lcom/miui/powercenter/view/ShadowButton;->a:Lne/d;

    invoke-virtual {p0, p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/miui/powercenter/view/ShadowButton;->b:Landroid/graphics/Paint;

    const/4 p3, -0x1

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/miui/powercenter/view/ShadowButton;->b:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/miui/powercenter/view/ShadowButton;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method public static synthetic a(Lcom/miui/powercenter/view/ShadowButton;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/view/ShadowButton;->e(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic b(Lcom/miui/powercenter/view/ShadowButton;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/view/ShadowButton;->f(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/miui/powercenter/view/ShadowButton;->c:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/view/ShadowButton;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x3f666666    # 0.9f

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/powercenter/view/ShadowButton;->c:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/miui/powercenter/view/ShadowButton;->c:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/miui/powercenter/view/ShadowButton;->c:Landroid/animation/ValueAnimator;

    new-instance v1, Lne/f;

    invoke-direct {v1, p0}, Lne/f;-><init>(Lcom/miui/powercenter/view/ShadowButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/miui/powercenter/view/ShadowButton;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private d()V
    .locals 3

    iget-object v0, p0, Lcom/miui/powercenter/view/ShadowButton;->c:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/view/ShadowButton;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/powercenter/view/ShadowButton;->c:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/miui/powercenter/view/ShadowButton;->c:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/miui/powercenter/view/ShadowButton;->c:Landroid/animation/ValueAnimator;

    new-instance v1, Lne/e;

    invoke-direct {v1, p0}, Lne/e;-><init>(Lcom/miui/powercenter/view/ShadowButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/miui/powercenter/view/ShadowButton;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private synthetic e(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private synthetic f(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lcom/miui/powercenter/view/ShadowButton;->a:Lne/d;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/powercenter/view/ShadowButton;->a:Lne/d;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/miui/powercenter/view/ShadowButton;->a:Lne/d;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/miui/powercenter/view/ShadowButton;->a:Lne/d;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/miui/powercenter/view/ShadowButton;->a:Lne/d;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/miui/powercenter/view/ShadowButton;->a:Lne/d;

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/miui/powercenter/view/ShadowButton;->a:Lne/d;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lcom/miui/powercenter/view/ShadowButton;->a:Lne/d;

    invoke-virtual {v1}, Lne/d;->getCorner()F

    move-result v1

    iget-object v2, p0, Lcom/miui/powercenter/view/ShadowButton;->a:Lne/d;

    invoke-virtual {v2}, Lne/d;->getCorner()F

    move-result v2

    iget-object v3, p0, Lcom/miui/powercenter/view/ShadowButton;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public isChecked()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/view/ShadowButton;->a:Lne/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lne/d;->isChecked()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    return v1

    :cond_1
    invoke-direct {p0}, Lcom/miui/powercenter/view/ShadowButton;->d()V

    invoke-virtual {p0}, Lcom/miui/powercenter/view/ShadowButton;->performClick()Z

    return v0

    :cond_2
    invoke-direct {p0}, Lcom/miui/powercenter/view/ShadowButton;->c()V

    return v0
.end method

.method public performClick()Z
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)V
    .locals 5

    iget-object v0, p0, Lcom/miui/powercenter/view/ShadowButton;->b:Landroid/graphics/Paint;

    if-eqz p1, :cond_0

    iget v1, p0, Lcom/miui/powercenter/view/ShadowButton;->e:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/miui/powercenter/view/ShadowButton;->d:I

    :goto_0
    const/high16 v2, 0x41200000    # 10.0f

    const/4 v3, 0x0

    const/high16 v4, 0x40400000    # 3.0f

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lcom/miui/powercenter/view/ShadowButton;->a:Lne/d;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lne/d;->setChecked(Z)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setImageResources([I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/view/ShadowButton;->a:Lne/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lne/d;->setImageResources([I)V

    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/view/ShadowButton;->a:Lne/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lne/d;->toggle()V

    :cond_0
    return-void
.end method
