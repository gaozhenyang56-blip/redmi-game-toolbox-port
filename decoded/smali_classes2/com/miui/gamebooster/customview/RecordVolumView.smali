.class public Lcom/miui/gamebooster/customview/RecordVolumView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/res/Resources;

.field private b:Landroid/graphics/Paint;

.field private c:F

.field private d:I

.field private e:I

.field private f:I

.field private g:D

.field private h:F

.field private i:F

.field private j:F

.field private k:I

.field private l:Landroid/graphics/Path;

.field private m:Landroid/graphics/Path;

.field private n:Ljava/lang/String;

.field private o:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gamebooster/customview/RecordVolumView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/gamebooster/customview/RecordVolumView;->a:Landroid/content/res/Resources;

    sget-object p3, Lef/y;->o1:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x5

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/miui/gamebooster/customview/RecordVolumView;->c:F

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/gamebooster/customview/RecordVolumView;->n:Ljava/lang/String;

    const/4 p2, 0x0

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/miui/gamebooster/customview/RecordVolumView;->d:I

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/miui/gamebooster/customview/RecordVolumView;->e:I

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/customview/RecordVolumView;->f:I

    const/16 v0, 0x9

    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/customview/RecordVolumView;->k:I

    const/4 v0, 0x4

    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/customview/RecordVolumView;->h:F

    const/4 v0, 0x3

    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/customview/RecordVolumView;->i:F

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/customview/RecordVolumView;->j:F

    const/16 v0, 0x8

    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lcom/miui/gamebooster/customview/RecordVolumView;->o:F

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/miui/gamebooster/customview/RecordVolumView;->b:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/miui/gamebooster/customview/RecordVolumView;->b:Landroid/graphics/Paint;

    iget p2, p0, Lcom/miui/gamebooster/customview/RecordVolumView;->h:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/miui/gamebooster/customview/RecordVolumView;->b:Landroid/graphics/Paint;

    iget p2, p0, Lcom/miui/gamebooster/customview/RecordVolumView;->o:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/miui/gamebooster/customview/RecordVolumView;->l:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/miui/gamebooster/customview/RecordVolumView;->m:Landroid/graphics/Path;

    return-void
.end method

.method public static a(Landroid/graphics/Paint;)F
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p0

    iget v0, p0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget p0, p0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float p0, v0, p0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p0, v1

    sub-float/2addr p0, v0

    return p0
.end method

