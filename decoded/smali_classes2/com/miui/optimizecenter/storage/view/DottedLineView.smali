.class public Lcom/miui/optimizecenter/storage/view/DottedLineView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:I

.field private c:I

.field private d:Landroid/graphics/Path;

.field private e:I

.field private f:F

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/optimizecenter/storage/view/DottedLineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p2}, Lcom/miui/optimizecenter/storage/view/DottedLineView;->b(Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/miui/optimizecenter/storage/view/DottedLineView;->c()V

    return-void
.end method

.method private b(Landroid/util/AttributeSet;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lef/y;->H0:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x1

    const/high16 v1, -0x1000000

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/miui/optimizecenter/storage/view/DottedLineView;->e:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1}, Lcom/miui/optimizecenter/storage/view/DottedLineView;->a(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/miui/optimizecenter/storage/view/DottedLineView;->f:F

    const/4 v0, 0x0

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/optimizecenter/storage/view/DottedLineView;->g:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private c()V
    .locals 6

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/optimizecenter/storage/view/DottedLineView;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/view/DottedLineView;->a:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/view/DottedLineView;->a:Landroid/graphics/Paint;

    iget v2, p0, Lcom/miui/optimizecenter/storage/view/DottedLineView;->f:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/view/DottedLineView;->a:Landroid/graphics/Paint;

    iget v2, p0, Lcom/miui/optimizecenter/storage/view/DottedLineView;->e:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x2

    new-array v2, v2, [F

    iget v3, p0, Lcom/miui/optimizecenter/storage/view/DottedLineView;->g:I

    int-to-float v4, v3

    const/4 v5, 0x0

    aput v4, v2, v5

    int-to-float v3, v3

    aput v3, v2, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/view/DottedLineView;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/miui/optimizecenter/storage/view/DottedLineView;->d:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;F)I
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0, p2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/view/DottedLineView;->d:Landroid/graphics/Path;

    iget v1, p0, Lcom/miui/optimizecenter/storage/view/DottedLineView;->c:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/view/DottedLineView;->d:Landroid/graphics/Path;

    iget v1, p0, Lcom/miui/optimizecenter/storage/view/DottedLineView;->b:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/optimizecenter/storage/view/DottedLineView;->c:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/view/DottedLineView;->d:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/view/DottedLineView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iput p1, p0, Lcom/miui/optimizecenter/storage/view/DottedLineView;->b:I

    iput p2, p0, Lcom/miui/optimizecenter/storage/view/DottedLineView;->c:I

    return-void
.end method
