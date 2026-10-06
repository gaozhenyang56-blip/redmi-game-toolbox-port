.class public Lcom/miui/gamebooster/widget/SwitchButton;
.super Landroid/widget/CompoundButton;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/widget/SwitchButton$SavedState;
    }
.end annotation


# static fields
.field private static k0:[I

.field private static l0:[I


# instance fields
.field private A:Landroid/graphics/RectF;

.field private B:Landroid/graphics/Paint;

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Landroid/animation/ObjectAnimator;

.field private G:F

.field private H:Landroid/graphics/RectF;

.field private I:F

.field private J:F

.field private K:F

.field private L:I

.field private M:I

.field private N:Landroid/graphics/Paint;

.field private O:Ljava/lang/CharSequence;

.field private P:Ljava/lang/CharSequence;

.field private Q:Landroid/text/TextPaint;

.field private R:Landroid/text/Layout;

.field private S:Landroid/text/Layout;

.field private T:F

.field private U:F

.field private V:I

.field private W:I

.field private a:Landroid/graphics/drawable/Drawable;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Landroid/content/res/ColorStateList;

.field private d:Landroid/content/res/ColorStateList;

.field private e:F

.field private f:F

.field private f0:I

.field private g:Landroid/graphics/RectF;

.field private g0:Z

.field private h:F

.field private h0:Z

.field private i:J

.field private i0:Z

.field private j:Z

.field private j0:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:Landroid/graphics/drawable/Drawable;

.field private v:Landroid/graphics/drawable/Drawable;

.field private w:Landroid/graphics/RectF;

.field private x:Landroid/graphics/RectF;

.field private y:Landroid/graphics/RectF;

.field private z:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/miui/gamebooster/widget/SwitchButton;->k0:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/miui/gamebooster/widget/SwitchButton;->l0:[I

    return-void

    :array_0
    .array-data 4
        0x10100a0
        0x101009e
        0x10100a7
    .end array-data

    :array_1
    .array-data 4
        -0x10100a0
        0x101009e
        0x10100a7
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->E:Z

    iput-boolean v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->g0:Z

    iput-boolean v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->h0:Z

    iput-boolean v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->i0:Z

    invoke-direct {p0, p1, p2}, Lcom/miui/gamebooster/widget/SwitchButton;->f(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private b()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    iput-boolean v1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->i0:Z

    return-void
.end method

.method private c(D)I
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    return p1
.end method

.method static d(I)Landroid/content/res/ColorStateList;
    .locals 9

    const/4 v0, 0x6

    new-array v1, v0, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/4 v3, 0x1

    new-array v5, v3, [I

    const v6, -0x101009e

    aput v6, v5, v4

    aput-object v5, v1, v3

    new-array v5, v2, [I

    fill-array-data v5, :array_1

    aput-object v5, v1, v2

    new-array v5, v2, [I

    fill-array-data v5, :array_2

    const/4 v6, 0x3

    aput-object v5, v1, v6

    new-array v5, v3, [I

    const v7, 0x10100a0

    aput v7, v5, v4

    const/4 v7, 0x4

    aput-object v5, v1, v7

    new-array v5, v3, [I

    const v8, -0x10100a0

    aput v8, v5, v4

    const/4 v8, 0x5

    aput-object v5, v1, v8

    new-array v0, v0, [I

    const/high16 v5, -0x1f000000

    sub-int v5, p0, v5

    aput v5, v0, v4

    const/high16 v4, 0x10000000

    aput v4, v0, v3

    const/high16 v3, -0x30000000

    sub-int/2addr p0, v3

    aput p0, v0, v2

    const/high16 v2, 0x20000000

    aput v2, v0, v6

    aput p0, v0, v7

    aput v2, v0, v8

    new-instance p0, Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p0

    :array_0
    .array-data 4
        -0x101009e
        0x10100a0
    .end array-data

    :array_1
    .array-data 4
        0x10100a0
        0x10100a7
    .end array-data

    :array_2
    .array-data 4
        -0x10100a0
        0x10100a7
    .end array-data
.end method

.method static e(I)Landroid/content/res/ColorStateList;
    .locals 9

    const/4 v0, 0x6

    new-array v1, v0, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/4 v3, 0x1

    new-array v5, v3, [I

    const v6, -0x101009e

    aput v6, v5, v4

    aput-object v5, v1, v3

    new-array v5, v2, [I

    fill-array-data v5, :array_1

    aput-object v5, v1, v2

    new-array v5, v2, [I

    fill-array-data v5, :array_2

    const/4 v6, 0x3

    aput-object v5, v1, v6

    new-array v5, v3, [I

    const v7, 0x10100a0

    aput v7, v5, v4

    const/4 v7, 0x4

    aput-object v5, v1, v7

    new-array v5, v3, [I

    const v8, -0x10100a0

    aput v8, v5, v4

    const/4 v8, 0x5

    aput-object v5, v1, v8

    new-array v0, v0, [I

    const/high16 v5, -0x56000000

    sub-int v5, p0, v5

    aput v5, v0, v4

    const v4, -0x454546

    aput v4, v0, v3

    const/high16 v3, -0x67000000

    sub-int v3, p0, v3

    aput v3, v0, v2

    aput v3, v0, v6

    const/high16 v2, -0x1000000

    or-int/2addr p0, v2

    aput p0, v0, v7

    const p0, -0x111112

    aput p0, v0, v8

    new-instance p0, Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p0

    :array_0
    .array-data 4
        -0x101009e
        0x10100a0
    .end array-data

    :array_1
    .array-data 4
        0x10100a7
        -0x10100a0
    .end array-data

    :array_2
    .array-data 4
        0x10100a7
        0x10100a0
    .end array-data
.end method

.method private f(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->L:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->M:I

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->B:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->N:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->N:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->Q:Landroid/text/TextPaint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->w:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->x:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->y:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->g:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->z:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->A:Landroid/graphics/RectF;

    const/4 v0, 0x2

    new-array v2, v0, [F

    fill-array-data v2, :array_0

    const-string v3, "progress"

    invoke-static {p0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0xfa

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gamebooster/widget/SwitchButton;->F:Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/miui/gamebooster/widget/SwitchButton;->H:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    sget-object v2, Lef/y;->C0:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f071e8e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :cond_0
    move-object v6, v4

    move-object v7, v6

    :goto_0
    if-nez v6, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f080742

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    :cond_1
    if-nez v7, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v7, 0x7f08073c

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    :cond_2
    if-nez p2, :cond_3

    move-object p1, v4

    goto :goto_1

    :cond_3
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_4

    invoke-virtual {p1, v5, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, p2}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setClickable(Z)V

    :goto_2
    iput-object v4, p0, Lcom/miui/gamebooster/widget/SwitchButton;->O:Ljava/lang/CharSequence;

    iput-object v4, p0, Lcom/miui/gamebooster/widget/SwitchButton;->P:Ljava/lang/CharSequence;

    iput v5, p0, Lcom/miui/gamebooster/widget/SwitchButton;->V:I

    iput v5, p0, Lcom/miui/gamebooster/widget/SwitchButton;->W:I

    iput v5, p0, Lcom/miui/gamebooster/widget/SwitchButton;->f0:I

    iput-object v6, p0, Lcom/miui/gamebooster/widget/SwitchButton;->a:Landroid/graphics/drawable/Drawable;

    iput-object v4, p0, Lcom/miui/gamebooster/widget/SwitchButton;->d:Landroid/content/res/ColorStateList;

    if-eqz v6, :cond_5

    move p1, v1

    goto :goto_3

    :cond_5
    move p1, v5

    :goto_3
    iput-boolean p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->C:Z

    iput v5, p0, Lcom/miui/gamebooster/widget/SwitchButton;->k:I

    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    const p1, 0x327fc2

    iput p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->k:I

    iget-boolean p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->C:Z

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->d:Landroid/content/res/ColorStateList;

    if-nez p1, :cond_6

    iget p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->k:I

    invoke-static {p1}, Lcom/miui/gamebooster/widget/SwitchButton;->e(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->d:Landroid/content/res/ColorStateList;

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    iput p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->p:I

    :cond_6
    const/4 p1, 0x0

    float-to-double v8, p1

    invoke-direct {p0, v8, v9}, Lcom/miui/gamebooster/widget/SwitchButton;->c(D)I

    move-result p2

    iput p2, p0, Lcom/miui/gamebooster/widget/SwitchButton;->l:I

    invoke-direct {p0, v8, v9}, Lcom/miui/gamebooster/widget/SwitchButton;->c(D)I

    move-result p2

    iput p2, p0, Lcom/miui/gamebooster/widget/SwitchButton;->m:I

    iput-object v7, p0, Lcom/miui/gamebooster/widget/SwitchButton;->b:Landroid/graphics/drawable/Drawable;

    iput-object v4, p0, Lcom/miui/gamebooster/widget/SwitchButton;->c:Landroid/content/res/ColorStateList;

    if-eqz v7, :cond_7

    move p2, v1

    goto :goto_4

    :cond_7
    move p2, v5

    :goto_4
    iput-boolean p2, p0, Lcom/miui/gamebooster/widget/SwitchButton;->D:Z

    if-nez p2, :cond_8

    iget p2, p0, Lcom/miui/gamebooster/widget/SwitchButton;->k:I

    invoke-static {p2}, Lcom/miui/gamebooster/widget/SwitchButton;->d(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/gamebooster/widget/SwitchButton;->c:Landroid/content/res/ColorStateList;

    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p2

    iput p2, p0, Lcom/miui/gamebooster/widget/SwitchButton;->q:I

    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->c:Landroid/content/res/ColorStateList;

    sget-object v2, Lcom/miui/gamebooster/widget/SwitchButton;->k0:[I

    invoke-virtual {v0, v2, p2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p2

    iput p2, p0, Lcom/miui/gamebooster/widget/SwitchButton;->r:I

    :cond_8
    iget-object p2, p0, Lcom/miui/gamebooster/widget/SwitchButton;->g:Landroid/graphics/RectF;

    invoke-virtual {p2, v3, v3, v3, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p2, p0, Lcom/miui/gamebooster/widget/SwitchButton;->g:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    cmpl-float p1, p2, p1

    const/high16 p2, 0x3f800000    # 1.0f

    const v0, 0x400851ec    # 2.13f

    if-ltz p1, :cond_9

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :cond_9
    iput v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->h:F

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->e:F

    iput p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->f:F

    const/16 p1, 0xfa

    int-to-long v2, p1

    iput-wide v2, p0, Lcom/miui/gamebooster/widget/SwitchButton;->i:J

    iput-boolean v1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->j:Z

    iget-object p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->F:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-direct {p0, p2}, Lcom/miui/gamebooster/widget/SwitchButton;->setProgress(F)V

    :cond_a
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1d

    if-lt p1, p2, :cond_b

    invoke-virtual {p0, v5}, Landroid/widget/CompoundButton;->setForceDarkAllowed(Z)V

    :cond_b
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x10100da
        0x10100e5
    .end array-data
.end method

.method private g()Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private getProgress()F
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->G:F

    return v0
.end method

.method private getStatusBasedOnPos()Z
    .locals 2

    invoke-direct {p0}, Lcom/miui/gamebooster/widget/SwitchButton;->getProgress()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private h(Ljava/lang/CharSequence;)Landroid/text/Layout;
    .locals 9

    new-instance v8, Landroid/text/StaticLayout;

    iget-object v2, p0, Lcom/miui/gamebooster/widget/SwitchButton;->Q:Landroid/text/TextPaint;

    invoke-static {p1, v2}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v3, v0

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v8
.end method

.method private i(I)I
    .locals 5

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    iget v1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->m:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->C:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->m:I

    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    if-ne p1, v1, :cond_4

    iget p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->m:I

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    int-to-float p1, p1

    iget-object v3, p0, Lcom/miui/gamebooster/widget/SwitchButton;->g:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr p1, v4

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p1, v3

    float-to-double v3, p1

    invoke-direct {p0, v3, v4}, Lcom/miui/gamebooster/widget/SwitchButton;->c(D)I

    move-result p1

    iput p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->o:I

    int-to-float p1, p1

    iget v3, p0, Lcom/miui/gamebooster/widget/SwitchButton;->U:F

    invoke-static {p1, v3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-double v3, p1

    invoke-direct {p0, v3, v4}, Lcom/miui/gamebooster/widget/SwitchButton;->c(D)I

    move-result p1

    iput p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->o:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    add-int/2addr p1, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    add-int/2addr p1, v3

    int-to-float p1, p1

    iget-object v3, p0, Lcom/miui/gamebooster/widget/SwitchButton;->g:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    sub-float/2addr p1, v3

    iget-object v3, p0, Lcom/miui/gamebooster/widget/SwitchButton;->g:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    sub-float/2addr p1, v3

    int-to-float v3, v0

    cmpl-float p1, p1, v3

    if-lez p1, :cond_1

    iput v2, p0, Lcom/miui/gamebooster/widget/SwitchButton;->m:I

    :cond_1
    iget p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->m:I

    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    sub-int p1, v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr p1, v3

    int-to-float p1, p1

    iget-object v3, p0, Lcom/miui/gamebooster/widget/SwitchButton;->g:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    add-float/2addr p1, v3

    iget-object v3, p0, Lcom/miui/gamebooster/widget/SwitchButton;->g:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    add-float/2addr p1, v1

    float-to-double v3, p1

    invoke-direct {p0, v3, v4}, Lcom/miui/gamebooster/widget/SwitchButton;->c(D)I

    move-result p1

    iput p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->o:I

    if-gez p1, :cond_2

    :goto_0
    iput v2, p0, Lcom/miui/gamebooster/widget/SwitchButton;->o:I

    iput v2, p0, Lcom/miui/gamebooster/widget/SwitchButton;->m:I

    return v0

    :cond_2
    int-to-float p1, p1

    iget-object v1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->g:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, v3

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p1, v1

    float-to-double v3, p1

    invoke-direct {p0, v3, v4}, Lcom/miui/gamebooster/widget/SwitchButton;->c(D)I

    move-result p1

    iput p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->m:I

    :cond_3
    iget p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->m:I

    if-gez p1, :cond_8

    goto :goto_0

    :cond_4
    iget p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->m:I

    if-nez p1, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41a00000    # 20.0f

    mul-float/2addr p1, v1

    float-to-double v3, p1

    invoke-direct {p0, v3, v4}, Lcom/miui/gamebooster/widget/SwitchButton;->c(D)I

    move-result p1

    iput p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->m:I

    :cond_5
    iget p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->m:I

    int-to-float p1, p1

    iget-object v1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->g:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr p1, v3

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p1, v1

    float-to-double v3, p1

    invoke-direct {p0, v3, v4}, Lcom/miui/gamebooster/widget/SwitchButton;->c(D)I

    move-result p1

    iput p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->o:I

    if-gez p1, :cond_6

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->U:F

    int-to-float p1, p1

    sub-float/2addr v0, p1

    float-to-double v0, v0

    invoke-direct {p0, v0, v1}, Lcom/miui/gamebooster/widget/SwitchButton;->c(D)I

    move-result p1

    if-lez p1, :cond_7

    iget v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->o:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->o:I

    iget v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->m:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->m:I

    :cond_7
    iget p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->m:I

    iget v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->o:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_8
    return v0
.end method

.method private j(I)I
    .locals 9

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    iget v1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->l:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->C:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->l:I

    :cond_0
    iget v1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->T:F

    float-to-double v1, v1

    invoke-direct {p0, v1, v2}, Lcom/miui/gamebooster/widget/SwitchButton;->c(D)I

    move-result v1

    iget v2, p0, Lcom/miui/gamebooster/widget/SwitchButton;->h:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    const v4, 0x400851ec    # 2.13f

    if-nez v2, :cond_1

    iput v4, p0, Lcom/miui/gamebooster/widget/SwitchButton;->h:F

    :cond_1
    const/high16 v2, 0x40000000    # 2.0f

    const/4 v5, 0x0

    if-ne p1, v2, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    sub-int p1, v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr p1, v2

    iget v2, p0, Lcom/miui/gamebooster/widget/SwitchButton;->l:I

    if-eqz v2, :cond_3

    int-to-float v2, v2

    iget v4, p0, Lcom/miui/gamebooster/widget/SwitchButton;->h:F

    mul-float/2addr v2, v4

    float-to-double v6, v2

    invoke-direct {p0, v6, v7}, Lcom/miui/gamebooster/widget/SwitchButton;->c(D)I

    move-result v2

    iget v4, p0, Lcom/miui/gamebooster/widget/SwitchButton;->W:I

    add-int/2addr v4, v1

    iget v6, p0, Lcom/miui/gamebooster/widget/SwitchButton;->l:I

    sub-int v6, v2, v6

    iget-object v7, p0, Lcom/miui/gamebooster/widget/SwitchButton;->g:Landroid/graphics/RectF;

    iget v8, v7, Landroid/graphics/RectF;->left:F

    iget v7, v7, Landroid/graphics/RectF;->right:F

    invoke-static {v8, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    float-to-double v7, v7

    invoke-direct {p0, v7, v8}, Lcom/miui/gamebooster/widget/SwitchButton;->c(D)I

    move-result v7

    add-int/2addr v6, v7

    sub-int/2addr v4, v6

    int-to-float v2, v2

    iget-object v6, p0, Lcom/miui/gamebooster/widget/SwitchButton;->g:Landroid/graphics/RectF;

    iget v7, v6, Landroid/graphics/RectF;->left:F

    add-float/2addr v7, v2

    iget v6, v6, Landroid/graphics/RectF;->right:F

    add-float/2addr v7, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v7, v6

    float-to-double v6, v7

    invoke-direct {p0, v6, v7}, Lcom/miui/gamebooster/widget/SwitchButton;->c(D)I

    move-result v6

    iput v6, p0, Lcom/miui/gamebooster/widget/SwitchButton;->n:I

    if-gez v6, :cond_2

    iput v5, p0, Lcom/miui/gamebooster/widget/SwitchButton;->l:I

    :cond_2
    iget-object v6, p0, Lcom/miui/gamebooster/widget/SwitchButton;->g:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-float/2addr v2, v6

    iget-object v6, p0, Lcom/miui/gamebooster/widget/SwitchButton;->g:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-float/2addr v2, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    int-to-float p1, p1

    cmpl-float p1, v2, p1

    if-lez p1, :cond_3

    iput v5, p0, Lcom/miui/gamebooster/widget/SwitchButton;->l:I

    :cond_3
    iget p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->l:I

    if-nez p1, :cond_b

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    sub-int p1, v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr p1, v2

    int-to-float p1, p1

    iget-object v2, p0, Lcom/miui/gamebooster/widget/SwitchButton;->g:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    sub-float/2addr p1, v2

    iget-object v2, p0, Lcom/miui/gamebooster/widget/SwitchButton;->g:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    sub-float/2addr p1, v2

    float-to-double v2, p1

    invoke-direct {p0, v2, v3}, Lcom/miui/gamebooster/widget/SwitchButton;->c(D)I

    move-result p1

    if-gez p1, :cond_4

    :goto_0
    iput v5, p0, Lcom/miui/gamebooster/widget/SwitchButton;->l:I

    iput v5, p0, Lcom/miui/gamebooster/widget/SwitchButton;->n:I

    return v0

    :cond_4
    int-to-float v2, p1

    iget v3, p0, Lcom/miui/gamebooster/widget/SwitchButton;->h:F

    div-float v3, v2, v3

    float-to-double v3, v3

    invoke-direct {p0, v3, v4}, Lcom/miui/gamebooster/widget/SwitchButton;->c(D)I

    move-result v3

    iput v3, p0, Lcom/miui/gamebooster/widget/SwitchButton;->l:I

    iget-object v3, p0, Lcom/miui/gamebooster/widget/SwitchButton;->g:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v4

    iget v3, v3, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-direct {p0, v2, v3}, Lcom/miui/gamebooster/widget/SwitchButton;->c(D)I

    move-result v2

    iput v2, p0, Lcom/miui/gamebooster/widget/SwitchButton;->n:I

    if-gez v2, :cond_5

    goto :goto_0

    :cond_5
    iget v2, p0, Lcom/miui/gamebooster/widget/SwitchButton;->W:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/miui/gamebooster/widget/SwitchButton;->l:I

    sub-int/2addr p1, v2

    iget-object v2, p0, Lcom/miui/gamebooster/widget/SwitchButton;->g:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v2, v2, Landroid/graphics/RectF;->right:F

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-double v2, v2

    invoke-direct {p0, v2, v3}, Lcom/miui/gamebooster/widget/SwitchButton;->c(D)I

    move-result v2

    add-int/2addr p1, v2

    sub-int/2addr v1, p1

    if-lez v1, :cond_6

    iget p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->l:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->l:I

    :cond_6
    iget p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->l:I

    if-gez p1, :cond_b

    goto :goto_0

    :cond_7
    iget p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->l:I

    if-nez p1, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41a00000    # 20.0f

    mul-float/2addr p1, v2

    float-to-double v6, p1

    invoke-direct {p0, v6, v7}, Lcom/miui/gamebooster/widget/SwitchButton;->c(D)I

    move-result p1

    iput p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->l:I

    :cond_8
    iget p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->h:F

    cmpl-float p1, p1, v3

    if-nez p1, :cond_9

    iput v4, p0, Lcom/miui/gamebooster/widget/SwitchButton;->h:F

    :cond_9
    iget p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->l:I

    int-to-float p1, p1

    iget v2, p0, Lcom/miui/gamebooster/widget/SwitchButton;->h:F

    mul-float/2addr p1, v2

    float-to-double v6, p1

    invoke-direct {p0, v6, v7}, Lcom/miui/gamebooster/widget/SwitchButton;->c(D)I

    move-result p1

    iget v2, p0, Lcom/miui/gamebooster/widget/SwitchButton;->W:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/gamebooster/widget/SwitchButton;->l:I

    sub-int v2, p1, v2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/miui/gamebooster/widget/SwitchButton;->g:Landroid/graphics/RectF;

    iget v6, v4, Landroid/graphics/RectF;->left:F

    iget v4, v4, Landroid/graphics/RectF;->right:F

    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    add-float/2addr v2, v4

    iget v4, p0, Lcom/miui/gamebooster/widget/SwitchButton;->V:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    sub-float/2addr v1, v2

    float-to-double v1, v1

    invoke-direct {p0, v1, v2}, Lcom/miui/gamebooster/widget/SwitchButton;->c(D)I

    move-result v1

    int-to-float p1, p1

    iget-object v2, p0, Lcom/miui/gamebooster/widget/SwitchButton;->g:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, p1

    iget v2, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v2

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v4, v2

    float-to-double v6, v4

    invoke-direct {p0, v6, v7}, Lcom/miui/gamebooster/widget/SwitchButton;->c(D)I

    move-result v2

    iput v2, p0, Lcom/miui/gamebooster/widget/SwitchButton;->n:I

    if-gez v2, :cond_a

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->g:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-float/2addr p1, v0

    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->g:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-float/2addr p1, v0

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    float-to-double v0, p1

    invoke-direct {p0, v0, v1}, Lcom/miui/gamebooster/widget/SwitchButton;->c(D)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_b
    return v0
.end method

.method private m()V
    .locals 10

    iget v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->l:I

    if-eqz v0, :cond_9

    iget v1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->m:I

    if-eqz v1, :cond_9

    iget v2, p0, Lcom/miui/gamebooster/widget/SwitchButton;->n:I

    if-eqz v2, :cond_9

    iget v2, p0, Lcom/miui/gamebooster/widget/SwitchButton;->o:I

    if-nez v2, :cond_0

    goto/16 :goto_2

    :cond_0
    iget v2, p0, Lcom/miui/gamebooster/widget/SwitchButton;->e:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->e:F

    :cond_1
    iget v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->f:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    iget v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->n:I

    iget v1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->o:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->f:F

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/miui/gamebooster/widget/SwitchButton;->n:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/gamebooster/widget/SwitchButton;->g:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/miui/gamebooster/widget/SwitchButton;->g:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-direct {p0, v2, v3}, Lcom/miui/gamebooster/widget/SwitchButton;->c(D)I

    move-result v2

    iget v3, p0, Lcom/miui/gamebooster/widget/SwitchButton;->o:I

    int-to-float v3, v3

    iget-object v5, p0, Lcom/miui/gamebooster/widget/SwitchButton;->g:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    sub-float/2addr v3, v5

    iget-object v5, p0, Lcom/miui/gamebooster/widget/SwitchButton;->g:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    sub-float/2addr v3, v5

    float-to-double v5, v3

    invoke-direct {p0, v5, v6}, Lcom/miui/gamebooster/widget/SwitchButton;->c(D)I

    move-result v3

    const/4 v5, 0x1

    if-gt v1, v3, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/miui/gamebooster/widget/SwitchButton;->g:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    add-float/2addr v1, v3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/miui/gamebooster/widget/SwitchButton;->g:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-static {v4, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    add-float/2addr v6, v7

    sub-int/2addr v1, v3

    add-int/2addr v1, v5

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v1, v6

    :goto_0
    iget v3, p0, Lcom/miui/gamebooster/widget/SwitchButton;->n:I

    if-gt v0, v3, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/miui/gamebooster/widget/SwitchButton;->g:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-float/2addr v0, v2

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    iget-object v6, p0, Lcom/miui/gamebooster/widget/SwitchButton;->g:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-float/2addr v3, v6

    sub-int/2addr v0, v2

    add-int/2addr v0, v5

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr v0, v3

    :goto_1
    iget-object v2, p0, Lcom/miui/gamebooster/widget/SwitchButton;->w:Landroid/graphics/RectF;

    iget v3, p0, Lcom/miui/gamebooster/widget/SwitchButton;->l:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget v6, p0, Lcom/miui/gamebooster/widget/SwitchButton;->m:I

    int-to-float v6, v6

    add-float/2addr v6, v1

    invoke-virtual {v2, v0, v1, v3, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, p0, Lcom/miui/gamebooster/widget/SwitchButton;->w:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lcom/miui/gamebooster/widget/SwitchButton;->g:Landroid/graphics/RectF;

    iget v7, v6, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v7

    iget-object v7, p0, Lcom/miui/gamebooster/widget/SwitchButton;->x:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v6, v6, Landroid/graphics/RectF;->top:F

    sub-float v8, v2, v6

    iget v9, p0, Lcom/miui/gamebooster/widget/SwitchButton;->n:I

    int-to-float v9, v9

    add-float/2addr v9, v3

    sub-float/2addr v2, v6

    iget v6, p0, Lcom/miui/gamebooster/widget/SwitchButton;->o:I

    int-to-float v6, v6

    add-float/2addr v2, v6

    invoke-virtual {v7, v3, v8, v9, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, p0, Lcom/miui/gamebooster/widget/SwitchButton;->y:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/miui/gamebooster/widget/SwitchButton;->w:Landroid/graphics/RectF;

    iget v6, v3, Landroid/graphics/RectF;->left:F

    iget-object v7, p0, Lcom/miui/gamebooster/widget/SwitchButton;->x:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    iget-object v8, p0, Lcom/miui/gamebooster/widget/SwitchButton;->g:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    sub-float/2addr v7, v8

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float/2addr v7, v3

    invoke-virtual {v2, v6, v4, v7, v4}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-direct {p0}, Lcom/miui/gamebooster/widget/SwitchButton;->g()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/miui/gamebooster/widget/SwitchButton;->y:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget-object v3, p0, Lcom/miui/gamebooster/widget/SwitchButton;->w:Landroid/graphics/RectF;

    add-float v4, v0, v2

    iget v6, p0, Lcom/miui/gamebooster/widget/SwitchButton;->l:I

    int-to-float v6, v6

    add-float/2addr v0, v6

    add-float/2addr v0, v2

    iget v2, p0, Lcom/miui/gamebooster/widget/SwitchButton;->m:I

    int-to-float v2, v2

    add-float/2addr v2, v1

    invoke-virtual {v3, v4, v1, v0, v2}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_5
    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->x:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->x:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v2, p0, Lcom/miui/gamebooster/widget/SwitchButton;->f:F

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->f:F

    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/miui/gamebooster/widget/SwitchButton;->x:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget v4, v2, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iget v2, v2, Landroid/graphics/RectF;->right:F

    float-to-double v6, v2

    invoke-direct {p0, v6, v7}, Lcom/miui/gamebooster/widget/SwitchButton;->c(D)I

    move-result v2

    iget-object v6, p0, Lcom/miui/gamebooster/widget/SwitchButton;->x:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    float-to-double v6, v6

    invoke-direct {p0, v6, v7}, Lcom/miui/gamebooster/widget/SwitchButton;->c(D)I

    move-result v6

    invoke-virtual {v0, v3, v4, v2, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_6
    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->R:Landroid/text/Layout;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->x:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v3, p0, Lcom/miui/gamebooster/widget/SwitchButton;->V:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    iget v3, p0, Lcom/miui/gamebooster/widget/SwitchButton;->l:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    iget-object v3, p0, Lcom/miui/gamebooster/widget/SwitchButton;->g:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v3

    iget-object v3, p0, Lcom/miui/gamebooster/widget/SwitchButton;->R:Landroid/text/Layout;

    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v0, v3

    div-float/2addr v0, v1

    add-float/2addr v2, v0

    iget v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->f0:I

    int-to-float v0, v0

    sub-float/2addr v2, v0

    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->x:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v4, p0, Lcom/miui/gamebooster/widget/SwitchButton;->R:Landroid/text/Layout;

    invoke-virtual {v4}, Landroid/text/Layout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v0, v4

    div-float/2addr v0, v1

    add-float/2addr v3, v0

    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->z:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/miui/gamebooster/widget/SwitchButton;->R:Landroid/text/Layout;

    invoke-virtual {v4}, Landroid/text/Layout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    iget-object v6, p0, Lcom/miui/gamebooster/widget/SwitchButton;->R:Landroid/text/Layout;

    invoke-virtual {v6}, Landroid/text/Layout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v3

    invoke-virtual {v0, v2, v3, v4, v6}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_7
    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->S:Landroid/text/Layout;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->x:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v3, p0, Lcom/miui/gamebooster/widget/SwitchButton;->V:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    iget v3, p0, Lcom/miui/gamebooster/widget/SwitchButton;->l:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    iget-object v3, p0, Lcom/miui/gamebooster/widget/SwitchButton;->g:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v3

    iget-object v3, p0, Lcom/miui/gamebooster/widget/SwitchButton;->S:Landroid/text/Layout;

    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v0, v3

    div-float/2addr v0, v1

    sub-float/2addr v2, v0

    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->S:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v2, v0

    iget v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->f0:I

    int-to-float v0, v0

    add-float/2addr v2, v0

    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->x:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v4, p0, Lcom/miui/gamebooster/widget/SwitchButton;->S:Landroid/text/Layout;

    invoke-virtual {v4}, Landroid/text/Layout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v0, v4

    div-float/2addr v0, v1

    add-float/2addr v3, v0

    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->A:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->S:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v2

    iget-object v4, p0, Lcom/miui/gamebooster/widget/SwitchButton;->S:Landroid/text/Layout;

    invoke-virtual {v4}, Landroid/text/Layout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v3

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_8
    iput-boolean v5, p0, Lcom/miui/gamebooster/widget/SwitchButton;->h0:Z

    :cond_9
    :goto_2
    return-void
.end method

.method private setDrawableState(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private setProgress(F)V
    .locals 3
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    cmpg-float v0, p1, v2

    if-gez v0, :cond_1

    move p1, v2

    :cond_1
    :goto_0
    iput p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->G:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method protected a(Z)V
    .locals 4

    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->F:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->F:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->F:Landroid/animation/ObjectAnimator;

    iget-wide v1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->i:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->F:Landroid/animation/ObjectAnimator;

    new-array v2, v2, [F

    iget v3, p0, Lcom/miui/gamebooster/widget/SwitchButton;->G:F

    aput v3, v2, v1

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v2, v0

    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->F:Landroid/animation/ObjectAnimator;

    new-array v2, v2, [F

    iget v3, p0, Lcom/miui/gamebooster/widget/SwitchButton;->G:F

    aput v3, v2, v1

    const/4 v1, 0x0

    aput v1, v2, v0

    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    :goto_0
    iget-object p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->F:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 4

    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    iget-boolean v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->C:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->d:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    iget v2, p0, Lcom/miui/gamebooster/widget/SwitchButton;->p:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->p:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->a:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/widget/SwitchButton;->setDrawableState(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/gamebooster/widget/SwitchButton;->l0:[I

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/miui/gamebooster/widget/SwitchButton;->k0:[I

    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    sget-object v3, Lcom/miui/gamebooster/widget/SwitchButton;->k0:[I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    iput v3, p0, Lcom/miui/gamebooster/widget/SwitchButton;->s:I

    sget-object v3, Lcom/miui/gamebooster/widget/SwitchButton;->l0:[I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iput v1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->t:I

    :cond_2
    iget-boolean v1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->D:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->c:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    iget v3, p0, Lcom/miui/gamebooster/widget/SwitchButton;->q:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iput v1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->q:I

    iget-object v2, p0, Lcom/miui/gamebooster/widget/SwitchButton;->c:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->r:I

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->b:Landroid/graphics/drawable/Drawable;

    instance-of v2, v1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/miui/gamebooster/widget/SwitchButton;->j:Z

    if-eqz v2, :cond_4

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    iput-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->v:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->b:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/widget/SwitchButton;->setDrawableState(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->u:Landroid/graphics/drawable/Drawable;

    :cond_5
    :goto_3
    return-void
.end method

.method public getAnimationDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->i:J

    return-wide v0
.end method

.method public getBackColor()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->c:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getBackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->b:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getBackRadius()F
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->f:F

    return v0
.end method

.method public getBackSizeF()Landroid/graphics/PointF;
    .locals 3

    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->x:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/miui/gamebooster/widget/SwitchButton;->x:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public getTextOff()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->P:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextOn()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->O:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getThumbColor()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->d:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->a:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbHeight()F
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->m:I

    int-to-float v0, v0

    return v0
.end method

.method public getThumbMargin()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->g:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getThumbRadius()F
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->e:F

    return v0
.end method

.method public getThumbRangeRatio()F
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->h:F

    return v0
.end method

.method public getThumbWidth()F
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->l:I

    int-to-float v0, v0

    return v0
.end method

.method public getTintColor()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->k:I

    return v0
.end method

.method public k(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->O:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/miui/gamebooster/widget/SwitchButton;->P:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->R:Landroid/text/Layout;

    iput-object p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->S:Landroid/text/Layout;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->h0:Z

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public l(FFFF)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->g:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->h0:Z

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->h0:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/gamebooster/widget/SwitchButton;->m()V

    :cond_0
    iget-boolean v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->h0:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->D:Z

    const/high16 v1, 0x437f0000    # 255.0f

    const/16 v2, 0xff

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->j:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->u:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->v:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->u:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->v:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/miui/gamebooster/widget/SwitchButton;->v:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/miui/gamebooster/widget/SwitchButton;->u:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-direct {p0}, Lcom/miui/gamebooster/widget/SwitchButton;->getProgress()F

    move-result v4

    mul-float/2addr v4, v1

    float-to-int v4, v4

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    rsub-int v0, v4, 0xff

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_4

    :cond_4
    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_4

    :cond_5
    iget-boolean v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->j:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->q:I

    goto :goto_2

    :cond_6
    iget v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->r:I

    :goto_2
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_7

    iget v3, p0, Lcom/miui/gamebooster/widget/SwitchButton;->r:I

    goto :goto_3

    :cond_7
    iget v3, p0, Lcom/miui/gamebooster/widget/SwitchButton;->q:I

    :goto_3
    invoke-direct {p0}, Lcom/miui/gamebooster/widget/SwitchButton;->getProgress()F

    move-result v4

    mul-float/2addr v4, v1

    float-to-int v4, v4

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    mul-int/2addr v5, v4

    div-int/2addr v5, v2

    iget-object v6, p0, Lcom/miui/gamebooster/widget/SwitchButton;->B:Landroid/graphics/Paint;

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v7

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v8

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-virtual {v6, v5, v7, v8, v0}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->x:Landroid/graphics/RectF;

    iget v5, p0, Lcom/miui/gamebooster/widget/SwitchButton;->f:F

    iget-object v6, p0, Lcom/miui/gamebooster/widget/SwitchButton;->B:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    rsub-int v0, v4, 0xff

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    mul-int/2addr v4, v0

    div-int/2addr v4, v2

    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->B:Landroid/graphics/Paint;

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v5

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-virtual {v0, v4, v5, v6, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->x:Landroid/graphics/RectF;

    iget v3, p0, Lcom/miui/gamebooster/widget/SwitchButton;->f:F

    iget-object v4, p0, Lcom/miui/gamebooster/widget/SwitchButton;->B:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->B:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->B:Landroid/graphics/Paint;

    iget v3, p0, Lcom/miui/gamebooster/widget/SwitchButton;->q:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->x:Landroid/graphics/RectF;

    iget v3, p0, Lcom/miui/gamebooster/widget/SwitchButton;->f:F

    iget-object v4, p0, Lcom/miui/gamebooster/widget/SwitchButton;->B:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_4
    invoke-direct {p0}, Lcom/miui/gamebooster/widget/SwitchButton;->getProgress()F

    move-result v0

    float-to-double v3, v0

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v3, v5

    if-lez v0, :cond_9

    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->R:Landroid/text/Layout;

    goto :goto_5

    :cond_9
    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->S:Landroid/text/Layout;

    :goto_5
    invoke-direct {p0}, Lcom/miui/gamebooster/widget/SwitchButton;->getProgress()F

    move-result v3

    float-to-double v3, v3

    cmpl-double v3, v3, v5

    if-lez v3, :cond_a

    iget-object v3, p0, Lcom/miui/gamebooster/widget/SwitchButton;->z:Landroid/graphics/RectF;

    goto :goto_6

    :cond_a
    iget-object v3, p0, Lcom/miui/gamebooster/widget/SwitchButton;->A:Landroid/graphics/RectF;

    :goto_6
    const/4 v4, 0x0

    if-eqz v0, :cond_e

    if-eqz v3, :cond_e

    invoke-direct {p0}, Lcom/miui/gamebooster/widget/SwitchButton;->getProgress()F

    move-result v7

    float-to-double v7, v7

    const-wide/high16 v9, 0x3fe8000000000000L    # 0.75

    cmpl-double v7, v7, v9

    const/high16 v8, 0x40800000    # 4.0f

    if-ltz v7, :cond_b

    invoke-direct {p0}, Lcom/miui/gamebooster/widget/SwitchButton;->getProgress()F

    move-result v7

    mul-float/2addr v7, v8

    const/high16 v8, 0x40400000    # 3.0f

    sub-float/2addr v7, v8

    goto :goto_7

    :cond_b
    invoke-direct {p0}, Lcom/miui/gamebooster/widget/SwitchButton;->getProgress()F

    move-result v7

    float-to-double v9, v7

    const-wide/high16 v11, 0x3fd0000000000000L    # 0.25

    cmpg-double v7, v9, v11

    if-gez v7, :cond_c

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {p0}, Lcom/miui/gamebooster/widget/SwitchButton;->getProgress()F

    move-result v9

    mul-float/2addr v9, v8

    sub-float/2addr v7, v9

    goto :goto_7

    :cond_c
    move v7, v4

    :goto_7
    mul-float/2addr v7, v1

    float-to-int v1, v7

    invoke-direct {p0}, Lcom/miui/gamebooster/widget/SwitchButton;->getProgress()F

    move-result v7

    float-to-double v7, v7

    cmpl-double v7, v7, v5

    if-lez v7, :cond_d

    iget v7, p0, Lcom/miui/gamebooster/widget/SwitchButton;->s:I

    goto :goto_8

    :cond_d
    iget v7, p0, Lcom/miui/gamebooster/widget/SwitchButton;->t:I

    :goto_8
    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    mul-int/2addr v8, v1

    div-int/2addr v8, v2

    invoke-virtual {v0}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v9

    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    invoke-virtual {v1, v8, v2, v9, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v1, v3, Landroid/graphics/RectF;->left:F

    iget v2, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_e
    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->H:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->w:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/miui/gamebooster/widget/SwitchButton;->g()Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v0, -0x1

    :cond_f
    iget-object v1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->H:Landroid/graphics/RectF;

    iget v2, p0, Lcom/miui/gamebooster/widget/SwitchButton;->G:F

    iget-object v3, p0, Lcom/miui/gamebooster/widget/SwitchButton;->y:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    mul-float/2addr v2, v3

    int-to-float v0, v0

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2, v4}, Landroid/graphics/RectF;->offset(FF)V

    iget-boolean v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->C:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->a:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->H:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v1, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v1, v1, Landroid/graphics/RectF;->right:F

    float-to-double v7, v1

    invoke-direct {p0, v7, v8}, Lcom/miui/gamebooster/widget/SwitchButton;->c(D)I

    move-result v1

    iget-object v4, p0, Lcom/miui/gamebooster/widget/SwitchButton;->H:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-double v7, v4

    invoke-direct {p0, v7, v8}, Lcom/miui/gamebooster/widget/SwitchButton;->c(D)I

    move-result v4

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_9

    :cond_10
    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->B:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->p:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->H:Landroid/graphics/RectF;

    iget v1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->e:F

    iget-object v2, p0, Lcom/miui/gamebooster/widget/SwitchButton;->B:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_9
    iget-boolean v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->E:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->N:Landroid/graphics/Paint;

    const-string v1, "#AA0000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->x:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->N:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->N:Landroid/graphics/Paint;

    const-string v1, "#0000FF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->H:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->N:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->N:Landroid/graphics/Paint;

    const-string v1, "#000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->y:Landroid/graphics/RectF;

    iget v8, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->w:Landroid/graphics/RectF;

    iget v11, v1, Landroid/graphics/RectF;->top:F

    iget v10, v0, Landroid/graphics/RectF;->right:F

    iget-object v12, p0, Lcom/miui/gamebooster/widget/SwitchButton;->N:Landroid/graphics/Paint;

    move-object v7, p1

    move v9, v11

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->N:Landroid/graphics/Paint;

    const-string v1, "#00CC00"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0}, Lcom/miui/gamebooster/widget/SwitchButton;->getProgress()F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v5

    if-lez v0, :cond_11

    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->z:Landroid/graphics/RectF;

    goto :goto_a

    :cond_11
    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->A:Landroid/graphics/RectF;

    :goto_a
    iget-object v1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->N:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_12
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->R:Landroid/text/Layout;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->O:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->O:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/widget/SwitchButton;->h(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->R:Landroid/text/Layout;

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->S:Landroid/text/Layout;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->P:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->P:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/widget/SwitchButton;->h(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->S:Landroid/text/Layout;

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->R:Landroid/text/Layout;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/miui/gamebooster/widget/SwitchButton;->S:Landroid/text/Layout;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    cmpl-float v3, v0, v1

    if-nez v3, :cond_5

    cmpl-float v3, v2, v1

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    iput v1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->T:F

    goto :goto_3

    :cond_5
    :goto_2
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->T:F

    :goto_3
    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->R:Landroid/text/Layout;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    goto :goto_4

    :cond_6
    move v0, v1

    :goto_4
    iget-object v2, p0, Lcom/miui/gamebooster/widget/SwitchButton;->S:Landroid/text/Layout;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    goto :goto_5

    :cond_7
    move v2, v1

    :goto_5
    cmpl-float v3, v0, v1

    if-nez v3, :cond_9

    cmpl-float v3, v2, v1

    if-eqz v3, :cond_8

    goto :goto_6

    :cond_8
    iput v1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->U:F

    goto :goto_7

    :cond_9
    :goto_6
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->U:F

    :goto_7
    invoke-direct {p0, p1}, Lcom/miui/gamebooster/widget/SwitchButton;->j(I)I

    move-result p1

    invoke-direct {p0, p2}, Lcom/miui/gamebooster/widget/SwitchButton;->i(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v0, p1, Lcom/miui/gamebooster/widget/SwitchButton$SavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lcom/miui/gamebooster/widget/SwitchButton$SavedState;

    iget-object v0, p1, Lcom/miui/gamebooster/widget/SwitchButton$SavedState;->onText:Ljava/lang/CharSequence;

    iget-object v1, p1, Lcom/miui/gamebooster/widget/SwitchButton$SavedState;->offText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, v1}, Lcom/miui/gamebooster/widget/SwitchButton;->k(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->g0:Z

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->g0:Z

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/widget/CompoundButton;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/miui/gamebooster/widget/SwitchButton$SavedState;

    invoke-direct {v1, v0}, Lcom/miui/gamebooster/widget/SwitchButton$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->O:Ljava/lang/CharSequence;

    iput-object v0, v1, Lcom/miui/gamebooster/widget/SwitchButton$SavedState;->onText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->P:Ljava/lang/CharSequence;

    iput-object v0, v1, Lcom/miui/gamebooster/widget/SwitchButton$SavedState;->offText:Ljava/lang/CharSequence;

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CompoundButton;->onSizeChanged(IIII)V

    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/miui/gamebooster/widget/SwitchButton;->m()V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->h0:Z

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/miui/gamebooster/widget/SwitchButton;->I:F

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/miui/gamebooster/widget/SwitchButton;->J:F

    sub-float/2addr v3, v4

    const/4 v4, 0x1

    if-eqz v0, :cond_a

    if-eq v0, v4, :cond_7

    const/4 v5, 0x2

    if-eq v0, v5, :cond_1

    const/4 v5, 0x3

    if-eq v0, v5, :cond_7

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-direct {p0}, Lcom/miui/gamebooster/widget/SwitchButton;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    move v0, v4

    :goto_0
    invoke-direct {p0}, Lcom/miui/gamebooster/widget/SwitchButton;->getProgress()F

    move-result v6

    iget v7, p0, Lcom/miui/gamebooster/widget/SwitchButton;->K:F

    sub-float v7, p1, v7

    int-to-float v0, v0

    mul-float/2addr v7, v0

    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->y:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v7, v0

    add-float/2addr v6, v7

    invoke-direct {p0, v6}, Lcom/miui/gamebooster/widget/SwitchButton;->setProgress(F)V

    iget-boolean v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->i0:Z

    if-nez v0, :cond_6

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v6, p0, Lcom/miui/gamebooster/widget/SwitchButton;->L:I

    div-int/2addr v6, v5

    int-to-float v6, v6

    cmpl-float v0, v0, v6

    if-gtz v0, :cond_3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v6, p0, Lcom/miui/gamebooster/widget/SwitchButton;->L:I

    div-int/2addr v6, v5

    int-to-float v5, v6

    cmpl-float v0, v0, v5

    if-lez v0, :cond_6

    :cond_3
    const/4 v0, 0x0

    cmpl-float v0, v3, v0

    if-eqz v0, :cond_5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v0, v0, v5

    if-lez v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_6

    return v1

    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/miui/gamebooster/widget/SwitchButton;->b()V

    :cond_6
    iput p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->K:F

    goto :goto_2

    :cond_7
    iput-boolean v1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->i0:Z

    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-float p1, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/miui/gamebooster/widget/SwitchButton;->L:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_8

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/miui/gamebooster/widget/SwitchButton;->L:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_8

    iget v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->M:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_8

    invoke-virtual {p0}, Lcom/miui/gamebooster/widget/SwitchButton;->performClick()Z

    goto :goto_2

    :cond_8
    invoke-direct {p0}, Lcom/miui/gamebooster/widget/SwitchButton;->getStatusBasedOnPos()Z

    move-result p1

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_9

    invoke-virtual {p0, v1}, Landroid/view/View;->playSoundEffect(I)V

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/widget/SwitchButton;->setChecked(Z)V

    goto :goto_2

    :cond_9
    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/widget/SwitchButton;->a(Z)V

    goto :goto_2

    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->I:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->J:F

    iget p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->I:F

    iput p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->K:F

    invoke-virtual {p0, v4}, Landroid/view/View;->setPressed(Z)V

    :goto_2
    return v4

    :cond_b
    :goto_3
    return v1
.end method

.method public performClick()Z
    .locals 1

    invoke-super {p0}, Landroid/widget/CompoundButton;->performClick()Z

    move-result v0

    return v0
.end method

.method public setAnimationDuration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->i:J

    return-void
.end method

.method public setBackColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->c:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/widget/SwitchButton;->setBackDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setBackColorRes(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/widget/SwitchButton;->setBackColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setBackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->b:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->D:Z

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    iput-boolean v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->h0:Z

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setBackDrawableRes(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/widget/SwitchButton;->setBackDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackRadius(F)V
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->f:F

    iget-boolean p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->D:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eq v0, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/widget/SwitchButton;->a(Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->g0:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/widget/SwitchButton;->setCheckedImmediatelyNoEvent(Z)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method public setCheckedImmediately(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->F:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->F:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/gamebooster/widget/SwitchButton;->setProgress(F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCheckedImmediatelyNoEvent(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->j0:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/widget/SwitchButton;->setCheckedImmediately(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/widget/SwitchButton;->setCheckedImmediately(Z)V

    iget-object p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->j0:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_0
    return-void
.end method

.method public setCheckedNoEvent(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->j0:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/widget/SwitchButton;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/widget/SwitchButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->j0:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_0
    return-void
.end method

.method public setDrawDebugRect(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->E:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setFadeBack(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->j:Z

    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iput-object p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->j0:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public setTextAdjust(I)V
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->f0:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->h0:Z

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextExtra(I)V
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->W:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->h0:Z

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextThumbInset(I)V
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->V:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->h0:Z

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setThumbColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->d:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/widget/SwitchButton;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setThumbColorRes(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/widget/SwitchButton;->setThumbColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->a:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->C:Z

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    iput-boolean v0, p0, Lcom/miui/gamebooster/widget/SwitchButton;->h0:Z

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setThumbDrawableRes(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/widget/SwitchButton;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setThumbMargin(Landroid/graphics/RectF;)V
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/miui/gamebooster/widget/SwitchButton;->l(FFFF)V

    goto :goto_0

    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/miui/gamebooster/widget/SwitchButton;->l(FFFF)V

    :goto_0
    return-void
.end method

.method public setThumbRadius(F)V
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->e:F

    iget-boolean p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->C:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setThumbRangeRatio(F)V
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->h:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->h0:Z

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setTintColor(I)V
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->k:I

    invoke-static {p1}, Lcom/miui/gamebooster/widget/SwitchButton;->e(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->d:Landroid/content/res/ColorStateList;

    iget p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->k:I

    invoke-static {p1}, Lcom/miui/gamebooster/widget/SwitchButton;->d(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->c:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->D:Z

    iput-boolean p1, p0, Lcom/miui/gamebooster/widget/SwitchButton;->C:Z

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
