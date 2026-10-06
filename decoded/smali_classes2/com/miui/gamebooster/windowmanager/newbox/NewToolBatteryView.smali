.class public Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:F

.field private i:F

.field private j:Landroid/graphics/Paint;

.field private k:Landroid/graphics/Path;

.field private l:[I

.field private m:[F

.field private n:F

.field private o:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;->f:I

    iput p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;->g:I

    const/4 p3, 0x0

    iput p3, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;->h:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;->i:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;->j:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;->k:Landroid/graphics/Path;

    const/4 v0, 0x2

    new-array v1, v0, [I

    const-string v2, "#BDC1DA"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, p1

    const-string p1, "#828695"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    const/4 v2, 0x1

    aput p1, v1, v2

    iput-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;->l:[I

    new-array p1, v0, [F

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;->m:[F

    iput p3, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;->n:F

    iput p3, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;->o:F

    invoke-direct {p0, p2}, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;->b(Landroid/util/AttributeSet;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private a(FFFFFF)I
    .locals 0

    sub-float/2addr p3, p1

    sub-float/2addr p4, p2

    sub-float/2addr p5, p1

    sub-float/2addr p6, p2

    mul-float p1, p3, p5

    mul-float p2, p4, p6

    add-float/2addr p1, p2

    float-to-double p1, p1

    mul-float/2addr p3, p3

    mul-float/2addr p4, p4

    add-float/2addr p3, p4

    mul-float/2addr p5, p5

    mul-float/2addr p6, p6

    add-float/2addr p5, p6

    mul-float/2addr p3, p5

    float-to-double p3, p3

    invoke-static {p3, p4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p3

    div-double/2addr p1, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->acos(D)D

    move-result-wide p1

    const-wide p3, 0x4066800000000000L    # 180.0

    mul-double/2addr p1, p3

    const-wide p3, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p1, p3

    double-to-int p1, p1

    return p1
.end method

.method private b(Landroid/util/AttributeSet;)V
    .locals 5
    .param p1    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lef/y;->U2:[I

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;->f:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;->g:I

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;->h:F

    cmpg-float v3, v2, v1

    const/high16 v4, 0x3f800000    # 1.0f

    if-ltz v3, :cond_0

    cmpl-float v2, v2, v4

    if-lez v2, :cond_1

    :cond_0
    iput v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;->h:F

    :cond_1
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;->i:F

    cmpl-float v3, v2, v4

    if-gtz v3, :cond_2

    cmpg-float v2, v2, v1

    if-gez v2, :cond_3

    :cond_2
    iput v4, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;->i:F

    :cond_3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v2, 0x7f08062f

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f071e0b

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iget v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;->g:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;->b:I

    iput p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;->c:I

    iput p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;->d:I

    iput p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;->e:I

    iget-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;->j:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0, v1}, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;->setProcess(F)V

    return-void
.end method


# virtual methods
.method public getProcess()F
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;->n:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 26

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    sub-int/2addr v0, v1

    if-gtz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    if-gtz v1, :cond_1

    return-void

    :cond_1
    iget-object v2, v7, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingStart()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v6, v9

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, v7, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v2, v7, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;->b:I

    sub-int/2addr v0, v2

    iget v2, v7, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;->c:I

    sub-int/2addr v0, v2

    if-gtz v0, :cond_2

    return-void

    :cond_2
    iget v2, v7, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;->d:I

    sub-int/2addr v1, v2

    iget v2, v7, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;->e:I

    sub-int/2addr v1, v2

    if-gtz v1, :cond_3

    return-void

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    iget v3, v7, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;->b:I

    add-int v9, v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v7, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;->c:I

    sub-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget v4, v7, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;->d:I

    add-int v10, v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, v7, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;->e:I

    sub-int v11, v3, v4

    int-to-float v3, v0

    iget v4, v7, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;->o:F

    mul-float/2addr v3, v4

    int-to-float v12, v2

    int-to-float v15, v9

    add-float/2addr v3, v15

    invoke-static {v12, v3}, Ljava/lang/Math;->min(FF)F

    move-result v14

    invoke-static {v15, v3}, Ljava/lang/Math;->max(FF)F

    move-result v13

    iget v2, v7, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;->f:I

    const/4 v6, 0x0

    if-lez v2, :cond_4

    mul-int/lit8 v3, v2, 0x2

    if-lt v0, v3, :cond_4

    mul-int/lit8 v0, v2, 0x2

    if-lt v1, v0, :cond_4

    move v5, v2

    goto :goto_0

    :cond_4
    move v5, v6

    :goto_0
    mul-int/lit8 v4, v5, 0x2

    iget-object v0, v7, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;->k:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    const/16 v3, -0x5a

    if-lez v5, :cond_7

    cmpg-float v0, v14, v15

    if-gtz v0, :cond_5

    iget-object v0, v7, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;->k:Landroid/graphics/Path;

    add-int v1, v10, v5

    int-to-float v1, v1

    invoke-virtual {v0, v15, v1}, Landroid/graphics/Path;->moveTo(FF)V

    move/from16 v25, v4

    move/from16 v24, v12

    move v6, v13

    move v0, v14

    move v8, v15

    move v12, v5

    goto/16 :goto_2

    :cond_5
    sub-float v0, v14, v15

    int-to-float v1, v5

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    add-int v0, v9, v5

    int-to-float v1, v0

    add-int v0, v10, v5

    int-to-float v2, v0

    int-to-float v0, v10

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v17, v2

    move v8, v3

    move v3, v14

    move v8, v4

    move/from16 v4, v16

    move/from16 v24, v12

    move v12, v5

    move v5, v15

    move/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;->a(FFFFFF)I

    move-result v0

    neg-int v3, v0

    goto :goto_1

    :cond_6
    move v8, v4

    move/from16 v24, v12

    move v12, v5

    const/16 v3, -0x5a

    :goto_1
    iget-object v0, v7, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;->k:Landroid/graphics/Path;

    int-to-float v1, v10

    add-int v4, v9, v8

    int-to-float v2, v4

    add-int v4, v10, v8

    int-to-float v4, v4

    rsub-int v5, v3, 0xb4

    int-to-float v5, v5

    int-to-float v3, v3

    const/16 v20, 0x0

    move v6, v13

    move-object v13, v0

    move v0, v14

    move v14, v15

    move/from16 v25, v8

    move v8, v15

    move v15, v1

    move/from16 v16, v2

    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v3

    invoke-virtual/range {v13 .. v20}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    goto :goto_2

    :cond_7
    move/from16 v25, v4

    move/from16 v24, v12

    move v6, v13

    move v0, v14

    move v8, v15

    move v12, v5

    iget-object v1, v7, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;->k:Landroid/graphics/Path;

    int-to-float v2, v10

    invoke-virtual {v1, v8, v2}, Landroid/graphics/Path;->setLastPoint(FF)V

    :goto_2
    if-lez v12, :cond_a

    cmpg-float v1, v6, v8

    if-gtz v1, :cond_8

    iget-object v1, v7, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;->k:Landroid/graphics/Path;

    sub-int v2, v11, v12

    int-to-float v2, v2

    invoke-virtual {v1, v8, v2}, Landroid/graphics/Path;->lineTo(FF)V

    move v5, v6

    move v6, v0

    goto :goto_4

    :cond_8
    sub-float v13, v6, v8

    int-to-float v1, v12

    cmpg-float v1, v13, v1

    if-gez v1, :cond_9

    add-int v5, v9, v12

    int-to-float v1, v5

    sub-int v2, v11, v12

    int-to-float v4, v2

    int-to-float v13, v11

    move v15, v0

    move-object/from16 v0, p0

    move v2, v4

    move v3, v8

    move v5, v6

    move v14, v6

    move v6, v13

    invoke-direct/range {v0 .. v6}, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;->a(FFFFFF)I

    move-result v0

    neg-int v3, v0

    goto :goto_3

    :cond_9
    move v15, v0

    move v14, v6

    const/16 v3, -0x5a

    :goto_3
    iget-object v13, v7, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;->k:Landroid/graphics/Path;

    sub-int v0, v11, v25

    int-to-float v0, v0

    add-int v4, v9, v25

    int-to-float v1, v4

    int-to-float v2, v11

    const/high16 v18, 0x43340000    # 180.0f

    int-to-float v3, v3

    const/16 v20, 0x0

    move v5, v14

    move v14, v8

    move v6, v15

    move v15, v0

    move/from16 v16, v1

    move/from16 v17, v2

    move/from16 v19, v3

    invoke-virtual/range {v13 .. v20}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    goto :goto_4

    :cond_a
    move v5, v6

    move v6, v0

    iget-object v0, v7, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;->k:Landroid/graphics/Path;

    int-to-float v1, v11

    invoke-virtual {v0, v8, v1}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_4
    if-lez v12, :cond_d

    sub-float v13, v5, v8

    int-to-float v0, v12

    cmpl-float v0, v13, v0

    if-lez v0, :cond_c

    move/from16 v15, v25

    int-to-float v0, v15

    cmpg-float v1, v13, v0

    if-gez v1, :cond_b

    add-int v0, v9, v12

    int-to-float v3, v0

    sub-int v0, v11, v12

    int-to-float v2, v0

    int-to-float v14, v11

    move-object/from16 v0, p0

    move v1, v3

    move v4, v14

    move v13, v6

    move v6, v14

    invoke-direct/range {v0 .. v6}, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;->a(FFFFFF)I

    move-result v0

    neg-int v0, v0

    iget-object v1, v7, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;->k:Landroid/graphics/Path;

    sub-int v2, v11, v15

    int-to-float v2, v2

    add-int v4, v9, v15

    int-to-float v3, v4

    const/high16 v18, 0x42b40000    # 90.0f

    int-to-float v0, v0

    const/16 v20, 0x0

    move v6, v13

    move-object v13, v1

    move v1, v14

    move v14, v8

    move v4, v15

    move v15, v2

    move/from16 v16, v3

    move/from16 v17, v1

    move/from16 v19, v0

    invoke-virtual/range {v13 .. v20}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    goto :goto_5

    :cond_b
    move v4, v15

    iget-object v1, v7, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;->k:Landroid/graphics/Path;

    sub-float v17, v5, v0

    sub-int v0, v11, v4

    int-to-float v0, v0

    int-to-float v2, v11

    const/high16 v21, 0x42b40000    # 90.0f

    const/16 v3, -0x5a

    int-to-float v13, v3

    const/16 v23, 0x0

    move-object/from16 v16, v1

    move/from16 v18, v0

    move/from16 v19, v5

    move/from16 v20, v2

    move/from16 v22, v13

    invoke-virtual/range {v16 .. v23}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    goto :goto_5

    :cond_c
    move/from16 v4, v25

    goto :goto_5

    :cond_d
    move/from16 v4, v25

    iget-object v0, v7, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;->k:Landroid/graphics/Path;

    int-to-float v1, v11

    invoke-virtual {v0, v5, v1}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_5
    if-lez v12, :cond_f

    sub-float v14, v6, v8

    int-to-float v0, v12

    cmpl-float v0, v14, v0

    if-lez v0, :cond_10

    int-to-float v0, v4

    cmpg-float v1, v14, v0

    if-gez v1, :cond_e

    add-int v5, v9, v12

    int-to-float v3, v5

    add-int v5, v10, v12

    int-to-float v2, v5

    int-to-float v15, v10

    move-object/from16 v0, p0

    move v1, v3

    move v12, v4

    move v4, v15

    move v5, v6

    move v6, v15

    invoke-direct/range {v0 .. v6}, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;->a(FFFFFF)I

    move-result v0

    neg-int v0, v0

    iget-object v13, v7, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;->k:Landroid/graphics/Path;

    add-int/2addr v9, v12

    int-to-float v1, v9

    add-int v4, v10, v12

    int-to-float v2, v4

    rsub-int/lit8 v3, v0, -0x5a

    int-to-float v3, v3

    int-to-float v0, v0

    const/16 v20, 0x0

    move v14, v8

    move/from16 v16, v1

    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v0

    invoke-virtual/range {v13 .. v20}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    goto :goto_6

    :cond_e
    move v12, v4

    iget-object v1, v7, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;->k:Landroid/graphics/Path;

    sub-float v17, v6, v0

    int-to-float v0, v10

    add-int v4, v10, v12

    int-to-float v2, v4

    const/4 v3, 0x0

    int-to-float v3, v3

    const/16 v4, -0x5a

    int-to-float v4, v4

    const/16 v23, 0x0

    move-object/from16 v16, v1

    move/from16 v18, v0

    move/from16 v19, v6

    move/from16 v20, v2

    move/from16 v21, v3

    move/from16 v22, v4

    invoke-virtual/range {v16 .. v23}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    goto :goto_6

    :cond_f
    iget-object v0, v7, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;->k:Landroid/graphics/Path;

    int-to-float v1, v10

    invoke-virtual {v0, v6, v1}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_10
    :goto_6
    iget-object v0, v7, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;->k:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, v7, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;->j:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/LinearGradient;

    int-to-float v15, v10

    const/high16 v2, 0x40000000    # 2.0f

    div-float v12, v24, v2

    const/high16 v2, 0x40400000    # 3.0f

    mul-float v16, v12, v2

    int-to-float v2, v11

    iget-object v3, v7, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;->l:[I

    iget-object v4, v7, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;->m:[F

    sget-object v20, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move-object v13, v1

    move v14, v8

    move/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    invoke-direct/range {v13 .. v20}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, v7, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;->k:Landroid/graphics/Path;

    iget-object v1, v7, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;->j:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public setProcess(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    move p1, v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    move p1, v0

    :cond_1
    iput p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;->n:F

    iget v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;->h:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_2

    :goto_0
    move p1, v0

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;->i:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    iget v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;->o:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_4

    iput p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;->o:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_4
    return-void
.end method
