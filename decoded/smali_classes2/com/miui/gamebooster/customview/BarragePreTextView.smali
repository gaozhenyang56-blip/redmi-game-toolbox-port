.class public final Lcom/miui/gamebooster/customview/BarragePreTextView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private final a:Landroid/util/AttributeSet;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private b:I

.field private c:I

.field private final d:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final e:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private g:I

.field private h:I

.field private i:F

.field private final j:J

.field private final k:F

.field private l:I

.field private final m:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:F

.field private s:I

.field private t:F

.field private u:F

.field private v:F

.field private w:J

.field private x:F

.field private y:F

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/miui/gamebooster/customview/BarragePreTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILbk/g;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p2, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->a:Landroid/util/AttributeSet;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->d:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->e:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f120a06

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "resources.getString(R.string.gb_barrage_chat_desc)"

    invoke-static {p2, p3}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->f:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f06012a

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->g:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f060e6a

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->h:I

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p1, p2}, La8/k2;->a(Landroid/content/Context;F)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->i:F

    const-wide/16 p2, 0xc8

    iput-wide p2, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->j:J

    const/high16 p2, 0x41400000    # 12.0f

    invoke-static {p1, p2}, La8/k2;->a(Landroid/content/Context;F)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->k:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f06031f

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->l:I

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->m:Landroid/graphics/Rect;

    const/high16 p2, 0x40000000    # 2.0f

    iput p2, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->v:F

    const-wide/16 p2, -0x1

    iput-wide p2, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->w:J

    iget p2, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->t:F

    iput p2, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->x:F

    const/high16 p2, 0x41900000    # 18.0f

    invoke-static {p1, p2}, La8/k2;->a(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->y:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f06031b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->z:I

    invoke-virtual {p0}, Lcom/miui/gamebooster/customview/BarragePreTextView;->d()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILbk/g;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gamebooster/customview/BarragePreTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final a(FFFJF)F
    .locals 0

    long-to-float p4, p4

    mul-float/2addr p2, p4

    sub-float/2addr p1, p2

    cmpl-float p2, p6, p3

    if-lez p2, :cond_0

    cmpg-float p2, p1, p3

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    move p3, p1

    :goto_0
    return p3
.end method

.method private final b(Landroid/graphics/Canvas;J)Z
    .locals 11

    iget v0, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->t:F

    iget v1, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->r:F

    cmpl-float v2, v0, v1

    const/4 v3, 0x0

    if-lez v2, :cond_0

    return v3

    :cond_0
    iget v2, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->b:I

    int-to-float v2, v2

    sub-float/2addr v1, v0

    sub-float v0, v2, v1

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1

    iget-object v5, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->f:Ljava/lang/String;

    iget v7, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->u:F

    iget-object v8, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->d:Landroid/graphics/Paint;

    iget-object v9, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->e:Landroid/graphics/Paint;

    move-object v4, p0

    move v6, v0

    move-object v10, p1

    invoke-direct/range {v4 .. v10}, Lcom/miui/gamebooster/customview/BarragePreTextView;->c(Ljava/lang/String;FFLandroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    iget p1, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->t:F

    iget v1, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->q:F

    cmpg-float p1, p1, v1

    if-gez p1, :cond_1

    iget v6, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->v:F

    iget v7, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->n:F

    iget v10, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->x:F

    move-object v4, p0

    move v5, v0

    move-wide v8, p2

    invoke-direct/range {v4 .. v10}, Lcom/miui/gamebooster/customview/BarragePreTextView;->a(FFFJF)F

    move-result p1

    iput p1, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->t:F

    const/4 p1, 0x1

    return p1

    :cond_1
    return v3
.end method

.method private final c(Ljava/lang/String;FFLandroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 0

    if-eqz p6, :cond_0

    invoke-virtual {p6, p1, p2, p3, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    if-eqz p6, :cond_1

    invoke-virtual {p6, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method private final e()V
    .locals 7

    iget-object v0, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->d:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->m:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v1, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->d:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->f:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->m:Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v0, v1, v0

    const/4 v2, 0x2

    int-to-float v3, v2

    div-float/2addr v0, v3

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->m:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->p:F

    iget v4, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->c:I

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v4, v0

    iput v4, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->o:F

    iget v0, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->b:I

    int-to-float v6, v0

    div-float/2addr v6, v5

    div-float v5, v1, v5

    sub-float/2addr v6, v5

    iput v6, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->n:F

    int-to-float v5, v0

    cmpl-float v5, v1, v5

    if-ltz v5, :cond_0

    iget v3, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->i:F

    iget v5, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->k:F

    add-float/2addr v3, v5

    iput v3, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->n:F

    sub-float v3, v1, v3

    div-int/2addr v0, v2

    int-to-float v0, v0

    sub-float/2addr v3, v0

    neg-float v0, v3

    goto :goto_0

    :cond_0
    div-float v0, v1, v3

    add-float/2addr v6, v0

    neg-float v0, v6

    :goto_0
    iput v0, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->r:F

    iget v0, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->n:F

    add-float/2addr v1, v0

    neg-float v1, v1

    iput v1, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->q:F

    iput v0, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->t:F

    iput v4, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->u:F

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->a:Landroid/util/AttributeSet;

    sget-object v2, Lef/y;->H:[I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const-string v1, "context.obtainStyledAttr\u2026eable.BarragePreTextView)"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->y:F

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->y:F

    iget v1, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->z:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->z:I

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->f:Ljava/lang/String;

    :cond_0
    iput-object v2, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->f:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->d:Landroid/graphics/Paint;

    iget v2, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->y:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->d:Landroid/graphics/Paint;

    iget v2, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->z:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->d:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->e:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->y:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->e:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->g:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->e:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->i:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public final f()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->s:I

    iget v0, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->n:F

    iput v0, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->t:F

    iget v1, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->o:F

    iput v1, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->u:F

    iput v0, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->x:F

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->w:J

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final g(F)V
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->v:F

    iget p1, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->s:I

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x2

    iput v1, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->s:I

    if-nez p1, :cond_1

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->w:J

    iget p1, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->n:F

    iput p1, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->t:F

    iput v0, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->x:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public final getAttrs()Landroid/util/AttributeSet;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->a:Landroid/util/AttributeSet;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->f:Ljava/lang/String;

    iget v3, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->t:F

    iget v4, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->u:F

    iget-object v5, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->d:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->e:Landroid/graphics/Paint;

    move-object v1, p0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/miui/gamebooster/customview/BarragePreTextView;->c(Ljava/lang/String;FFLandroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    iget-wide v0, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->w:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget p1, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->s:I

    if-lez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->w:J

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->w:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    move-wide v9, v2

    goto :goto_0

    :cond_2
    move-wide v9, v0

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->w:J

    iget v0, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->s:I

    if-lez v0, :cond_7

    invoke-direct {p0, p1, v9, v10}, Lcom/miui/gamebooster/customview/BarragePreTextView;->b(Landroid/graphics/Canvas;J)Z

    move-result p1

    if-nez p1, :cond_3

    iget v6, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->t:F

    iget v7, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->v:F

    iget v8, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->n:F

    iget v11, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->x:F

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/miui/gamebooster/customview/BarragePreTextView;->a(FFFJF)F

    move-result p1

    iput p1, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->t:F

    :cond_3
    iget p1, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->x:F

    iget v0, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->n:F

    cmpg-float p1, p1, v0

    if-nez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->j:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->w:J

    iget p1, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->s:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->s:I

    if-lez p1, :cond_5

    invoke-virtual {p0, v2, v3}, Landroid/view/View;->postInvalidateDelayed(J)V

    goto :goto_2

    :cond_5
    iget p1, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->n:F

    iput p1, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->t:F

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_2
    iget p1, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->t:F

    iput p1, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->x:F

    :cond_7
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget-object p1, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->m:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    iget-object p1, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->d:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->f:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->m:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2, v0, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget-object p2, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->m:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    iget p1, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->b:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    if-ne p1, p2, :cond_0

    iget p1, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->c:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    if-eq p1, p2, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->b:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->c:I

    invoke-direct {p0}, Lcom/miui/gamebooster/customview/BarragePreTextView;->e()V

    :cond_1
    return-void
.end method

.method public final setTextColor(I)V
    .locals 1

    iput p1, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->z:I

    iget-object v0, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->l:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->e:Landroid/graphics/Paint;

    iget v0, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->h:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->e:Landroid/graphics/Paint;

    iget v0, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->g:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setTextSize(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->d:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    iput p1, p0, Lcom/miui/gamebooster/customview/BarragePreTextView;->y:F

    invoke-direct {p0}, Lcom/miui/gamebooster/customview/BarragePreTextView;->e()V

    invoke-virtual {p0}, Lcom/miui/gamebooster/customview/BarragePreTextView;->f()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
