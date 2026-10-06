.class public Lmiuix/nestedheader/widget/NestedHeaderLayout;
.super Lmiuix/nestedheader/widget/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/nestedheader/widget/NestedHeaderLayout$e;
    }
.end annotation


# instance fields
.field private A0:Z

.field private B0:Z

.field private C0:Z

.field private D0:Z

.field private E0:Landroid/graphics/Rect;

.field private F0:Z

.field private G0:I

.field private H0:Lmiuix/nestedheader/widget/NestedHeaderLayout$e;

.field private I0:Ljava/lang/String;

.field private J0:Lmiuix/nestedheader/widget/a$b;

.field private K:Lmiuix/view/k;

.field private L:Z

.field private M:I

.field private N:I

.field private O:I

.field private P:I

.field private Q:I

.field private R:F

.field private S:Z

.field private T:Z

.field private U:Landroid/graphics/drawable/Drawable;

.field private V:Landroid/graphics/drawable/Drawable;

.field private W:Z

.field private f0:F

.field private g0:F

.field private h0:Landroid/view/View;

.field private i0:Landroid/view/View;

.field private j0:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private k0:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private l0:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private m0:Landroid/view/View;

.field private n0:Landroid/view/View;

.field private o0:I

.field private p0:I

.field private q0:I

.field private r0:I

.field private s0:I

.field private t0:I

.field private u0:I

.field private v0:I

.field private w0:I

.field private x0:I

.field private y0:I

