.class public Lcom/miui/applicationlock/widget/NumberPasswordEditText;
.super Landroid/widget/EditText;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/applicationlock/widget/NumberPasswordEditText$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/Paint;

.field private f:Landroid/graphics/Paint;

.field private g:Landroid/graphics/Paint;

.field private h:Landroid/graphics/Paint;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:Z

.field private s:I

.field private t:Z

.field private u:I

.field private v:I

.field private w:I

.field private x:F

.field private y:Lcom/miui/applicationlock/widget/NumberPasswordEditText$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x28

    iput v0, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->a:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->b:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->j:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->k:I

    iput v2, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->l:I

    iput v2, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->m:I

    iput v2, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->n:I

    iput v2, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->o:I

    const/16 v3, 0x40

    iput v3, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->p:I

    const/4 v3, 0x0

    iput v3, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->q:I

    iput-boolean v3, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->r:Z

    iput v3, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->s:I

    iput-boolean v3, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->t:Z

    const/16 v4, 0xa

    iput v4, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->u:I

    iput v2, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->v:I

    const/16 v2, 0x11

    iput v2, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->w:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->x:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f070b63

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->x:F

    sget-object v2, Lef/y;->V2:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x5

    iget v2, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->a:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->a:I

    const/4 p2, 0x2

    iget v2, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->b:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->b:I

    const/16 p2, 0x9

    iget v2, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->j:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->j:I

    const/16 p2, 0x8

    iget v2, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->k:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->k:I

    const/4 p2, 0x3

    iget v2, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->n:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->n:I

    iget p2, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->m:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->m:I

    const/16 p2, 0xb

    iget v0, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->l:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->l:I

    const/16 p2, 0xc

    iget v0, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->o:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->o:I

    iget p2, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->s:I

    invoke-virtual {p1, v4, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->s:I

    const/16 p2, 0xd

    iget v0, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->p:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->p:I

    const/4 p2, 0x6

    iget-boolean v0, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->t:Z

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->t:Z

    const/4 p2, 0x7

    iget-boolean v0, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->r:Z

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->r:Z

    iget p2, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->u:I

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->u:I

    iget p2, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->v:I

    invoke-virtual {p1, v3, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->v:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    invoke-virtual {p0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setCursorVisible(Z)V

    new-array p1, v1, [Landroid/text/InputFilter;

    new-instance p2, Landroid/text/InputFilter$LengthFilter;

    iget v0, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->b:I

    invoke-direct {p2, v0}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object p2, p1, v3

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    invoke-direct {p0}, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->e()V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    invoke-direct {p0, p1, v1}, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->c(Landroid/graphics/Canvas;I)V

    iget v2, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->i:I

    iget v3, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->a:I

    mul-int v4, v1, v3

    add-int/2addr v2, v4

    iget v4, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->s:I

    mul-int/2addr v4, v1

    add-int/2addr v2, v4

    div-int/lit8 v4, v3, 0x2

    add-int/2addr v2, v4

    int-to-float v2, v2

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->w:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->u:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 10

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->b:I

    if-ge v0, v1, :cond_1

    iget-boolean v1, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->r:Z

    if-eqz v1, :cond_0

    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->i:I

    iget v3, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->a:I

    mul-int v4, v0, v3

    add-int/2addr v4, v2

    iget v5, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->s:I

    mul-int v6, v0, v5

    add-int/2addr v4, v6

    int-to-float v4, v4

    iget v6, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->w:I

    int-to-float v7, v6

    mul-int v8, v0, v3

    add-int/2addr v2, v8

    mul-int/2addr v5, v0

    add-int/2addr v2, v5

    add-int/2addr v2, v3

    int-to-float v2, v2

    add-int/2addr v3, v6

    int-to-float v3, v3

    invoke-direct {v1, v4, v7, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v2, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->x:F

    iget-object v3, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->i:I

    iget v3, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->a:I

    mul-int v4, v0, v3

    add-int/2addr v4, v2

    iget v5, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->s:I

    mul-int v6, v0, v5

    add-int/2addr v4, v6

    iget v6, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->j:I

    add-int/2addr v4, v6

    int-to-float v4, v4

    iget v7, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->w:I

    add-int v8, v6, v7

    int-to-float v8, v8

    mul-int v9, v0, v3

    add-int/2addr v2, v9

    mul-int/2addr v5, v0

    add-int/2addr v2, v5

    add-int/2addr v2, v3

    sub-int/2addr v2, v6

    int-to-float v2, v2

    sub-int/2addr v3, v6

    add-int/2addr v3, v7

    int-to-float v3, v3

    invoke-direct {v1, v4, v8, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v2, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->x:F

    iget-object v3, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private c(Landroid/graphics/Canvas;I)V
    .locals 8

    iget v0, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->b:I

    add-int/lit8 v0, v0, -0x1

    if-le p2, v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->r:Z

    if-eqz v0, :cond_1

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->i:I

    iget v2, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->a:I

    mul-int v3, p2, v2

    add-int/2addr v3, v1

    iget v4, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->s:I

    mul-int v5, p2, v4

    add-int/2addr v3, v5

    int-to-float v3, v3

    iget v5, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->w:I

    int-to-float v5, v5

    mul-int v6, p2, v2

    add-int/2addr v1, v6

    mul-int/2addr v4, p2

    add-int/2addr v1, v4

    add-int/2addr v1, v2

    int-to-float v1, v1

    int-to-float v2, v2

    invoke-direct {v0, v3, v5, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->x:F

    iget-object v2, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_1
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->i:I

    iget v2, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->a:I

    mul-int v3, p2, v2

    add-int/2addr v3, v1

    iget v4, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->s:I

    mul-int v5, p2, v4

    add-int/2addr v3, v5

    iget v5, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->j:I

    add-int/2addr v3, v5

    int-to-float v3, v3

    iget v6, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->w:I

    add-int/2addr v6, v5

    int-to-float v6, v6

    mul-int v7, p2, v2

    add-int/2addr v1, v7

    mul-int/2addr p2, v4

    add-int/2addr v1, p2

    add-int/2addr v1, v2

    sub-int/2addr v1, v5

    int-to-float p2, v1

    sub-int/2addr v2, v5

    int-to-float v1, v2

    invoke-direct {v0, v3, v6, p2, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget p2, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->x:F

    iget-object v1, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, p2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private d(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    invoke-direct {p0, p1, v1}, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->c(Landroid/graphics/Canvas;I)V

    iget-object v2, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->g:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    iget v3, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->a:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    div-float/2addr v2, v5

    sub-float/2addr v3, v2

    float-to-int v2, v3

    aget-char v3, v0, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->i:I

    iget v5, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->a:I

    mul-int v6, v1, v5

    add-int/2addr v4, v6

    iget v6, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->s:I

    mul-int/2addr v6, v1

    add-int/2addr v4, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    int-to-float v2, v2

    iget-object v5, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private e()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->f()V

    return-void
.end method

.method private f()V
    .locals 3

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->c:Landroid/graphics/Paint;

    iget v2, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->j:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->c:Landroid/graphics/Paint;

    iget v2, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->k:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->c:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->d:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->d:Landroid/graphics/Paint;

    iget v2, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->l:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->e:Landroid/graphics/Paint;

    iget v2, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->j:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->e:Landroid/graphics/Paint;

    iget v2, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->n:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->e:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->f:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->f:Landroid/graphics/Paint;

    iget v2, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->m:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-boolean v0, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->t:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->g:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->g:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->p:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->g:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->o:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->h:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->h:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->v:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->b(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->q:I

    invoke-direct {p0, p1, v0}, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->c(Landroid/graphics/Canvas;I)V

    iget-boolean v0, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->t:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->d(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->a(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onSizeChanged(IIII)V

    iget p2, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->b:I

    iget p3, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->a:I

    mul-int p4, p2, p3

    if-le p4, p1, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "View must be less than the width of the screen! width = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NumberPasswordEditText"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    mul-int/2addr p3, p2

    sub-int/2addr p1, p3

    add-int/lit8 p2, p2, -0x1

    iget p3, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->s:I

    mul-int/2addr p2, p3

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->i:I

    :goto_0
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    add-int/2addr p2, p4

    iput p2, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->q:I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    iget p3, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->b:I

    if-ne p2, p3, :cond_0

    iget-object p2, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->y:Lcom/miui/applicationlock/widget/NumberPasswordEditText$a;

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/miui/applicationlock/widget/NumberPasswordEditText$a;->a(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOnFinishListener(Lcom/miui/applicationlock/widget/NumberPasswordEditText$a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->y:Lcom/miui/applicationlock/widget/NumberPasswordEditText$a;

    return-void
.end method

.method public setSpaceWidth(I)V
    .locals 0

    iput p1, p0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;->s:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
