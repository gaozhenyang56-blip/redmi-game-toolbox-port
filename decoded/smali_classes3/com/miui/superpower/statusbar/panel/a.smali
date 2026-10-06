.class public Lcom/miui/superpower/statusbar/panel/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/superpower/statusbar/panel/a$c;
    }
.end annotation


# static fields
.field private static final u:Landroid/view/animation/Interpolator;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:[F

.field private e:[F

.field private f:[F

.field private g:[F

.field private h:[I

.field private i:[I

.field private j:[I

.field private k:Landroid/view/VelocityTracker;

.field private l:F

.field private m:F

.field private n:I

.field private o:Landroidx/core/widget/l;

.field private final p:Lcom/miui/superpower/statusbar/panel/a$c;

.field private q:Landroid/view/View;

.field private r:Z

.field private final s:Landroid/view/ViewGroup;

.field private final t:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/superpower/statusbar/panel/a$a;

    invoke-direct {v0}, Lcom/miui/superpower/statusbar/panel/a$a;-><init>()V

    sput-object v0, Lcom/miui/superpower/statusbar/panel/a;->u:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/miui/superpower/statusbar/panel/a$c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/superpower/statusbar/panel/a;->c:I

    new-instance v0, Lcom/miui/superpower/statusbar/panel/a$b;

    invoke-direct {v0, p0}, Lcom/miui/superpower/statusbar/panel/a$b;-><init>(Lcom/miui/superpower/statusbar/panel/a;)V

    iput-object v0, p0, Lcom/miui/superpower/statusbar/panel/a;->t:Ljava/lang/Runnable;

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    iput-object p2, p0, Lcom/miui/superpower/statusbar/panel/a;->s:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/miui/superpower/statusbar/panel/a;->p:Lcom/miui/superpower/statusbar/panel/a$c;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x41a00000    # 20.0f

    mul-float/2addr p3, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p3, v0

    float-to-int p3, p3

    iput p3, p0, Lcom/miui/superpower/statusbar/panel/a;->n:I

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p3

    iput p3, p0, Lcom/miui/superpower/statusbar/panel/a;->b:I

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/miui/superpower/statusbar/panel/a;->l:F

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/miui/superpower/statusbar/panel/a;->m:F

    sget-object p2, Lcom/miui/superpower/statusbar/panel/a;->u:Landroid/view/animation/Interpolator;

    invoke-static {p1, p2}, Landroidx/core/widget/l;->c(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroidx/core/widget/l;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/superpower/statusbar/panel/a;->o:Landroidx/core/widget/l;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Callback may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parent view may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private A(Landroid/view/View;II)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt p2, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    if-ge p2, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    if-lt p3, p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    if-ge p3, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private C()V
    .locals 4

    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/a;->k:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/miui/superpower/statusbar/panel/a;->l:F

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/a;->k:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/miui/superpower/statusbar/panel/a;->c:I

    invoke-static {v0, v1}, Landroidx/core/view/VelocityTrackerCompat;->f(Landroid/view/VelocityTracker;I)F

    move-result v0

    iget v1, p0, Lcom/miui/superpower/statusbar/panel/a;->m:F

    iget v2, p0, Lcom/miui/superpower/statusbar/panel/a;->l:F

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/superpower/statusbar/panel/a;->g(FFF)F

    move-result v0

    iget-object v1, p0, Lcom/miui/superpower/statusbar/panel/a;->k:Landroid/view/VelocityTracker;

    iget v2, p0, Lcom/miui/superpower/statusbar/panel/a;->c:I

    invoke-static {v1, v2}, Landroidx/core/view/VelocityTrackerCompat;->g(Landroid/view/VelocityTracker;I)F

    move-result v1

    iget v2, p0, Lcom/miui/superpower/statusbar/panel/a;->m:F

    iget v3, p0, Lcom/miui/superpower/statusbar/panel/a;->l:F

    invoke-direct {p0, v1, v2, v3}, Lcom/miui/superpower/statusbar/panel/a;->g(FFF)F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/miui/superpower/statusbar/panel/a;->p(FF)V

    return-void
.end method

.method private D(FFI)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/superpower/statusbar/panel/a;->e(FFII)Z

    move-result v0

    const/4 v1, 0x4

    invoke-direct {p0, p2, p1, p3, v1}, Lcom/miui/superpower/statusbar/panel/a;->e(FFII)Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x4

    :cond_0
    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/miui/superpower/statusbar/panel/a;->e(FFII)Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    const/16 v1, 0x8

    invoke-direct {p0, p2, p1, p3, v1}, Lcom/miui/superpower/statusbar/panel/a;->e(FFII)Z

    move-result p1

    if-eqz p1, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/miui/superpower/statusbar/panel/a;->i:[I

    aget p2, p1, p3

    or-int/2addr p2, v0

    aput p2, p1, p3

    :cond_3
    return-void
.end method

.method private E(FFI)V
    .locals 2

    invoke-direct {p0, p3}, Lcom/miui/superpower/statusbar/panel/a;->s(I)V

    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/a;->d:[F

    iget-object v1, p0, Lcom/miui/superpower/statusbar/panel/a;->f:[F

    aput p1, v1, p3

    aput p1, v0, p3

    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/a;->e:[F

    iget-object v1, p0, Lcom/miui/superpower/statusbar/panel/a;->g:[F

    aput p2, v1, p3

    aput p2, v0, p3

    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/a;->h:[I

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-direct {p0, p1, p2}, Lcom/miui/superpower/statusbar/panel/a;->v(II)I

    move-result p1

    aput p1, v0, p3

    return-void
.end method

.method private F(Landroid/view/MotionEvent;)V
    .locals 8

    invoke-static {p1}, Landroidx/core/view/e0;->d(Landroid/view/MotionEvent;)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-static {p1, v1}, Landroidx/core/view/e0;->e(Landroid/view/MotionEvent;I)I

    move-result v2

    invoke-static {p1, v1}, Landroidx/core/view/e0;->f(Landroid/view/MotionEvent;I)F

    move-result v3

    invoke-static {p1, v1}, Landroidx/core/view/e0;->g(Landroid/view/MotionEvent;I)F

    move-result v4

    iget-object v5, p0, Lcom/miui/superpower/statusbar/panel/a;->f:[F

    if-eqz v5, :cond_0

    iget-object v6, p0, Lcom/miui/superpower/statusbar/panel/a;->g:[F

    if-eqz v6, :cond_0

    array-length v7, v5

    if-le v7, v2, :cond_0

    array-length v7, v6

    if-le v7, v2, :cond_0

    aput v3, v5, v2

    aput v4, v6, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private G(I)V
    .locals 1

    iget v0, p0, Lcom/miui/superpower/statusbar/panel/a;->a:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/miui/superpower/statusbar/panel/a;->a:I

    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/a;->p:Lcom/miui/superpower/statusbar/panel/a$c;

    invoke-virtual {v0, p1}, Lcom/miui/superpower/statusbar/panel/a$c;->d(I)V

    iget p1, p0, Lcom/miui/superpower/statusbar/panel/a;->a:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/superpower/statusbar/panel/a;->q:Landroid/view/View;

    :cond_0
    return-void
.end method

.method private L(Landroid/view/View;I)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/a;->q:Landroid/view/View;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/miui/superpower/statusbar/panel/a;->c:I

    if-ne v0, p2, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/a;->p:Lcom/miui/superpower/statusbar/panel/a$c;

    invoke-virtual {v0, p1, p2}, Lcom/miui/superpower/statusbar/panel/a$c;->g(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iput p2, p0, Lcom/miui/superpower/statusbar/panel/a;->c:I

    invoke-direct {p0, p1, p2}, Lcom/miui/superpower/statusbar/panel/a;->d(Landroid/view/View;I)V

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic b(Lcom/miui/superpower/statusbar/panel/a;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/superpower/statusbar/panel/a;->G(I)V

    return-void
.end method

.method private d(Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/superpower/statusbar/panel/a;->s:Landroid/view/ViewGroup;

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lcom/miui/superpower/statusbar/panel/a;->q:Landroid/view/View;

    iput p2, p0, Lcom/miui/superpower/statusbar/panel/a;->c:I

    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/a;->p:Lcom/miui/superpower/statusbar/panel/a$c;

    invoke-virtual {v0, p1, p2}, Lcom/miui/superpower/statusbar/panel/a$c;->c(Landroid/view/View;I)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/miui/superpower/statusbar/panel/a;->G(I)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "captureChildView: parameter must be a descendant of the PanelDragHelper\'s tracked parent view ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/a;->s:Landroid/view/ViewGroup;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private e(FFII)Z
    .locals 3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/a;->h:[I

    aget v0, v0, p3

    and-int/2addr v0, p4

    const/4 v1, 0x0

    if-ne v0, p4, :cond_1

    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/a;->j:[I

    aget v0, v0, p3

    and-int/2addr v0, p4

    if-eq v0, p4, :cond_1

    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/a;->i:[I

    aget p3, v0, p3

    and-int v0, p3, p4

    if-eq v0, p4, :cond_1

    iget v0, p0, Lcom/miui/superpower/statusbar/panel/a;->b:I

    int-to-float v2, v0

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    int-to-float v2, v0

    cmpg-float p2, p2, v2

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    and-int p2, p3, p4

    if-nez p2, :cond_1

    int-to-float p2, v0

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method private f(Landroid/view/View;F)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/miui/superpower/statusbar/panel/a;->p:Lcom/miui/superpower/statusbar/panel/a$c;

    invoke-virtual {v1, p1}, Lcom/miui/superpower/statusbar/panel/a$c;->b(Landroid/view/View;)I

    move-result p1

    const/4 v1, 0x1

    if-lez p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    if-eqz p1, :cond_2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/miui/superpower/statusbar/panel/a;->b:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method private g(FFF)F
    .locals 2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float p2, v0, p2

    const/4 v1, 0x0

    if-gez p2, :cond_0

    return v1

    :cond_0
    cmpl-float p2, v0, p3

    if-lez p2, :cond_2

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    neg-float p3, p3

    :goto_0
    return p3

    :cond_2
    return p1
.end method

.method private h(III)I
    .locals 1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-le v0, p3, :cond_2

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    neg-int p3, p3

    :goto_0
    return p3

    :cond_2
    return p1
.end method

.method private i()V
    .locals 2

    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/a;->d:[F

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/a;->e:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/a;->f:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/a;->g:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/a;->h:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/a;->i:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/a;->j:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method private j(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/a;->d:[F

    if-eqz v0, :cond_1

    array-length v1, v0

    if-gt v1, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    aput v1, v0, p1

    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/a;->e:[F

    aput v1, v0, p1

    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/a;->f:[F

    aput v1, v0, p1

    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/a;->g:[F

    aput v1, v0, p1

    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/a;->h:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/a;->i:[I

    aput v1, v0, p1

    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/a;->j:[I

    aput v1, v0, p1

    :cond_1
    :goto_0
    return-void
.end method

.method private k(III)I
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/a;->s:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    int-to-float v1, v1

    invoke-direct {p0, v2}, Lcom/miui/superpower/statusbar/panel/a;->q(F)F

    move-result v2

    mul-float/2addr v2, v1

    add-float/2addr v1, v2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-lez p2, :cond_1

    const/high16 p1, 0x447a0000    # 1000.0f

    int-to-float p2, p2

    div-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    int-to-float p2, p3

    div-float/2addr p1, p2

    add-float/2addr p1, v0

    const/high16 p2, 0x43800000    # 256.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    :goto_0
    const/16 p2, 0x258

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private l(Landroid/view/View;IIII)I
    .locals 6

    iget v0, p0, Lcom/miui/superpower/statusbar/panel/a;->m:F

    float-to-int v0, v0

    iget v1, p0, Lcom/miui/superpower/statusbar/panel/a;->l:F

    float-to-int v1, v1

    invoke-direct {p0, p4, v0, v1}, Lcom/miui/superpower/statusbar/panel/a;->h(III)I

    move-result p4

    iget v0, p0, Lcom/miui/superpower/statusbar/panel/a;->m:F

    float-to-int v0, v0

    iget v1, p0, Lcom/miui/superpower/statusbar/panel/a;->l:F

    float-to-int v1, v1

    invoke-direct {p0, p5, v0, v1}, Lcom/miui/superpower/statusbar/panel/a;->h(III)I

    move-result p5

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int v4, v2, v3

    add-int v5, v0, v1

    if-eqz p4, :cond_0

    int-to-float v0, v2

    int-to-float v2, v4

    goto :goto_0

    :cond_0
    int-to-float v0, v0

    int-to-float v2, v5

    :goto_0
    div-float/2addr v0, v2

    if-eqz p5, :cond_1

    int-to-float v1, v3

    int-to-float v2, v4

    goto :goto_1

    :cond_1
    int-to-float v1, v1

    int-to-float v2, v5

    :goto_1
    div-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-direct {p0, p2, p4, v2}, Lcom/miui/superpower/statusbar/panel/a;->k(III)I

    move-result p2

    iget-object p4, p0, Lcom/miui/superpower/statusbar/panel/a;->p:Lcom/miui/superpower/statusbar/panel/a$c;

    invoke-virtual {p4, p1}, Lcom/miui/superpower/statusbar/panel/a$c;->b(Landroid/view/View;)I

    move-result p1

    invoke-direct {p0, p3, p5, p1}, Lcom/miui/superpower/statusbar/panel/a;->k(III)I

    move-result p1

    int-to-float p2, p2

    mul-float/2addr p2, v0

    int-to-float p1, p1

    mul-float/2addr p1, v1

    add-float/2addr p2, p1

    float-to-int p1, p2

    return p1
.end method

.method public static n(Landroid/view/ViewGroup;FLcom/miui/superpower/statusbar/panel/a$c;)Lcom/miui/superpower/statusbar/panel/a;
    .locals 1

    invoke-static {p0, p2}, Lcom/miui/superpower/statusbar/panel/a;->o(Landroid/view/ViewGroup;Lcom/miui/superpower/statusbar/panel/a$c;)Lcom/miui/superpower/statusbar/panel/a;

    move-result-object p0

    iget p2, p0, Lcom/miui/superpower/statusbar/panel/a;->b:I

    int-to-float p2, p2

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p1

    mul-float/2addr p2, v0

    float-to-int p1, p2

    iput p1, p0, Lcom/miui/superpower/statusbar/panel/a;->b:I

    return-object p0
.end method

.method public static o(Landroid/view/ViewGroup;Lcom/miui/superpower/statusbar/panel/a$c;)Lcom/miui/superpower/statusbar/panel/a;
    .locals 2

    new-instance v0, Lcom/miui/superpower/statusbar/panel/a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lcom/miui/superpower/statusbar/panel/a;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/miui/superpower/statusbar/panel/a$c;)V

    return-object v0
.end method

.method private p(FF)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/superpower/statusbar/panel/a;->r:Z

    iget-object v1, p0, Lcom/miui/superpower/statusbar/panel/a;->p:Lcom/miui/superpower/statusbar/panel/a$c;

    iget-object v2, p0, Lcom/miui/superpower/statusbar/panel/a;->q:Landroid/view/View;

    invoke-virtual {v1, v2, p1, p2}, Lcom/miui/superpower/statusbar/panel/a$c;->f(Landroid/view/View;FF)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/superpower/statusbar/panel/a;->r:Z

    iget p2, p0, Lcom/miui/superpower/statusbar/panel/a;->a:I

    if-ne p2, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/superpower/statusbar/panel/a;->G(I)V

    :cond_0
    return-void
.end method

.method private q(F)F
    .locals 4

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method private r(IIII)V
    .locals 10

    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/a;->q:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/miui/superpower/statusbar/panel/a;->q:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    iget-object v2, p0, Lcom/miui/superpower/statusbar/panel/a;->q:Landroid/view/View;

    rsub-int/lit8 v3, v0, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_0
    move v6, p1

    if-eqz p4, :cond_1

    iget-object p1, p0, Lcom/miui/superpower/statusbar/panel/a;->p:Lcom/miui/superpower/statusbar/panel/a$c;

    iget-object v2, p0, Lcom/miui/superpower/statusbar/panel/a;->q:Landroid/view/View;

    invoke-virtual {p1, v2, p2, p4}, Lcom/miui/superpower/statusbar/panel/a$c;->a(Landroid/view/View;II)I

    move-result p2

    iget-object p1, p0, Lcom/miui/superpower/statusbar/panel/a;->q:Landroid/view/View;

    sub-int v2, p2, v1

    invoke-virtual {p1, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_1
    move v7, p2

    if-nez p3, :cond_2

    if-eqz p4, :cond_3

    :cond_2
    sub-int v8, v6, v0

    sub-int v9, v7, v1

    iget-object v4, p0, Lcom/miui/superpower/statusbar/panel/a;->p:Lcom/miui/superpower/statusbar/panel/a$c;

    iget-object v5, p0, Lcom/miui/superpower/statusbar/panel/a;->q:Landroid/view/View;

    invoke-virtual/range {v4 .. v9}, Lcom/miui/superpower/statusbar/panel/a$c;->e(Landroid/view/View;IIII)V

    :cond_3
    return-void
.end method

.method private s(I)V
    .locals 9

    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/a;->d:[F

    if-eqz v0, :cond_0

    array-length v1, v0

    if-gt v1, p1, :cond_2

    :cond_0
    add-int/lit8 p1, p1, 0x1

    new-array v1, p1, [F

    new-array v2, p1, [F

    new-array v3, p1, [F

    new-array v4, p1, [F

    new-array v5, p1, [I

    new-array v6, p1, [I

    new-array p1, p1, [I

    if-eqz v0, :cond_1

    array-length v7, v0

    const/4 v8, 0x0

    invoke-static {v0, v8, v1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/a;->e:[F

    array-length v7, v0

    invoke-static {v0, v8, v2, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/a;->f:[F

    array-length v7, v0

    invoke-static {v0, v8, v3, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/a;->g:[F

    array-length v7, v0

    invoke-static {v0, v8, v4, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/a;->h:[I

    array-length v7, v0

    invoke-static {v0, v8, v5, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/a;->i:[I

    array-length v7, v0

    invoke-static {v0, v8, v6, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/a;->j:[I

    array-length v7, v0

    invoke-static {v0, v8, p1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iput-object v1, p0, Lcom/miui/superpower/statusbar/panel/a;->d:[F

    iput-object v2, p0, Lcom/miui/superpower/statusbar/panel/a;->e:[F

    iput-object v3, p0, Lcom/miui/superpower/statusbar/panel/a;->f:[F

    iput-object v4, p0, Lcom/miui/superpower/statusbar/panel/a;->g:[F

    iput-object v5, p0, Lcom/miui/superpower/statusbar/panel/a;->h:[I

    iput-object v6, p0, Lcom/miui/superpower/statusbar/panel/a;->i:[I

    iput-object p1, p0, Lcom/miui/superpower/statusbar/panel/a;->j:[I

    :cond_2
    return-void
.end method

.method private t(II)Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/a;->s:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/miui/superpower/statusbar/panel/a;->s:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge p1, v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p2, v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge p2, v2, :cond_0

    iget-object p1, p0, Lcom/miui/superpower/statusbar/panel/a;->s:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private u(IIII)Z
    .locals 10

    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/a;->q:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/a;->q:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr p1, v2

    sub-int/2addr p2, v3

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/miui/superpower/statusbar/panel/a;->o:Landroidx/core/widget/l;

    invoke-virtual {p1}, Landroidx/core/widget/l;->a()V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/miui/superpower/statusbar/panel/a;->G(I)V

    return p1

    :cond_0
    iget-object v5, p0, Lcom/miui/superpower/statusbar/panel/a;->q:Landroid/view/View;

    move-object v4, p0

    move v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-direct/range {v4 .. v9}, Lcom/miui/superpower/statusbar/panel/a;->l(Landroid/view/View;IIII)I

    move-result v6

    iget-object v1, p0, Lcom/miui/superpower/statusbar/panel/a;->o:Landroidx/core/widget/l;

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Landroidx/core/widget/l;->i(IIIII)V

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/miui/superpower/statusbar/panel/a;->G(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private v(II)I
    .locals 3

    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/a;->s:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, p0, Lcom/miui/superpower/statusbar/panel/a;->n:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/superpower/statusbar/panel/a;->s:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget v2, p0, Lcom/miui/superpower/statusbar/panel/a;->n:I

    add-int/2addr v1, v2

    if-ge p2, v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-object v1, p0, Lcom/miui/superpower/statusbar/panel/a;->s:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget v2, p0, Lcom/miui/superpower/statusbar/panel/a;->n:I

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_2

    or-int/lit8 v0, v0, 0x2

    :cond_2
    iget-object p1, p0, Lcom/miui/superpower/statusbar/panel/a;->s:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    iget v1, p0, Lcom/miui/superpower/statusbar/panel/a;->n:I

    sub-int/2addr p1, v1

    if-le p2, p1, :cond_3

    or-int/lit8 v0, v0, 0x8

    :cond_3
    return v0
.end method

.method private y(II)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/a;->q:Landroid/view/View;

    invoke-direct {p0, v0, p1, p2}, Lcom/miui/superpower/statusbar/panel/a;->A(Landroid/view/View;II)Z

    move-result p1

    return p1
.end method


# virtual methods
.method B(Landroid/view/MotionEvent;)V
    .locals 7

    invoke-static {p1}, Landroidx/core/view/e0;->c(Landroid/view/MotionEvent;)I

    move-result v0

    invoke-static {p1}, Landroidx/core/view/e0;->b(Landroid/view/MotionEvent;)I

    move-result v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/superpower/statusbar/panel/a;->c()V

    :cond_0
    iget-object v2, p0, Lcom/miui/superpower/statusbar/panel/a;->k:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/superpower/statusbar/panel/a;->k:Landroid/view/VelocityTracker;

    :cond_1
    iget-object v2, p0, Lcom/miui/superpower/statusbar/panel/a;->k:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    const/4 v3, 0x1

    if-eq v0, v3, :cond_f

    const/4 v4, 0x2

    if-eq v0, v4, :cond_a

    const/4 v4, 0x3

    if-eq v0, v4, :cond_9

    const/4 v4, 0x5

    if-eq v0, v4, :cond_7

    const/4 v4, 0x6

    if-eq v0, v4, :cond_2

    goto/16 :goto_7

    :cond_2
    invoke-static {p1, v1}, Landroidx/core/view/e0;->e(Landroid/view/MotionEvent;I)I

    move-result v0

    iget v1, p0, Lcom/miui/superpower/statusbar/panel/a;->a:I

    if-ne v1, v3, :cond_6

    iget v1, p0, Lcom/miui/superpower/statusbar/panel/a;->c:I

    if-ne v0, v1, :cond_6

    invoke-static {p1}, Landroidx/core/view/e0;->d(Landroid/view/MotionEvent;)I

    move-result v1

    :goto_0
    const/4 v3, -0x1

    if-ge v2, v1, :cond_5

    invoke-static {p1, v2}, Landroidx/core/view/e0;->e(Landroid/view/MotionEvent;I)I

    move-result v4

    iget v5, p0, Lcom/miui/superpower/statusbar/panel/a;->c:I

    if-ne v4, v5, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {p1, v2}, Landroidx/core/view/e0;->f(Landroid/view/MotionEvent;I)F

    move-result v5

    invoke-static {p1, v2}, Landroidx/core/view/e0;->g(Landroid/view/MotionEvent;I)F

    move-result v6

    float-to-int v5, v5

    float-to-int v6, v6

    invoke-direct {p0, v5, v6}, Lcom/miui/superpower/statusbar/panel/a;->t(II)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/superpower/statusbar/panel/a;->q:Landroid/view/View;

    if-ne v5, v6, :cond_4

    invoke-direct {p0, v6, v4}, Lcom/miui/superpower/statusbar/panel/a;->L(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_4

    iget p1, p0, Lcom/miui/superpower/statusbar/panel/a;->c:I

    goto :goto_2

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    move p1, v3

    :goto_2
    if-ne p1, v3, :cond_6

    invoke-direct {p0}, Lcom/miui/superpower/statusbar/panel/a;->C()V

    :cond_6
    invoke-direct {p0, v0}, Lcom/miui/superpower/statusbar/panel/a;->j(I)V

    goto/16 :goto_7

    :cond_7
    invoke-static {p1, v1}, Landroidx/core/view/e0;->e(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v1}, Landroidx/core/view/e0;->f(Landroid/view/MotionEvent;I)F

    move-result v2

    invoke-static {p1, v1}, Landroidx/core/view/e0;->g(Landroid/view/MotionEvent;I)F

    move-result p1

    invoke-direct {p0, v2, p1, v0}, Lcom/miui/superpower/statusbar/panel/a;->E(FFI)V

    iget v1, p0, Lcom/miui/superpower/statusbar/panel/a;->a:I

    if-nez v1, :cond_8

    float-to-int v1, v2

    float-to-int p1, p1

    invoke-direct {p0, v1, p1}, Lcom/miui/superpower/statusbar/panel/a;->t(II)Landroid/view/View;

    move-result-object p1

    :goto_3
    invoke-direct {p0, p1, v0}, Lcom/miui/superpower/statusbar/panel/a;->L(Landroid/view/View;I)Z

    goto/16 :goto_7

    :cond_8
    float-to-int v1, v2

    float-to-int p1, p1

    invoke-direct {p0, v1, p1}, Lcom/miui/superpower/statusbar/panel/a;->y(II)Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/miui/superpower/statusbar/panel/a;->q:Landroid/view/View;

    goto :goto_3

    :cond_9
    iget p1, p0, Lcom/miui/superpower/statusbar/panel/a;->a:I

    if-ne p1, v3, :cond_10

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Lcom/miui/superpower/statusbar/panel/a;->p(FF)V

    goto/16 :goto_6

    :cond_a
    iget v0, p0, Lcom/miui/superpower/statusbar/panel/a;->a:I

    if-ne v0, v3, :cond_c

    iget v0, p0, Lcom/miui/superpower/statusbar/panel/a;->c:I

    invoke-static {p1, v0}, Landroidx/core/view/e0;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroidx/core/view/e0;->f(Landroid/view/MotionEvent;I)F

    move-result v1

    invoke-static {p1, v0}, Landroidx/core/view/e0;->g(Landroid/view/MotionEvent;I)F

    move-result v0

    iget-object v2, p0, Lcom/miui/superpower/statusbar/panel/a;->f:[F

    iget v3, p0, Lcom/miui/superpower/statusbar/panel/a;->c:I

    aget v2, v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/miui/superpower/statusbar/panel/a;->g:[F

    aget v2, v2, v3

    sub-float/2addr v0, v2

    float-to-int v0, v0

    iget-object v2, p0, Lcom/miui/superpower/statusbar/panel/a;->q:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v3, p0, Lcom/miui/superpower/statusbar/panel/a;->q:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v3, v0

    invoke-direct {p0, v2, v3, v1, v0}, Lcom/miui/superpower/statusbar/panel/a;->r(IIII)V

    :cond_b
    :goto_4
    invoke-direct {p0, p1}, Lcom/miui/superpower/statusbar/panel/a;->F(Landroid/view/MotionEvent;)V

    goto :goto_7

    :cond_c
    invoke-static {p1}, Landroidx/core/view/e0;->d(Landroid/view/MotionEvent;)I

    move-result v0

    :goto_5
    if-ge v2, v0, :cond_b

    invoke-static {p1, v2}, Landroidx/core/view/e0;->e(Landroid/view/MotionEvent;I)I

    move-result v1

    invoke-static {p1, v2}, Landroidx/core/view/e0;->f(Landroid/view/MotionEvent;I)F

    move-result v4

    invoke-static {p1, v2}, Landroidx/core/view/e0;->g(Landroid/view/MotionEvent;I)F

    move-result v5

    iget-object v6, p0, Lcom/miui/superpower/statusbar/panel/a;->d:[F

    aget v6, v6, v1

    sub-float/2addr v4, v6

    iget-object v6, p0, Lcom/miui/superpower/statusbar/panel/a;->e:[F

    aget v6, v6, v1

    sub-float/2addr v5, v6

    invoke-direct {p0, v4, v5, v1}, Lcom/miui/superpower/statusbar/panel/a;->D(FFI)V

    iget v4, p0, Lcom/miui/superpower/statusbar/panel/a;->a:I

    if-ne v4, v3, :cond_d

    goto :goto_4

    :cond_d
    iget-object v4, p0, Lcom/miui/superpower/statusbar/panel/a;->d:[F

    aget v4, v4, v1

    float-to-int v4, v4

    iget-object v6, p0, Lcom/miui/superpower/statusbar/panel/a;->e:[F

    aget v6, v6, v1

    float-to-int v6, v6

    invoke-direct {p0, v4, v6}, Lcom/miui/superpower/statusbar/panel/a;->t(II)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4, v5}, Lcom/miui/superpower/statusbar/panel/a;->f(Landroid/view/View;F)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-direct {p0, v4, v1}, Lcom/miui/superpower/statusbar/panel/a;->L(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_4

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_f
    iget p1, p0, Lcom/miui/superpower/statusbar/panel/a;->a:I

    if-ne p1, v3, :cond_10

    invoke-direct {p0}, Lcom/miui/superpower/statusbar/panel/a;->C()V

    :cond_10
    :goto_6
    invoke-virtual {p0}, Lcom/miui/superpower/statusbar/panel/a;->c()V

    goto :goto_7

    :cond_11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {p1, v2}, Landroidx/core/view/e0;->e(Landroid/view/MotionEvent;I)I

    move-result p1

    float-to-int v2, v0

    float-to-int v3, v1

    invoke-direct {p0, v2, v3}, Lcom/miui/superpower/statusbar/panel/a;->t(II)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v0, v1, p1}, Lcom/miui/superpower/statusbar/panel/a;->E(FFI)V

    invoke-direct {p0, v2, p1}, Lcom/miui/superpower/statusbar/panel/a;->L(Landroid/view/View;I)Z

    :cond_12
    :goto_7
    return-void
.end method

.method H(F)V
    .locals 0

    iput p1, p0, Lcom/miui/superpower/statusbar/panel/a;->m:F

    return-void
.end method

.method I(II)V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/superpower/statusbar/panel/a;->r:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/a;->k:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/miui/superpower/statusbar/panel/a;->c:I

    invoke-static {v0, v1}, Landroidx/core/view/VelocityTrackerCompat;->f(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/miui/superpower/statusbar/panel/a;->k:Landroid/view/VelocityTracker;

    iget v2, p0, Lcom/miui/superpower/statusbar/panel/a;->c:I

    invoke-static {v1, v2}, Landroidx/core/view/VelocityTrackerCompat;->g(Landroid/view/VelocityTracker;I)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/miui/superpower/statusbar/panel/a;->u(IIII)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method J(Landroid/view/MotionEvent;)Z
    .locals 8

    invoke-static {p1}, Landroidx/core/view/e0;->c(Landroid/view/MotionEvent;)I

    move-result v0

    invoke-static {p1}, Landroidx/core/view/e0;->b(Landroid/view/MotionEvent;)I

    move-result v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/superpower/statusbar/panel/a;->c()V

    :cond_0
    iget-object v2, p0, Lcom/miui/superpower/statusbar/panel/a;->k:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/superpower/statusbar/panel/a;->k:Landroid/view/VelocityTracker;

    :cond_1
    iget-object v2, p0, Lcom/miui/superpower/statusbar/panel/a;->k:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_a

    if-eq v0, v4, :cond_9

    if-eq v0, v3, :cond_4

    const/4 v5, 0x3

    if-eq v0, v5, :cond_9

    const/4 v5, 0x5

    if-eq v0, v5, :cond_3

    const/4 v3, 0x6

    if-eq v0, v3, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-static {p1, v1}, Landroidx/core/view/e0;->e(Landroid/view/MotionEvent;I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/superpower/statusbar/panel/a;->j(I)V

    goto/16 :goto_3

    :cond_3
    invoke-static {p1, v1}, Landroidx/core/view/e0;->e(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v1}, Landroidx/core/view/e0;->f(Landroid/view/MotionEvent;I)F

    move-result v5

    invoke-static {p1, v1}, Landroidx/core/view/e0;->g(Landroid/view/MotionEvent;I)F

    move-result p1

    invoke-direct {p0, v5, p1, v0}, Lcom/miui/superpower/statusbar/panel/a;->E(FFI)V

    iget v1, p0, Lcom/miui/superpower/statusbar/panel/a;->a:I

    if-ne v1, v3, :cond_b

    float-to-int v1, v5

    float-to-int p1, p1

    invoke-direct {p0, v1, p1}, Lcom/miui/superpower/statusbar/panel/a;->t(II)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/superpower/statusbar/panel/a;->q:Landroid/view/View;

    if-ne p1, v1, :cond_b

    invoke-direct {p0, p1, v0}, Lcom/miui/superpower/statusbar/panel/a;->L(Landroid/view/View;I)Z

    goto/16 :goto_3

    :cond_4
    invoke-static {p1}, Landroidx/core/view/e0;->d(Landroid/view/MotionEvent;)I

    move-result v0

    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_8

    iget-object v3, p0, Lcom/miui/superpower/statusbar/panel/a;->d:[F

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/miui/superpower/statusbar/panel/a;->e:[F

    if-eqz v3, :cond_8

    invoke-static {p1, v1}, Landroidx/core/view/e0;->e(Landroid/view/MotionEvent;I)I

    move-result v3

    iget-object v5, p0, Lcom/miui/superpower/statusbar/panel/a;->d:[F

    array-length v5, v5

    if-ge v3, v5, :cond_7

    iget-object v5, p0, Lcom/miui/superpower/statusbar/panel/a;->e:[F

    array-length v5, v5

    if-lt v3, v5, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {p1, v1}, Landroidx/core/view/e0;->f(Landroid/view/MotionEvent;I)F

    move-result v5

    invoke-static {p1, v1}, Landroidx/core/view/e0;->g(Landroid/view/MotionEvent;I)F

    move-result v6

    iget-object v7, p0, Lcom/miui/superpower/statusbar/panel/a;->d:[F

    aget v7, v7, v3

    sub-float/2addr v5, v7

    iget-object v7, p0, Lcom/miui/superpower/statusbar/panel/a;->e:[F

    aget v7, v7, v3

    sub-float/2addr v6, v7

    invoke-direct {p0, v5, v6, v3}, Lcom/miui/superpower/statusbar/panel/a;->D(FFI)V

    iget v5, p0, Lcom/miui/superpower/statusbar/panel/a;->a:I

    if-ne v5, v4, :cond_6

    goto :goto_2

    :cond_6
    iget-object v5, p0, Lcom/miui/superpower/statusbar/panel/a;->d:[F

    aget v5, v5, v3

    float-to-int v5, v5

    iget-object v7, p0, Lcom/miui/superpower/statusbar/panel/a;->e:[F

    aget v7, v7, v3

    float-to-int v7, v7

    invoke-direct {p0, v5, v7}, Lcom/miui/superpower/statusbar/panel/a;->t(II)Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5, v6}, Lcom/miui/superpower/statusbar/panel/a;->f(Landroid/view/View;F)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-direct {p0, v5, v3}, Lcom/miui/superpower/statusbar/panel/a;->L(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_2

    :cond_7
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    :goto_2
    invoke-direct {p0, p1}, Lcom/miui/superpower/statusbar/panel/a;->F(Landroid/view/MotionEvent;)V

    goto :goto_3

    :cond_9
    invoke-virtual {p0}, Lcom/miui/superpower/statusbar/panel/a;->c()V

    goto :goto_3

    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {p1, v2}, Landroidx/core/view/e0;->e(Landroid/view/MotionEvent;I)I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/miui/superpower/statusbar/panel/a;->E(FFI)V

    float-to-int v0, v0

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/miui/superpower/statusbar/panel/a;->t(II)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/superpower/statusbar/panel/a;->q:Landroid/view/View;

    if-ne v0, v1, :cond_b

    iget v1, p0, Lcom/miui/superpower/statusbar/panel/a;->a:I

    if-ne v1, v3, :cond_b

    invoke-direct {p0, v0, p1}, Lcom/miui/superpower/statusbar/panel/a;->L(Landroid/view/View;I)Z

    :cond_b
    :goto_3
    iget p1, p0, Lcom/miui/superpower/statusbar/panel/a;->a:I

    if-ne p1, v4, :cond_c

    move v2, v4

    :cond_c
    return v2
.end method

.method K(Landroid/view/View;II)Z
    .locals 0

    iput-object p1, p0, Lcom/miui/superpower/statusbar/panel/a;->q:Landroid/view/View;

    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/superpower/statusbar/panel/a;->c:I

    const/4 p1, 0x0

    invoke-direct {p0, p2, p3, p1, p1}, Lcom/miui/superpower/statusbar/panel/a;->u(IIII)Z

    move-result p1

    return p1
.end method

.method a()V
    .locals 9

    invoke-virtual {p0}, Lcom/miui/superpower/statusbar/panel/a;->c()V

    iget v0, p0, Lcom/miui/superpower/statusbar/panel/a;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/a;->o:Landroidx/core/widget/l;

    invoke-virtual {v0}, Landroidx/core/widget/l;->d()I

    move-result v0

    iget-object v1, p0, Lcom/miui/superpower/statusbar/panel/a;->o:Landroidx/core/widget/l;

    invoke-virtual {v1}, Landroidx/core/widget/l;->e()I

    move-result v1

    iget-object v2, p0, Lcom/miui/superpower/statusbar/panel/a;->o:Landroidx/core/widget/l;

    invoke-virtual {v2}, Landroidx/core/widget/l;->a()V

    iget-object v2, p0, Lcom/miui/superpower/statusbar/panel/a;->o:Landroidx/core/widget/l;

    invoke-virtual {v2}, Landroidx/core/widget/l;->d()I

    move-result v5

    iget-object v2, p0, Lcom/miui/superpower/statusbar/panel/a;->o:Landroidx/core/widget/l;

    invoke-virtual {v2}, Landroidx/core/widget/l;->e()I

    move-result v6

    iget-object v3, p0, Lcom/miui/superpower/statusbar/panel/a;->p:Lcom/miui/superpower/statusbar/panel/a$c;

    iget-object v4, p0, Lcom/miui/superpower/statusbar/panel/a;->q:Landroid/view/View;

    sub-int v7, v5, v0

    sub-int v8, v6, v1

    invoke-virtual/range {v3 .. v8}, Lcom/miui/superpower/statusbar/panel/a$c;->e(Landroid/view/View;IIII)V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/superpower/statusbar/panel/a;->G(I)V

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/superpower/statusbar/panel/a;->c:I

    invoke-direct {p0}, Lcom/miui/superpower/statusbar/panel/a;->i()V

    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/a;->k:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/superpower/statusbar/panel/a;->k:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method public m(Z)Z
    .locals 12

    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/a;->q:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/miui/superpower/statusbar/panel/a;->a:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_8

    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/a;->o:Landroidx/core/widget/l;

    invoke-virtual {v0}, Landroidx/core/widget/l;->b()Z

    move-result v0

    iget-object v4, p0, Lcom/miui/superpower/statusbar/panel/a;->o:Landroidx/core/widget/l;

    invoke-virtual {v4}, Landroidx/core/widget/l;->d()I

    move-result v4

    iget-object v5, p0, Lcom/miui/superpower/statusbar/panel/a;->o:Landroidx/core/widget/l;

    invoke-virtual {v5}, Landroidx/core/widget/l;->e()I

    move-result v11

    iget-object v5, p0, Lcom/miui/superpower/statusbar/panel/a;->q:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v9, v4, v5

    iget-object v5, p0, Lcom/miui/superpower/statusbar/panel/a;->q:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v10, v11, v5

    if-nez v0, :cond_1

    if-eqz v10, :cond_1

    iget-object p1, p0, Lcom/miui/superpower/statusbar/panel/a;->q:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setTop(I)V

    return v2

    :cond_1
    if-eqz v9, :cond_2

    iget-object v5, p0, Lcom/miui/superpower/statusbar/panel/a;->q:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_2
    if-eqz v10, :cond_3

    iget-object v5, p0, Lcom/miui/superpower/statusbar/panel/a;->q:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_3
    if-nez v9, :cond_4

    if-eqz v10, :cond_5

    :cond_4
    iget-object v5, p0, Lcom/miui/superpower/statusbar/panel/a;->p:Lcom/miui/superpower/statusbar/panel/a$c;

    iget-object v6, p0, Lcom/miui/superpower/statusbar/panel/a;->q:Landroid/view/View;

    move v7, v4

    move v8, v11

    invoke-virtual/range {v5 .. v10}, Lcom/miui/superpower/statusbar/panel/a$c;->e(Landroid/view/View;IIII)V

    :cond_5
    if-eqz v0, :cond_6

    iget-object v5, p0, Lcom/miui/superpower/statusbar/panel/a;->o:Landroidx/core/widget/l;

    invoke-virtual {v5}, Landroidx/core/widget/l;->f()I

    move-result v5

    if-ne v4, v5, :cond_6

    iget-object v4, p0, Lcom/miui/superpower/statusbar/panel/a;->o:Landroidx/core/widget/l;

    invoke-virtual {v4}, Landroidx/core/widget/l;->g()I

    move-result v4

    if-ne v11, v4, :cond_6

    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/a;->o:Landroidx/core/widget/l;

    invoke-virtual {v0}, Landroidx/core/widget/l;->a()V

    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/a;->o:Landroidx/core/widget/l;

    invoke-virtual {v0}, Landroidx/core/widget/l;->h()Z

    move-result v0

    :cond_6
    if-nez v0, :cond_8

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/miui/superpower/statusbar/panel/a;->s:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/a;->t:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_7
    invoke-direct {p0, v1}, Lcom/miui/superpower/statusbar/panel/a;->G(I)V

    :cond_8
    :goto_0
    iget p1, p0, Lcom/miui/superpower/statusbar/panel/a;->a:I

    if-ne p1, v3, :cond_9

    move v1, v2

    :cond_9
    return v1
.end method

.method w()I
    .locals 1

    iget v0, p0, Lcom/miui/superpower/statusbar/panel/a;->b:I

    return v0
.end method

.method x()I
    .locals 1

    iget v0, p0, Lcom/miui/superpower/statusbar/panel/a;->a:I

    return v0
.end method

.method z()Z
    .locals 2

    iget v0, p0, Lcom/miui/superpower/statusbar/panel/a;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
