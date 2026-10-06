.class public Lcom/miui/securityscan/ui/main/ColorfulRingView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/securityscan/ui/main/ColorfulRingView$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/securityscan/ui/main/ColorfulRingView$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Landroid/graphics/RectF;

.field private e:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/miui/securityscan/ui/main/ColorfulRingView;->c()V

    return-void
.end method

.method private a(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/securityscan/ui/main/ColorfulRingView$a;",
            ">;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private c()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070a70

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/securityscan/ui/main/ColorfulRingView;->a:I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/ColorfulRingView;->d:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/ColorfulRingView;->e:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/ColorfulRingView;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/ColorfulRingView;->e:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/securityscan/ui/main/ColorfulRingView;->a:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public b(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/securityscan/ui/main/ColorfulRingView$a;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/miui/securityscan/ui/main/ColorfulRingView;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/miui/securityscan/ui/main/ColorfulRingView;->b:Ljava/util/List;

    iput p2, p0, Lcom/miui/securityscan/ui/main/ColorfulRingView;->c:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    if-gtz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/miui/securityscan/ui/main/ColorfulRingView;->d:Landroid/graphics/RectF;

    iget v2, v0, Lcom/miui/securityscan/ui/main/ColorfulRingView;->a:I

    int-to-float v3, v2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget v5, v0, Lcom/miui/securityscan/ui/main/ColorfulRingView;->a:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v5

    iget v6, v0, Lcom/miui/securityscan/ui/main/ColorfulRingView;->a:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lcom/miui/securityscan/ui/main/ColorfulRingView;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/miui/securityscan/ui/main/ColorfulRingView;->a(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/high16 v1, -0x3d4c0000    # -90.0f

    iget-object v2, v0, Lcom/miui/securityscan/ui/main/ColorfulRingView;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/high16 v9, 0x43870000    # 270.0f

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/securityscan/ui/main/ColorfulRingView$a;

    iget-object v4, v0, Lcom/miui/securityscan/ui/main/ColorfulRingView;->e:Landroid/graphics/Paint;

    iget v5, v3, Lcom/miui/securityscan/ui/main/ColorfulRingView$a;->a:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget v3, v3, Lcom/miui/securityscan/ui/main/ColorfulRingView$a;->b:F

    const/high16 v4, 0x43b40000    # 360.0f

    mul-float/2addr v3, v4

    add-float v4, v1, v3

    cmpl-float v4, v4, v9

    if-lez v4, :cond_3

    sub-float v3, v9, v1

    :cond_3
    move v10, v3

    iget-object v4, v0, Lcom/miui/securityscan/ui/main/ColorfulRingView;->d:Landroid/graphics/RectF;

    const/4 v7, 0x0

    iget-object v8, v0, Lcom/miui/securityscan/ui/main/ColorfulRingView;->e:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    move v5, v1

    move v6, v10

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    add-float/2addr v1, v10

    cmpl-float v3, v1, v9

    if-lez v3, :cond_2

    :cond_4
    move v12, v1

    cmpg-float v1, v12, v9

    if-gtz v1, :cond_5

    iget-object v1, v0, Lcom/miui/securityscan/ui/main/ColorfulRingView;->e:Landroid/graphics/Paint;

    iget v2, v0, Lcom/miui/securityscan/ui/main/ColorfulRingView;->c:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v11, v0, Lcom/miui/securityscan/ui/main/ColorfulRingView;->d:Landroid/graphics/RectF;

    sub-float v13, v9, v12

    const/4 v14, 0x0

    iget-object v15, v0, Lcom/miui/securityscan/ui/main/ColorfulRingView;->e:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
