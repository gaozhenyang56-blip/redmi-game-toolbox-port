.class public Lcom/miui/securitycenter/ad/view/RoundResizeFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field private static final e:[I


# instance fields
.field private a:F

.field private b:[F

.field private c:Landroid/graphics/Path;

.field private d:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    sget v1, Lgf/a;->b:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lgf/a;->a:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sput-object v0, Lcom/miui/securitycenter/ad/view/RoundResizeFrameLayout;->e:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/securitycenter/ad/view/RoundResizeFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/miui/securitycenter/ad/view/RoundResizeFrameLayout;->c:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/securitycenter/ad/view/RoundResizeFrameLayout;->d:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/securitycenter/ad/view/RoundResizeFrameLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    sget-object v0, Lcom/miui/securitycenter/ad/view/RoundResizeFrameLayout;->e:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    const/16 p3, 0x8

    new-array p3, p3, [F

    aput p2, p3, v1

    const/4 v0, 0x1

    aput p2, p3, v0

    const/4 v2, 0x2

    aput p2, p3, v2

    const/4 v2, 0x3

    aput p2, p3, v2

    const/4 v2, 0x4

    aput p2, p3, v2

    const/4 v2, 0x5

    aput p2, p3, v2

    const/4 v2, 0x6

    aput p2, p3, v2

    const/4 v2, 0x7

    aput p2, p3, v2

    iput-object p3, p0, Lcom/miui/securitycenter/ad/view/RoundResizeFrameLayout;->b:[F

    const/high16 p2, -0x40800000    # -1.0f

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/miui/securitycenter/ad/view/RoundResizeFrameLayout;->a:F

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/securitycenter/ad/view/RoundResizeFrameLayout;->d:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/miui/securitycenter/ad/view/RoundResizeFrameLayout;->c:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/miui/securitycenter/ad/view/RoundResizeFrameLayout;->c:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/miui/securitycenter/ad/view/RoundResizeFrameLayout;->d:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/miui/securitycenter/ad/view/RoundResizeFrameLayout;->b:[F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/miui/securitycenter/ad/view/RoundResizeFrameLayout;->c:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    iget v0, p0, Lcom/miui/securitycenter/ad/view/RoundResizeFrameLayout;->a:F

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void

    :cond_0
    cmpl-float p2, v0, v1

    if-lez p2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result p2

    invoke-static {p2, p1}, Landroid/view/View;->getDefaultSize(II)I

    move-result p2

    int-to-float p2, p2

    iget v0, p0, Lcom/miui/securitycenter/ad/view/RoundResizeFrameLayout;->a:F

    mul-float/2addr p2, v0

    float-to-int p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :cond_1
    return-void
.end method
