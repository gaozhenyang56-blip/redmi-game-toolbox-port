.class public Lcom/miui/gamebooster/LevelSeekBarViewV2;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/LevelSeekBarViewV2$a;
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Paint;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private final h:Landroid/graphics/Paint;

.field private final i:Landroid/graphics/Paint;

.field private j:I

.field private k:I

.field private l:[[I

.field private m:Lcom/miui/gamebooster/LevelSeekBarViewV2$a;

.field private n:I

.field private o:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gamebooster/LevelSeekBarViewV2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    iput p3, p0, Lcom/miui/gamebooster/LevelSeekBarViewV2;->n:I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/LevelSeekBarViewV2;->o:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42c60000    # 99.0f

    invoke-static {v0, v1}, La8/k2;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/LevelSeekBarViewV2;->e:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v0, v1}, La8/k2;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/LevelSeekBarViewV2;->c:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v2, 0x41100000    # 9.0f

    invoke-static {v0, v2}, La8/k2;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/LevelSeekBarViewV2;->d:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/gamebooster/LevelSeekBarViewV2;->g:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, La8/k2;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/miui/gamebooster/LevelSeekBarViewV2;->j:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v1, v2}, La8/k2;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/miui/gamebooster/LevelSeekBarViewV2;->k:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/miui/gamebooster/LevelSeekBarViewV2;->f:I

    const/4 v1, 0x2

    if-eqz p2, :cond_0

    sget-object v3, Lef/y;->P1:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    iget p2, p0, Lcom/miui/gamebooster/LevelSeekBarViewV2;->f:I

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/miui/gamebooster/LevelSeekBarViewV2;->f:I

    iget p2, p0, Lcom/miui/gamebooster/LevelSeekBarViewV2;->e:I

    int-to-float p2, p2

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/miui/gamebooster/LevelSeekBarViewV2;->e:I

    iget p2, p0, Lcom/miui/gamebooster/LevelSeekBarViewV2;->d:I

    int-to-float p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/miui/gamebooster/LevelSeekBarViewV2;->d:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    iget p1, p0, Lcom/miui/gamebooster/LevelSeekBarViewV2;->f:I

    new-array p2, v1, [I

    aput v1, p2, v0

    aput p1, p2, p3

    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p1, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[I

    iput-object p1, p0, Lcom/miui/gamebooster/LevelSeekBarViewV2;->l:[[I

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/miui/gamebooster/LevelSeekBarViewV2;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/miui/gamebooster/LevelSeekBarViewV2;->b:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/miui/gamebooster/LevelSeekBarViewV2;->b:Landroid/graphics/Paint;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/miui/gamebooster/LevelSeekBarViewV2;->b:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f0602fd

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/miui/gamebooster/LevelSeekBarViewV2;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/miui/gamebooster/LevelSeekBarViewV2;->a:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/miui/gamebooster/LevelSeekBarViewV2;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/miui/gamebooster/LevelSeekBarViewV2;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f060300

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/miui/gamebooster/LevelSeekBarViewV2;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0602fe

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/miui/gamebooster/LevelSeekBarViewV2;->i:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v2}, La8/k2;->a(Landroid/content/Context;F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0602ff

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 11

    iget-object v0, p0, Lcom/miui/gamebooster/LevelSeekBarViewV2;->o:Landroid/graphics/RectF;

    iget v1, p0, Lcom/miui/gamebooster/LevelSeekBarViewV2;->e:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/miui/gamebooster/LevelSeekBarViewV2;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/miui/gamebooster/LevelSeekBarViewV2;->o:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v2, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v0

    float-to-int v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41700000    # 15.0f

    invoke-static {v2, v3}, La8/k2;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, La8/k2;->a(Landroid/content/Context;F)I

    move-result v3

    iget v4, p0, Lcom/miui/gamebooster/LevelSeekBarViewV2;->f:I

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v4, v7, :cond_0

    int-to-float v2, v1

    div-float/2addr v2, v5

    int-to-float v3, v0

    div-float/2addr v3, v5

    iget v4, p0, Lcom/miui/gamebooster/LevelSeekBarViewV2;->c:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/miui/gamebooster/LevelSeekBarViewV2;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object p1, p0, Lcom/miui/gamebooster/LevelSeekBarViewV2;->l:[[I

    aget-object p1, p1, v6

    div-int/lit8 v1, v1, 0x2

    aput v1, p1, v6

    div-int/lit8 v0, v0, 0x2

    aput v0, p1, v7

    return-void

    :cond_0
    add-int/2addr v3, v2

    sub-int/2addr v1, v3

    mul-int/lit8 v3, v4, 0x2

    iget v8, p0, Lcom/miui/gamebooster/LevelSeekBarViewV2;->c:I

    mul-int/2addr v3, v8

    sub-int/2addr v1, v3

    sub-int/2addr v4, v7

    div-int/2addr v1, v4

    iput v1, p0, Lcom/miui/gamebooster/LevelSeekBarViewV2;->n:I

    add-int/2addr v2, v8

    move v3, v6

    :goto_0
    iget v4, p0, Lcom/miui/gamebooster/LevelSeekBarViewV2;->f:I

    if-ge v3, v4, :cond_2

    iget v4, p0, Lcom/miui/gamebooster/LevelSeekBarViewV2;->g:I

    if-eq v3, v4, :cond_1

    int-to-float v4, v2

    int-to-float v8, v0

    div-float/2addr v8, v5

    iget v9, p0, Lcom/miui/gamebooster/LevelSeekBarViewV2;->c:I

    int-to-float v9, v9

    iget-object v10, p0, Lcom/miui/gamebooster/LevelSeekBarViewV2;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v8, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    iget-object v4, p0, Lcom/miui/gamebooster/LevelSeekBarViewV2;->l:[[I

    aget-object v4, v4, v3

    aput v2, v4, v6

    div-int/lit8 v8, v0, 0x2

    aput v8, v4, v7

    iget v4, p0, Lcom/miui/gamebooster/LevelSeekBarViewV2;->c:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v1

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private b(I)I
    .locals 5

    iget v0, p0, Lcom/miui/gamebooster/LevelSeekBarViewV2;->n:I

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/miui/gamebooster/LevelSeekBarViewV2;->l:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_2

    aget-object v3, v3, v2

    aget v3, v3, v1

    sub-int v4, v3, v0

    if-gez v4, :cond_0

    move v4, v1

    :cond_0
    if-lt p1, v4, :cond_1

    add-int/2addr v3, v0

    if-gt p1, v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 4

    iget v0, p0, Lcom/miui/gamebooster/LevelSeekBarViewV2;->g:I

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/miui/gamebooster/LevelSeekBarViewV2;->l:[[I

    array-length v2, v1

    if-lt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    aget-object v0, v1, v0

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    int-to-float v1, v1

    int-to-float v0, v0

    iget v2, p0, Lcom/miui/gamebooster/LevelSeekBarViewV2;->k:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/gamebooster/LevelSeekBarViewV2;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/LevelSeekBarViewV2;->a(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/LevelSeekBarViewV2;->c(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object p3, p0, Lcom/miui/gamebooster/LevelSeekBarViewV2;->o:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/LevelSeekBarViewV2;->b(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    iget v0, p0, Lcom/miui/gamebooster/LevelSeekBarViewV2;->g:I

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/miui/gamebooster/LevelSeekBarViewV2;->m:Lcom/miui/gamebooster/LevelSeekBarViewV2$a;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/miui/gamebooster/LevelSeekBarViewV2$a;->a(I)V

    :cond_2
    iput p1, p0, Lcom/miui/gamebooster/LevelSeekBarViewV2;->g:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    :goto_0
    return v1
.end method

.method public setAvailable(Z)V
    .locals 2

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/gamebooster/LevelSeekBarViewV2;->b:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060e6b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/LevelSeekBarViewV2;->i:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060212

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/LevelSeekBarViewV2;->h:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060e6e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/LevelSeekBarViewV2;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/gamebooster/LevelSeekBarViewV2;->b:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060e6d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/LevelSeekBarViewV2;->i:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060214

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/LevelSeekBarViewV2;->h:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060e6a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/LevelSeekBarViewV2;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060e71

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCurrentLevel(I)V
    .locals 1

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/miui/gamebooster/LevelSeekBarViewV2;->f:I

    if-ge p1, v0, :cond_0

    iput p1, p0, Lcom/miui/gamebooster/LevelSeekBarViewV2;->g:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setOnLevelChangeListener(Lcom/miui/gamebooster/LevelSeekBarViewV2$a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/LevelSeekBarViewV2;->m:Lcom/miui/gamebooster/LevelSeekBarViewV2$a;

    return-void
.end method
