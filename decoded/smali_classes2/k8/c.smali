.class public Lk8/c;
.super Lk8/a;
.source "SourceFile"


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

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Landroid/graphics/Bitmap;

.field private k:Landroid/graphics/Bitmap;

.field private l:Landroid/graphics/RectF;

.field private m:Landroid/graphics/RectF;

.field private n:Landroid/graphics/Paint;

.field private o:Lk8/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lk8/a;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x4

    iput v0, p0, Lk8/c;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lk8/c;->b:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lk8/c;->c:Ljava/util/List;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lk8/c;->l:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lk8/c;->m:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lk8/c;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    const p2, 0x7f0810aa

    invoke-virtual {p0, p2}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f071f29

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lk8/c;->d:I

    const p2, 0x7f071e5f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lk8/c;->e:I

    const p2, 0x7f08074f

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p3

    iput-object p3, p0, Lk8/c;->j:Landroid/graphics/Bitmap;

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lk8/c;->k:Landroid/graphics/Bitmap;

    const p2, 0x7f060214

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lk8/c;->g:I

    const p2, 0x7f060211

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lk8/c;->h:I

    const p2, 0x7f060212

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lk8/c;->i:I

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lk8/c;->n:Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p2, p0, Lk8/c;->n:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Lk8/c;->n:Landroid/graphics/Paint;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p2, p0, Lk8/c;->n:Landroid/graphics/Paint;

    const p3, 0x7f071f2d

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method private b()Z
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
    .locals 7

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lk8/c;->n:Landroid/graphics/Paint;

    iget v1, p0, Lk8/c;->h:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lk8/c;->l:Landroid/graphics/RectF;

    iget v1, p0, Lk8/c;->d:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lk8/c;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-direct {p0}, Lk8/c;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lk8/c;->m:Landroid/graphics/RectF;

    iget-object v2, p0, Lk8/c;->c:Ljava/util/List;

    iget v3, p0, Lk8/c;->b:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget v3, p0, Lk8/c;->f:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lk8/c;->e:I

    int-to-float v3, v3

    iget-object v4, p0, Lk8/c;->c:Ljava/util/List;

    iget v5, p0, Lk8/c;->b:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget v5, p0, Lk8/c;->f:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    iget v6, p0, Lk8/c;->e:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lk8/c;->n:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lk8/c;->g:I

    goto :goto_0

    :cond_0
    iget v2, p0, Lk8/c;->i:I

    :goto_0
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v2, p0, Lk8/c;->m:Landroid/graphics/RectF;

    int-to-float v3, v0

    iget-object v4, p0, Lk8/c;->c:Ljava/util/List;

    iget v5, p0, Lk8/c;->b:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sub-float/2addr v3, v4

    iget v4, p0, Lk8/c;->f:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lk8/c;->e:I

    int-to-float v5, v4

    sub-int/2addr v0, v4

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v6, p0, Lk8/c;->e:I

    sub-int/2addr v4, v6

    int-to-float v4, v4

    invoke-virtual {v2, v3, v5, v0, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lk8/c;->n:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lk8/c;->g:I

    goto :goto_1

    :cond_2
    iget v2, p0, Lk8/c;->i:I

    :goto_1
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_2
    iget-object v0, p0, Lk8/c;->j:Landroid/graphics/Bitmap;

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lk8/c;->k:Landroid/graphics/Bitmap;

    :goto_3
    iget-object v2, p0, Lk8/c;->m:Landroid/graphics/RectF;

    iget-object v3, p0, Lk8/c;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    sub-int/2addr p1, p2

    iget p2, p0, Lk8/c;->a:I

    add-int/lit8 p2, p2, -0x1

    div-int/2addr p1, p2

    int-to-float p1, p1

    iget-object p2, p0, Lk8/c;->c:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    const/4 p2, 0x0

    :goto_0
    iget p3, p0, Lk8/c;->a:I

    if-ge p2, p3, :cond_0

    iget-object p3, p0, Lk8/c;->c:Ljava/util/List;

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

    iget-object p3, p0, Lk8/c;->l:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p4, p2

    const/4 v0, 0x0

    invoke-virtual {p3, v0, v0, p1, p4}, Landroid/graphics/RectF;->set(FFFF)V

    iget p1, p0, Lk8/c;->e:I

    mul-int/lit8 p1, p1, 0x2

    sub-int/2addr p2, p1

    iput p2, p0, Lk8/c;->f:I

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
    iget v4, p0, Lk8/c;->a:I

    if-ge v1, v4, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget-object v5, p0, Lk8/c;->c:Ljava/util/List;

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
    invoke-direct {p0}, Lk8/c;->b()Z

    move-result p1

    if-eqz p1, :cond_4

    iget p1, p0, Lk8/c;->a:I

    sub-int/2addr p1, v2

    sub-int v3, p1, v3

    :cond_4
    iget p1, p0, Lk8/c;->b:I

    if-eq v3, p1, :cond_6

    iput v3, p0, Lk8/c;->b:I

    iget-object p1, p0, Lk8/c;->o:Lk8/b;

    if-eqz p1, :cond_5

    invoke-interface {p1, p0, v3}, Lk8/b;->a(Lk8/a;I)V

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_6
    return v2
.end method

.method public setCurrentLevel(I)V
    .locals 0

    iput p1, p0, Lk8/c;->b:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setLevelChangeListener(Lk8/b;)V
    .locals 0

    iput-object p1, p0, Lk8/c;->o:Lk8/b;

    return-void
.end method