.method private b(Landroid/graphics/Path;I)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/gamebooster/customview/RecordVolumView;->i:F

    sub-float/2addr v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    add-float/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/miui/gamebooster/customview/RecordVolumView;->b:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/miui/gamebooster/customview/RecordVolumView;->n:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    iget v5, p0, Lcom/miui/gamebooster/customview/RecordVolumView;->c:F

    div-float v6, v5, v2

    cmpl-float v5, v4, v5

    if-lez v5, :cond_1

    const/high16 v5, 0x41200000    # 10.0f

    add-float/2addr v4, v5

    div-float v6, v4, v2

    :cond_1
    sub-float v2, v3, v6

    const/4 v4, 0x0

    move v5, v4

    move v7, v5

    :goto_0
    if-ge v5, p2, :cond_2

    int-to-float v7, v7

    sub-float v8, v2, v7

    invoke-virtual {p1, v8, v0}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {p1, v8, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget v8, p0, Lcom/miui/gamebooster/customview/RecordVolumView;->h:F

    iget v9, p0, Lcom/miui/gamebooster/customview/RecordVolumView;->j:F

    add-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-int v7, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    add-float/2addr v3, v6

    move v2, v4

    :goto_1
    if-ge v4, p2, :cond_3

    int-to-float v2, v2

    add-float v5, v3, v2

    invoke-virtual {p1, v5, v0}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {p1, v5, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget v5, p0, Lcom/miui/gamebooster/customview/RecordVolumView;->h:F

    iget v6, p0, Lcom/miui/gamebooster/customview/RecordVolumView;->j:F

    add-float/2addr v5, v6

    add-float/2addr v2, v5

    float-to-int v2, v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/RecordVolumView;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/gamebooster/customview/RecordVolumView;->h:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/RecordVolumView;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/gamebooster/customview/RecordVolumView;->d:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/RecordVolumView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/RecordVolumView;->l:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/miui/gamebooster/customview/RecordVolumView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/RecordVolumView;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/gamebooster/customview/RecordVolumView;->e:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/RecordVolumView;->m:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/miui/gamebooster/customview/RecordVolumView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/RecordVolumView;->b:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/RecordVolumView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/RecordVolumView;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/gamebooster/customview/RecordVolumView;->f:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/RecordVolumView;->b:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/miui/gamebooster/customview/RecordVolumView;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    sub-float/2addr v1, v0

    float-to-int v0, v1

    iget-object v1, p0, Lcom/miui/gamebooster/customview/RecordVolumView;->n:Ljava/lang/String;

    int-to-float v0, v0

    iget-object v2, p0, Lcom/miui/gamebooster/customview/RecordVolumView;->b:Landroid/graphics/Paint;

    invoke-static {v2}, Lcom/miui/gamebooster/customview/RecordVolumView;->a(Landroid/graphics/Paint;)F

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/miui/gamebooster/customview/RecordVolumView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object p1, p0, Lcom/miui/gamebooster/customview/RecordVolumView;->l:Landroid/graphics/Path;

    iget p2, p0, Lcom/miui/gamebooster/customview/RecordVolumView;->k:I

    invoke-direct {p0, p1, p2}, Lcom/miui/gamebooster/customview/RecordVolumView;->b(Landroid/graphics/Path;I)V

    iget-object p1, p0, Lcom/miui/gamebooster/customview/RecordVolumView;->m:Landroid/graphics/Path;

    iget p2, p0, Lcom/miui/gamebooster/customview/RecordVolumView;->k:I

    int-to-double p2, p2

    iget-wide v0, p0, Lcom/miui/gamebooster/customview/RecordVolumView;->g:D

    mul-double/2addr p2, v0

    double-to-int p2, p2

    invoke-direct {p0, p1, p2}, Lcom/miui/gamebooster/customview/RecordVolumView;->b(Landroid/graphics/Path;I)V

    return-void
.end method

.method public setTime(I)V
    .locals 4

    iget-object v0, p0, Lcom/miui/gamebooster/customview/RecordVolumView;->a:Landroid/content/res/Resources;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f10003d

    invoke-virtual {v0, v2, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gamebooster/customview/RecordVolumView;->n:Ljava/lang/String;

    iget-object p1, p0, Lcom/miui/gamebooster/customview/RecordVolumView;->l:Landroid/graphics/Path;

    iget v0, p0, Lcom/miui/gamebooster/customview/RecordVolumView;->k:I

    invoke-direct {p0, p1, v0}, Lcom/miui/gamebooster/customview/RecordVolumView;->b(Landroid/graphics/Path;I)V

    iget-object p1, p0, Lcom/miui/gamebooster/customview/RecordVolumView;->m:Landroid/graphics/Path;

    iget v0, p0, Lcom/miui/gamebooster/customview/RecordVolumView;->k:I

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/miui/gamebooster/customview/RecordVolumView;->g:D

    mul-double/2addr v0, v2

    double-to-int v0, v0

    invoke-direct {p0, p1, v0}, Lcom/miui/gamebooster/customview/RecordVolumView;->b(Landroid/graphics/Path;I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setVoice(D)V
    .locals 4

    iput-wide p1, p0, Lcom/miui/gamebooster/customview/RecordVolumView;->g:D

    iget-object p1, p0, Lcom/miui/gamebooster/customview/RecordVolumView;->l:Landroid/graphics/Path;

    iget p2, p0, Lcom/miui/gamebooster/customview/RecordVolumView;->k:I

    invoke-direct {p0, p1, p2}, Lcom/miui/gamebooster/customview/RecordVolumView;->b(Landroid/graphics/Path;I)V

    iget-object p1, p0, Lcom/miui/gamebooster/customview/RecordVolumView;->m:Landroid/graphics/Path;

    iget p2, p0, Lcom/miui/gamebooster/customview/RecordVolumView;->k:I

    int-to-double v0, p2

    iget-wide v2, p0, Lcom/miui/gamebooster/customview/RecordVolumView;->g:D

    mul-double/2addr v0, v2

    double-to-int p2, v0

    invoke-direct {p0, p1, p2}, Lcom/miui/gamebooster/customview/RecordVolumView;->b(Landroid/graphics/Path;I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