.field private z0:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Lmiuix/nestedheader/widget/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    iput p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->o0:I

    iput p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->p0:I

    iput p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->q0:I

    iput p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->r0:I

    iput p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->s0:I

    iput p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->t0:I

    iput p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->u0:I

    iput p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->v0:I

    iput p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->w0:I

    iput p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->x0:I

    iput p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->y0:I

    iput p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->z0:I

    iput-boolean p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->A0:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->B0:Z

    iput-boolean p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->C0:Z

    iput-boolean p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->D0:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->E0:Landroid/graphics/Rect;

    iput-boolean p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->F0:Z

    iput p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->G0:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->I0:Ljava/lang/String;

    new-instance v1, Lmiuix/nestedheader/widget/NestedHeaderLayout$c;

    invoke-direct {v1, p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout$c;-><init>(Lmiuix/nestedheader/widget/NestedHeaderLayout;)V

    iput-object v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->J0:Lmiuix/nestedheader/widget/a$b;

    sget-object v1, Lrl/c;->m:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    sget v1, Lrl/c;->q:I

    sget v2, Lrl/b;->b:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->M:I

    sget v1, Lrl/c;->u:I

    sget v2, Lrl/b;->c:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->N:I

    sget v1, Lrl/c;->x:I

    sget v2, Lrl/b;->e:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->O:I

    sget v1, Lrl/c;->o:I

    sget v2, Lrl/b;->a:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->P:I

    sget v1, Lrl/c;->v:I

    sget v2, Lrl/b;->d:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->Q:I

    sget v1, Lrl/c;->p:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lrl/a;->a:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->f0:F

    sget v1, Lrl/c;->w:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p2, v1, p1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->g0:F

    sget p1, Lrl/c;->s:I

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->R:F

    sget p1, Lrl/c;->n:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->S:Z

    sget p1, Lrl/c;->t:I

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->T:Z

    :try_start_0
    sget p1, Lrl/c;->r:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->U:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p3, 0x1010054

    invoke-static {p1, p3}, Lpl/d;->h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->U:Landroid/graphics/drawable/Drawable;

    instance-of p3, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-nez p3, :cond_0

    instance-of p1, p1, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz p1, :cond_1

    :cond_0
    iput-boolean v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->W:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "maskBackground error "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "NestedHeaderLayout"

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->J0:Lmiuix/nestedheader/widget/a$b;

    invoke-virtual {p0, p1}, Lmiuix/nestedheader/widget/a;->h(Lmiuix/nestedheader/widget/a$b;)V

    return-void
.end method

.method static synthetic F(Lmiuix/nestedheader/widget/NestedHeaderLayout;ZZZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->l0(ZZZZ)V

    return-void
.end method

.method static synthetic G(Lmiuix/nestedheader/widget/NestedHeaderLayout;)I
    .locals 0

    iget p0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->u0:I

    return p0
.end method

.method static synthetic H(Lmiuix/nestedheader/widget/NestedHeaderLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->A0:Z

    return p0
.end method

.method static synthetic I(Lmiuix/nestedheader/widget/NestedHeaderLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->A0:Z

    return p1
.end method

.method static synthetic J(Lmiuix/nestedheader/widget/NestedHeaderLayout;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->I0:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic K(Lmiuix/nestedheader/widget/NestedHeaderLayout;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->c0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic L(Lmiuix/nestedheader/widget/NestedHeaderLayout;I)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->h0(I)V

    return-void
.end method

.method static synthetic M(Lmiuix/nestedheader/widget/NestedHeaderLayout;I)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->i0(I)V

    return-void
.end method

.method static synthetic N(Lmiuix/nestedheader/widget/NestedHeaderLayout;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->U:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic O(Lmiuix/nestedheader/widget/NestedHeaderLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->W:Z

    return p0
.end method

.method static synthetic P(Lmiuix/nestedheader/widget/NestedHeaderLayout;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->V:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic Q(Lmiuix/nestedheader/widget/NestedHeaderLayout;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->V:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic R(Lmiuix/nestedheader/widget/NestedHeaderLayout;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->i0:Landroid/view/View;

    return-object p0
.end method

.method static synthetic S(Lmiuix/nestedheader/widget/NestedHeaderLayout;)Lmiuix/nestedheader/widget/NestedHeaderLayout$e;
    .locals 0

    iget-object p0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->H0:Lmiuix/nestedheader/widget/NestedHeaderLayout$e;

    return-object p0
.end method

.method static synthetic T(Lmiuix/nestedheader/widget/NestedHeaderLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->B0:Z

    return p0
.end method

.method static synthetic U(Lmiuix/nestedheader/widget/NestedHeaderLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->S:Z

    return p0
.end method

.method static synthetic V(Lmiuix/nestedheader/widget/NestedHeaderLayout;I)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->Y(I)V

    return-void
.end method

.method private X(Ljava/util/List;F)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;F)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private Y(I)V
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->I0:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v0, v4, v1

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/a;->getScrollingProgress()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-interface {v2, v4}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v2

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v6

    new-instance p1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v5, v3, [F

    fill-array-data v5, :array_0

    const/4 v7, -0x2

    invoke-virtual {p1, v7, v5}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    new-array v5, v6, [Lmiuix/animation/listener/TransitionListener;

    new-instance v6, Lmiuix/nestedheader/widget/NestedHeaderLayout$d;

    invoke-direct {v6, p0, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout$d;-><init>(Lmiuix/nestedheader/widget/NestedHeaderLayout;Ljava/lang/String;)V

    aput-object v6, v5, v1

    invoke-virtual {p1, v5}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    aput-object p1, v4, v3

    invoke-interface {v2, v4}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3eb33333    # 0.35f
    .end array-data
.end method

.method private Z(IIZ)V
    .locals 4

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->H0:Lmiuix/nestedheader/widget/NestedHeaderLayout$e;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p3, :cond_3

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/a;->getScrollingTo()I

    move-result p3

    if-ne p2, p3, :cond_1

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getTriggerViewVisible()Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->H0:Lmiuix/nestedheader/widget/NestedHeaderLayout$e;

    iget-object v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->l0:Landroid/view/View;

    invoke-interface {p3, v1}, Lmiuix/nestedheader/widget/NestedHeaderLayout$e;->b(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderProgressTo()I

    move-result p3

    if-ge p1, p3, :cond_2

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderProgressTo()I

    move-result p1

    if-lt p2, p1, :cond_2

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderViewVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderProgressTo()I

    move-result p1

    if-ne p2, p1, :cond_8

    :goto_0
    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->H0:Lmiuix/nestedheader/widget/NestedHeaderLayout$e;

    iget-object p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->j0:Landroid/view/View;

    invoke-interface {p1, p3}, Lmiuix/nestedheader/widget/NestedHeaderLayout$e;->f(Landroid/view/View;)V

    goto :goto_4

    :cond_3
    if-nez p2, :cond_4

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getTriggerViewVisible()Z

    move-result p3

    if-eqz p3, :cond_4

    :goto_1
    iget-object p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->H0:Lmiuix/nestedheader/widget/NestedHeaderLayout$e;

    iget-object v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->l0:Landroid/view/View;

    invoke-interface {p3, v1}, Lmiuix/nestedheader/widget/NestedHeaderLayout$e;->c(Landroid/view/View;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/a;->getScrollingFrom()I

    move-result p3

    if-ne p2, p3, :cond_5

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderViewVisible()Z

    move-result p3

    if-nez p3, :cond_5

    goto :goto_1

    :cond_5
    :goto_2
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderViewVisible()Z

    move-result p3

    if-eqz p3, :cond_6

    move p3, v0

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/a;->getScrollingFrom()I

    move-result p3

    :goto_3
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderProgressFrom()I

    move-result v1

    if-le p1, v1, :cond_7

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderProgressFrom()I

    move-result v1

    if-gt p2, v1, :cond_7

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderViewVisible()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->H0:Lmiuix/nestedheader/widget/NestedHeaderLayout$e;

    iget-object v2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->j0:Landroid/view/View;

    invoke-interface {v1, v2}, Lmiuix/nestedheader/widget/NestedHeaderLayout$e;->a(Landroid/view/View;)V

    :cond_7
    if-le p1, p3, :cond_8

    if-ge p2, p3, :cond_8

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getTriggerViewVisible()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->H0:Lmiuix/nestedheader/widget/NestedHeaderLayout$e;

    iget-object p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->l0:Landroid/view/View;

    invoke-interface {p1, p3}, Lmiuix/nestedheader/widget/NestedHeaderLayout$e;->c(Landroid/view/View;)V

    :cond_8
    :goto_4
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderProgressFrom()I

    move-result p1

    if-ge p2, p1, :cond_9

    const/4 p1, 0x1

    goto :goto_5

    :cond_9
    move p1, v0

    :goto_5
    iget-object p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->j0:Landroid/view/View;

    if-eqz p3, :cond_b

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    iget-object v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->j0:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result p3

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_6

    :cond_a
    move v0, p3

    :cond_b
    :goto_6
    const/4 p3, 0x0

    int-to-float v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    iget v3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->u0:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    sub-float/2addr v2, v1

    invoke-static {p3, v2}, Ljava/lang/Math;->max(FF)F

    move-result p3

    iget-object v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->H0:Lmiuix/nestedheader/widget/NestedHeaderLayout$e;

    invoke-interface {v1, p2, p1, v0, p3}, Lmiuix/nestedheader/widget/NestedHeaderLayout$e;->d(IZIF)V

    return-void
.end method

.method private c0(Ljava/lang/String;)Z
    .locals 1

    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->A0:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->I0:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/a;->getAcceptedNestedFlingInConsumedProgress()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private d0(Landroid/view/View;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_3

    instance-of p2, p1, Landroid/view/ViewGroup;

    if-eqz p2, :cond_1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge p2, v1, :cond_2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0

    :cond_3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private e0(Landroid/view/View;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->P:I

    sget v1, Lrl/b;->a:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->m0:Landroid/view/View;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, p1, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->d0(Landroid/view/View;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private f0(Landroid/view/View;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->Q:I

    sget v1, Lrl/b;->d:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->n0:Landroid/view/View;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, p1, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->d0(Landroid/view/View;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private g0(Landroid/view/View;Landroid/view/View;IIZ)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p3

    add-int/2addr v0, p4

    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p1, v1, p3, v2, v0}, Landroid/view/View;->layout(IIII)V

    if-eq p1, p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    const/4 p3, 0x0

    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p3

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p1

    if-eqz p5, :cond_0

    div-int/lit8 p4, p4, 0x2

    :cond_0
    add-int/2addr v0, p4

    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p4

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p5

    invoke-virtual {p2, p4, p1, p5, p3}, Landroid/view/View;->layout(IIII)V

    :cond_1
    return-void
.end method

.method private h0(I)V
    .locals 0

    iput p1, p0, Lmiuix/nestedheader/widget/a;->r:I

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/a;->getScrollingProgress()I

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/nestedheader/widget/a;->E(I)V

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/a;->getScrollingProgress()I

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->w(I)V

    return-void
.end method

.method private i0(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lmiuix/nestedheader/widget/a;->E(I)V

    invoke-virtual {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->w(I)V

    return-void
.end method

.method private j0(II)V
    .locals 4

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->i0:Landroid/view/View;

    if-eqz v0, :cond_f

    iget v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->u0:I

    iget-boolean v1, p0, Lmiuix/nestedheader/widget/a;->e:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    iget v0, p0, Lmiuix/nestedheader/widget/a;->s:I

    iget v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->G0:I

    if-le v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_1

    :goto_1
    move p1, v3

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getStickyScrollToOnNested()I

    move-result v0

    sub-int/2addr p1, v0

    if-lez p1, :cond_3

    goto :goto_1

    :cond_2
    move p2, v0

    :cond_3
    :goto_2
    iget-boolean v0, p0, Lmiuix/nestedheader/widget/a;->c:Z

    const/4 v1, 0x4

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    if-gtz v0, :cond_4

    neg-int v0, p2

    if-ge p1, v0, :cond_4

    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->F0:Z

    if-nez v0, :cond_4

    iput-boolean v2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->F0:Z

    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->i0:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v2}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->W(Z)V

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    if-gtz v0, :cond_5

    neg-int p2, p2

    if-lt p1, p2, :cond_6

    :cond_5
    iget-boolean p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->F0:Z

    if-eqz p1, :cond_6

    iput-boolean v3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->F0:Z

    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->i0:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v3}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->W(Z)V

    :cond_6
    :goto_3
    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->i0:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lmiuix/nestedheader/widget/a;->g:Landroid/view/View;

    const/4 p2, 0x0

    :goto_4
    invoke-virtual {p1, p2}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_6

    :cond_7
    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->i0:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget-boolean p2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->W:Z

    if-eqz p2, :cond_8

    iget-object p2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->i0:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object p2

    if-eqz p2, :cond_8

    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->i0:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    :cond_8
    iget-object p2, p0, Lmiuix/nestedheader/widget/a;->g:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object p2

    if-nez p2, :cond_9

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    :cond_9
    iget-object v0, p0, Lmiuix/nestedheader/widget/a;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lmiuix/nestedheader/widget/a;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lmiuix/nestedheader/widget/a;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p2, v3, p1, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lmiuix/nestedheader/widget/a;->g:Landroid/view/View;

    goto :goto_4

    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    if-gtz v0, :cond_b

    neg-int v0, p2

    if-ge p1, v0, :cond_b

    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->F0:Z

    if-nez v0, :cond_b

    iput-boolean v2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->F0:Z

    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->i0:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    if-gtz v0, :cond_c

    neg-int p2, p2

    if-lt p1, p2, :cond_d

    :cond_c
    iget-boolean p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->F0:Z

    if-eqz p1, :cond_d

    iput-boolean v3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->F0:Z

    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->i0:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    :goto_5
    iget-object p1, p0, Lmiuix/nestedheader/widget/a;->g:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object p1

    if-nez p1, :cond_e

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    :cond_e
    iget-object p2, p0, Lmiuix/nestedheader/widget/a;->g:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    iget-object v0, p0, Lmiuix/nestedheader/widget/a;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p1, v3, v3, p2, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p2, p0, Lmiuix/nestedheader/widget/a;->g:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    :cond_f
    :goto_6
    return-void
.end method

.method private l0(ZZZZ)V
    .locals 10

    iget v0, p0, Lmiuix/nestedheader/widget/a;->h:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    iget-boolean v1, p0, Lmiuix/nestedheader/widget/a;->c:Z

    if-eqz v1, :cond_1

    neg-int v0, v0

    add-int/2addr v0, v2

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput v2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->u0:I

    iget-object v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->j0:Landroid/view/View;

    const/4 v3, 0x1

    const/16 v4, 0x8

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v4, :cond_3

    iget-object v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->j0:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v5, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->o0:I

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->p0:I

    iget-object v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->j0:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->v0:I

    iget v5, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->p0:I

    add-int/2addr v1, v5

    iget v5, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->o0:I

    add-int/2addr v1, v5

    iput v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->u0:I

    iget-object v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->m0:Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->s0:I

    :cond_2
    iget v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->u0:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v5, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->R:F

    add-float/2addr v1, v5

    float-to-int v1, v1

    add-int/2addr v0, v1

    move v5, v3

    goto :goto_2

    :cond_3
    move v5, v2

    :goto_2
    iput v2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->y0:I

    iget-object v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->k0:Landroid/view/View;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v4, :cond_5

    iget-object v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->k0:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v6, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->k0:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v6, v7

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v6, v1

    iput v6, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->y0:I

    iget-boolean v1, p0, Lmiuix/nestedheader/widget/a;->c:Z

    if-eqz v1, :cond_4

    neg-int v1, v6

    add-int/2addr v0, v1

    :cond_4
    move v1, v0

    move v6, v3

    goto :goto_3

    :cond_5
    move v1, v0

    move v6, v2

    :goto_3
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->l0:Landroid/view/View;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v4, :cond_7

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->l0:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v4, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->q0:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->r0:I

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->l0:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->x0:I

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->n0:Landroid/view/View;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->t0:I

    :cond_6
    iget v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->x0:I

    iget v4, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->r0:I

    add-int/2addr v0, v4

    iget v4, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->q0:I

    add-int/2addr v0, v4

    add-int/2addr v2, v0

    move v4, v3

    goto :goto_4

    :cond_7
    move v4, v2

    :goto_4
    iget-boolean v0, p0, Lmiuix/nestedheader/widget/a;->e:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->u0:I

    neg-int v0, v0

    if-eqz v6, :cond_8

    iget-object v2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->k0:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_8

    iget v2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->y0:I

    sub-int/2addr v0, v2

    :cond_8
    move v2, v0

    :cond_9
    move-object v0, p0

    move v3, v5

    move v5, v6

    move v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-virtual/range {v0 .. v9}, Lmiuix/nestedheader/widget/a;->A(IIZZZZZZZ)V

    return-void
.end method


# virtual methods
.method public W(Z)V
    .locals 1

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->K:Lmiuix/view/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lmiuix/view/k;->a(Z)V

    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lmiuix/nestedheader/widget/a;->a(II)V

    iget-boolean p2, p0, Lmiuix/nestedheader/widget/a;->e:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->k0(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/a;->getScrollingProgress()I

    move-result p1

    iget p2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->w0:I

    invoke-direct {p0, p1, p2}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->j0(II)V

    :goto_0
    return-void
.end method

.method public a0()Z
    .locals 2

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderViewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/a;->getScrollingProgress()I

    move-result v0

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderProgressTo()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b0()Z
    .locals 1

    iget-boolean v0, p0, Lmiuix/nestedheader/widget/a;->c:Z

    return v0
.end method

.method protected getHeaderCloseProgress()I
    .locals 2

    iget-boolean v0, p0, Lmiuix/nestedheader/widget/a;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/a;->getScrollingFrom()I

    move-result v0

    iget v1, p0, Lmiuix/nestedheader/widget/a;->h:I

    add-int/2addr v0, v1

    iget v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->y0:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/a;->getScrollingFrom()I

    move-result v0

    return v0
.end method

.method protected getHeaderProgressFrom()I
    .locals 2

    iget-boolean v0, p0, Lmiuix/nestedheader/widget/a;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/a;->getScrollingFrom()I

    move-result v0

    iget v1, p0, Lmiuix/nestedheader/widget/a;->h:I

    add-int/2addr v0, v1

    iget v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->u0:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/a;->getScrollingFrom()I

    move-result v0

    return v0
.end method

.method protected getHeaderProgressTo()I
    .locals 2

    iget-boolean v0, p0, Lmiuix/nestedheader/widget/a;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/a;->getScrollingFrom()I

    move-result v0

    iget v1, p0, Lmiuix/nestedheader/widget/a;->h:I

    add-int/2addr v0, v1

    iget v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->u0:I

    add-int/2addr v0, v1

    iget v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->y0:I

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/a;->getScrollingFrom()I

    move-result v0

    iget v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->u0:I

    goto :goto_0
.end method

.method public getHeaderView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->j0:Landroid/view/View;

    return-object v0
.end method

.method public getHeaderViewVisible()Z
    .locals 2

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->j0:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getNestedScrollableValue()I
    .locals 2

    iget v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->y0:I

    iget v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->u0:I

    add-int/2addr v0, v1

    neg-int v0, v0

    return v0
.end method

.method public getScrollableView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lmiuix/nestedheader/widget/a;->g:Landroid/view/View;

    return-object v0
.end method

.method protected getScrollableViewMaxHeightWithoutOverlay()I
    .locals 3

    iget-boolean v0, p0, Lmiuix/nestedheader/widget/a;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->k0:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lmiuix/nestedheader/widget/a;->h:I

    :goto_0
    sub-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->k0:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->k0:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->k0:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v0

    iput v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->y0:I

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lmiuix/nestedheader/widget/a;->h:I

    sub-int/2addr v0, v1

    iget v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->y0:I

    goto :goto_0
.end method

.method protected getStickyScrollToOnNested()I
    .locals 2

    iget-boolean v0, p0, Lmiuix/nestedheader/widget/a;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->k0:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/a;->getScrollingFrom()I

    move-result v0

    iget v1, p0, Lmiuix/nestedheader/widget/a;->h:I

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/a;->getScrollingFrom()I

    move-result v0

    iget v1, p0, Lmiuix/nestedheader/widget/a;->h:I

    add-int/2addr v0, v1

    iget v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->y0:I

    goto :goto_0
.end method

.method public getStickyView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->k0:Landroid/view/View;

    return-object v0
.end method

.method public getStickyViewVisible()Z
    .locals 2

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->k0:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getTriggerViewVisible()Z
    .locals 2

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->l0:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public k0(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lmiuix/nestedheader/widget/a;->E(I)V

    invoke-virtual {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->w(I)V

    return-void
.end method

.method public offsetTopAndBottom(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->offsetTopAndBottom(I)V

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/a;->getScrollingProgress()I

    move-result p1

    iget v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->w0:I

    invoke-direct {p0, p1, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->j0(II)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->h0:Landroid/view/View;

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->K:Lmiuix/view/k;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lmiuix/view/k;->h()V

    :cond_0
    invoke-static {}, Lbl/h;->f()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->L:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->b0()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lmiuix/nestedheader/widget/a;->d:Ljava/lang/Boolean;

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmiuix/nestedheader/widget/a;->c:Z

    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 6
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    invoke-super {p0}, Lmiuix/nestedheader/widget/a;->onFinishInflate()V

    iget v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->M:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->j0:Landroid/view/View;

    iget v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->N:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->k0:Landroid/view/View;

    iget v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->O:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->l0:Landroid/view/View;

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->k0:Landroid/view/View;

    if-eqz v0, :cond_0

    new-instance v1, Lmiuix/nestedheader/widget/NestedHeaderLayout$a;

    invoke-direct {v1, p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout$a;-><init>(Lmiuix/nestedheader/widget/NestedHeaderLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->j0:Landroid/view/View;

    if-nez v0, :cond_2

    iget-object v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->l0:Landroid/view/View;

    if-nez v1, :cond_2

    iget-object v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->k0:Landroid/view/View;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The headerView or triggerView or stickyView attribute is required and must refer to a valid child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const v1, 0x102001e

    if-eqz v0, :cond_3

    iget v2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->P:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->m0:Landroid/view/View;

    if-nez v0, :cond_3

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->j0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->m0:Landroid/view/View;

    :cond_3
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->l0:Landroid/view/View;

    if-eqz v0, :cond_4

    iget v2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->Q:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->n0:Landroid/view/View;

    if-nez v0, :cond_4

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->l0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->n0:Landroid/view/View;

    :cond_4
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->i0:Landroid/view/View;

    const/4 v1, 0x1

    if-nez v0, :cond_5

    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->i0:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->i0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->i0:Landroid/view/View;

    iget-object v3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->U:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->i0:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->i0:Landroid/view/View;

    iget-object v2, p0, Lmiuix/nestedheader/widget/a;->g:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v1

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    iput-boolean v1, p0, Lmiuix/nestedheader/widget/a;->c:Z

    new-instance v0, Lmiuix/view/k;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->i0:Landroid/view/View;

    new-instance v4, Lmiuix/nestedheader/widget/NestedHeaderLayout$b;

    invoke-direct {v4, p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout$b;-><init>(Lmiuix/nestedheader/widget/NestedHeaderLayout;)V

    const/4 v5, 0x0

    invoke-direct {v0, v2, v3, v5, v4}, Lmiuix/view/k;-><init>(Landroid/content/Context;Landroid/view/View;ZLmiuix/view/k$a;)V

    iput-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->K:Lmiuix/view/k;

    invoke-static {}, Lgl/a;->G()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lgl/a;->E()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lgl/a;->H()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    move v0, v5

    goto :goto_2

    :cond_7
    :goto_1
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->L:Z

    invoke-static {}, Lbl/h;->f()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->L:Z

    if-nez v0, :cond_8

    invoke-virtual {p0, v1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->setSupportBlur(Z)V

    invoke-virtual {p0, v1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->setEnableBlur(Z)V

    goto :goto_3

    :cond_8
    iput-boolean v5, p0, Lmiuix/nestedheader/widget/a;->c:Z

    :goto_3
    iget-object v0, p0, Lmiuix/nestedheader/widget/a;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lmiuix/nestedheader/widget/a;->c:Z

    :cond_9
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Lmiuix/nestedheader/widget/a;->onMeasure(II)V

    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->j0:Landroid/view/View;

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    instance-of v0, p1, Landroidx/core/view/q0;

    if-nez v0, :cond_1

    :cond_0
    instance-of v0, p1, Landroid/widget/ScrollView;

    if-eqz v0, :cond_2

    :cond_1
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget-object v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->j0:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-le p1, v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->j0:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    :cond_2
    return-void
.end method

.method public setAcceptTriggerRootViewAlpha(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->C0:Z

    return-void
.end method

.method public setAutoAllClose(Z)V
    .locals 8

    iget-boolean v0, p0, Lmiuix/nestedheader/widget/a;->G:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lmiuix/nestedheader/widget/a;->B(II)Z

    const/4 v3, 0x0

    iget v4, p0, Lmiuix/nestedheader/widget/a;->t:I

    new-array v5, v0, [I

    new-array v6, v0, [I

    const/4 v7, 0x1

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lmiuix/nestedheader/widget/a;->i(II[I[II)Z

    invoke-virtual {p0, v1}, Lmiuix/nestedheader/widget/a;->C(I)V

    :cond_0
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/a;->getScrollingProgress()I

    move-result v0

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderCloseProgress()I

    move-result v1

    if-le v0, v1, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderCloseProgress()I

    move-result p1

    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->Y(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderCloseProgress()I

    move-result p1

    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->i0(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setAutoAllOpen(Z)V
    .locals 9

    iget-boolean v0, p0, Lmiuix/nestedheader/widget/a;->G:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lmiuix/nestedheader/widget/a;->B(II)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v0, p0, Lmiuix/nestedheader/widget/a;->t:I

    neg-int v6, v0

    iget-object v7, p0, Lmiuix/nestedheader/widget/a;->b:[I

    const/4 v8, 0x1

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lmiuix/nestedheader/widget/a;->k(IIII[II)Z

    invoke-virtual {p0, v1}, Lmiuix/nestedheader/widget/a;->C(I)V

    :cond_0
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/a;->getScrollingProgress()I

    move-result v0

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/a;->getScrollingTo()I

    move-result v1

    if-ge v0, v1, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/a;->getScrollingTo()I

    move-result p1

    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->Y(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/a;->getScrollingTo()I

    move-result p1

    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->i0(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setAutoAnim(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->B0:Z

    return-void
.end method

.method public setAutoHeaderClose(Z)V
    .locals 8

    iget-boolean v0, p0, Lmiuix/nestedheader/widget/a;->G:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lmiuix/nestedheader/widget/a;->B(II)Z

    const/4 v3, 0x0

    iget v4, p0, Lmiuix/nestedheader/widget/a;->t:I

    new-array v5, v0, [I

    new-array v6, v0, [I

    const/4 v7, 0x1

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lmiuix/nestedheader/widget/a;->i(II[I[II)Z

    invoke-virtual {p0, v1}, Lmiuix/nestedheader/widget/a;->C(I)V

    :cond_0
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderViewVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/a;->getScrollingProgress()I

    move-result v0

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/a;->getScrollingFrom()I

    move-result v1

    if-le v0, v1, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderCloseProgress()I

    move-result p1

    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->Y(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderViewVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderCloseProgress()I

    move-result p1

    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->i0(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setAutoHeaderOpen(Z)V
    .locals 9

    iget-boolean v0, p0, Lmiuix/nestedheader/widget/a;->G:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lmiuix/nestedheader/widget/a;->B(II)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v0, p0, Lmiuix/nestedheader/widget/a;->t:I

    neg-int v6, v0

    iget-object v7, p0, Lmiuix/nestedheader/widget/a;->b:[I

    const/4 v8, 0x1

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lmiuix/nestedheader/widget/a;->k(IIII[II)Z

    invoke-virtual {p0, v1}, Lmiuix/nestedheader/widget/a;->C(I)V

    :cond_0
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderViewVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/a;->getScrollingProgress()I

    move-result v0

    if-gez v0, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderProgressTo()I

    move-result p1

    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->Y(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderProgressTo()I

    move-result p1

    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->i0(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setAutoTriggerClose(Z)V
    .locals 3

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getTriggerViewVisible()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderViewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/a;->getScrollingProgress()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getTriggerViewVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderViewVisible()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/a;->getScrollingProgress()I

    move-result v0

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/a;->getScrollingFrom()I

    move-result v2

    if-le v0, v2, :cond_1

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/a;->getScrollingFrom()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eq v0, v1, :cond_2

    if-eqz p1, :cond_2

    invoke-direct {p0, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->Y(I)V

    goto :goto_1

    :cond_2
    if-eq v0, v1, :cond_3

    invoke-direct {p0, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->i0(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setAutoTriggerOpen(Z)V
    .locals 9

    iget-boolean v0, p0, Lmiuix/nestedheader/widget/a;->G:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->a0()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lmiuix/nestedheader/widget/a;->B(II)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v0, p0, Lmiuix/nestedheader/widget/a;->t:I

    neg-int v6, v0

    iget-object v7, p0, Lmiuix/nestedheader/widget/a;->b:[I

    const/4 v8, 0x1

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lmiuix/nestedheader/widget/a;->k(IIII[II)Z

    invoke-virtual {p0, v1}, Lmiuix/nestedheader/widget/a;->C(I)V

    :cond_0
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getTriggerViewVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/a;->getScrollingProgress()I

    move-result v0

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/a;->getScrollingTo()I

    move-result v1

    if-ge v0, v1, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/a;->getScrollingTo()I

    move-result p1

    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->Y(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/a;->getScrollingTo()I

    move-result p1

    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->i0(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setEnableBlur(Z)V
    .locals 1

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->K:Lmiuix/view/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lmiuix/view/k;->l(Z)V

    :cond_0
    return-void
.end method

.method public setHeaderAutoCloseEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->S:Z

    return-void
.end method

.method public setHeaderRootViewAcceptAlpha(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->D0:Z

    return-void
.end method

.method public setHeaderViewVisible(Z)V
    .locals 3

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->j0:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v1, v1, v1, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->l0(ZZZZ)V

    :cond_1
    return-void
.end method

.method public setInSearchMode(Z)V
    .locals 1

    iput-boolean p1, p0, Lmiuix/nestedheader/widget/a;->e:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getNestedScrollableValue()I

    move-result p1

    iput p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->G0:I

    goto :goto_0

    :cond_0
    iput v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->G0:I

    :goto_0
    invoke-direct {p0, v0, v0, v0, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->l0(ZZZZ)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setNestedHeaderChangedListener(Lmiuix/nestedheader/widget/NestedHeaderLayout$e;)V
    .locals 0

    iput-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->H0:Lmiuix/nestedheader/widget/NestedHeaderLayout$e;

    return-void
.end method

.method public setOverlayMode(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmiuix/nestedheader/widget/a;->d:Ljava/lang/Boolean;

    iput-boolean p1, p0, Lmiuix/nestedheader/widget/a;->c:Z

    return-void
.end method

.method public setSelfScrollFirst(Z)V
    .locals 9

    iget-boolean v0, p0, Lmiuix/nestedheader/widget/a;->G:Z

    if-eq v0, p1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->a0()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lmiuix/nestedheader/widget/a;->B(II)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v0, p0, Lmiuix/nestedheader/widget/a;->t:I

    neg-int v6, v0

    iget-object v7, p0, Lmiuix/nestedheader/widget/a;->b:[I

    const/4 v8, 0x1

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lmiuix/nestedheader/widget/a;->k(IIII[II)Z

    invoke-virtual {p0, v1}, Lmiuix/nestedheader/widget/a;->C(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->i0(I)V

    :cond_0
    invoke-super {p0, p1}, Lmiuix/nestedheader/widget/a;->setSelfScrollFirst(Z)V

    return-void
.end method

.method public setStickyViewVisible(Z)V
    .locals 3

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->k0:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v1, v1, p1, v1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->l0(ZZZZ)V

    :cond_1
    return-void
.end method

.method public setSupportBlur(Z)V
    .locals 1

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->K:Lmiuix/view/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lmiuix/view/k;->n(Z)V

    :cond_0
    return-void
.end method

.method public setTriggerViewVisible(Z)V
    .locals 3

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->l0:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v1, p1, v1, v1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->l0(ZZZZ)V

    :cond_1
    return-void
.end method

.method protected w(I)V
    .locals 22

    move-object/from16 v6, p0

    move/from16 v7, p1

    invoke-super/range {p0 .. p1}, Lmiuix/nestedheader/widget/a;->w(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    move-result v0

    const/4 v8, 0x0

    if-nez v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v8

    :goto_0
    iget-boolean v1, v6, Lmiuix/nestedheader/widget/a;->o:Z

    if-eqz v1, :cond_1

    iget v1, v6, Lmiuix/nestedheader/widget/a;->r:I

    move v9, v1

    goto :goto_1

    :cond_1
    move v9, v8

    :goto_1
    iget-object v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->j0:Landroid/view/View;

    const/16 v2, 0x8

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v2, :cond_2

    const/4 v11, 0x1

    goto :goto_2

    :cond_2
    move v11, v8

    :goto_2
    iget-object v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->k0:Landroid/view/View;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v2, :cond_3

    const/4 v12, 0x1

    goto :goto_3

    :cond_3
    move v12, v8

    :goto_3
    iget-object v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->l0:Landroid/view/View;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v2, :cond_4

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    move v1, v8

    :goto_4
    iget v2, v6, Lmiuix/nestedheader/widget/a;->h:I

    add-int v13, v0, v2

    if-eqz v11, :cond_5

    iget v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->v0:I

    iget v2, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->p0:I

    add-int/2addr v0, v2

    iget v2, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->o0:I

    add-int/2addr v0, v2

    move v14, v0

    goto :goto_5

    :cond_5
    move v14, v8

    :goto_5
    if-eqz v12, :cond_6

    iget-object v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->k0:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v2, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->k0:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v0

    move v15, v2

    goto :goto_6

    :cond_6
    move v15, v8

    :goto_6
    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v1, :cond_c

    iget v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->r0:I

    iget v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->q0:I

    add-int/2addr v0, v1

    iget v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->x0:I

    add-int/2addr v0, v1

    invoke-virtual/range {p0 .. p0}, Lmiuix/nestedheader/widget/a;->getScrollingTo()I

    move-result v1

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int v16, v7, v1

    invoke-virtual/range {p0 .. p0}, Lmiuix/nestedheader/widget/a;->getScrollingFrom()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lmiuix/nestedheader/widget/a;->getScrollingTo()I

    move-result v2

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v17

    iget v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->r0:I

    add-int v2, v13, v9

    add-int/2addr v2, v14

    add-int/2addr v2, v1

    iget-boolean v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->T:Z

    if-eqz v1, :cond_7

    add-int/2addr v2, v15

    :cond_7
    move v3, v2

    iget-object v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->n0:Landroid/view/View;

    if-nez v1, :cond_8

    iget-object v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->l0:Landroid/view/View;

    :cond_8
    sub-int v18, v17, v0

    iget-object v2, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->l0:Landroid/view/View;

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v20, v1

    move-object v1, v2

    move-object/from16 v2, v20

    move v8, v4

    move/from16 v4, v18

    move v10, v5

    move/from16 v5, v19

    invoke-direct/range {v0 .. v5}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->g0(Landroid/view/View;Landroid/view/View;IIZ)V

    iget-object v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->n0:Landroid/view/View;

    if-nez v0, :cond_9

    iget v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->q0:I

    goto :goto_7

    :cond_9
    iget v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->t0:I

    :goto_7
    sub-int v0, v17, v0

    int-to-float v0, v0

    iget v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->g0:F

    div-float/2addr v0, v1

    invoke-static {v8, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v10, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget-boolean v2, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->C0:Z

    if-eqz v2, :cond_a

    iget-object v2, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->l0:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_9

    :cond_a
    iget-object v2, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->l0:Landroid/view/View;

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_b

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_b

    const/4 v2, 0x0

    :goto_8
    iget-object v3, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->l0:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_b

    iget-object v3, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->l0:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_b
    :goto_9
    move-object/from16 v1, v20

    invoke-direct {v6, v1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->f0(Landroid/view/View;)Ljava/util/List;

    move-result-object v1

    sub-float/2addr v0, v8

    invoke-direct {v6, v1, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->X(Ljava/util/List;F)V

    goto :goto_a

    :cond_c
    move v8, v4

    move v10, v5

    move/from16 v16, v7

    :goto_a
    if-eqz v11, :cond_13

    add-int v11, v13, v14

    iget-object v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->m0:Landroid/view/View;

    if-nez v0, :cond_d

    iget-object v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->j0:Landroid/view/View;

    :cond_d
    move-object v5, v0

    invoke-virtual/range {p0 .. p0}, Lmiuix/nestedheader/widget/a;->getScrollType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    add-int v0, v13, v9

    iget-object v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->j0:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    neg-int v1, v1

    neg-int v2, v14

    add-int v0, v16, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v1, v0

    iget-object v2, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->j0:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    iget v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->p0:I

    iget v2, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->v0:I

    add-int/2addr v1, v2

    iget v2, v6, Lmiuix/nestedheader/widget/a;->h:I

    sub-int/2addr v2, v0

    const/4 v0, 0x0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->j0:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_e

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    :cond_e
    iget v2, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->v0:I

    sub-int/2addr v2, v1

    iget-object v3, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->j0:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget v4, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->v0:I

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->j0:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    iget v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->p0:I

    add-int/2addr v1, v0

    iget v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->o0:I

    add-int/2addr v1, v0

    iput v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->w0:I

    goto/16 :goto_e

    :cond_f
    add-int v0, v13, v9

    iget v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->p0:I

    add-int v3, v0, v1

    iget-object v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->j0:Landroid/view/View;

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object v2, v5

    move/from16 v4, v16

    move-object/from16 v21, v5

    move/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->g0(Landroid/view/View;Landroid/view/View;IIZ)V

    iget-object v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->m0:Landroid/view/View;

    if-nez v0, :cond_10

    iget v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->o0:I

    goto :goto_b

    :cond_10
    iget v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->s0:I

    :goto_b
    sub-int v0, v16, v0

    int-to-float v0, v0

    iget v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->f0:F

    add-float/2addr v0, v1

    div-float/2addr v0, v1

    add-float v4, v0, v8

    invoke-static {v8, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v10, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget-boolean v2, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->D0:Z

    if-eqz v2, :cond_11

    iget-object v2, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->j0:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_d

    :cond_11
    iget-object v2, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->j0:Landroid/view/View;

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_12

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_12

    const/4 v2, 0x0

    :goto_c
    iget-object v3, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->j0:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_12

    iget-object v3, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->j0:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_12
    :goto_d
    move-object/from16 v1, v21

    invoke-direct {v6, v1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->e0(Landroid/view/View;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v6, v1, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->X(Ljava/util/List;F)V

    iget-object v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->j0:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->p0:I

    add-int/2addr v0, v1

    iget v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->o0:I

    add-int/2addr v0, v1

    iput v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->w0:I

    goto :goto_e

    :cond_13
    move v11, v13

    :goto_e
    add-int/2addr v14, v13

    add-int/2addr v14, v9

    if-eqz v12, :cond_15

    add-int/2addr v11, v15

    iget-object v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->k0:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    neg-int v0, v0

    iget-boolean v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->T:Z

    if-eqz v1, :cond_14

    add-int v1, v16, v14

    goto :goto_f

    :cond_14
    add-int v1, v7, v14

    :goto_f
    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v2, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->k0:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_11

    :cond_15
    iget-boolean v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->T:Z

    if-eqz v0, :cond_16

    add-int v0, v16, v14

    goto :goto_10

    :cond_16
    add-int v0, v7, v14

    :goto_10
    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_11
    add-int v0, v1, v15

    if-eqz v12, :cond_18

    iget-object v2, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->k0:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_17

    move v0, v1

    const/4 v2, 0x0

    const/4 v15, 0x0

    goto :goto_12

    :cond_17
    iget-boolean v2, v6, Lmiuix/nestedheader/widget/a;->e:Z

    if-eqz v2, :cond_18

    iget v2, v6, Lmiuix/nestedheader/widget/a;->s:I

    if-gez v2, :cond_18

    add-int/2addr v15, v2

    const/4 v2, 0x0

    invoke-static {v2, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    goto :goto_12

    :cond_18
    const/4 v2, 0x0

    :goto_12
    add-int/2addr v1, v15

    add-int v3, v7, v11

    add-int/2addr v3, v2

    iget-boolean v2, v6, Lmiuix/nestedheader/widget/a;->c:Z

    if-nez v2, :cond_1a

    iget-boolean v2, v6, Lmiuix/nestedheader/widget/a;->e:Z

    if-eqz v2, :cond_19

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_13

    :cond_19
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_1a
    :goto_13
    iget-object v1, v6, Lmiuix/nestedheader/widget/a;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    neg-int v1, v1

    add-int/2addr v1, v3

    iget-object v2, v6, Lmiuix/nestedheader/widget/a;->g:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    iget v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->z0:I

    sub-int v2, v7, v1

    if-lez v2, :cond_1b

    const/4 v2, 0x1

    invoke-direct {v6, v1, v7, v2}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->Z(IIZ)V

    goto :goto_14

    :cond_1b
    sub-int v2, v7, v1

    if-gez v2, :cond_1c

    const/4 v2, 0x0

    invoke-direct {v6, v1, v7, v2}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->Z(IIZ)V

    goto :goto_15

    :cond_1c
    :goto_14
    const/4 v2, 0x0

    :goto_15
    iput v7, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->z0:I

    invoke-virtual/range {p0 .. p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->a0()Z

    move-result v1

    invoke-virtual {v6, v1}, Lmiuix/nestedheader/widget/a;->D(Z)V

    iget-object v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->i0:Landroid/view/View;

    if-eqz v1, :cond_1f

    iget-boolean v3, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->W:Z

    if-eqz v3, :cond_1e

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    iget-object v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->h0:Landroid/view/View;

    if-eqz v1, :cond_1d

    iget-object v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->i0:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->i0:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->h0:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->h0:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_16

    :cond_1d
    const/4 v5, 0x0

    :goto_16
    iget-object v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->E0:Landroid/graphics/Rect;

    iget-object v2, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->i0:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v1, v5, v5, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->i0:Landroid/view/View;

    iget-object v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->E0:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    goto :goto_17

    :cond_1e
    move v5, v2

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    iget-object v1, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->i0:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->i0:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {v1, v2, v5, v3, v0}, Landroid/view/View;->layout(IIII)V

    :goto_17
    iget v0, v6, Lmiuix/nestedheader/widget/NestedHeaderLayout;->w0:I

    invoke-direct {v6, v7, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->j0(II)V

    :cond_1f
    return-void
.end method

.method public x(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lmiuix/nestedheader/widget/a;->x(ZIIII)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p2, p2}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->l0(ZZZZ)V

    return-void
.end method
