.class public Lf1/i;
.super Lf1/a;
.source "SourceFile"


# instance fields
.field private final o:Ljava/lang/String;

.field private final p:Z

.field private final q:Lm/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm/e<",
            "Landroid/graphics/LinearGradient;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Lm/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm/e<",
            "Landroid/graphics/RadialGradient;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Landroid/graphics/RectF;

.field private final t:Lk1/f;

.field private final u:I

.field private final v:Lg1/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg1/a<",
            "Lk1/c;",
            "Lk1/c;",
            ">;"
        }
    .end annotation
.end field

.field private final w:Lg1/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg1/a<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final x:Lg1/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg1/a<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private y:Lg1/p;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Ll1/a;Lk1/e;)V
    .locals 11

    invoke-virtual {p3}, Lk1/e;->b()Lk1/p$b;

    move-result-object v0

    invoke-virtual {v0}, Lk1/p$b;->a()Landroid/graphics/Paint$Cap;

    move-result-object v4

    invoke-virtual {p3}, Lk1/e;->g()Lk1/p$c;

    move-result-object v0

    invoke-virtual {v0}, Lk1/p$c;->a()Landroid/graphics/Paint$Join;

    move-result-object v5

    invoke-virtual {p3}, Lk1/e;->i()F

    move-result v6

    invoke-virtual {p3}, Lk1/e;->k()Lj1/d;

    move-result-object v7

    invoke-virtual {p3}, Lk1/e;->m()Lj1/b;

    move-result-object v8

    invoke-virtual {p3}, Lk1/e;->h()Ljava/util/List;

    move-result-object v9

    invoke-virtual {p3}, Lk1/e;->c()Lj1/b;

    move-result-object v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v10}, Lf1/a;-><init>(Lcom/airbnb/lottie/LottieDrawable;Ll1/a;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLj1/d;Lj1/b;Ljava/util/List;Lj1/b;)V

    new-instance v0, Lm/e;

    invoke-direct {v0}, Lm/e;-><init>()V

    iput-object v0, p0, Lf1/i;->q:Lm/e;

    new-instance v0, Lm/e;

    invoke-direct {v0}, Lm/e;-><init>()V

    iput-object v0, p0, Lf1/i;->r:Lm/e;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lf1/i;->s:Landroid/graphics/RectF;

    invoke-virtual {p3}, Lk1/e;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lf1/i;->o:Ljava/lang/String;

    invoke-virtual {p3}, Lk1/e;->f()Lk1/f;

    move-result-object v0

    iput-object v0, p0, Lf1/i;->t:Lk1/f;

    invoke-virtual {p3}, Lk1/e;->n()Z

    move-result v0

    iput-boolean v0, p0, Lf1/i;->p:Z

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieDrawable;->n()Lcom/airbnb/lottie/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/d;->d()F

    move-result p1

    const/high16 v0, 0x42000000    # 32.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lf1/i;->u:I

    invoke-virtual {p3}, Lk1/e;->e()Lj1/c;

    move-result-object p1

    invoke-virtual {p1}, Lj1/c;->a()Lg1/a;

    move-result-object p1

    iput-object p1, p0, Lf1/i;->v:Lg1/a;

    invoke-virtual {p1, p0}, Lg1/a;->a(Lg1/a$b;)V

    invoke-virtual {p2, p1}, Ll1/a;->j(Lg1/a;)V

    invoke-virtual {p3}, Lk1/e;->l()Lj1/f;

    move-result-object p1

    invoke-virtual {p1}, Lj1/f;->a()Lg1/a;

    move-result-object p1

    iput-object p1, p0, Lf1/i;->w:Lg1/a;

    invoke-virtual {p1, p0}, Lg1/a;->a(Lg1/a$b;)V

    invoke-virtual {p2, p1}, Ll1/a;->j(Lg1/a;)V

    invoke-virtual {p3}, Lk1/e;->d()Lj1/f;

    move-result-object p1

    invoke-virtual {p1}, Lj1/f;->a()Lg1/a;

    move-result-object p1

    iput-object p1, p0, Lf1/i;->x:Lg1/a;

    invoke-virtual {p1, p0}, Lg1/a;->a(Lg1/a$b;)V

    invoke-virtual {p2, p1}, Ll1/a;->j(Lg1/a;)V

    return-void
.end method

