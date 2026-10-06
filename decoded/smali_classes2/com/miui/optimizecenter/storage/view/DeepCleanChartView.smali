.class public Lcom/miui/optimizecenter/storage/view/DeepCleanChartView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/RectF;

.field private b:Landroid/graphics/RectF;

.field private c:Landroid/graphics/RectF;

.field private d:I

.field private e:I

.field private f:I

.field g:F

.field h:F

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private final m:I

.field private n:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/optimizecenter/storage/view/DeepCleanChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070329

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/miui/optimizecenter/storage/view/DeepCleanChartView;->m:I

    invoke-direct {p0, p1}, Lcom/miui/optimizecenter/storage/view/DeepCleanChartView;->b(Landroid/content/Context;)V

    return-void
.end method

.method private a()V
    .locals 4

    iget v0, p0, Lcom/miui/optimizecenter/storage/view/DeepCleanChartView;->i:I

    int-to-float v1, v0

    iget v2, p0, Lcom/miui/optimizecenter/storage/view/DeepCleanChartView;->g:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/miui/optimizecenter/storage/view/DeepCleanChartView;->m:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/miui/optimizecenter/storage/view/DeepCleanChartView;->k:I

    int-to-float v1, v0

    iget v3, p0, Lcom/miui/optimizecenter/storage/view/DeepCleanChartView;->h:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/miui/optimizecenter/storage/view/DeepCleanChartView;->l:I

    iget-object v2, p0, Lcom/miui/optimizecenter/storage/view/DeepCleanChartView;->a:Landroid/graphics/RectF;

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/optimizecenter/storage/view/DeepCleanChartView;->j:I

    int-to-float v1, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/view/DeepCleanChartView;->b:Landroid/graphics/RectF;

    iget v1, p0, Lcom/miui/optimizecenter/storage/view/DeepCleanChartView;->k:I

    iget v2, p0, Lcom/miui/optimizecenter/storage/view/DeepCleanChartView;->i:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/optimizecenter/storage/view/DeepCleanChartView;->j:I

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0601a0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/optimizecenter/storage/view/DeepCleanChartView;->d:I

    const v0, 0x7f06019f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/optimizecenter/storage/view/DeepCleanChartView;->e:I

    const v0, 0x7f06019e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/miui/optimizecenter/storage/view/DeepCleanChartView;->f:I

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/view/DeepCleanChartView;->a:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/view/DeepCleanChartView;->b:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/view/DeepCleanChartView;->c:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/view/DeepCleanChartView;->n:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public c(JJJ)V
    .locals 6

    long-to-double v0, p3

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    long-to-double v4, p1

    div-double/2addr v0, v4

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/miui/optimizecenter/storage/view/DeepCleanChartView;->g:F

    sub-long/2addr p1, p3

    sub-long/2addr p1, p5

    long-to-double p1, p1

    mul-double/2addr p1, v2

    div-double/2addr p1, v4

    double-to-float p1, p1

    iput p1, p0, Lcom/miui/optimizecenter/storage/view/DeepCleanChartView;->h:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0}, Lcom/miui/optimizecenter/storage/view/DeepCleanChartView;->a()V

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/view/DeepCleanChartView;->n:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/optimizecenter/storage/view/DeepCleanChartView;->d:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/view/DeepCleanChartView;->c:Landroid/graphics/RectF;

    iget v1, p0, Lcom/miui/optimizecenter/storage/view/DeepCleanChartView;->m:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/miui/optimizecenter/storage/view/DeepCleanChartView;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/view/DeepCleanChartView;->n:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/optimizecenter/storage/view/DeepCleanChartView;->e:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/miui/optimizecenter/storage/view/DeepCleanChartView;->k:I

    iget v1, p0, Lcom/miui/optimizecenter/storage/view/DeepCleanChartView;->m:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/miui/optimizecenter/storage/view/DeepCleanChartView;->j:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/view/DeepCleanChartView;->b:Landroid/graphics/RectF;

    iget v1, p0, Lcom/miui/optimizecenter/storage/view/DeepCleanChartView;->m:I

    int-to-float v3, v1

    int-to-float v1, v1

    iget-object v4, p0, Lcom/miui/optimizecenter/storage/view/DeepCleanChartView;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/view/DeepCleanChartView;->n:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/optimizecenter/storage/view/DeepCleanChartView;->f:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/miui/optimizecenter/storage/view/DeepCleanChartView;->l:I

    iget v1, p0, Lcom/miui/optimizecenter/storage/view/DeepCleanChartView;->m:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/miui/optimizecenter/storage/view/DeepCleanChartView;->j:I

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/view/DeepCleanChartView;->a:Landroid/graphics/RectF;

    iget v1, p0, Lcom/miui/optimizecenter/storage/view/DeepCleanChartView;->m:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/miui/optimizecenter/storage/view/DeepCleanChartView;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iput p1, p0, Lcom/miui/optimizecenter/storage/view/DeepCleanChartView;->i:I

    iput p2, p0, Lcom/miui/optimizecenter/storage/view/DeepCleanChartView;->j:I

    iget-object p3, p0, Lcom/miui/optimizecenter/storage/view/DeepCleanChartView;->c:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method
