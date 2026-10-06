.class public Lf1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf1/e;
.implements Lf1/m;
.implements Lg1/a$b;
.implements Li1/f;


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/RectF;

.field private final c:Landroid/graphics/Matrix;

.field private final d:Landroid/graphics/Path;

.field private final e:Landroid/graphics/RectF;

.field private final f:Ljava/lang/String;

.field private final g:Z

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf1/c;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/airbnb/lottie/LottieDrawable;

.field private j:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf1/m;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lg1/o;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Ll1/a;Ljava/lang/String;ZLjava/util/List;Lj1/l;)V
    .locals 1
    .param p6    # Lj1/l;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/LottieDrawable;",
            "Ll1/a;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Lf1/c;",
            ">;",
            "Lj1/l;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Le1/a;

    invoke-direct {v0}, Le1/a;-><init>()V

    iput-object v0, p0, Lf1/d;->a:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lf1/d;->b:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lf1/d;->c:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lf1/d;->d:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lf1/d;->e:Landroid/graphics/RectF;

    iput-object p3, p0, Lf1/d;->f:Ljava/lang/String;

    iput-object p1, p0, Lf1/d;->i:Lcom/airbnb/lottie/LottieDrawable;

    iput-boolean p4, p0, Lf1/d;->g:Z

    iput-object p5, p0, Lf1/d;->h:Ljava/util/List;

    if-eqz p6, :cond_0

    invoke-virtual {p6}, Lj1/l;->b()Lg1/o;

    move-result-object p1

    iput-object p1, p0, Lf1/d;->k:Lg1/o;

    invoke-virtual {p1, p2}, Lg1/o;->a(Ll1/a;)V

    iget-object p1, p0, Lf1/d;->k:Lg1/o;

    invoke-virtual {p1, p0}, Lg1/o;->b(Lg1/a$b;)V

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_2

    invoke-interface {p5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lf1/c;

    instance-of p4, p3, Lf1/j;

    if-eqz p4, :cond_1

    check-cast p3, Lf1/j;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_3

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lf1/j;

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p4

    invoke-interface {p5, p4}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p4

    invoke-interface {p3, p4}, Lf1/j;->f(Ljava/util/ListIterator;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Ll1/a;Lk1/n;)V
    .locals 7

    invoke-virtual {p3}, Lk1/n;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lk1/n;->d()Z

    move-result v4

    invoke-virtual {p3}, Lk1/n;->b()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lf1/d;->f(Lcom/airbnb/lottie/LottieDrawable;Ll1/a;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {p3}, Lk1/n;->b()Ljava/util/List;

    move-result-object p3

    invoke-static {p3}, Lf1/d;->i(Ljava/util/List;)Lj1/l;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lf1/d;-><init>(Lcom/airbnb/lottie/LottieDrawable;Ll1/a;Ljava/lang/String;ZLjava/util/List;Lj1/l;)V

    return-void
.end method

.method private static f(Lcom/airbnb/lottie/LottieDrawable;Ll1/a;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/LottieDrawable;",
            "Ll1/a;",
            "Ljava/util/List<",
            "Lk1/b;",
            ">;)",
            "Ljava/util/List<",
            "Lf1/c;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk1/b;

    invoke-interface {v2, p0, p1}, Lk1/b;->a(Lcom/airbnb/lottie/LottieDrawable;Ll1/a;)Lf1/c;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static i(Ljava/util/List;)Lj1/l;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lk1/b;",
            ">;)",
            "Lj1/l;"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk1/b;

    instance-of v2, v1, Lj1/l;

    if-eqz v2, :cond_0

    check-cast v1, Lj1/l;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private l()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lf1/d;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lf1/d;->h:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lf1/e;

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lf1/d;->i:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    return-void
.end method

.method public b(Ljava/util/List;Ljava/util/List;)V
    .locals 3
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

    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lf1/d;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lf1/d;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_0

    iget-object v0, p0, Lf1/d;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf1/c;

    iget-object v1, p0, Lf1/d;->h:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lf1/c;->b(Ljava/util/List;Ljava/util/List;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c()Landroid/graphics/Path;
    .locals 4

    iget-object v0, p0, Lf1/d;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lf1/d;->k:Lg1/o;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lf1/d;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Lg1/o;->f()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    :cond_0
    iget-object v0, p0, Lf1/d;->d:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-boolean v0, p0, Lf1/d;->g:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lf1/d;->d:Landroid/graphics/Path;

    return-object v0

    :cond_1
    iget-object v0, p0, Lf1/d;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    iget-object v1, p0, Lf1/d;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf1/c;

    instance-of v2, v1, Lf1/m;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lf1/d;->d:Landroid/graphics/Path;

    check-cast v1, Lf1/m;

    invoke-interface {v1}, Lf1/m;->c()Landroid/graphics/Path;

    move-result-object v1

    iget-object v3, p0, Lf1/d;->c:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lf1/d;->d:Landroid/graphics/Path;

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

    iget-object v0, p0, Lf1/d;->k:Lg1/o;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lg1/o;->c(Ljava/lang/Object;Lq1/c;)Z

    :cond_0
    return-void
.end method

.method public e(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 3

    iget-object v0, p0, Lf1/d;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Lf1/d;->k:Lg1/o;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lf1/d;->c:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Lg1/o;->f()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_0
    iget-object p2, p0, Lf1/d;->e:Landroid/graphics/RectF;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p2, p0, Lf1/d;->h:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_2

    iget-object v0, p0, Lf1/d;->h:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf1/c;

    instance-of v1, v0, Lf1/e;

    if-eqz v1, :cond_1

    check-cast v0, Lf1/e;

    iget-object v1, p0, Lf1/d;->e:Landroid/graphics/RectF;

    iget-object v2, p0, Lf1/d;->c:Landroid/graphics/Matrix;

    invoke-interface {v0, v1, v2, p3}, Lf1/e;->e(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object v0, p0, Lf1/d;->e:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public g(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 4

    iget-boolean v0, p0, Lf1/d;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lf1/d;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Lf1/d;->k:Lg1/o;

    if-eqz p2, :cond_2

    iget-object v0, p0, Lf1/d;->c:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Lg1/o;->f()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    iget-object p2, p0, Lf1/d;->k:Lg1/o;

    invoke-virtual {p2}, Lg1/o;->h()Lg1/a;

    move-result-object p2

    if-nez p2, :cond_1

    const/16 p2, 0x64

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lf1/d;->k:Lg1/o;

    invoke-virtual {p2}, Lg1/o;->h()Lg1/a;

    move-result-object p2

    invoke-virtual {p2}, Lg1/a;->h()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_0
    int-to-float p2, p2

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p2, v0

    int-to-float p3, p3

    mul-float/2addr p2, p3

    const/high16 p3, 0x437f0000    # 255.0f

    div-float/2addr p2, p3

    mul-float/2addr p2, p3

    float-to-int p3, p2

    :cond_2
    iget-object p2, p0, Lf1/d;->i:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {p2}, Lcom/airbnb/lottie/LottieDrawable;->G()Z

    move-result p2

    const/16 v0, 0xff

    const/4 v1, 0x1

    if-eqz p2, :cond_3

    invoke-direct {p0}, Lf1/d;->l()Z

    move-result p2

    if-eqz p2, :cond_3

    if-eq p3, v0, :cond_3

    move p2, v1

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_4

    iget-object v2, p0, Lf1/d;->b:Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, p0, Lf1/d;->b:Landroid/graphics/RectF;

    iget-object v3, p0, Lf1/d;->c:Landroid/graphics/Matrix;

    invoke-virtual {p0, v2, v3, v1}, Lf1/d;->e(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object v2, p0, Lf1/d;->a:Landroid/graphics/Paint;

    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, p0, Lf1/d;->b:Landroid/graphics/RectF;

    iget-object v3, p0, Lf1/d;->a:Landroid/graphics/Paint;

    invoke-static {p1, v2, v3}, Lp1/j;->m(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_4
    if-eqz p2, :cond_5

    move p3, v0

    :cond_5
    iget-object v0, p0, Lf1/d;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_2
    if-ltz v0, :cond_7

    iget-object v1, p0, Lf1/d;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lf1/e;

    if-eqz v2, :cond_6

    check-cast v1, Lf1/e;

    iget-object v2, p0, Lf1/d;->c:Landroid/graphics/Matrix;

    invoke-interface {v1, p1, v2, p3}, Lf1/e;->g(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_7
    if-eqz p2, :cond_8

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_8
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lf1/d;->f:Ljava/lang/String;

    return-object v0
.end method

.method public h(Li1/e;ILjava/util/List;Li1/e;)V
    .locals 3
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

    invoke-virtual {p0}, Lf1/d;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Li1/e;->g(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lf1/d;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "__container"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lf1/d;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Li1/e;->a(Ljava/lang/String;)Li1/e;

    move-result-object p4

    invoke-virtual {p0}, Lf1/d;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Li1/e;->c(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p4, p0}, Li1/e;->i(Li1/f;)Li1/e;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, Lf1/d;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Li1/e;->h(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lf1/d;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Li1/e;->e(Ljava/lang/String;I)I

    move-result v0

    add-int/2addr p2, v0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lf1/d;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lf1/d;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf1/c;

    instance-of v2, v1, Li1/f;

    if-eqz v2, :cond_2

    check-cast v1, Li1/f;

    invoke-interface {v1, p1, p2, p3, p4}, Li1/f;->h(Li1/e;ILjava/util/List;Li1/e;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method j()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lf1/m;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lf1/d;->j:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf1/d;->j:Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lf1/d;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lf1/d;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf1/c;

    instance-of v2, v1, Lf1/m;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lf1/d;->j:Ljava/util/List;

    check-cast v1, Lf1/m;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lf1/d;->j:Ljava/util/List;

    return-object v0
.end method

.method k()Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Lf1/d;->k:Lg1/o;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg1/o;->f()Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lf1/d;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lf1/d;->c:Landroid/graphics/Matrix;

    return-object v0
.end method
