.class public Lcom/miui/phonemanage/view/PopularActionFindView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private final a:Landroid/graphics/RectF;

.field private final b:Landroid/graphics/Paint;

.field private final c:Landroid/graphics/Xfermode;

.field private d:Landroid/animation/ValueAnimator;

.field private e:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/phonemanage/view/PopularActionFindView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/miui/phonemanage/view/PopularActionFindView;->a:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/miui/phonemanage/view/PopularActionFindView;->b:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcom/miui/phonemanage/view/PopularActionFindView;->c:Landroid/graphics/Xfermode;

    invoke-direct {p0}, Lcom/miui/phonemanage/view/PopularActionFindView;->b()V

    return-void
.end method

.method public static synthetic a(Lcom/miui/phonemanage/view/PopularActionFindView;IIIIIIIILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/miui/phonemanage/view/PopularActionFindView;->c(IIIIIIIILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method private b()V
    .locals 4

    iget-object v0, p0, Lcom/miui/phonemanage/view/PopularActionFindView;->b:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060c83

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070495

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/phonemanage/view/PopularActionFindView;->e:F

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method private synthetic c(IIIIIIIILandroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p9}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p9

    check-cast p9, Ljava/lang/Float;

    invoke-virtual {p9}, Ljava/lang/Float;->floatValue()F

    move-result p9

    int-to-float v0, p1

    sub-int/2addr p1, p2

    int-to-float p1, p1

    mul-float/2addr p1, p9

    sub-float/2addr v0, p1

    int-to-float p1, p3

    sub-int/2addr p3, p4

    int-to-float p2, p3

    mul-float/2addr p2, p9

    sub-float/2addr p1, p2

    int-to-float p2, p5

    sub-int/2addr p5, p6

    int-to-float p3, p5

    mul-float/2addr p3, p9

    sub-float/2addr p2, p3

    int-to-float p3, p7

    sub-int/2addr p7, p8

    int-to-float p4, p7

    mul-float/2addr p4, p9

    sub-float/2addr p3, p4

    iget-object p4, p0, Lcom/miui/phonemanage/view/PopularActionFindView;->a:Landroid/graphics/RectF;

    iput p3, p4, Landroid/graphics/RectF;->top:F

    iput p2, p4, Landroid/graphics/RectF;->left:F

    add-float/2addr p2, v0

    iput p2, p4, Landroid/graphics/RectF;->right:F

    add-float/2addr p3, p1

    iput p3, p4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, p9}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/miui/phonemanage/view/PopularActionFindView;->d:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/phonemanage/view/PopularActionFindView;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/miui/phonemanage/view/PopularActionFindView;->a:Landroid/graphics/RectF;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/miui/phonemanage/view/PopularActionFindView;->a:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public f(IIII)V
    .locals 11

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071d3c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int v8, p1, v0

    sub-int v10, p2, v0

    const/4 p1, 0x2

    mul-int/2addr v0, p1

    add-int v4, p3, v0

    add-int v6, p4, v0

    int-to-double p2, v4

    const-wide v0, 0x3ff3333333333333L    # 1.2

    mul-double/2addr p2, v0

    double-to-int v3, p2

    int-to-double p2, v6

    mul-double/2addr p2, v0

    double-to-int v5, p2

    sub-int p2, v3, v4

    div-int/2addr p2, p1

    sub-int v7, v8, p2

    sub-int p2, v5, v6

    div-int/2addr p2, p1

    sub-int v9, v10, p2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 p2, 0xc8

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/phonemanage/view/PopularActionFindView;->d:Landroid/animation/ValueAnimator;

    new-instance p2, Led/a;

    move-object v1, p2

    move-object v2, p0

    invoke-direct/range {v1 .. v10}, Led/a;-><init>(Lcom/miui/phonemanage/view/PopularActionFindView;IIIIIIII)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/miui/phonemanage/view/PopularActionFindView;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v0, p0, Lcom/miui/phonemanage/view/PopularActionFindView;->b:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/miui/phonemanage/view/PopularActionFindView;->b:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/miui/phonemanage/view/PopularActionFindView;->b:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/miui/phonemanage/view/PopularActionFindView;->c:Landroid/graphics/Xfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/miui/phonemanage/view/PopularActionFindView;->a:Landroid/graphics/RectF;

    iget v1, p0, Lcom/miui/phonemanage/view/PopularActionFindView;->e:F

    iget-object v2, p0, Lcom/miui/phonemanage/view/PopularActionFindView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Lcom/miui/phonemanage/view/PopularActionFindView;->e()V

    return-void
.end method
