.class Landroidx/recyclerview/widget/x$a;
.super Landroidx/recyclerview/widget/RecyclerView$b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private h:I

.field private i:I

.field j:Lul/d;

.field k:Landroid/view/animation/Interpolator;

.field private l:Z

.field private m:Z

.field private n:Z

.field o:I

.field p:I

.field q:Z

.field private r:Lum/b;

.field final synthetic s:Landroidx/recyclerview/widget/x;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/x;)V
    .locals 2

    iput-object p1, p0, Landroidx/recyclerview/widget/x$a;->s:Landroidx/recyclerview/widget/x;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    sget-object v0, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Landroidx/recyclerview/widget/x$a;->k:Landroid/view/animation/Interpolator;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/recyclerview/widget/x$a;->l:Z

    iput-boolean v1, p0, Landroidx/recyclerview/widget/x$a;->m:Z

    iput v1, p0, Landroidx/recyclerview/widget/x$a;->o:I

    iput v1, p0, Landroidx/recyclerview/widget/x$a;->p:I

    iput-boolean v1, p0, Landroidx/recyclerview/widget/x$a;->q:Z

    new-instance v1, Lul/d;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lul/d;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Landroidx/recyclerview/widget/x$a;->j:Lul/d;

    return-void
.end method

.method private c()V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/x$a;->s:Landroidx/recyclerview/widget/x;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroidx/recyclerview/widget/x$a;->s:Landroidx/recyclerview/widget/x;

    invoke-static {v0, p0}, Lul/a;->b(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method private g(IIII)I
    .locals 4

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    mul-int/2addr p3, p3

    mul-int/2addr p4, p4

    add-int/2addr p3, p4

    int-to-double p3, p3

    invoke-static {p3, p4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p3

    double-to-int p3, p3

    mul-int/2addr p1, p1

    mul-int/2addr p2, p2

    add-int/2addr p1, p2

    int-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-int p1, p1

    iget-object p2, p0, Landroidx/recyclerview/widget/x$a;->s:Landroidx/recyclerview/widget/x;

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    :goto_1
    div-int/lit8 p4, p2, 0x2

    int-to-float p1, p1

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr p1, v3

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    int-to-float p4, p4

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/x$a;->h(F)F

    move-result p1

    mul-float/2addr p1, p4

    add-float/2addr p4, p1

    if-lez p3, :cond_2

    const/high16 p1, 0x447a0000    # 1000.0f

    int-to-float p2, p3

    div-float/2addr p4, p2

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    goto :goto_3

    :cond_2
    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    int-to-float p1, v0

    div-float/2addr p1, p2

    add-float/2addr p1, v3

    const/high16 p2, 0x43960000    # 300.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    :goto_3
    const/16 p2, 0x7d0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private h(F)F
    .locals 2

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    const v0, 0x3ef1463b

    mul-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method private i()Lum/b;
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/x$a;->r:Lum/b;

    if-nez v0, :cond_0

    new-instance v0, Lum/b;

    iget-object v1, p0, Landroidx/recyclerview/widget/x$a;->s:Landroidx/recyclerview/widget/x;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lum/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/x$a;->r:Lum/b;

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/x$a;->r:Lum/b;

    return-object v0
.end method

.method private j(I)F
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/x$a;->s:Landroidx/recyclerview/widget/x;

    invoke-static {v0}, Landroidx/recyclerview/widget/x;->d(Landroidx/recyclerview/widget/x;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/x$a;->s:Landroidx/recyclerview/widget/x;

    invoke-static {v0}, Landroidx/recyclerview/widget/x;->d(Landroidx/recyclerview/widget/x;)I

    move-result v0

    rem-int/lit8 v0, v0, 0x5

    iget-object v1, p0, Landroidx/recyclerview/widget/x$a;->s:Landroidx/recyclerview/widget/x;

    invoke-static {v1, v0}, Landroidx/recyclerview/widget/x;->e(Landroidx/recyclerview/widget/x;I)V

    iget-object v1, p0, Landroidx/recyclerview/widget/x$a;->s:Landroidx/recyclerview/widget/x;

    invoke-static {v1}, Landroidx/recyclerview/widget/x;->f(Landroidx/recyclerview/widget/x;)[Lmiuix/animation/utils/VelocityMonitor;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-virtual {v0, p1}, Lmiuix/animation/utils/VelocityMonitor;->getVelocity(I)F

    move-result p1

    return p1
.end method


# virtual methods
.method public b(II)V
    .locals 12

    iget-object v0, p0, Landroidx/recyclerview/widget/x$a;->s:Landroidx/recyclerview/widget/x;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/x$a;->i:I

    iput v0, p0, Landroidx/recyclerview/widget/x$a;->h:I

    iget-object v2, p0, Landroidx/recyclerview/widget/x$a;->k:Landroid/view/animation/Interpolator;

    sget-object v3, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    if-eq v2, v3, :cond_0

    iput-object v3, p0, Landroidx/recyclerview/widget/x$a;->k:Landroid/view/animation/Interpolator;

    new-instance v2, Lul/d;

    iget-object v4, p0, Landroidx/recyclerview/widget/x$a;->s:Landroidx/recyclerview/widget/x;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Lul/d;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Landroidx/recyclerview/widget/x$a;->j:Lul/d;

    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/x$a;->j(I)F

    move-result v0

    float-to-int v0, v0

    neg-int v0, v0

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_0
    const/4 v2, 0x1

    if-eqz p2, :cond_2

    invoke-direct {p0, v2}, Landroidx/recyclerview/widget/x$a;->j(I)F

    move-result v3

    float-to-int v3, v3

    neg-int v3, v3

    goto :goto_1

    :cond_2
    move v3, p2

    :goto_1
    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    move p1, v0

    :goto_2
    if-nez v3, :cond_4

    goto :goto_3

    :cond_4
    move p2, v3

    :goto_3
    iget-object v0, p0, Landroidx/recyclerview/widget/x$a;->s:Landroidx/recyclerview/widget/x;

    invoke-static {v0}, Landroidx/recyclerview/widget/x;->c(Landroidx/recyclerview/widget/x;)I

    move-result v0

    neg-int v0, v0

    iget-object v3, p0, Landroidx/recyclerview/widget/x$a;->s:Landroidx/recyclerview/widget/x;

    invoke-static {v3}, Landroidx/recyclerview/widget/x;->c(Landroidx/recyclerview/widget/x;)I

    move-result v3

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget-object p1, p0, Landroidx/recyclerview/widget/x$a;->s:Landroidx/recyclerview/widget/x;

    invoke-static {p1}, Landroidx/recyclerview/widget/x;->c(Landroidx/recyclerview/widget/x;)I

    move-result p1

    neg-int p1, p1

    iget-object v0, p0, Landroidx/recyclerview/widget/x$a;->s:Landroidx/recyclerview/widget/x;

    invoke-static {v0}, Landroidx/recyclerview/widget/x;->c(Landroidx/recyclerview/widget/x;)I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget-object p1, p0, Landroidx/recyclerview/widget/x$a;->s:Landroidx/recyclerview/widget/x;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$n;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$n;->canScrollHorizontally()Z

    move-result p1

    iget-object p2, p0, Landroidx/recyclerview/widget/x$a;->s:Landroidx/recyclerview/widget/x;

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$n;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$n;->canScrollVertically()Z

    move-result p2

    if-eqz p2, :cond_5

    or-int/lit8 p1, p1, 0x2

    :cond_5
    const/4 p2, -0x1

    if-ne p1, v1, :cond_7

    if-lez v7, :cond_6

    move p2, v2

    :cond_6
    iget-object p1, p0, Landroidx/recyclerview/widget/x$a;->s:Landroidx/recyclerview/widget/x;

    invoke-virtual {p1, p2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    :goto_4
    xor-int/2addr p1, v2

    iput-boolean p1, p0, Landroidx/recyclerview/widget/x$a;->n:Z

    goto :goto_5

    :cond_7
    if-ne p1, v2, :cond_9

    if-lez v6, :cond_8

    move p2, v2

    :cond_8
    iget-object p1, p0, Landroidx/recyclerview/widget/x$a;->s:Landroidx/recyclerview/widget/x;

    invoke-virtual {p1, p2}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p1

    goto :goto_4

    :cond_9
    :goto_5
    iget-object v3, p0, Landroidx/recyclerview/widget/x$a;->j:Lul/d;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    const/high16 v10, -0x80000000

    const v11, 0x7fffffff

    invoke-virtual/range {v3 .. v11}, Lul/d;->c(IIIIIIII)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/x$a;->d()V

    return-void
.end method

.method d()V
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/x$a;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/x$a;->m:Z

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroidx/recyclerview/widget/x$a;->c()V

    :goto_0
    return-void
.end method

.method public e(IIILandroid/view/animation/Interpolator;)V
    .locals 8
    .param p4    # Landroid/view/animation/Interpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/recyclerview/widget/x$a;->s:Landroidx/recyclerview/widget/x;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/x;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    if-ne p3, v0, :cond_1

    invoke-direct {p0, p1, p2, v1, v1}, Landroidx/recyclerview/widget/x$a;->g(IIII)I

    :cond_1
    if-nez p4, :cond_2

    sget-object p4, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    :cond_2
    iget-object p3, p0, Landroidx/recyclerview/widget/x$a;->j:Lul/d;

    invoke-virtual {p3}, Lul/d;->m()I

    move-result p3

    const/4 v0, 0x2

    if-ne p3, v0, :cond_3

    iget-boolean p3, p0, Landroidx/recyclerview/widget/x$a;->q:Z

    if-nez p3, :cond_3

    iget-object p3, p0, Landroidx/recyclerview/widget/x$a;->j:Lul/d;

    invoke-virtual {p3}, Lul/d;->h()F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/recyclerview/widget/x$a;->p:I

    iget-object p3, p0, Landroidx/recyclerview/widget/x$a;->j:Lul/d;

    invoke-virtual {p3}, Lul/d;->g()F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/recyclerview/widget/x$a;->o:I

    :cond_3
    iget-object p3, p0, Landroidx/recyclerview/widget/x$a;->s:Landroidx/recyclerview/widget/x;

    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$n;

    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView$n;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$y;

    instance-of v2, p3, Landroidx/recyclerview/widget/o;

    if-eqz v2, :cond_4

    const v2, 0x3f99999a    # 1.2f

    move-object v3, p3

    check-cast v3, Landroidx/recyclerview/widget/o;

    iget v3, v3, Landroidx/recyclerview/widget/o;->mInterimTargetDx:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    check-cast p3, Landroidx/recyclerview/widget/o;

    iget p3, p3, Landroidx/recyclerview/widget/o;->mInterimTargetDy:I

    int-to-float p3, p3

    mul-float/2addr p3, v2

    int-to-float v2, p1

    cmpl-float v2, v3, v2

    if-nez v2, :cond_4

    int-to-float v2, p2

    cmpl-float p3, p3, v2

    if-nez p3, :cond_4

    const/4 p3, 0x1

    goto :goto_0

    :cond_4
    move p3, v1

    :goto_0
    iput-boolean p3, p0, Landroidx/recyclerview/widget/x$a;->q:Z

    iget-object p3, p0, Landroidx/recyclerview/widget/x$a;->k:Landroid/view/animation/Interpolator;

    if-eq p3, p4, :cond_5

    iput-object p4, p0, Landroidx/recyclerview/widget/x$a;->k:Landroid/view/animation/Interpolator;

    new-instance p3, Lul/d;

    iget-object v2, p0, Landroidx/recyclerview/widget/x$a;->s:Landroidx/recyclerview/widget/x;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p3, v2, p4}, Lul/d;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p3, p0, Landroidx/recyclerview/widget/x$a;->j:Lul/d;

    :cond_5
    iput v1, p0, Landroidx/recyclerview/widget/x$a;->i:I

    iput v1, p0, Landroidx/recyclerview/widget/x$a;->h:I

    iget-object p3, p0, Landroidx/recyclerview/widget/x$a;->s:Landroidx/recyclerview/widget/x;

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    iget-object v1, p0, Landroidx/recyclerview/widget/x$a;->j:Lul/d;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v6, p0, Landroidx/recyclerview/widget/x$a;->o:I

    iget v7, p0, Landroidx/recyclerview/widget/x$a;->p:I

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v7}, Lul/d;->x(IIIIII)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/x$a;->d()V

    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/x$a;->s:Landroidx/recyclerview/widget/x;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroidx/recyclerview/widget/x$a;->j:Lul/d;

    invoke-virtual {v0}, Lul/d;->a()V

    return-void
.end method

.method k()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/x$a;->i:I

    iput v0, p0, Landroidx/recyclerview/widget/x$a;->h:I

    iget-object v0, p0, Landroidx/recyclerview/widget/x$a;->j:Lul/d;

    invoke-virtual {v0}, Lul/d;->s()V

    return-void
.end method

.method public run()V
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/recyclerview/widget/x$a;->s:Landroidx/recyclerview/widget/x;

    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$n;

    if-nez v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/x$a;->f()V

    return-void

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroidx/recyclerview/widget/x$a;->m:Z

    const/4 v3, 0x1

    iput-boolean v3, v0, Landroidx/recyclerview/widget/x$a;->l:Z

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->consumePendingUpdateOperations()V

    iget-object v1, v0, Landroidx/recyclerview/widget/x$a;->j:Lul/d;

    invoke-virtual {v1}, Lul/d;->b()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-virtual {v1}, Lul/d;->i()I

    move-result v4

    invoke-virtual {v1}, Lul/d;->j()I

    move-result v5

    iget-object v6, v0, Landroidx/recyclerview/widget/x$a;->j:Lul/d;

    invoke-virtual {v6}, Lul/d;->m()I

    move-result v6

    if-ne v6, v3, :cond_1

    invoke-virtual {v1}, Lul/d;->g()F

    move-result v6

    float-to-int v6, v6

    iput v6, v0, Landroidx/recyclerview/widget/x$a;->o:I

    invoke-virtual {v1}, Lul/d;->h()F

    move-result v6

    float-to-int v6, v6

    iput v6, v0, Landroidx/recyclerview/widget/x$a;->p:I

    :cond_1
    iget v6, v0, Landroidx/recyclerview/widget/x$a;->h:I

    sub-int v6, v4, v6

    iget v7, v0, Landroidx/recyclerview/widget/x$a;->i:I

    sub-int v13, v5, v7

    iput v4, v0, Landroidx/recyclerview/widget/x$a;->h:I

    iput v5, v0, Landroidx/recyclerview/widget/x$a;->i:I

    iget-object v4, v0, Landroidx/recyclerview/widget/x$a;->s:Landroidx/recyclerview/widget/x;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aput v2, v4, v2

    aput v2, v4, v3

    iget-object v4, v0, Landroidx/recyclerview/widget/x$a;->j:Lul/d;

    invoke-virtual {v4}, Lul/d;->m()I

    move-result v4

    if-ne v4, v3, :cond_4

    iget-object v4, v0, Landroidx/recyclerview/widget/x$a;->s:Landroidx/recyclerview/widget/x;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    iget-object v5, v0, Landroidx/recyclerview/widget/x$a;->s:Landroidx/recyclerview/widget/x;

    invoke-virtual {v5}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    const v7, 0x1020002

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    :goto_0
    if-eqz v4, :cond_4

    instance-of v7, v4, Lfl/c;

    if-eqz v7, :cond_2

    move-object v7, v4

    check-cast v7, Lfl/c;

    iget-object v8, v0, Landroidx/recyclerview/widget/x$a;->j:Lul/d;

    invoke-virtual {v8}, Lul/d;->g()F

    move-result v8

    iget-object v9, v0, Landroidx/recyclerview/widget/x$a;->j:Lul/d;

    invoke-virtual {v9}, Lul/d;->h()F

    move-result v9

    invoke-interface {v7, v8, v9}, Lfl/c;->b(FF)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    instance-of v7, v4, Landroid/view/ViewGroup;

    if-eqz v7, :cond_3

    if-ne v4, v5, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    goto :goto_0

    :cond_4
    :goto_1
    iget-object v7, v0, Landroidx/recyclerview/widget/x$a;->s:Landroidx/recyclerview/widget/x;

    iget-object v10, v7, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    const/4 v11, 0x0

    const/4 v12, 0x1

    move v8, v6

    move v9, v13

    invoke-virtual/range {v7 .. v12}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, v0, Landroidx/recyclerview/widget/x$a;->s:Landroidx/recyclerview/widget/x;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aget v5, v4, v2

    sub-int/2addr v6, v5

    aget v4, v4, v3

    sub-int/2addr v13, v4

    :cond_5
    iget-object v4, v0, Landroidx/recyclerview/widget/x$a;->s:Landroidx/recyclerview/widget/x;

    invoke-virtual {v4}, Landroid/view/View;->getOverScrollMode()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_6

    iget-object v4, v0, Landroidx/recyclerview/widget/x$a;->s:Landroidx/recyclerview/widget/x;

    invoke-virtual {v4, v6, v13}, Landroidx/recyclerview/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    :cond_6
    iget-object v4, v0, Landroidx/recyclerview/widget/x$a;->s:Landroidx/recyclerview/widget/x;

    iget-object v7, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$h;

    if-eqz v7, :cond_9

    iget-object v7, v4, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aput v2, v7, v2

    aput v2, v7, v3

    invoke-virtual {v4, v6, v13, v7}, Landroidx/recyclerview/widget/RecyclerView;->scrollStep(II[I)V

    iget-object v4, v0, Landroidx/recyclerview/widget/x$a;->s:Landroidx/recyclerview/widget/x;

    iget-object v7, v4, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aget v8, v7, v2

    aget v7, v7, v3

    sub-int/2addr v6, v8

    sub-int/2addr v13, v7

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$n;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$n;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$y;

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$y;->isPendingInitialRun()Z

    move-result v9

    if-nez v9, :cond_a

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$y;->isRunning()Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, v0, Landroidx/recyclerview/widget/x$a;->s:Landroidx/recyclerview/widget/x;

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$z;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$z;->b()I

    move-result v9

    if-nez v9, :cond_7

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$y;->stop()V

    goto :goto_2

    :cond_7
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$y;->getTargetPosition()I

    move-result v10

    if-lt v10, v9, :cond_8

    sub-int/2addr v9, v3

    invoke-virtual {v4, v9}, Landroidx/recyclerview/widget/RecyclerView$y;->setTargetPosition(I)V

    :cond_8
    invoke-virtual {v4, v8, v7}, Landroidx/recyclerview/widget/RecyclerView$y;->onAnimation(II)V

    goto :goto_2

    :cond_9
    move v7, v2

    move v8, v7

    :cond_a
    :goto_2
    iget-object v4, v0, Landroidx/recyclerview/widget/x$a;->s:Landroidx/recyclerview/widget/x;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, v0, Landroidx/recyclerview/widget/x$a;->s:Landroidx/recyclerview/widget/x;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    :cond_b
    iget-object v14, v0, Landroidx/recyclerview/widget/x$a;->s:Landroidx/recyclerview/widget/x;

    iget-object v4, v14, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aput v2, v4, v2

    aput v2, v4, v3

    const/16 v19, 0x0

    const/16 v20, 0x1

    move v15, v8

    move/from16 v16, v7

    move/from16 v17, v6

    move/from16 v18, v13

    move-object/from16 v21, v4

    invoke-virtual/range {v14 .. v21}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedScroll(IIII[II[I)V

    iget-object v4, v0, Landroidx/recyclerview/widget/x$a;->s:Landroidx/recyclerview/widget/x;

    iget-object v9, v4, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aget v10, v9, v2

    sub-int/2addr v6, v10

    aget v9, v9, v3

    sub-int/2addr v13, v9

    if-nez v8, :cond_c

    if-eqz v7, :cond_d

    :cond_c
    invoke-virtual {v4, v8, v7}, Landroidx/recyclerview/widget/RecyclerView;->dispatchOnScrolled(II)V

    :cond_d
    iget-object v4, v0, Landroidx/recyclerview/widget/x$a;->s:Landroidx/recyclerview/widget/x;

    invoke-static {v4}, Landroidx/recyclerview/widget/x;->a(Landroidx/recyclerview/widget/x;)Z

    move-result v4

    if-nez v4, :cond_e

    iget-object v4, v0, Landroidx/recyclerview/widget/x$a;->s:Landroidx/recyclerview/widget/x;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    :cond_e
    invoke-virtual {v1}, Lul/d;->i()I

    move-result v4

    invoke-virtual {v1}, Lul/d;->k()I

    move-result v9

    if-ne v4, v9, :cond_f

    move v4, v3

    goto :goto_3

    :cond_f
    move v4, v2

    :goto_3
    invoke-virtual {v1}, Lul/d;->j()I

    move-result v9

    invoke-virtual {v1}, Lul/d;->l()I

    move-result v10

    if-ne v9, v10, :cond_10

    move v9, v3

    goto :goto_4

    :cond_10
    move v9, v2

    :goto_4
    invoke-virtual {v1}, Lul/d;->p()Z

    move-result v10

    if-nez v10, :cond_13

    if-nez v4, :cond_11

    if-eqz v6, :cond_12

    :cond_11
    if-nez v9, :cond_13

    if-eqz v13, :cond_12

    goto :goto_5

    :cond_12
    move v4, v2

    goto :goto_6

    :cond_13
    :goto_5
    move v4, v3

    :goto_6
    iget-object v9, v0, Landroidx/recyclerview/widget/x$a;->s:Landroidx/recyclerview/widget/x;

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$n;

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView$n;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$y;

    if-eqz v9, :cond_14

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$y;->isPendingInitialRun()Z

    move-result v9

    if-eqz v9, :cond_14

    move v9, v3

    goto :goto_7

    :cond_14
    move v9, v2

    :goto_7
    if-nez v9, :cond_20

    if-eqz v4, :cond_20

    iget-object v4, v0, Landroidx/recyclerview/widget/x$a;->s:Landroidx/recyclerview/widget/x;

    invoke-virtual {v4}, Landroid/view/View;->getOverScrollMode()I

    move-result v4

    if-eq v4, v5, :cond_19

    invoke-virtual {v1}, Lul/d;->f()F

    move-result v1

    float-to-int v1, v1

    if-gez v6, :cond_15

    neg-int v4, v1

    goto :goto_8

    :cond_15
    if-lez v6, :cond_16

    move v4, v1

    goto :goto_8

    :cond_16
    move v4, v2

    :goto_8
    if-gez v13, :cond_17

    neg-int v1, v1

    goto :goto_9

    :cond_17
    if-lez v13, :cond_18

    goto :goto_9

    :cond_18
    move v1, v2

    :goto_9
    iget-object v5, v0, Landroidx/recyclerview/widget/x$a;->s:Landroidx/recyclerview/widget/x;

    invoke-virtual {v5, v4, v1}, Landroidx/recyclerview/widget/RecyclerView;->absorbGlows(II)V

    :cond_19
    iget-object v1, v0, Landroidx/recyclerview/widget/x$a;->s:Landroidx/recyclerview/widget/x;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$n;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$n;->canScrollVertically()Z

    move-result v1

    const/4 v4, -0x1

    if-eqz v1, :cond_1b

    iget-object v1, v0, Landroidx/recyclerview/widget/x$a;->j:Lul/d;

    invoke-virtual {v1}, Lul/d;->l()I

    move-result v1

    iget-object v5, v0, Landroidx/recyclerview/widget/x$a;->j:Lul/d;

    invoke-virtual {v5}, Lul/d;->o()I

    move-result v5

    if-le v1, v5, :cond_1a

    move v4, v3

    :cond_1a
    iget-object v1, v0, Landroidx/recyclerview/widget/x$a;->s:Landroidx/recyclerview/widget/x;

    invoke-virtual {v1, v4}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    :goto_a
    xor-int/2addr v1, v3

    goto :goto_b

    :cond_1b
    iget-object v1, v0, Landroidx/recyclerview/widget/x$a;->s:Landroidx/recyclerview/widget/x;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$n;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$n;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, v0, Landroidx/recyclerview/widget/x$a;->j:Lul/d;

    invoke-virtual {v1}, Lul/d;->k()I

    move-result v1

    iget-object v5, v0, Landroidx/recyclerview/widget/x$a;->j:Lul/d;

    invoke-virtual {v5}, Lul/d;->n()I

    move-result v5

    if-le v1, v5, :cond_1c

    move v4, v3

    :cond_1c
    iget-object v1, v0, Landroidx/recyclerview/widget/x$a;->s:Landroidx/recyclerview/widget/x;

    invoke-virtual {v1, v4}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v1

    goto :goto_a

    :cond_1d
    move v1, v2

    :goto_b
    iget-object v4, v0, Landroidx/recyclerview/widget/x$a;->s:Landroidx/recyclerview/widget/x;

    invoke-static {v4}, Landroidx/recyclerview/widget/x;->b(Landroidx/recyclerview/widget/x;)Z

    move-result v4

    if-nez v4, :cond_1f

    iget-object v4, v0, Landroidx/recyclerview/widget/x$a;->j:Lul/d;

    invoke-virtual {v4}, Lul/d;->m()I

    move-result v4

    if-ne v4, v3, :cond_1f

    iget-boolean v4, v0, Landroidx/recyclerview/widget/x$a;->n:Z

    if-nez v4, :cond_1f

    if-eqz v1, :cond_1f

    const-string v1, "2.0"

    invoke-static {v1}, Lmiuix/view/HapticCompat;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, v0, Landroidx/recyclerview/widget/x$a;->s:Landroidx/recyclerview/widget/x;

    invoke-virtual {v1}, Landroid/view/View;->isHapticFeedbackEnabled()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/x$a;->i()Lum/b;

    move-result-object v1

    const/16 v4, 0xc9

    invoke-virtual {v1, v4}, Lum/b;->e(I)V

    goto :goto_c

    :cond_1e
    iget-object v1, v0, Landroidx/recyclerview/widget/x$a;->s:Landroidx/recyclerview/widget/x;

    sget v4, Lmiuix/view/i;->q:I

    invoke-static {v1, v4}, Lmiuix/view/HapticCompat;->performHapticFeedbackAsync(Landroid/view/View;I)V

    :cond_1f
    :goto_c
    sget-boolean v1, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v1, :cond_21

    iget-object v1, v0, Landroidx/recyclerview/widget/x$a;->s:Landroidx/recyclerview/widget/x;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/j$b;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/j$b;->b()V

    goto :goto_d

    :cond_20
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/x$a;->d()V

    iget-object v1, v0, Landroidx/recyclerview/widget/x$a;->s:Landroidx/recyclerview/widget/x;

    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/j;

    if-eqz v4, :cond_21

    invoke-virtual {v4, v1, v8, v7}, Landroidx/recyclerview/widget/j;->f(Landroidx/recyclerview/widget/RecyclerView;II)V

    :cond_21
    :goto_d
    iget-object v1, v0, Landroidx/recyclerview/widget/x$a;->s:Landroidx/recyclerview/widget/x;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$n;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$n;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$y;

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$y;->isPendingInitialRun()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-virtual {v1, v2, v2}, Landroidx/recyclerview/widget/RecyclerView$y;->onAnimation(II)V

    :cond_22
    iput-boolean v2, v0, Landroidx/recyclerview/widget/x$a;->l:Z

    iget-boolean v1, v0, Landroidx/recyclerview/widget/x$a;->m:Z

    if-eqz v1, :cond_23

    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/x$a;->c()V

    goto :goto_e

    :cond_23
    iget-object v1, v0, Landroidx/recyclerview/widget/x$a;->s:Landroidx/recyclerview/widget/x;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    iget-object v1, v0, Landroidx/recyclerview/widget/x$a;->s:Landroidx/recyclerview/widget/x;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->stopNestedScroll(I)V

    iput v2, v0, Landroidx/recyclerview/widget/x$a;->p:I

    iput v2, v0, Landroidx/recyclerview/widget/x$a;->o:I

    :goto_e
    return-void
.end method
