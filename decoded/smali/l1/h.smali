.class public Ll1/h;
.super Ll1/a;
.source "SourceFile"


# instance fields
.field private final A:Landroid/graphics/Paint;

.field private final B:Landroid/graphics/Paint;

.field private final C:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Li1/d;",
            "Ljava/util/List<",
            "Lf1/d;",
            ">;>;"
        }
    .end annotation
.end field

.field private final D:Lm/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm/e<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final E:Lg1/n;

.field private final F:Lcom/airbnb/lottie/LottieDrawable;

.field private final G:Lcom/airbnb/lottie/d;

.field private H:Lg1/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg1/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private I:Lg1/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg1/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private J:Lg1/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg1/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private K:Lg1/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg1/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private L:Lg1/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg1/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private M:Lg1/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg1/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private N:Lg1/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg1/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private O:Lg1/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg1/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private P:Lg1/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg1/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private Q:Lg1/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg1/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final x:Ljava/lang/StringBuilder;

.field private final y:Landroid/graphics/RectF;

.field private final z:Landroid/graphics/Matrix;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Ll1/d;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Ll1/a;-><init>(Lcom/airbnb/lottie/LottieDrawable;Ll1/d;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Ll1/h;->x:Ljava/lang/StringBuilder;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Ll1/h;->y:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Ll1/h;->z:Landroid/graphics/Matrix;

    new-instance v0, Ll1/h$a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ll1/h$a;-><init>(Ll1/h;I)V

    iput-object v0, p0, Ll1/h;->A:Landroid/graphics/Paint;

    new-instance v0, Ll1/h$b;

    invoke-direct {v0, p0, v1}, Ll1/h$b;-><init>(Ll1/h;I)V

    iput-object v0, p0, Ll1/h;->B:Landroid/graphics/Paint;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ll1/h;->C:Ljava/util/Map;

    new-instance v0, Lm/e;

    invoke-direct {v0}, Lm/e;-><init>()V

    iput-object v0, p0, Ll1/h;->D:Lm/e;

    iput-object p1, p0, Ll1/h;->F:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {p2}, Ll1/d;->a()Lcom/airbnb/lottie/d;

    move-result-object p1

    iput-object p1, p0, Ll1/h;->G:Lcom/airbnb/lottie/d;

    invoke-virtual {p2}, Ll1/d;->q()Lj1/j;

    move-result-object p1

    invoke-virtual {p1}, Lj1/j;->d()Lg1/n;

    move-result-object p1

    iput-object p1, p0, Ll1/h;->E:Lg1/n;

    invoke-virtual {p1, p0}, Lg1/a;->a(Lg1/a$b;)V

    invoke-virtual {p0, p1}, Ll1/a;->j(Lg1/a;)V

    invoke-virtual {p2}, Ll1/d;->r()Lj1/k;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p1, Lj1/k;->a:Lj1/a;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lj1/a;->a()Lg1/a;

    move-result-object p2

    iput-object p2, p0, Ll1/h;->H:Lg1/a;

    invoke-virtual {p2, p0}, Lg1/a;->a(Lg1/a$b;)V

    iget-object p2, p0, Ll1/h;->H:Lg1/a;

    invoke-virtual {p0, p2}, Ll1/a;->j(Lg1/a;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object p2, p1, Lj1/k;->b:Lj1/a;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lj1/a;->a()Lg1/a;

    move-result-object p2

    iput-object p2, p0, Ll1/h;->J:Lg1/a;

    invoke-virtual {p2, p0}, Lg1/a;->a(Lg1/a$b;)V

    iget-object p2, p0, Ll1/h;->J:Lg1/a;

    invoke-virtual {p0, p2}, Ll1/a;->j(Lg1/a;)V

    :cond_1
    if-eqz p1, :cond_2

    iget-object p2, p1, Lj1/k;->c:Lj1/b;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lj1/b;->a()Lg1/a;

    move-result-object p2

    iput-object p2, p0, Ll1/h;->L:Lg1/a;

    invoke-virtual {p2, p0}, Lg1/a;->a(Lg1/a$b;)V

    iget-object p2, p0, Ll1/h;->L:Lg1/a;

    invoke-virtual {p0, p2}, Ll1/a;->j(Lg1/a;)V

    :cond_2
    if-eqz p1, :cond_3

    iget-object p1, p1, Lj1/k;->d:Lj1/b;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lj1/b;->a()Lg1/a;

    move-result-object p1

    iput-object p1, p0, Ll1/h;->N:Lg1/a;

    invoke-virtual {p1, p0}, Lg1/a;->a(Lg1/a$b;)V

    iget-object p1, p0, Ll1/h;->N:Lg1/a;

    invoke-virtual {p0, p1}, Ll1/a;->j(Lg1/a;)V

    :cond_3
    return-void
.end method

.method private K(Li1/b$a;Landroid/graphics/Canvas;F)V
    .locals 2

    sget-object v0, Ll1/h$c;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    neg-float p1, p3

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p1, p3

    goto :goto_0

    :cond_1
    neg-float p1, p3

    :goto_0
    invoke-virtual {p2, p1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_1
    return-void
.end method

.method private L(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    invoke-virtual {p1, p2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v1, p2

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    invoke-direct {p0, v2}, Ll1/h;->X(I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v2, p0, Ll1/h;->D:Lm/e;

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Lm/e;->d(J)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Ll1/h;->D:Lm/e;

    invoke-virtual {p1, v3, v4}, Lm/e;->f(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_2
    iget-object v0, p0, Ll1/h;->x:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_2
    if-ge p2, v1, :cond_3

    invoke-virtual {p1, p2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    iget-object v2, p0, Ll1/h;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr p2, v0

    goto :goto_2

    :cond_3
    iget-object p1, p0, Ll1/h;->x:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Ll1/h;->D:Lm/e;

    invoke-virtual {p2, v3, v4, p1}, Lm/e;->j(JLjava/lang/Object;)V

    return-object p1
.end method

.method private M(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 8

    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p3

    move-object v2, p1

    move-object v7, p2

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private N(Li1/d;Landroid/graphics/Matrix;FLi1/b;Landroid/graphics/Canvas;)V
    .locals 7

    invoke-direct {p0, p1}, Ll1/h;->U(Li1/d;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf1/d;

    invoke-virtual {v2}, Lf1/d;->c()Landroid/graphics/Path;

    move-result-object v2

    iget-object v3, p0, Ll1/h;->y:Landroid/graphics/RectF;

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object v3, p0, Ll1/h;->z:Landroid/graphics/Matrix;

    invoke-virtual {v3, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v3, p0, Ll1/h;->z:Landroid/graphics/Matrix;

    const/4 v4, 0x0

    iget v5, p4, Li1/b;->g:F

    neg-float v5, v5

    invoke-static {}, Lp1/j;->e()F

    move-result v6

    mul-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v3, p0, Ll1/h;->z:Landroid/graphics/Matrix;

    invoke-virtual {v3, p3, p3}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v3, p0, Ll1/h;->z:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-boolean v3, p4, Li1/b;->k:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Ll1/h;->A:Landroid/graphics/Paint;

    invoke-direct {p0, v2, v3, p5}, Ll1/h;->Q(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    iget-object v3, p0, Ll1/h;->B:Landroid/graphics/Paint;

    goto :goto_1

    :cond_0
    iget-object v3, p0, Ll1/h;->B:Landroid/graphics/Paint;

    invoke-direct {p0, v2, v3, p5}, Ll1/h;->Q(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    iget-object v3, p0, Ll1/h;->A:Landroid/graphics/Paint;

    :goto_1
    invoke-direct {p0, v2, v3, p5}, Ll1/h;->Q(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private O(Ljava/lang/String;Li1/b;Landroid/graphics/Canvas;)V
    .locals 0

    iget-boolean p2, p2, Li1/b;->k:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Ll1/h;->A:Landroid/graphics/Paint;

    invoke-direct {p0, p1, p2, p3}, Ll1/h;->M(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    iget-object p2, p0, Ll1/h;->B:Landroid/graphics/Paint;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Ll1/h;->B:Landroid/graphics/Paint;

    invoke-direct {p0, p1, p2, p3}, Ll1/h;->M(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    iget-object p2, p0, Ll1/h;->A:Landroid/graphics/Paint;

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Ll1/h;->M(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    return-void
.end method

.method private P(Ljava/lang/String;Li1/b;Landroid/graphics/Canvas;F)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-direct {p0, p1, v1}, Ll1/h;->L(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    invoke-direct {p0, v2, p2, p3}, Ll1/h;->O(Ljava/lang/String;Li1/b;Landroid/graphics/Canvas;)V

    iget-object v3, p0, Ll1/h;->A:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v0, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v2

    iget v3, p2, Li1/b;->e:I

    int-to-float v3, v3

    const/high16 v4, 0x41200000    # 10.0f

    div-float/2addr v3, v4

    iget-object v4, p0, Ll1/h;->O:Lg1/a;

    if-eqz v4, :cond_0

    :goto_1
    invoke-virtual {v4}, Lg1/a;->h()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-float/2addr v3, v4

    goto :goto_2

    :cond_0
    iget-object v4, p0, Ll1/h;->N:Lg1/a;

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    :goto_2
    mul-float/2addr v3, p4

    add-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private Q(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private R(Ljava/lang/String;Li1/b;Landroid/graphics/Matrix;Li1/c;Landroid/graphics/Canvas;FF)V
    .locals 8

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p4}, Li1/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4}, Li1/c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Li1/d;->c(CLjava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Ll1/h;->G:Lcom/airbnb/lottie/d;

    invoke-virtual {v2}, Lcom/airbnb/lottie/d;->c()Lm/h;

    move-result-object v2

    invoke-virtual {v2, v1}, Lm/h;->e(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li1/d;

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    move-object v2, p0

    move-object v3, v1

    move-object v4, p3

    move v5, p7

    move-object v6, p2

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Ll1/h;->N(Li1/d;Landroid/graphics/Matrix;FLi1/b;Landroid/graphics/Canvas;)V

    invoke-virtual {v1}, Li1/d;->b()D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v1, p7

    invoke-static {}, Lp1/j;->e()F

    move-result v2

    mul-float/2addr v1, v2

    mul-float/2addr v1, p6

    iget v2, p2, Li1/b;->e:I

    int-to-float v2, v2

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v2, v3

    iget-object v3, p0, Ll1/h;->O:Lg1/a;

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v3}, Lg1/a;->h()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v2, v3

    goto :goto_2

    :cond_1
    iget-object v3, p0, Ll1/h;->N:Lg1/a;

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    :goto_2
    mul-float/2addr v2, p6

    add-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p5, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private S(Li1/b;Landroid/graphics/Matrix;Li1/c;Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p4

    iget-object v0, v8, Ll1/h;->Q:Lg1/a;

    if-eqz v0, :cond_0

    :goto_0
    invoke-virtual {v0}, Lg1/a;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_1

    :cond_0
    iget-object v0, v8, Ll1/h;->P:Lg1/a;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget v0, v9, Li1/b;->c:F

    :goto_1
    const/high16 v1, 0x42c80000    # 100.0f

    div-float v11, v0, v1

    invoke-static/range {p2 .. p2}, Lp1/j;->g(Landroid/graphics/Matrix;)F

    move-result v12

    iget-object v0, v9, Li1/b;->a:Ljava/lang/String;

    iget v1, v9, Li1/b;->f:F

    invoke-static {}, Lp1/j;->e()F

    move-result v2

    mul-float v13, v1, v2

    invoke-direct {v8, v0}, Ll1/h;->W(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    const/4 v0, 0x0

    move v7, v0

    :goto_2
    if-ge v7, v15, :cond_2

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    move-object/from16 v6, p3

    invoke-direct {v8, v1, v6, v11, v12}, Ll1/h;->V(Ljava/lang/String;Li1/c;FF)F

    move-result v0

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Canvas;->save()I

    iget-object v2, v9, Li1/b;->d:Li1/b$a;

    invoke-direct {v8, v2, v10, v0}, Ll1/h;->K(Li1/b$a;Landroid/graphics/Canvas;F)V

    add-int/lit8 v0, v15, -0x1

    int-to-float v0, v0

    mul-float/2addr v0, v13

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    int-to-float v2, v7

    mul-float/2addr v2, v13

    sub-float/2addr v2, v0

    const/4 v0, 0x0

    invoke-virtual {v10, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move v6, v12

    move/from16 v16, v7

    move v7, v11

    invoke-direct/range {v0 .. v7}, Ll1/h;->R(Ljava/lang/String;Li1/b;Landroid/graphics/Matrix;Li1/c;Landroid/graphics/Canvas;FF)V

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v7, v16, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private T(Li1/b;Li1/c;Landroid/graphics/Matrix;Landroid/graphics/Canvas;)V
    .locals 7

    invoke-static {p3}, Lp1/j;->g(Landroid/graphics/Matrix;)F

    move-result v0

    iget-object v1, p0, Ll1/h;->F:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {p2}, Li1/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Li1/c;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Lcom/airbnb/lottie/LottieDrawable;->E(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v1, p1, Li1/b;->a:Ljava/lang/String;

    iget-object v2, p0, Ll1/h;->F:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieDrawable;->D()Lcom/airbnb/lottie/q;

    iget-object v2, p0, Ll1/h;->A:Landroid/graphics/Paint;

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p2, p0, Ll1/h;->Q:Lg1/a;

    if-eqz p2, :cond_1

    :goto_0
    invoke-virtual {p2}, Lg1/a;->h()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    goto :goto_1

    :cond_1
    iget-object p2, p0, Ll1/h;->P:Lg1/a;

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    iget p2, p1, Li1/b;->c:F

    :goto_1
    iget-object v2, p0, Ll1/h;->A:Landroid/graphics/Paint;

    invoke-static {}, Lp1/j;->e()F

    move-result v3

    mul-float/2addr p2, v3

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p2, p0, Ll1/h;->B:Landroid/graphics/Paint;

    iget-object v2, p0, Ll1/h;->A:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p2, p0, Ll1/h;->B:Landroid/graphics/Paint;

    iget-object v2, p0, Ll1/h;->A:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget p2, p1, Li1/b;->f:F

    invoke-static {}, Lp1/j;->e()F

    move-result v2

    mul-float/2addr p2, v2

    invoke-direct {p0, v1}, Ll1/h;->W(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Ll1/h;->B:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    iget-object v6, p1, Li1/b;->d:Li1/b$a;

    invoke-direct {p0, v6, p4, v5}, Ll1/h;->K(Li1/b$a;Landroid/graphics/Canvas;F)V

    add-int/lit8 v5, v2, -0x1

    int-to-float v5, v5

    mul-float/2addr v5, p2

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    int-to-float v6, v3

    mul-float/2addr v6, p2

    sub-float/2addr v6, v5

    const/4 v5, 0x0

    invoke-virtual {p4, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-direct {p0, v4, p1, p4, v0}, Ll1/h;->P(Ljava/lang/String;Li1/b;Landroid/graphics/Canvas;F)V

    invoke-virtual {p4, p3}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private U(Li1/d;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li1/d;",
            ")",
            "Ljava/util/List<",
            "Lf1/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ll1/h;->C:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ll1/h;->C:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1

    :cond_0
    invoke-virtual {p1}, Li1/d;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lk1/n;

    new-instance v5, Lf1/d;

    iget-object v6, p0, Ll1/h;->F:Lcom/airbnb/lottie/LottieDrawable;

    invoke-direct {v5, v6, p0, v4}, Lf1/d;-><init>(Lcom/airbnb/lottie/LottieDrawable;Ll1/a;Lk1/n;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ll1/h;->C:Ljava/util/Map;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method private V(Ljava/lang/String;Li1/c;FF)F
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p2}, Li1/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Li1/c;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Li1/d;->c(CLjava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Ll1/h;->G:Lcom/airbnb/lottie/d;

    invoke-virtual {v3}, Lcom/airbnb/lottie/d;->c()Lm/h;

    move-result-object v3

    invoke-virtual {v3, v2}, Lm/h;->e(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li1/d;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    float-to-double v3, v0

    invoke-virtual {v2}, Li1/d;->b()D

    move-result-wide v5

    float-to-double v7, p3

    mul-double/2addr v5, v7

    invoke-static {}, Lp1/j;->e()F

    move-result v0

    float-to-double v7, v0

    mul-double/2addr v5, v7

    float-to-double v7, p4

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-float v0, v3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private W(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "\r\n"

    const-string v1, "\r"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\n"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private X(I)Z
    .locals 2

    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    move-result v0

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_1

    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    move-result v0

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_1

    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    move-result p1

    const/16 v0, 0x13

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public d(Ljava/lang/Object;Lq1/c;)V
    .locals 2
    .param p2    # Lq1/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lq1/c<",
            "TT;>;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Ll1/a;->d(Ljava/lang/Object;Lq1/c;)V

    sget-object v0, Lcom/airbnb/lottie/j;->a:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Ll1/h;->I:Lg1/a;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ll1/a;->D(Lg1/a;)V

    :cond_0
    if-nez p2, :cond_1

    iput-object v1, p0, Ll1/h;->I:Lg1/a;

    goto/16 :goto_1

    :cond_1
    new-instance p1, Lg1/p;

    invoke-direct {p1, p2}, Lg1/p;-><init>(Lq1/c;)V

    iput-object p1, p0, Ll1/h;->I:Lg1/a;

    invoke-virtual {p1, p0}, Lg1/a;->a(Lg1/a$b;)V

    iget-object p1, p0, Ll1/h;->I:Lg1/a;

    :goto_0
    invoke-virtual {p0, p1}, Ll1/a;->j(Lg1/a;)V

    goto/16 :goto_1

    :cond_2
    sget-object v0, Lcom/airbnb/lottie/j;->b:Ljava/lang/Integer;

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Ll1/h;->K:Lg1/a;

    if-eqz p1, :cond_3

    invoke-virtual {p0, p1}, Ll1/a;->D(Lg1/a;)V

    :cond_3
    if-nez p2, :cond_4

    iput-object v1, p0, Ll1/h;->K:Lg1/a;

    goto :goto_1

    :cond_4
    new-instance p1, Lg1/p;

    invoke-direct {p1, p2}, Lg1/p;-><init>(Lq1/c;)V

    iput-object p1, p0, Ll1/h;->K:Lg1/a;

    invoke-virtual {p1, p0}, Lg1/a;->a(Lg1/a$b;)V

    iget-object p1, p0, Ll1/h;->K:Lg1/a;

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/airbnb/lottie/j;->o:Ljava/lang/Float;

    if-ne p1, v0, :cond_8

    iget-object p1, p0, Ll1/h;->M:Lg1/a;

    if-eqz p1, :cond_6

    invoke-virtual {p0, p1}, Ll1/a;->D(Lg1/a;)V

    :cond_6
    if-nez p2, :cond_7

    iput-object v1, p0, Ll1/h;->M:Lg1/a;

    goto :goto_1

    :cond_7
    new-instance p1, Lg1/p;

    invoke-direct {p1, p2}, Lg1/p;-><init>(Lq1/c;)V

    iput-object p1, p0, Ll1/h;->M:Lg1/a;

    invoke-virtual {p1, p0}, Lg1/a;->a(Lg1/a$b;)V

    iget-object p1, p0, Ll1/h;->M:Lg1/a;

    goto :goto_0

    :cond_8
    sget-object v0, Lcom/airbnb/lottie/j;->p:Ljava/lang/Float;

    if-ne p1, v0, :cond_b

    iget-object p1, p0, Ll1/h;->O:Lg1/a;

    if-eqz p1, :cond_9

    invoke-virtual {p0, p1}, Ll1/a;->D(Lg1/a;)V

    :cond_9
    if-nez p2, :cond_a

    iput-object v1, p0, Ll1/h;->O:Lg1/a;

    goto :goto_1

    :cond_a
    new-instance p1, Lg1/p;

    invoke-direct {p1, p2}, Lg1/p;-><init>(Lq1/c;)V

    iput-object p1, p0, Ll1/h;->O:Lg1/a;

    invoke-virtual {p1, p0}, Lg1/a;->a(Lg1/a$b;)V

    iget-object p1, p0, Ll1/h;->O:Lg1/a;

    goto :goto_0

    :cond_b
    sget-object v0, Lcom/airbnb/lottie/j;->B:Ljava/lang/Float;

    if-ne p1, v0, :cond_e

    iget-object p1, p0, Ll1/h;->Q:Lg1/a;

    if-eqz p1, :cond_c

    invoke-virtual {p0, p1}, Ll1/a;->D(Lg1/a;)V

    :cond_c
    if-nez p2, :cond_d

    iput-object v1, p0, Ll1/h;->Q:Lg1/a;

    goto :goto_1

    :cond_d
    new-instance p1, Lg1/p;

    invoke-direct {p1, p2}, Lg1/p;-><init>(Lq1/c;)V

    iput-object p1, p0, Ll1/h;->Q:Lg1/a;

    invoke-virtual {p1, p0}, Lg1/a;->a(Lg1/a$b;)V

    iget-object p1, p0, Ll1/h;->Q:Lg1/a;

    goto :goto_0

    :cond_e
    :goto_1
    return-void
.end method

.method public e(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Ll1/a;->e(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object p2, p0, Ll1/h;->G:Lcom/airbnb/lottie/d;

    invoke-virtual {p2}, Lcom/airbnb/lottie/d;->b()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    iget-object p3, p0, Ll1/h;->G:Lcom/airbnb/lottie/d;

    invoke-virtual {p3}, Lcom/airbnb/lottie/d;->b()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method u(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object p3, p0, Ll1/h;->F:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {p3}, Lcom/airbnb/lottie/LottieDrawable;->k0()Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    :cond_0
    iget-object p3, p0, Ll1/h;->E:Lg1/n;

    invoke-virtual {p3}, Lg1/a;->h()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Li1/b;

    iget-object v0, p0, Ll1/h;->G:Lcom/airbnb/lottie/d;

    invoke-virtual {v0}, Lcom/airbnb/lottie/d;->g()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p3, Li1/b;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li1/c;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_1
    iget-object v1, p0, Ll1/h;->I:Lg1/a;

    if-eqz v1, :cond_2

    :goto_0
    iget-object v2, p0, Ll1/h;->A:Landroid/graphics/Paint;

    invoke-virtual {v1}, Lg1/a;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Ll1/h;->H:Lg1/a;

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v1, p0, Ll1/h;->A:Landroid/graphics/Paint;

    iget v2, p3, Li1/b;->h:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1
    iget-object v1, p0, Ll1/h;->K:Lg1/a;

    if-eqz v1, :cond_4

    :goto_2
    iget-object v2, p0, Ll1/h;->B:Landroid/graphics/Paint;

    invoke-virtual {v1}, Lg1/a;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3

    :cond_4
    iget-object v1, p0, Ll1/h;->J:Lg1/a;

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    iget-object v1, p0, Ll1/h;->B:Landroid/graphics/Paint;

    iget v2, p3, Li1/b;->i:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :goto_3
    iget-object v1, p0, Ll1/a;->v:Lg1/o;

    invoke-virtual {v1}, Lg1/o;->h()Lg1/a;

    move-result-object v1

    const/16 v2, 0x64

    if-nez v1, :cond_6

    move v1, v2

    goto :goto_4

    :cond_6
    iget-object v1, p0, Ll1/a;->v:Lg1/o;

    invoke-virtual {v1}, Lg1/o;->h()Lg1/a;

    move-result-object v1

    invoke-virtual {v1}, Lg1/a;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_4
    mul-int/lit16 v1, v1, 0xff

    div-int/2addr v1, v2

    iget-object v2, p0, Ll1/h;->A:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, p0, Ll1/h;->B:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Ll1/h;->M:Lg1/a;

    if-eqz v1, :cond_7

    :goto_5
    iget-object v2, p0, Ll1/h;->B:Landroid/graphics/Paint;

    invoke-virtual {v1}, Lg1/a;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_6

    :cond_7
    iget-object v1, p0, Ll1/h;->L:Lg1/a;

    if-eqz v1, :cond_8

    goto :goto_5

    :cond_8
    invoke-static {p2}, Lp1/j;->g(Landroid/graphics/Matrix;)F

    move-result v1

    iget-object v2, p0, Ll1/h;->B:Landroid/graphics/Paint;

    iget v3, p3, Li1/b;->j:F

    invoke-static {}, Lp1/j;->e()F

    move-result v4

    mul-float/2addr v3, v4

    mul-float/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :goto_6
    iget-object v1, p0, Ll1/h;->F:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->k0()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-direct {p0, p3, p2, v0, p1}, Ll1/h;->S(Li1/b;Landroid/graphics/Matrix;Li1/c;Landroid/graphics/Canvas;)V

    goto :goto_7

    :cond_9
    invoke-direct {p0, p3, v0, p2, p1}, Ll1/h;->T(Li1/b;Li1/c;Landroid/graphics/Matrix;Landroid/graphics/Canvas;)V

    :goto_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