.method private j([I)[I
    .locals 4

    iget-object v0, p0, Lf1/i;->y:Lg1/p;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lg1/p;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    array-length v1, p1

    array-length v2, v0

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    :goto_0
    array-length v1, p1

    if-ge v3, v1, :cond_1

    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    array-length p1, v0

    new-array p1, p1, [I

    :goto_1
    array-length v1, v0

    if-ge v3, v1, :cond_1

    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object p1
.end method

.method private k()I
    .locals 4

    iget-object v0, p0, Lf1/i;->w:Lg1/a;

    invoke-virtual {v0}, Lg1/a;->f()F

    move-result v0

    iget v1, p0, Lf1/i;->u:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Lf1/i;->x:Lg1/a;

    invoke-virtual {v1}, Lg1/a;->f()F

    move-result v1

    iget v2, p0, Lf1/i;->u:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lf1/i;->v:Lg1/a;

    invoke-virtual {v2}, Lg1/a;->f()F

    move-result v2

    iget v3, p0, Lf1/i;->u:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    if-eqz v0, :cond_0

    const/16 v3, 0x20f

    mul-int/2addr v3, v0

    goto :goto_0

    :cond_0
    const/16 v3, 0x11

    :goto_0
    if-eqz v1, :cond_1

    mul-int/lit8 v3, v3, 0x1f

    mul-int/2addr v3, v1

    :cond_1
    if-eqz v2, :cond_2

    mul-int/lit8 v3, v3, 0x1f

    mul-int/2addr v3, v2

    :cond_2
    return v3
.end method

.method private l()Landroid/graphics/LinearGradient;
    .locals 14

    invoke-direct {p0}, Lf1/i;->k()I

    move-result v0

    iget-object v1, p0, Lf1/i;->q:Lm/e;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lm/e;->f(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/LinearGradient;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lf1/i;->w:Lg1/a;

    invoke-virtual {v0}, Lg1/a;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lf1/i;->x:Lg1/a;

    invoke-virtual {v1}, Lg1/a;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget-object v4, p0, Lf1/i;->v:Lg1/a;

    invoke-virtual {v4}, Lg1/a;->h()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lk1/c;

    invoke-virtual {v4}, Lk1/c;->a()[I

    move-result-object v5

    invoke-direct {p0, v5}, Lf1/i;->j([I)[I

    move-result-object v11

    invoke-virtual {v4}, Lk1/c;->b()[F

    move-result-object v12

    iget v7, v0, Landroid/graphics/PointF;->x:F

    iget v8, v0, Landroid/graphics/PointF;->y:F

    iget v9, v1, Landroid/graphics/PointF;->x:F

    iget v10, v1, Landroid/graphics/PointF;->y:F

    new-instance v0, Landroid/graphics/LinearGradient;

    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v6, v0

    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iget-object v1, p0, Lf1/i;->q:Lm/e;

    invoke-virtual {v1, v2, v3, v0}, Lm/e;->j(JLjava/lang/Object;)V

    return-object v0
.end method

.method private m()Landroid/graphics/RadialGradient;
    .locals 13

    invoke-direct {p0}, Lf1/i;->k()I

    move-result v0

    iget-object v1, p0, Lf1/i;->r:Lm/e;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lm/e;->f(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RadialGradient;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lf1/i;->w:Lg1/a;

    invoke-virtual {v0}, Lg1/a;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lf1/i;->x:Lg1/a;

    invoke-virtual {v1}, Lg1/a;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget-object v4, p0, Lf1/i;->v:Lg1/a;

    invoke-virtual {v4}, Lg1/a;->h()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lk1/c;

    invoke-virtual {v4}, Lk1/c;->a()[I

    move-result-object v5

    invoke-direct {p0, v5}, Lf1/i;->j([I)[I

    move-result-object v10

    invoke-virtual {v4}, Lk1/c;->b()[F

    move-result-object v11

    iget v7, v0, Landroid/graphics/PointF;->x:F

    iget v8, v0, Landroid/graphics/PointF;->y:F

    iget v0, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v7

    float-to-double v4, v0

    sub-float/2addr v1, v8

    float-to-double v0, v1

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v9, v0

    new-instance v0, Landroid/graphics/RadialGradient;

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v6, v0

    invoke-direct/range {v6 .. v12}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iget-object v1, p0, Lf1/i;->r:Lm/e;

    invoke-virtual {v1, v2, v3, v0}, Lm/e;->j(JLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public d(Ljava/lang/Object;Lq1/c;)V
    .locals 1
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

    invoke-super {p0, p1, p2}, Lf1/a;->d(Ljava/lang/Object;Lq1/c;)V

    sget-object v0, Lcom/airbnb/lottie/j;->D:[Ljava/lang/Integer;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lf1/i;->y:Lg1/p;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lf1/a;->f:Ll1/a;

    invoke-virtual {v0, p1}, Ll1/a;->D(Lg1/a;)V

    :cond_0
    if-nez p2, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lf1/i;->y:Lg1/p;

    goto :goto_0

    :cond_1
    new-instance p1, Lg1/p;

    invoke-direct {p1, p2}, Lg1/p;-><init>(Lq1/c;)V

    iput-object p1, p0, Lf1/i;->y:Lg1/p;

    invoke-virtual {p1, p0}, Lg1/a;->a(Lg1/a$b;)V

    iget-object p1, p0, Lf1/a;->f:Ll1/a;

    iget-object p2, p0, Lf1/i;->y:Lg1/p;

    invoke-virtual {p1, p2}, Ll1/a;->j(Lg1/a;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public g(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 2

    iget-boolean v0, p0, Lf1/i;->p:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lf1/i;->s:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lf1/a;->e(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object v0, p0, Lf1/i;->t:Lk1/f;

    sget-object v1, Lk1/f;->a:Lk1/f;

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lf1/i;->l()Landroid/graphics/LinearGradient;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lf1/i;->m()Landroid/graphics/RadialGradient;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, p2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lf1/a;->i:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-super {p0, p1, p2, p3}, Lf1/a;->g(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lf1/i;->o:Ljava/lang/String;

    return-object v0
.end method
