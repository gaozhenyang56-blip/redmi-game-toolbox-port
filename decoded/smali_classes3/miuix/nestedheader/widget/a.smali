.class public Lmiuix/nestedheader/widget/a;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/j0;
.implements Landroidx/core/view/f0;
.implements Lfl/b;
.implements Lfl/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/nestedheader/widget/a$b;
    }
.end annotation


# instance fields
.field private A:J

.field private B:J

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Z

.field protected G:Z

.field private H:I

.field private I:Lfl/f;

.field private J:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/nestedheader/widget/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private final a:[I

.field protected final b:[I

.field protected c:Z

.field protected d:Ljava/lang/Boolean;

.field protected e:Z

.field private f:I

.field protected g:Landroid/view/View;

.field protected h:I

.field protected i:I

.field private final j:[I

.field private k:I

.field private l:I

.field private m:I

.field protected n:Z

.field protected o:Z

.field protected p:F

.field private q:I

.field protected r:I

.field protected s:I

.field protected t:I

.field private final u:Landroidx/core/view/k0;

.field private final v:Landroidx/core/view/h0;

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiuix/nestedheader/widget/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x2

    new-array v0, p3, [I

    iput-object v0, p0, Lmiuix/nestedheader/widget/a;->a:[I

    new-array v0, p3, [I

    iput-object v0, p0, Lmiuix/nestedheader/widget/a;->b:[I

    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/nestedheader/widget/a;->d:Ljava/lang/Boolean;

    new-array p3, p3, [I

    iput-object p3, p0, Lmiuix/nestedheader/widget/a;->j:[I

    const/4 p3, 0x0

    iput p3, p0, Lmiuix/nestedheader/widget/a;->q:I

    iput p3, p0, Lmiuix/nestedheader/widget/a;->r:I

    iput p3, p0, Lmiuix/nestedheader/widget/a;->s:I

    iput p3, p0, Lmiuix/nestedheader/widget/a;->t:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lmiuix/nestedheader/widget/a;->z:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lmiuix/nestedheader/widget/a;->A:J

    iput-wide v2, p0, Lmiuix/nestedheader/widget/a;->B:J

    iput-boolean p3, p0, Lmiuix/nestedheader/widget/a;->C:Z

    iput-boolean p3, p0, Lmiuix/nestedheader/widget/a;->D:Z

    iput-boolean p3, p0, Lmiuix/nestedheader/widget/a;->E:Z

    iput-boolean p3, p0, Lmiuix/nestedheader/widget/a;->F:Z

    iput-object v0, p0, Lmiuix/nestedheader/widget/a;->I:Lfl/f;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/nestedheader/widget/a;->J:Ljava/util/List;

    new-instance v0, Landroidx/core/view/k0;

    invoke-direct {v0, p0}, Landroidx/core/view/k0;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lmiuix/nestedheader/widget/a;->u:Landroidx/core/view/k0;

    invoke-static {p0}, Lfl/d;->t(Landroid/view/View;)Landroidx/core/view/h0;

    move-result-object v0

    iput-object v0, p0, Lmiuix/nestedheader/widget/a;->v:Landroidx/core/view/h0;

    sget-object v0, Lrl/c;->y:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lrl/c;->D:I

    const v0, 0x102000a

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lmiuix/nestedheader/widget/a;->f:I

    sget p2, Lrl/c;->E:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lmiuix/nestedheader/widget/a;->G:Z

    sget p2, Lrl/c;->z:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lmiuix/nestedheader/widget/a;->n:Z

    sget p2, Lrl/c;->A:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lmiuix/nestedheader/widget/a;->o:Z

    sget p2, Lrl/c;->B:I

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lmiuix/nestedheader/widget/a;->p:F

    sget p2, Lrl/c;->C:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lmiuix/nestedheader/widget/a;->H:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v1}, Lmiuix/nestedheader/widget/a;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method static synthetic b(Lmiuix/nestedheader/widget/a;)I
    .locals 0

    iget p0, p0, Lmiuix/nestedheader/widget/a;->q:I

    return p0
.end method

.method static synthetic c(Lmiuix/nestedheader/widget/a;I)I
    .locals 1

    iget v0, p0, Lmiuix/nestedheader/widget/a;->q:I

    sub-int/2addr v0, p1

    iput v0, p0, Lmiuix/nestedheader/widget/a;->q:I

    return v0
.end method

.method static synthetic d(Lmiuix/nestedheader/widget/a;)I
    .locals 0

    iget p0, p0, Lmiuix/nestedheader/widget/a;->k:I

    return p0
.end method

.method static synthetic e(Lmiuix/nestedheader/widget/a;)I
    .locals 0

    iget p0, p0, Lmiuix/nestedheader/widget/a;->m:I

    return p0
.end method

.method static synthetic f(Lmiuix/nestedheader/widget/a;I)I
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/a;->v(I)I

    move-result p0

    return p0
.end method

.method static synthetic g(Lmiuix/nestedheader/widget/a;)V
    .locals 0

    invoke-direct {p0}, Lmiuix/nestedheader/widget/a;->l()V

    return-void
.end method

.method private l()V
    .locals 1

    iget v0, p0, Lmiuix/nestedheader/widget/a;->k:I

    invoke-virtual {p0, v0}, Lmiuix/nestedheader/widget/a;->w(I)V

    return-void
.end method

.method private m(II[I)V
    .locals 2
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget p1, p0, Lmiuix/nestedheader/widget/a;->k:I

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/a;->getHeaderCloseProgress()I

    move-result v0

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    aget v0, p3, p1

    if-le p2, v0, :cond_1

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/a;->getHeaderCloseProgress()I

    move-result v0

    iget v1, p0, Lmiuix/nestedheader/widget/a;->k:I

    sub-int/2addr v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget v0, p0, Lmiuix/nestedheader/widget/a;->k:I

    sub-int/2addr v0, p2

    iput p2, p0, Lmiuix/nestedheader/widget/a;->k:I

    invoke-direct {p0}, Lmiuix/nestedheader/widget/a;->l()V

    aget p2, p3, p1

    add-int/2addr p2, v0

    aput p2, p3, p1

    :cond_1
    return-void
.end method

.method private n(II[I[II)V
    .locals 8
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    aget v1, p3, v0

    sub-int v3, p1, v1

    const/4 p1, 0x1

    aget v1, p3, p1

    sub-int v4, p2, v1

    const/4 v6, 0x0

    move-object v2, p0

    move-object v5, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lmiuix/nestedheader/widget/a;->i(II[I[II)Z

    move-result p2

    if-eqz p2, :cond_0

    aget p2, p3, v0

    aget p5, p4, v0

    add-int/2addr p2, p5

    aput p2, p3, v0

    aget p2, p3, p1

    aget p4, p4, p1

    add-int/2addr p2, p4

    aput p2, p3, p1

    :cond_0
    return-void
.end method

.method private o(II[I)V
    .locals 3
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x1

    aget v0, p3, p1

    if-le p2, v0, :cond_0

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/a;->getScrollingFrom()I

    move-result v0

    iget v1, p0, Lmiuix/nestedheader/widget/a;->m:I

    iget v2, p0, Lmiuix/nestedheader/widget/a;->k:I

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget v0, p0, Lmiuix/nestedheader/widget/a;->k:I

    sub-int/2addr v0, p2

    iput p2, p0, Lmiuix/nestedheader/widget/a;->k:I

    invoke-direct {p0}, Lmiuix/nestedheader/widget/a;->l()V

    aget p2, p3, p1

    add-int/2addr p2, v0

    aput p2, p3, p1

    :cond_0
    return-void
.end method

.method private p(II[I)V
    .locals 3
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x1

    aget v0, p3, p1

    if-le p2, v0, :cond_0

    const/4 v0, 0x0

    iget v1, p0, Lmiuix/nestedheader/widget/a;->m:I

    iget v2, p0, Lmiuix/nestedheader/widget/a;->k:I

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget v0, p0, Lmiuix/nestedheader/widget/a;->k:I

    sub-int v1, v0, p2

    if-eq v0, p2, :cond_0

    if-ltz v0, :cond_0

    iput p2, p0, Lmiuix/nestedheader/widget/a;->k:I

    invoke-direct {p0}, Lmiuix/nestedheader/widget/a;->l()V

    aget p2, p3, p1

    add-int/2addr p2, v1

    aput p2, p3, p1

    :cond_0
    return-void
.end method

.method private q(IIII[II)V
    .locals 7
    .param p5    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-gez p2, :cond_c

    if-eqz p4, :cond_c

    iget p1, p0, Lmiuix/nestedheader/widget/a;->k:I

    sub-int p2, p1, p4

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-nez p6, :cond_0

    move p6, p3

    goto :goto_0

    :cond_0
    move p6, p4

    :goto_0
    iget v0, p0, Lmiuix/nestedheader/widget/a;->l:I

    if-le p2, v0, :cond_1

    move v1, p3

    goto :goto_1

    :cond_1
    move v1, p4

    :goto_1
    iget-boolean v2, p0, Lmiuix/nestedheader/widget/a;->F:Z

    if-eqz v2, :cond_2

    iget-boolean v3, p0, Lmiuix/nestedheader/widget/a;->D:Z

    if-nez v3, :cond_2

    if-nez p6, :cond_2

    if-eqz v1, :cond_2

    if-ne p1, v0, :cond_2

    move v1, p3

    goto :goto_2

    :cond_2
    move v1, p4

    :goto_2
    if-eqz v2, :cond_3

    iget-boolean v3, p0, Lmiuix/nestedheader/widget/a;->D:Z

    if-nez v3, :cond_3

    if-nez p6, :cond_3

    iget v3, p0, Lmiuix/nestedheader/widget/a;->m:I

    if-lt p1, v3, :cond_3

    if-lt p2, v3, :cond_3

    move p1, p3

    goto :goto_3

    :cond_3
    move p1, p4

    :goto_3
    if-eqz v2, :cond_6

    if-nez p6, :cond_6

    iget-boolean v3, p0, Lmiuix/nestedheader/widget/a;->D:Z

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lmiuix/nestedheader/widget/a;->C:Z

    if-nez v3, :cond_4

    if-ltz p2, :cond_5

    :cond_4
    if-eqz v3, :cond_6

    iget-wide v3, p0, Lmiuix/nestedheader/widget/a;->A:J

    iget-wide v5, p0, Lmiuix/nestedheader/widget/a;->B:J

    cmp-long v3, v3, v5

    if-gtz v3, :cond_6

    :cond_5
    move v3, p3

    goto :goto_4

    :cond_6
    move v3, p4

    :goto_4
    if-nez p6, :cond_8

    if-eqz v2, :cond_8

    if-nez p1, :cond_8

    if-eqz v3, :cond_7

    goto :goto_5

    :cond_7
    move p1, p4

    goto :goto_6

    :cond_8
    :goto_5
    move p1, p3

    :goto_6
    if-eqz p1, :cond_9

    iget p1, p0, Lmiuix/nestedheader/widget/a;->m:I

    goto :goto_7

    :cond_9
    if-eqz v1, :cond_a

    move p1, v0

    goto :goto_7

    :cond_a
    move p1, p4

    :goto_7
    iget-boolean p6, p0, Lmiuix/nestedheader/widget/a;->e:Z

    if-eqz p6, :cond_b

    iget p1, p0, Lmiuix/nestedheader/widget/a;->m:I

    :cond_b
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget p2, p0, Lmiuix/nestedheader/widget/a;->k:I

    sub-int/2addr p2, p1

    iput p1, p0, Lmiuix/nestedheader/widget/a;->k:I

    invoke-direct {p0}, Lmiuix/nestedheader/widget/a;->l()V

    aget p1, p5, p4

    add-int/2addr p1, p4

    aput p1, p5, p4

    aget p1, p5, p3

    add-int/2addr p1, p2

    aput p1, p5, p3

    :cond_c
    return-void
.end method

.method private r(II[II)V
    .locals 0
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-gez p2, :cond_0

    iget p1, p0, Lmiuix/nestedheader/widget/a;->k:I

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/a;->getHeaderProgressTo()I

    move-result p4

    if-ge p1, p4, :cond_0

    iget p1, p0, Lmiuix/nestedheader/widget/a;->k:I

    sub-int/2addr p1, p2

    iget p2, p0, Lmiuix/nestedheader/widget/a;->l:I

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/a;->getHeaderProgressTo()I

    move-result p4

    invoke-static {p4, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget p2, p0, Lmiuix/nestedheader/widget/a;->k:I

    sub-int/2addr p2, p1

    iput p1, p0, Lmiuix/nestedheader/widget/a;->k:I

    invoke-direct {p0}, Lmiuix/nestedheader/widget/a;->l()V

    const/4 p1, 0x1

    aget p4, p3, p1

    add-int/2addr p4, p2

    aput p4, p3, p1

    :cond_0
    return-void
.end method

.method private s(II[II)V
    .locals 0
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-gez p2, :cond_0

    iget p1, p0, Lmiuix/nestedheader/widget/a;->k:I

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/a;->getStickyScrollToOnNested()I

    move-result p4

    if-ge p1, p4, :cond_0

    iget-boolean p1, p0, Lmiuix/nestedheader/widget/a;->c:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lmiuix/nestedheader/widget/a;->k:I

    sub-int/2addr p1, p2

    iget p2, p0, Lmiuix/nestedheader/widget/a;->l:I

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/a;->getStickyScrollToOnNested()I

    move-result p4

    invoke-static {p4, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget p2, p0, Lmiuix/nestedheader/widget/a;->k:I

    sub-int/2addr p2, p1

    iput p1, p0, Lmiuix/nestedheader/widget/a;->k:I

    invoke-direct {p0}, Lmiuix/nestedheader/widget/a;->l()V

    const/4 p1, 0x1

    aget p4, p3, p1

    add-int/2addr p4, p2

    aput p4, p3, p1

    :cond_0
    return-void
.end method

.method private t(I)V
    .locals 2

    iget-object v0, p0, Lmiuix/nestedheader/widget/a;->J:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/nestedheader/widget/a$b;

    invoke-interface {v1, p1}, Lmiuix/nestedheader/widget/a$b;->b(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private u(FI)F
    .locals 6

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-double v0, p1

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    div-double/2addr v4, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-double/2addr v4, v2

    add-double/2addr v4, v0

    double-to-float p1, v4

    int-to-float p2, p2

    mul-float/2addr p1, p2

    return p1
.end method

.method private v(I)I
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr p1, v1

    int-to-float v2, v0

    div-float/2addr p1, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-direct {p0, p1, v0}, Lmiuix/nestedheader/widget/a;->u(FI)F

    move-result p1

    iget v0, p0, Lmiuix/nestedheader/widget/a;->p:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private y(I)V
    .locals 2

    iget-object v0, p0, Lmiuix/nestedheader/widget/a;->J:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/nestedheader/widget/a$b;

    invoke-interface {v1, p1}, Lmiuix/nestedheader/widget/a$b;->c(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private z(I)V
    .locals 2

    iget-object v0, p0, Lmiuix/nestedheader/widget/a;->J:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/nestedheader/widget/a$b;

    invoke-interface {v1, p1}, Lmiuix/nestedheader/widget/a$b;->a(I)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public A(IIZZZZZZZ)V
    .locals 0

    if-le p1, p2, :cond_0

    const-string p1, "NestedScrollingLayout"

    const-string p8, "wrong scrolling range: [%d, %d], making from=to"

    invoke-static {p1, p8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p1, p2

    :cond_0
    iput p1, p0, Lmiuix/nestedheader/widget/a;->l:I

    iput p2, p0, Lmiuix/nestedheader/widget/a;->m:I

    iput-boolean p3, p0, Lmiuix/nestedheader/widget/a;->D:Z

    iput-boolean p4, p0, Lmiuix/nestedheader/widget/a;->F:Z

    iput-boolean p5, p0, Lmiuix/nestedheader/widget/a;->E:Z

    iget p4, p0, Lmiuix/nestedheader/widget/a;->k:I

    if-ge p4, p1, :cond_1

    iput p1, p0, Lmiuix/nestedheader/widget/a;->k:I

    :cond_1
    iget p1, p0, Lmiuix/nestedheader/widget/a;->k:I

    if-le p1, p2, :cond_2

    if-ltz p2, :cond_2

    iput p2, p0, Lmiuix/nestedheader/widget/a;->k:I

    :cond_2
    const/4 p1, 0x0

    if-eqz p6, :cond_3

    iget-boolean p2, p0, Lmiuix/nestedheader/widget/a;->z:Z

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    goto :goto_0

    :cond_3
    move p2, p1

    :goto_0
    if-nez p2, :cond_4

    if-nez p7, :cond_4

    if-eqz p9, :cond_5

    :cond_4
    if-eqz p3, :cond_5

    iget-boolean p2, p0, Lmiuix/nestedheader/widget/a;->z:Z

    if-eqz p2, :cond_6

    iget-boolean p2, p0, Lmiuix/nestedheader/widget/a;->n:Z

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/a;->getHeaderCloseProgress()I

    move-result p2

    iput p2, p0, Lmiuix/nestedheader/widget/a;->k:I

    goto :goto_1

    :cond_5
    if-nez p2, :cond_6

    if-eqz p7, :cond_7

    :cond_6
    iput p1, p0, Lmiuix/nestedheader/widget/a;->k:I

    :goto_1
    iput-boolean p1, p0, Lmiuix/nestedheader/widget/a;->z:Z

    :cond_7
    invoke-direct {p0}, Lmiuix/nestedheader/widget/a;->l()V

    return-void
.end method

.method public B(II)Z
    .locals 1

    iget-object v0, p0, Lmiuix/nestedheader/widget/a;->v:Landroidx/core/view/h0;

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/h0;->q(II)Z

    move-result p1

    return p1
.end method

.method public C(I)V
    .locals 1

    iget-object v0, p0, Lmiuix/nestedheader/widget/a;->v:Landroidx/core/view/h0;

    invoke-virtual {v0, p1}, Landroidx/core/view/h0;->s(I)V

    return-void
.end method

.method public D(Z)V
    .locals 2

    iget-boolean v0, p0, Lmiuix/nestedheader/widget/a;->C:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lmiuix/nestedheader/widget/a;->A:J

    :cond_0
    iput-boolean p1, p0, Lmiuix/nestedheader/widget/a;->C:Z

    return-void
.end method

.method public E(I)V
    .locals 0

    iput p1, p0, Lmiuix/nestedheader/widget/a;->k:I

    return-void
.end method

.method public a(II)V
    .locals 0

    iput p1, p0, Lmiuix/nestedheader/widget/a;->s:I

    iput p2, p0, Lmiuix/nestedheader/widget/a;->t:I

    return-void
.end method

.method public getAcceptedNestedFlingInConsumedProgress()Z
    .locals 1

    iget-boolean v0, p0, Lmiuix/nestedheader/widget/a;->w:Z

    return v0
.end method

.method protected getHeaderCloseProgress()I
    .locals 2

    iget-boolean v0, p0, Lmiuix/nestedheader/widget/a;->c:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lmiuix/nestedheader/widget/a;->l:I

    iget v1, p0, Lmiuix/nestedheader/widget/a;->h:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget v0, p0, Lmiuix/nestedheader/widget/a;->l:I

    return v0
.end method

.method protected getHeaderProgressFrom()I
    .locals 2

    iget-boolean v0, p0, Lmiuix/nestedheader/widget/a;->c:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lmiuix/nestedheader/widget/a;->l:I

    iget v1, p0, Lmiuix/nestedheader/widget/a;->h:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget v0, p0, Lmiuix/nestedheader/widget/a;->l:I

    return v0
.end method

.method protected getHeaderProgressTo()I
    .locals 2

    iget-boolean v0, p0, Lmiuix/nestedheader/widget/a;->c:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lmiuix/nestedheader/widget/a;->l:I

    iget v1, p0, Lmiuix/nestedheader/widget/a;->h:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget v0, p0, Lmiuix/nestedheader/widget/a;->l:I

    return v0
.end method

.method public getNestedScrollableValue()I
    .locals 1

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/a;->getScrollingFrom()I

    move-result v0

    return v0
.end method

.method public getScrollType()I
    .locals 1

    iget v0, p0, Lmiuix/nestedheader/widget/a;->H:I

    return v0
.end method

.method protected getScrollableViewMaxHeightWithoutOverlay()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lmiuix/nestedheader/widget/a;->h:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getScrollingFrom()I
    .locals 1

    iget v0, p0, Lmiuix/nestedheader/widget/a;->l:I

    return v0
.end method

.method public getScrollingProgress()I
    .locals 1

    iget v0, p0, Lmiuix/nestedheader/widget/a;->k:I

    return v0
.end method

.method public getScrollingTo()I
    .locals 1

    iget v0, p0, Lmiuix/nestedheader/widget/a;->m:I

    return v0
.end method

.method protected getStickyScrollToOnNested()I
    .locals 2

    iget v0, p0, Lmiuix/nestedheader/widget/a;->l:I

    iget v1, p0, Lmiuix/nestedheader/widget/a;->h:I

    add-int/2addr v0, v1

    return v0
.end method

.method public h(Lmiuix/nestedheader/widget/a$b;)V
    .locals 1

    iget-object v0, p0, Lmiuix/nestedheader/widget/a;->J:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public i(II[I[II)Z
    .locals 6
    .param p3    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lmiuix/nestedheader/widget/a;->v:Landroidx/core/view/h0;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/h0;->d(II[I[II)Z

    move-result p1

    return p1
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    iget-object v0, p0, Lmiuix/nestedheader/widget/a;->v:Landroidx/core/view/h0;

    invoke-virtual {v0}, Landroidx/core/view/h0;->m()Z

    move-result v0

    return v0
.end method

.method public j(IIII[II[I)V
    .locals 8
    .param p5    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lmiuix/nestedheader/widget/a;->v:Landroidx/core/view/h0;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroidx/core/view/h0;->e(IIII[II[I)V

    return-void
.end method

.method public k(IIII[II)Z
    .locals 7
    .param p5    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lmiuix/nestedheader/widget/a;->v:Landroidx/core/view/h0;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroidx/core/view/h0;->g(IIII[II)Z

    move-result p1

    return p1
.end method

.method public onContentInsetChanged(Landroid/graphics/Rect;)V
    .locals 3

    iget v0, p0, Lmiuix/nestedheader/widget/a;->h:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lmiuix/nestedheader/widget/a;->i:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    if-eq v0, v2, :cond_1

    :cond_0
    iput v1, p0, Lmiuix/nestedheader/widget/a;->h:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iput p1, p0, Lmiuix/nestedheader/widget/a;->i:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    iget v0, p0, Lmiuix/nestedheader/widget/a;->f:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/nestedheader/widget/a;->g:Landroid/view/View;

    if-eqz v0, :cond_1

    instance-of v0, v0, Lfl/e;

    if-eqz v0, :cond_0

    new-instance v0, Lmiuix/nestedheader/widget/a$a;

    invoke-direct {v0, p0}, Lmiuix/nestedheader/widget/a$a;-><init>(Lmiuix/nestedheader/widget/a;)V

    iput-object v0, p0, Lmiuix/nestedheader/widget/a;->I:Lfl/f;

    iget-object v1, p0, Lmiuix/nestedheader/widget/a;->g:Landroid/view/View;

    check-cast v1, Lfl/e;

    invoke-interface {v1, v0}, Lfl/e;->a(Lfl/f;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiuix/nestedheader/widget/a;->o:Z

    :goto_0
    iget-object v0, p0, Lmiuix/nestedheader/widget/a;->g:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The scrollableView attribute is required and must refer to a valid child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-virtual/range {p0 .. p5}, Lmiuix/nestedheader/widget/a;->x(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget-object p1, p0, Lmiuix/nestedheader/widget/a;->g:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    iget-boolean p1, p0, Lmiuix/nestedheader/widget/a;->c:Z

    const/high16 p2, 0x40000000    # 2.0f

    if-nez p1, :cond_0

    iget-object p1, p0, Lmiuix/nestedheader/widget/a;->g:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/a;->getScrollableViewMaxHeightWithoutOverlay()I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget-object v0, p0, Lmiuix/nestedheader/widget/a;->g:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onMeasure in NoOverlayMode mScrollableView "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lmiuix/nestedheader/widget/a;->g:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " viewHeight "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NestedScrollingLayout"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lmiuix/nestedheader/widget/a;->g:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget-object v0, p0, Lmiuix/nestedheader/widget/a;->g:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lmiuix/nestedheader/widget/a;->onNestedPreScroll(Landroid/view/View;II[II)V

    return-void
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x1

    if-eqz p5, :cond_1

    iget-boolean v0, p0, Lmiuix/nestedheader/widget/a;->w:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lmiuix/nestedheader/widget/a;->B:J

    :cond_0
    iput-boolean p1, p0, Lmiuix/nestedheader/widget/a;->w:Z

    goto :goto_0

    :cond_1
    iput-boolean p1, p0, Lmiuix/nestedheader/widget/a;->x:Z

    :goto_0
    invoke-direct {p0, p2, p3, p4}, Lmiuix/nestedheader/widget/a;->p(II[I)V

    iget-boolean p1, p0, Lmiuix/nestedheader/widget/a;->G:Z

    if-eqz p1, :cond_2

    invoke-direct {p0, p2, p3, p4}, Lmiuix/nestedheader/widget/a;->m(II[I)V

    :cond_2
    iget-object v4, p0, Lmiuix/nestedheader/widget/a;->j:[I

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v3, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lmiuix/nestedheader/widget/a;->n(II[I[II)V

    invoke-direct {p0, p2, p3, p4}, Lmiuix/nestedheader/widget/a;->o(II[I)V

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lmiuix/nestedheader/widget/a;->onNestedScroll(Landroid/view/View;IIIII)V

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII)V
    .locals 8
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v7, p0, Lmiuix/nestedheader/widget/a;->a:[I

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v7}, Lmiuix/nestedheader/widget/a;->onNestedScroll(Landroid/view/View;IIIII[I)V

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII[I)V
    .locals 8
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-boolean p1, p0, Lmiuix/nestedheader/widget/a;->G:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lmiuix/nestedheader/widget/a;->e:Z

    if-nez p1, :cond_0

    invoke-direct {p0, p4, p5, p7, p6}, Lmiuix/nestedheader/widget/a;->r(II[II)V

    :cond_0
    iget-boolean p1, p0, Lmiuix/nestedheader/widget/a;->E:Z

    if-eqz p1, :cond_1

    invoke-direct {p0, p4, p5, p7, p6}, Lmiuix/nestedheader/widget/a;->s(II[II)V

    :cond_1
    const/4 p1, 0x0

    aget v1, p7, p1

    const/4 p1, 0x1

    aget v2, p7, p1

    sub-int v3, p4, v1

    sub-int v4, p5, v2

    iget-object v5, p0, Lmiuix/nestedheader/widget/a;->b:[I

    move-object v0, p0

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lmiuix/nestedheader/widget/a;->j(IIII[II[I)V

    aget p1, p7, p1

    sub-int v4, p5, p1

    move v1, p4

    move v2, p5

    move v3, p4

    move-object v5, p7

    invoke-direct/range {v0 .. v6}, Lmiuix/nestedheader/widget/a;->q(IIII[II)V

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lmiuix/nestedheader/widget/a;->u:Landroidx/core/view/k0;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/k0;->b(Landroid/view/View;Landroid/view/View;I)V

    and-int/lit8 p1, p3, 0x2

    invoke-virtual {p0, p1}, Lmiuix/nestedheader/widget/a;->startNestedScroll(I)Z

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1, p2, p3}, Lmiuix/nestedheader/widget/a;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    if-eqz p4, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lmiuix/nestedheader/widget/a;->y:Z

    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 2

    and-int/lit8 p1, p3, 0x2

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iget-object v1, p0, Lmiuix/nestedheader/widget/a;->v:Landroidx/core/view/h0;

    invoke-virtual {v1, p3}, Landroidx/core/view/h0;->p(I)Z

    move-result p3

    if-nez p3, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p3

    if-eqz p3, :cond_1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move p2, v0

    :cond_2
    :goto_1
    return p2
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p4}, Lmiuix/nestedheader/widget/a;->y(I)V

    iget-object p2, p0, Lmiuix/nestedheader/widget/a;->v:Landroidx/core/view/h0;

    invoke-virtual {p2, p3, p4}, Landroidx/core/view/h0;->q(II)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p0, p1, p1, p3}, Lmiuix/nestedheader/widget/a;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z

    move-result p1

    if-eqz p1, :cond_0

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

.method public onStopNestedScroll(Landroid/view/View;I)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lmiuix/nestedheader/widget/a;->u:Landroidx/core/view/k0;

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/k0;->d(Landroid/view/View;I)V

    invoke-direct {p0, p2}, Lmiuix/nestedheader/widget/a;->z(I)V

    invoke-virtual {p0, p2}, Lmiuix/nestedheader/widget/a;->C(I)V

    iget-boolean p1, p0, Lmiuix/nestedheader/widget/a;->x:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iput-boolean v1, p0, Lmiuix/nestedheader/widget/a;->x:Z

    iget-boolean p1, p0, Lmiuix/nestedheader/widget/a;->w:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lmiuix/nestedheader/widget/a;->y:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lmiuix/nestedheader/widget/a;->w:Z

    if-eqz p1, :cond_2

    iput-boolean v1, p0, Lmiuix/nestedheader/widget/a;->w:Z

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    invoke-direct {p0, p2}, Lmiuix/nestedheader/widget/a;->t(I)V

    :cond_3
    return-void
.end method

.method public setEnableOverScrollTo(Z)V
    .locals 1

    iget-object v0, p0, Lmiuix/nestedheader/widget/a;->g:Landroid/view/View;

    instance-of v0, v0, Lfl/e;

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lmiuix/nestedheader/widget/a;->o:Z

    :cond_0
    return-void
.end method

.method public setHeaderCloseOnInit(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiuix/nestedheader/widget/a;->n:Z

    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lmiuix/nestedheader/widget/a;->v:Landroidx/core/view/h0;

    invoke-virtual {v0, p1}, Landroidx/core/view/h0;->n(Z)V

    return-void
.end method

.method public setOverScrollToRatio(F)V
    .locals 0

    iput p1, p0, Lmiuix/nestedheader/widget/a;->p:F

    return-void
.end method

.method public setScrollType(I)V
    .locals 0
    .param p1    # I
        .annotation build Lmiuix/nestedheader/widget/ScrollType;
        .end annotation
    .end param

    iput p1, p0, Lmiuix/nestedheader/widget/a;->H:I

    return-void
.end method

.method public setSelfScrollFirst(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiuix/nestedheader/widget/a;->G:Z

    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1

    iget-object v0, p0, Lmiuix/nestedheader/widget/a;->v:Landroidx/core/view/h0;

    invoke-virtual {v0, p1}, Landroidx/core/view/h0;->p(I)Z

    move-result p1

    return p1
.end method

.method public stopNestedScroll()V
    .locals 1

    iget-object v0, p0, Lmiuix/nestedheader/widget/a;->v:Landroidx/core/view/h0;

    invoke-virtual {v0}, Landroidx/core/view/h0;->r()V

    return-void
.end method

.method protected w(I)V
    .locals 0

    return-void
.end method

.method public x(ZIIII)V
    .locals 0

    invoke-direct {p0}, Lmiuix/nestedheader/widget/a;->l()V

    return-void
.end method
