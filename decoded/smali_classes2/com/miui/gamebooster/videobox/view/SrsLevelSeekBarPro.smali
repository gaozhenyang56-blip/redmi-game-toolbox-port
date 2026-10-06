.class public Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;
.super Lk8/a;
.source "SourceFile"


# static fields
.field private static final r:[Ljava/lang/String;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private d:F

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Landroid/graphics/RectF;

.field private o:Landroid/graphics/RectF;

.field private p:Landroid/graphics/Paint;

.field private q:Lk8/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "0"

    const-string v1, "1"

    const-string v2, "2"

    const-string v3, "3"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->r:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lk8/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x4

    iput v0, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->b:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->c:Ljava/util/List;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->n:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->o:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->b(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

.method private b(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    const p2, 0x7f08074e

    invoke-virtual {p0, p2}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f071f29

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->e:I

    const p2, 0x7f071f2c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->f:I

    const p2, 0x7f071d7b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->g:I

    const p2, 0x7f060214

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->i:I

    const p2, 0x7f060211

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->j:I

    const p2, 0x7f060212

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->k:I

    const p2, 0x7f060215

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->m:I

    const p2, 0x7f060213

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->l:I

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->p:Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p2, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->p:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->p:Landroid/graphics/Paint;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p2, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->p:Landroid/graphics/Paint;

    const p3, 0x7f071f2d

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object p1, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->r:[Ljava/lang/String;

    array-length p1, p1

    iput p1, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->a:I

    return-void
.end method

.method private c()Z
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->p:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->j:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->n:Landroid/graphics/RectF;

    iget v1, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->e:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-direct {p0}, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->c()Z

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->o:Landroid/graphics/RectF;

    iget v3, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->g:I

    int-to-float v4, v3

    int-to-float v3, v3

    iget-object v5, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->c:Ljava/util/List;

    iget v6, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->b:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iget v6, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->h:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->g:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->p:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->i:I

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->k:I

    :goto_0
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->o:Landroid/graphics/RectF;

    iget v3, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->f:I

    int-to-float v4, v3

    int-to-float v3, v3

    iget-object v5, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v3, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_1
    iget v0, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->a:I

    if-ge v2, v0, :cond_5

    iget v0, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->b:I

    if-ne v2, v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->p:Landroid/graphics/Paint;

    iget v3, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->m:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->p:Landroid/graphics/Paint;

    iget v3, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->l:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_2
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->p:Landroid/graphics/Paint;

    sget-object v3, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->r:[Ljava/lang/String;

    aget-object v4, v3, v2

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iget-object v4, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->c:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    div-float/2addr v0, v1

    sub-float/2addr v4, v0

    float-to-int v0, v4

    aget-object v3, v3, v2

    int-to-float v0, v0

    iget-object v4, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->p:Landroid/graphics/Paint;

    invoke-static {v4}, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->a(Landroid/graphics/Paint;)F

    move-result v4

    iget v5, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->d:F

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v0, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v3, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->o:Landroid/graphics/RectF;

    int-to-float v4, v0

    iget-object v5, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->c:Ljava/util/List;

    iget v6, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->b:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->h:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->g:I

    int-to-float v6, v5

    sub-int/2addr v0, v5

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    iget v7, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->g:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v3, v4, v6, v0, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->p:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->i:I

    goto :goto_3

    :cond_3
    iget v3, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->k:I

    :goto_3
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->o:Landroid/graphics/RectF;

    iget v3, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->f:I

    int-to-float v4, v3

    int-to-float v3, v3

    iget-object v5, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v3, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->a:I

    add-int/lit8 v0, v0, -0x1

    iget v3, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->b:I

    sub-int/2addr v0, v3

    :goto_4
    iget v3, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->a:I

    if-ge v2, v3, :cond_5

    iget-object v3, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->p:Landroid/graphics/Paint;

    if-ne v2, v0, :cond_4

    iget v4, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->m:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->p:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    goto :goto_5

    :cond_4
    iget v4, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->l:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->p:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_5
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    sget-object v3, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->r:[Ljava/lang/String;

    iget v4, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->a:I

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v2

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->p:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    iget-object v5, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->c:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    div-float/2addr v4, v1

    sub-float/2addr v5, v4

    float-to-int v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->p:Landroid/graphics/Paint;

    invoke-static {v5}, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->a(Landroid/graphics/Paint;)F

    move-result v5

    iget v6, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->d:F

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iput p1, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->d:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->a:I

    add-int/lit8 p2, p2, -0x1

    div-int/2addr p1, p2

    int-to-float p1, p1

    iget-object p2, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->c:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    const/4 p2, 0x0

    :goto_0
    iget p3, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->a:I

    if-ge p2, p3, :cond_0

    iget-object p3, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->c:Ljava/util/List;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    int-to-float p4, p4

    int-to-float p5, p2

    mul-float/2addr p5, p1

    add-float/2addr p4, p5

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object p3, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->n:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p4, p2

    const/4 v0, 0x0

    invoke-virtual {p3, v0, v0, p1, p4}, Landroid/graphics/RectF;->set(FFFF)V

    iget p1, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->g:I

    mul-int/lit8 p1, p1, 0x2

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->h:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    return v1

    :cond_1
    const/high16 v0, 0x4f000000

    move v3, v1

    :goto_0
    iget v4, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->a:I

    if-ge v1, v4, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->c:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v5, v4, v0

    if-gez v5, :cond_2

    move v3, v1

    move v0, v4

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->c()Z

    move-result p1

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->a:I

    sub-int/2addr p1, v2

    sub-int v3, p1, v3

    :cond_4
    iget p1, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->b:I

    if-eq v3, p1, :cond_6

    iput v3, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->b:I

    iget-object p1, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->q:Lk8/b;

    if-eqz p1, :cond_5

    invoke-interface {p1, p0, v3}, Lk8/b;->a(Lk8/a;I)V

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_6
    return v2
.end method

.method public setCurrentLevel(I)V
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->b:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setLevelChangeListener(Lk8/b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->q:Lk8/b;

    return-void
.end method
