.class public Ll1/b;
.super Ll1/a;
.source "SourceFile"


# instance fields
.field private final A:Landroid/graphics/RectF;

.field private B:Landroid/graphics/Paint;

.field private x:Lg1/a;
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

.field private final y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ll1/a;",
            ">;"
        }
    .end annotation
.end field

.field private final z:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Ll1/d;Ljava/util/List;Lcom/airbnb/lottie/d;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/LottieDrawable;",
            "Ll1/d;",
            "Ljava/util/List<",
            "Ll1/d;",
            ">;",
            "Lcom/airbnb/lottie/d;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ll1/a;-><init>(Lcom/airbnb/lottie/LottieDrawable;Ll1/d;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ll1/b;->y:Ljava/util/List;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Ll1/b;->z:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Ll1/b;->A:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Ll1/b;->B:Landroid/graphics/Paint;

    invoke-virtual {p2}, Ll1/d;->s()Lj1/b;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lj1/b;->a()Lg1/a;

    move-result-object p2

    iput-object p2, p0, Ll1/b;->x:Lg1/a;

    invoke-virtual {p0, p2}, Ll1/a;->j(Lg1/a;)V

    iget-object p2, p0, Ll1/b;->x:Lg1/a;

    invoke-virtual {p2, p0}, Lg1/a;->a(Lg1/a$b;)V

    goto :goto_0

    :cond_0
    iput-object v0, p0, Ll1/b;->x:Lg1/a;

    :goto_0
    new-instance p2, Lm/e;

    invoke-virtual {p4}, Lcom/airbnb/lottie/d;->j()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p2, v1}, Lm/e;-><init>(I)V

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    move-object v3, v0

    :goto_1
    const/4 v4, 0x0

    if-ltz v1, :cond_4

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ll1/d;

    invoke-static {v5, p1, p4}, Ll1/a;->v(Ll1/d;Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/d;)Ll1/a;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v6}, Ll1/a;->w()Ll1/d;

    move-result-object v7

    invoke-virtual {v7}, Ll1/d;->b()J

    move-result-wide v7

    invoke-virtual {p2, v7, v8, v6}, Lm/e;->j(JLjava/lang/Object;)V

    if-eqz v3, :cond_2

    invoke-virtual {v3, v6}, Ll1/a;->F(Ll1/a;)V

    move-object v3, v0

    goto :goto_2

    :cond_2
    iget-object v7, p0, Ll1/b;->y:Ljava/util/List;

    invoke-interface {v7, v4, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v4, Ll1/b$a;->a:[I

    invoke-virtual {v5}, Ll1/d;->f()Ll1/d$b;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v2, :cond_3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    goto :goto_2

    :cond_3
    move-object v3, v6

    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_4
    :goto_3
    invoke-virtual {p2}, Lm/e;->m()I

    move-result p1

    if-ge v4, p1, :cond_7

    invoke-virtual {p2, v4}, Lm/e;->i(I)J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Lm/e;->f(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ll1/a;

    if-nez p1, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Ll1/a;->w()Ll1/d;

    move-result-object p3

    invoke-virtual {p3}, Ll1/d;->h()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Lm/e;->f(J)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ll1/a;

    if-eqz p3, :cond_6

    invoke-virtual {p1, p3}, Ll1/a;->G(Ll1/a;)V

    :cond_6
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    return-void
.end method


# virtual methods
.method protected E(Li1/e;ILjava/util/List;Li1/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li1/e;",
            "I",
            "Ljava/util/List<",
            "Li1/e;",
            ">;",
            "Li1/e;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ll1/b;->y:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Ll1/b;->y:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll1/a;

    invoke-virtual {v1, p1, p2, p3, p4}, Ll1/a;->h(Li1/e;ILjava/util/List;Li1/e;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public H(F)V
    .locals 3
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    invoke-super {p0, p1}, Ll1/a;->H(F)V

    iget-object v0, p0, Ll1/b;->x:Lg1/a;

    if-eqz v0, :cond_0

    iget-object p1, p0, Ll1/a;->n:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieDrawable;->n()Lcom/airbnb/lottie/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/d;->e()F

    move-result p1

    const v0, 0x3c23d70a    # 0.01f

    add-float/2addr p1, v0

    iget-object v0, p0, Ll1/a;->o:Ll1/d;

    invoke-virtual {v0}, Ll1/d;->a()Lcom/airbnb/lottie/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/d;->o()F

    move-result v0

    iget-object v1, p0, Ll1/b;->x:Lg1/a;

    invoke-virtual {v1}, Lg1/a;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Ll1/a;->o:Ll1/d;

    invoke-virtual {v2}, Ll1/d;->a()Lcom/airbnb/lottie/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/lottie/d;->h()F

    move-result v2

    mul-float/2addr v1, v2

    sub-float/2addr v1, v0

    div-float p1, v1, p1

    :cond_0
    iget-object v0, p0, Ll1/b;->x:Lg1/a;

    if-nez v0, :cond_1

    iget-object v0, p0, Ll1/a;->o:Ll1/d;

    invoke-virtual {v0}, Ll1/d;->p()F

    move-result v0

    sub-float/2addr p1, v0

    :cond_1
    iget-object v0, p0, Ll1/a;->o:Ll1/d;

    invoke-virtual {v0}, Ll1/d;->t()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Ll1/a;->o:Ll1/d;

    invoke-virtual {v0}, Ll1/d;->t()F

    move-result v0

    div-float/2addr p1, v0

    :cond_2
    iget-object v0, p0, Ll1/b;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    iget-object v1, p0, Ll1/b;->y:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll1/a;

    invoke-virtual {v1, p1}, Ll1/a;->H(F)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

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

    invoke-super {p0, p1, p2}, Ll1/a;->d(Ljava/lang/Object;Lq1/c;)V

    sget-object v0, Lcom/airbnb/lottie/j;->A:Ljava/lang/Float;

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_0

    iget-object p1, p0, Ll1/b;->x:Lg1/a;

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lg1/a;->m(Lq1/c;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lg1/p;

    invoke-direct {p1, p2}, Lg1/p;-><init>(Lq1/c;)V

    iput-object p1, p0, Ll1/b;->x:Lg1/a;

    invoke-virtual {p1, p0}, Lg1/a;->a(Lg1/a$b;)V

    iget-object p1, p0, Ll1/b;->x:Lg1/a;

    invoke-virtual {p0, p1}, Ll1/a;->j(Lg1/a;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public e(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Ll1/a;->e(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object p2, p0, Ll1/b;->y:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    :goto_0
    if-ltz p2, :cond_0

    iget-object v0, p0, Ll1/b;->z:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Ll1/b;->y:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll1/a;

    iget-object v1, p0, Ll1/b;->z:Landroid/graphics/RectF;

    iget-object v2, p0, Ll1/a;->m:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v2, p3}, Ll1/a;->e(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object v0, p0, Ll1/b;->z:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method u(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 6

    const-string v0, "CompositionLayer#draw"

    invoke-static {v0}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)V

    iget-object v1, p0, Ll1/b;->A:Landroid/graphics/RectF;

    iget-object v2, p0, Ll1/a;->o:Ll1/d;

    invoke-virtual {v2}, Ll1/d;->j()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Ll1/a;->o:Ll1/d;

    invoke-virtual {v3}, Ll1/d;->i()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Ll1/b;->A:Landroid/graphics/RectF;

    invoke-virtual {p2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v1, p0, Ll1/a;->n:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->G()Z

    move-result v1

    const/16 v2, 0xff

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ll1/b;->y:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_0

    if-eq p3, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v4, p0, Ll1/b;->B:Landroid/graphics/Paint;

    invoke-virtual {v4, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v4, p0, Ll1/b;->A:Landroid/graphics/RectF;

    iget-object v5, p0, Ll1/b;->B:Landroid/graphics/Paint;

    invoke-static {p1, v4, v5}, Lp1/j;->m(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    :goto_1
    if-eqz v1, :cond_2

    move p3, v2

    :cond_2
    iget-object v1, p0, Ll1/b;->y:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    :goto_2
    if-ltz v1, :cond_5

    iget-object v2, p0, Ll1/b;->A:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Ll1/b;->A:Landroid/graphics/RectF;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    if-eqz v2, :cond_4

    iget-object v2, p0, Ll1/b;->y:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll1/a;

    invoke-virtual {v2, p1, p2, p3}, Ll1/a;->g(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-static {v0}, Lcom/airbnb/lottie/c;->b(Ljava/lang/String;)F

    return-void
.end method
