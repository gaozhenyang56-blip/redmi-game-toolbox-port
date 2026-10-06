.class public Lf1/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf1/e;
.implements Lf1/m;
.implements Lf1/j;
.implements Lg1/a$b;
.implements Lf1/k;


# instance fields
.field private final a:Landroid/graphics/Matrix;

.field private final b:Landroid/graphics/Path;

.field private final c:Lcom/airbnb/lottie/LottieDrawable;

.field private final d:Ll1/a;

.field private final e:Ljava/lang/String;

.field private final f:Z

.field private final g:Lg1/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg1/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lg1/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg1/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lg1/o;

.field private j:Lf1/d;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Ll1/a;Lk1/k;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lf1/p;->a:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lf1/p;->b:Landroid/graphics/Path;

    iput-object p1, p0, Lf1/p;->c:Lcom/airbnb/lottie/LottieDrawable;

    iput-object p2, p0, Lf1/p;->d:Ll1/a;

    invoke-virtual {p3}, Lk1/k;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lf1/p;->e:Ljava/lang/String;

    invoke-virtual {p3}, Lk1/k;->f()Z

    move-result p1

    iput-boolean p1, p0, Lf1/p;->f:Z

    invoke-virtual {p3}, Lk1/k;->b()Lj1/b;

    move-result-object p1

    invoke-virtual {p1}, Lj1/b;->a()Lg1/a;

    move-result-object p1

    iput-object p1, p0, Lf1/p;->g:Lg1/a;

    invoke-virtual {p2, p1}, Ll1/a;->j(Lg1/a;)V

    invoke-virtual {p1, p0}, Lg1/a;->a(Lg1/a$b;)V

    invoke-virtual {p3}, Lk1/k;->d()Lj1/b;

    move-result-object p1

    invoke-virtual {p1}, Lj1/b;->a()Lg1/a;

    move-result-object p1

    iput-object p1, p0, Lf1/p;->h:Lg1/a;

    invoke-virtual {p2, p1}, Ll1/a;->j(Lg1/a;)V

    invoke-virtual {p1, p0}, Lg1/a;->a(Lg1/a$b;)V

    invoke-virtual {p3}, Lk1/k;->e()Lj1/l;

    move-result-object p1

    invoke-virtual {p1}, Lj1/l;->b()Lg1/o;

    move-result-object p1

    iput-object p1, p0, Lf1/p;->i:Lg1/o;

    invoke-virtual {p1, p2}, Lg1/o;->a(Ll1/a;)V

    invoke-virtual {p1, p0}, Lg1/o;->b(Lg1/a$b;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lf1/p;->c:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    return-void
.end method

.method public b(Ljava/util/List;Ljava/util/List;)V
    .locals 1
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

    iget-object v0, p0, Lf1/p;->j:Lf1/d;

    invoke-virtual {v0, p1, p2}, Lf1/d;->b(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public c()Landroid/graphics/Path;
    .locals 6

    iget-object v0, p0, Lf1/p;->j:Lf1/d;

    invoke-virtual {v0}, Lf1/d;->c()Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lf1/p;->b:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, Lf1/p;->g:Lg1/a;

    invoke-virtual {v1}, Lg1/a;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lf1/p;->h:Lg1/a;

    invoke-virtual {v2}, Lg1/a;->h()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v3, p0, Lf1/p;->a:Landroid/graphics/Matrix;

    iget-object v4, p0, Lf1/p;->i:Lg1/o;

    int-to-float v5, v1

    add-float/2addr v5, v2

    invoke-virtual {v4, v5}, Lg1/o;->g(F)Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v3, p0, Lf1/p;->b:Landroid/graphics/Path;

    iget-object v4, p0, Lf1/p;->a:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0, v4}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lf1/p;->b:Landroid/graphics/Path;

    return-object v0
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

    iget-object v0, p0, Lf1/p;->i:Lg1/o;

    invoke-virtual {v0, p1, p2}, Lg1/o;->c(Ljava/lang/Object;Lq1/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/airbnb/lottie/j;->q:Ljava/lang/Float;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lf1/p;->g:Lg1/a;

    :goto_0
    invoke-virtual {p1, p2}, Lg1/a;->m(Lq1/c;)V

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/airbnb/lottie/j;->r:Ljava/lang/Float;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lf1/p;->h:Lg1/a;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public e(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    iget-object v0, p0, Lf1/p;->j:Lf1/d;

    invoke-virtual {v0, p1, p2, p3}, Lf1/d;->e(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    return-void
.end method

.method public f(Ljava/util/ListIterator;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator<",
            "Lf1/c;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lf1/p;->j:Lf1/d;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    :cond_2
    invoke-static {v6}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    new-instance p1, Lf1/d;

    iget-object v2, p0, Lf1/p;->c:Lcom/airbnb/lottie/LottieDrawable;

    iget-object v3, p0, Lf1/p;->d:Ll1/a;

    iget-boolean v5, p0, Lf1/p;->f:Z

    const/4 v7, 0x0

    const-string v4, "Repeater"

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lf1/d;-><init>(Lcom/airbnb/lottie/LottieDrawable;Ll1/a;Ljava/lang/String;ZLjava/util/List;Lj1/l;)V

    iput-object p1, p0, Lf1/p;->j:Lf1/d;

    return-void
.end method

.method public g(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 9

    iget-object v0, p0, Lf1/p;->g:Lg1/a;

    invoke-virtual {v0}, Lg1/a;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lf1/p;->h:Lg1/a;

    invoke-virtual {v1}, Lg1/a;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lf1/p;->i:Lg1/o;

    invoke-virtual {v2}, Lg1/o;->i()Lg1/a;

    move-result-object v2

    invoke-virtual {v2}, Lg1/a;->h()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    iget-object v4, p0, Lf1/p;->i:Lg1/o;

    invoke-virtual {v4}, Lg1/o;->e()Lg1/a;

    move-result-object v4

    invoke-virtual {v4}, Lg1/a;->h()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    div-float/2addr v4, v3

    float-to-int v3, v0

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_0

    iget-object v5, p0, Lf1/p;->a:Landroid/graphics/Matrix;

    invoke-virtual {v5, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v5, p0, Lf1/p;->a:Landroid/graphics/Matrix;

    iget-object v6, p0, Lf1/p;->i:Lg1/o;

    int-to-float v7, v3

    add-float v8, v7, v1

    invoke-virtual {v6, v8}, Lg1/o;->g(F)Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    int-to-float v5, p3

    div-float/2addr v7, v0

    invoke-static {v2, v4, v7}, Lp1/i;->j(FFF)F

    move-result v6

    mul-float/2addr v5, v6

    iget-object v6, p0, Lf1/p;->j:Lf1/d;

    iget-object v7, p0, Lf1/p;->a:Landroid/graphics/Matrix;

    float-to-int v5, v5

    invoke-virtual {v6, p1, v7, v5}, Lf1/d;->g(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lf1/p;->e:Ljava/lang/String;

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
