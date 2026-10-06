.class public Lf1/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf1/e;
.implements Lg1/a$b;
.implements Lf1/k;


# instance fields
.field private final a:Landroid/graphics/Path;

.field private final b:Landroid/graphics/Paint;

.field private final c:Ll1/a;

.field private final d:Ljava/lang/String;

.field private final e:Z

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf1/m;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lg1/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg1/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lg1/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg1/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lg1/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg1/a<",
            "Landroid/graphics/ColorFilter;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcom/airbnb/lottie/LottieDrawable;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Ll1/a;Lk1/m;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lf1/g;->a:Landroid/graphics/Path;

    new-instance v1, Le1/a;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Le1/a;-><init>(I)V

    iput-object v1, p0, Lf1/g;->b:Landroid/graphics/Paint;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lf1/g;->f:Ljava/util/List;

    iput-object p2, p0, Lf1/g;->c:Ll1/a;

    invoke-virtual {p3}, Lk1/m;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lf1/g;->d:Ljava/lang/String;

    invoke-virtual {p3}, Lk1/m;->f()Z

    move-result v1

    iput-boolean v1, p0, Lf1/g;->e:Z

    iput-object p1, p0, Lf1/g;->j:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {p3}, Lk1/m;->b()Lj1/a;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p3}, Lk1/m;->e()Lj1/d;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lk1/m;->c()Landroid/graphics/Path$FillType;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    invoke-virtual {p3}, Lk1/m;->b()Lj1/a;

    move-result-object p1

    invoke-virtual {p1}, Lj1/a;->a()Lg1/a;

    move-result-object p1

    iput-object p1, p0, Lf1/g;->g:Lg1/a;

    invoke-virtual {p1, p0}, Lg1/a;->a(Lg1/a$b;)V

    invoke-virtual {p2, p1}, Ll1/a;->j(Lg1/a;)V

    invoke-virtual {p3}, Lk1/m;->e()Lj1/d;

    move-result-object p1

    invoke-virtual {p1}, Lj1/d;->a()Lg1/a;

    move-result-object p1

    iput-object p1, p0, Lf1/g;->h:Lg1/a;

    invoke-virtual {p1, p0}, Lg1/a;->a(Lg1/a$b;)V

    invoke-virtual {p2, p1}, Ll1/a;->j(Lg1/a;)V

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lf1/g;->g:Lg1/a;

    iput-object p1, p0, Lf1/g;->h:Lg1/a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lf1/g;->j:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    return-void
.end method

.method public b(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lf1/c;",
            ">;",
            "Ljava/util/List<",
            "Lf1/c;",
            ">;)V"
        }
    .end annotation

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf1/c;

    instance-of v1, v0, Lf1/m;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lf1/g;->f:Ljava/util/List;

    check-cast v0, Lf1/m;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
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

    sget-object v0, Lcom/airbnb/lottie/j;->a:Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lf1/g;->g:Lg1/a;

    :goto_0
    invoke-virtual {p1, p2}, Lg1/a;->m(Lq1/c;)V

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/airbnb/lottie/j;->d:Ljava/lang/Integer;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lf1/g;->h:Lg1/a;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/airbnb/lottie/j;->C:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lf1/g;->i:Lg1/a;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lf1/g;->c:Ll1/a;

    invoke-virtual {v0, p1}, Ll1/a;->D(Lg1/a;)V

    :cond_2
    if-nez p2, :cond_3

    const/4 p1, 0x0

    iput-object p1, p0, Lf1/g;->i:Lg1/a;

    goto :goto_1

    :cond_3
    new-instance p1, Lg1/p;

    invoke-direct {p1, p2}, Lg1/p;-><init>(Lq1/c;)V

    iput-object p1, p0, Lf1/g;->i:Lg1/a;

    invoke-virtual {p1, p0}, Lg1/a;->a(Lg1/a$b;)V

    iget-object p1, p0, Lf1/g;->c:Ll1/a;

    iget-object p2, p0, Lf1/g;->i:Lg1/a;

    invoke-virtual {p1, p2}, Ll1/a;->j(Lg1/a;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public e(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 3

    iget-object p3, p0, Lf1/g;->a:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    const/4 p3, 0x0

    move v0, p3

    :goto_0
    iget-object v1, p0, Lf1/g;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lf1/g;->a:Landroid/graphics/Path;

    iget-object v2, p0, Lf1/g;->f:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf1/m;

    invoke-interface {v2}, Lf1/m;->c()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lf1/g;->a:Landroid/graphics/Path;

    invoke-virtual {p2, p1, p3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget p2, p1, Landroid/graphics/RectF;->left:F

    const/high16 p3, 0x3f800000    # 1.0f

    sub-float/2addr p2, p3

    iget v0, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, p3

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, p3

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public g(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 4

    iget-boolean v0, p0, Lf1/g;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "FillContent#draw"

    invoke-static {v0}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lf1/g;->b:Landroid/graphics/Paint;

    iget-object v2, p0, Lf1/g;->g:Lg1/a;

    check-cast v2, Lg1/b;

    invoke-virtual {v2}, Lg1/b;->o()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p3, p3

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr p3, v1

    iget-object v2, p0, Lf1/g;->h:Lg1/a;

    invoke-virtual {v2}, Lg1/a;->h()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr p3, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr p3, v2

    mul-float/2addr p3, v1

    float-to-int p3, p3

    iget-object v1, p0, Lf1/g;->b:Landroid/graphics/Paint;

    const/16 v2, 0xff

    const/4 v3, 0x0

    invoke-static {p3, v3, v2}, Lp1/i;->c(III)I

    move-result p3

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p3, p0, Lf1/g;->i:Lg1/a;

    if-eqz p3, :cond_1

    iget-object v1, p0, Lf1/g;->b:Landroid/graphics/Paint;

    invoke-virtual {p3}, Lg1/a;->h()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/ColorFilter;

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_1
    iget-object p3, p0, Lf1/g;->a:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    :goto_0
    iget-object p3, p0, Lf1/g;->f:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge v3, p3, :cond_2

    iget-object p3, p0, Lf1/g;->a:Landroid/graphics/Path;

    iget-object v1, p0, Lf1/g;->f:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf1/m;

    invoke-interface {v1}, Lf1/m;->c()Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {p3, v1, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lf1/g;->a:Landroid/graphics/Path;

    iget-object p3, p0, Lf1/g;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-static {v0}, Lcom/airbnb/lottie/c;->b(Ljava/lang/String;)F

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lf1/g;->d:Ljava/lang/String;

    return-object v0
.end method

.method public h(Li1/e;ILjava/util/List;Li1/e;)V
    .locals 0
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

    invoke-static {p1, p2, p3, p4, p0}, Lp1/i;->l(Li1/e;ILjava/util/List;Li1/e;Lf1/k;)V

    return-void
.end method
