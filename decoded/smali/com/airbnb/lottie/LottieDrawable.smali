.class public Lcom/airbnb/lottie/LottieDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/LottieDrawable$RepeatMode;,
        Lcom/airbnb/lottie/LottieDrawable$o;
    }
.end annotation


# static fields
.field private static final v:Ljava/lang/String;


# instance fields
.field private final a:Landroid/graphics/Matrix;

.field private b:Lcom/airbnb/lottie/d;

.field private final c:Lp1/g;

.field private d:F

.field private e:Z

.field private f:Z

.field private final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/airbnb/lottie/LottieDrawable$o;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private j:Landroid/widget/ImageView$ScaleType;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private k:Lh1/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private l:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private m:Lcom/airbnb/lottie/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private n:Lh1/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private o:Z

.field private p:Ll1/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private q:I

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/LottieDrawable;->v:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->a:Landroid/graphics/Matrix;

    new-instance v0, Lp1/g;

    invoke-direct {v0}, Lp1/g;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lp1/g;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/airbnb/lottie/LottieDrawable;->d:F

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieDrawable;->e:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/airbnb/lottie/LottieDrawable;->f:Z

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/airbnb/lottie/LottieDrawable;->g:Ljava/util/Set;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/airbnb/lottie/LottieDrawable;->h:Ljava/util/ArrayList;

    new-instance v3, Lcom/airbnb/lottie/LottieDrawable$f;

    invoke-direct {v3, p0}, Lcom/airbnb/lottie/LottieDrawable$f;-><init>(Lcom/airbnb/lottie/LottieDrawable;)V

    iput-object v3, p0, Lcom/airbnb/lottie/LottieDrawable;->i:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    const/16 v4, 0xff

    iput v4, p0, Lcom/airbnb/lottie/LottieDrawable;->q:I

    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieDrawable;->t:Z

    iput-boolean v2, p0, Lcom/airbnb/lottie/LottieDrawable;->u:Z

    invoke-virtual {v0, v3}, Lp1/c;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method static synthetic a(Lcom/airbnb/lottie/LottieDrawable;)Ll1/b;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->p:Ll1/b;

    return-object p0
.end method

.method static synthetic b(Lcom/airbnb/lottie/LottieDrawable;)Lp1/g;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lp1/g;

    return-object p0
.end method

.method private e()V
    .locals 4

    new-instance v0, Ll1/b;

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lcom/airbnb/lottie/d;

    invoke-static {v1}, Ln1/s;->a(Lcom/airbnb/lottie/d;)Ll1/d;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lcom/airbnb/lottie/d;

    invoke-virtual {v2}, Lcom/airbnb/lottie/d;->j()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lcom/airbnb/lottie/d;

    invoke-direct {v0, p0, v1, v2, v3}, Ll1/b;-><init>(Lcom/airbnb/lottie/LottieDrawable;Ll1/d;Ljava/util/List;Lcom/airbnb/lottie/d;)V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->p:Ll1/b;

    return-void
.end method

.method private h(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->j:Landroid/widget/ImageView$ScaleType;

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->i(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->j(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method private i(Landroid/graphics/Canvas;)V
    .locals 8

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->p:Ll1/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lcom/airbnb/lottie/d;

    invoke-virtual {v3}, Lcom/airbnb/lottie/d;->b()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lcom/airbnb/lottie/d;

    invoke-virtual {v4}, Lcom/airbnb/lottie/d;->b()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget-boolean v4, p0, Lcom/airbnb/lottie/LottieDrawable;->t:Z

    if-eqz v4, :cond_2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v6, v4, v5

    if-gez v6, :cond_1

    div-float v6, v5, v4

    div-float/2addr v2, v6

    div-float/2addr v3, v6

    goto :goto_0

    :cond_1
    move v6, v5

    :goto_0
    cmpl-float v5, v6, v5

    if-lez v5, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v7

    mul-float v7, v5, v4

    mul-float/2addr v4, v1

    sub-float/2addr v5, v7

    sub-float/2addr v1, v4

    invoke-virtual {p1, v5, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, v6, v6, v7, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_2
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->a:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->a:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->p:Ll1/b;

    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable;->a:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/airbnb/lottie/LottieDrawable;->q:I

    invoke-virtual {v1, p1, v2, v3}, Ll1/a;->g(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    if-lez v0, :cond_3

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    return-void
.end method

.method private j(Landroid/graphics/Canvas;)V
    .locals 8

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->p:Ll1/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/airbnb/lottie/LottieDrawable;->d:F

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->v(Landroid/graphics/Canvas;)F

    move-result v1

    cmpl-float v2, v0, v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-lez v2, :cond_1

    iget v0, p0, Lcom/airbnb/lottie/LottieDrawable;->d:F

    div-float/2addr v0, v1

    goto :goto_0

    :cond_1
    move v1, v0

    move v0, v3

    :goto_0
    const/4 v2, -0x1

    cmpl-float v3, v0, v3

    if-lez v3, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    iget-object v3, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lcom/airbnb/lottie/d;

    invoke-virtual {v3}, Lcom/airbnb/lottie/d;->b()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget-object v5, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lcom/airbnb/lottie/d;

    invoke-virtual {v5}, Lcom/airbnb/lottie/d;->b()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    mul-float v4, v3, v1

    mul-float v6, v5, v1

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->B()F

    move-result v7

    mul-float/2addr v7, v3

    sub-float/2addr v7, v4

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->B()F

    move-result v3

    mul-float/2addr v3, v5

    sub-float/2addr v3, v6

    invoke-virtual {p1, v7, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, v0, v0, v4, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_2
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->p:Ll1/b;

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->a:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/airbnb/lottie/LottieDrawable;->q:I

    invoke-virtual {v0, p1, v1, v3}, Ll1/a;->g(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    if-lez v2, :cond_3

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    return-void
.end method

.method private j0()V
    .locals 3

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lcom/airbnb/lottie/d;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->B()F

    move-result v0

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lcom/airbnb/lottie/d;

    invoke-virtual {v1}, Lcom/airbnb/lottie/d;->b()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lcom/airbnb/lottie/d;

    invoke-virtual {v2}, Lcom/airbnb/lottie/d;->b()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v0, v2

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method private o()Landroid/content/Context;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method private p()Lh1/a;
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->n:Lh1/a;

    if-nez v0, :cond_1

    new-instance v0, Lh1/a;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lh1/a;-><init>(Landroid/graphics/drawable/Drawable$Callback;Lcom/airbnb/lottie/a;)V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->n:Lh1/a;

    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->n:Lh1/a;

    return-object v0
.end method

.method private s()Lh1/b;
    .locals 5

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->k:Lh1/b;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->o()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lh1/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->k:Lh1/b;

    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->k:Lh1/b;

    if-nez v0, :cond_2

    new-instance v0, Lh1/b;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable;->l:Ljava/lang/String;

    iget-object v3, p0, Lcom/airbnb/lottie/LottieDrawable;->m:Lcom/airbnb/lottie/b;

    iget-object v4, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lcom/airbnb/lottie/d;

    invoke-virtual {v4}, Lcom/airbnb/lottie/d;->i()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lh1/b;-><init>(Landroid/graphics/drawable/Drawable$Callback;Ljava/lang/String;Lcom/airbnb/lottie/b;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->k:Lh1/b;

    :cond_2
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->k:Lh1/b;

    return-object v0
.end method

.method private v(Landroid/graphics/Canvas;)F
    .locals 2
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lcom/airbnb/lottie/d;

    invoke-virtual {v1}, Lcom/airbnb/lottie/d;->b()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lcom/airbnb/lottie/d;

    invoke-virtual {v1}, Lcom/airbnb/lottie/d;->b()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method


# virtual methods
.method public A()I
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lp1/g;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getRepeatMode()I

    move-result v0

    return v0
.end method

.method public B()F
    .locals 1

    iget v0, p0, Lcom/airbnb/lottie/LottieDrawable;->d:F

    return v0
.end method

.method public C()F
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lp1/g;

    invoke-virtual {v0}, Lp1/g;->m()F

    move-result v0

    return v0
.end method

.method public D()Lcom/airbnb/lottie/q;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public E(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->p()Lh1/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lh1/a;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public F()Z
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lp1/g;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lp1/g;->isRunning()Z

    move-result v0

    return v0
.end method

.method public G()Z
    .locals 1

    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->s:Z

    return v0
.end method

.method public H()V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lp1/g;

    invoke-virtual {v0}, Lp1/g;->o()V

    return-void
.end method

.method public I()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->p:Ll1/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->h:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/LottieDrawable$g;

    invoke-direct {v1, p0}, Lcom/airbnb/lottie/LottieDrawable$g;-><init>(Lcom/airbnb/lottie/LottieDrawable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->e:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->z()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lp1/g;

    invoke-virtual {v0}, Lp1/g;->p()V

    :cond_2
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->e:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->C()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->w()F

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->u()F

    move-result v0

    :goto_0
    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieDrawable;->O(I)V

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lp1/g;

    invoke-virtual {v0}, Lp1/g;->g()V

    :cond_4
    return-void
.end method

.method public J(Li1/e;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li1/e;",
            ")",
            "Ljava/util/List<",
            "Li1/e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->p:Ll1/b;

    if-nez v0, :cond_0

    const-string p1, "Cannot resolve KeyPath. Composition is not set yet."

    invoke-static {p1}, Lp1/f;->c(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->p:Ll1/b;

    new-instance v2, Li1/e;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/String;

    invoke-direct {v2, v4}, Li1/e;-><init>([Ljava/lang/String;)V

    invoke-virtual {v1, p1, v3, v0, v2}, Ll1/a;->h(Li1/e;ILjava/util/List;Li1/e;)V

    return-object v0
.end method

.method public K()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->p:Ll1/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->h:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/LottieDrawable$h;

    invoke-direct {v1, p0}, Lcom/airbnb/lottie/LottieDrawable$h;-><init>(Lcom/airbnb/lottie/LottieDrawable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->e:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->z()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lp1/g;

    invoke-virtual {v0}, Lp1/g;->t()V

    :cond_2
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->e:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->C()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->w()F

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->u()F

    move-result v0

    :goto_0
    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieDrawable;->O(I)V

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lp1/g;

    invoke-virtual {v0}, Lp1/g;->g()V

    :cond_4
    return-void
.end method

.method public L(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieDrawable;->s:Z

    return-void
.end method

.method public M(Lcom/airbnb/lottie/d;)Z
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lcom/airbnb/lottie/d;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieDrawable;->u:Z

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->g()V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lcom/airbnb/lottie/d;

    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->e()V

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lp1/g;

    invoke-virtual {v0, p1}, Lp1/g;->v(Lcom/airbnb/lottie/d;)V

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lp1/g;

    invoke-virtual {v0}, Lp1/g;->getAnimatedFraction()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieDrawable;->a0(F)V

    iget v0, p0, Lcom/airbnb/lottie/LottieDrawable;->d:F

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieDrawable;->e0(F)V

    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->j0()V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->h:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieDrawable$o;

    invoke-interface {v1, p1}, Lcom/airbnb/lottie/LottieDrawable$o;->a(Lcom/airbnb/lottie/d;)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->r:Z

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/d;->u(Z)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public N(Lcom/airbnb/lottie/a;)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->n:Lh1/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lh1/a;->c(Lcom/airbnb/lottie/a;)V

    :cond_0
    return-void
.end method

.method public O(I)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lcom/airbnb/lottie/d;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->h:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/LottieDrawable$c;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/LottieDrawable$c;-><init>(Lcom/airbnb/lottie/LottieDrawable;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lp1/g;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lp1/g;->w(F)V

    return-void
.end method

.method public P(Lcom/airbnb/lottie/b;)V
    .locals 1

    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->m:Lcom/airbnb/lottie/b;

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->k:Lh1/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lh1/b;->d(Lcom/airbnb/lottie/b;)V

    :cond_0
    return-void
.end method

.method public Q(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->l:Ljava/lang/String;

    return-void
.end method

.method public R(I)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lcom/airbnb/lottie/d;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->h:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/LottieDrawable$k;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/LottieDrawable$k;-><init>(Lcom/airbnb/lottie/LottieDrawable;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lp1/g;

    int-to-float p1, p1

    const v1, 0x3f7d70a4    # 0.99f

    add-float/2addr p1, v1

    invoke-virtual {v0, p1}, Lp1/g;->x(F)V

    return-void
.end method

.method public S(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lcom/airbnb/lottie/d;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->h:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/LottieDrawable$n;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/LottieDrawable$n;-><init>(Lcom/airbnb/lottie/LottieDrawable;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/d;->k(Ljava/lang/String;)Li1/h;

    move-result-object v0

    if-eqz v0, :cond_1

    iget p1, v0, Li1/h;->b:F

    iget v0, v0, Li1/h;->c:F

    add-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->R(I)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find marker with name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public T(F)V
    .locals 2
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lcom/airbnb/lottie/d;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->h:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/LottieDrawable$l;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/LottieDrawable$l;-><init>(Lcom/airbnb/lottie/LottieDrawable;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/d;->o()F

    move-result v0

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lcom/airbnb/lottie/d;

    invoke-virtual {v1}, Lcom/airbnb/lottie/d;->f()F

    move-result v1

    invoke-static {v0, v1, p1}, Lp1/i;->j(FFF)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->R(I)V

    return-void
.end method

.method public U(II)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lcom/airbnb/lottie/d;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->h:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/LottieDrawable$b;

    invoke-direct {v1, p0, p1, p2}, Lcom/airbnb/lottie/LottieDrawable$b;-><init>(Lcom/airbnb/lottie/LottieDrawable;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lp1/g;

    int-to-float p1, p1

    int-to-float p2, p2

    const v1, 0x3f7d70a4    # 0.99f

    add-float/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lp1/g;->y(FF)V

    return-void
.end method

.method public V(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lcom/airbnb/lottie/d;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->h:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/LottieDrawable$a;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/LottieDrawable$a;-><init>(Lcom/airbnb/lottie/LottieDrawable;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/d;->k(Ljava/lang/String;)Li1/h;

    move-result-object v0

    if-eqz v0, :cond_1

    iget p1, v0, Li1/h;->b:F

    float-to-int p1, p1

    iget v0, v0, Li1/h;->c:F

    float-to-int v0, v0

    add-int/2addr v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/airbnb/lottie/LottieDrawable;->U(II)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find marker with name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public W(I)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lcom/airbnb/lottie/d;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->h:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/LottieDrawable$i;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/LottieDrawable$i;-><init>(Lcom/airbnb/lottie/LottieDrawable;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lp1/g;

    invoke-virtual {v0, p1}, Lp1/g;->z(I)V

    return-void
.end method

.method public X(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lcom/airbnb/lottie/d;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->h:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/LottieDrawable$m;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/LottieDrawable$m;-><init>(Lcom/airbnb/lottie/LottieDrawable;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/d;->k(Ljava/lang/String;)Li1/h;

    move-result-object v0

    if-eqz v0, :cond_1

    iget p1, v0, Li1/h;->b:F

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->W(I)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find marker with name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public Y(F)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lcom/airbnb/lottie/d;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->h:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/LottieDrawable$j;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/LottieDrawable$j;-><init>(Lcom/airbnb/lottie/LottieDrawable;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/d;->o()F

    move-result v0

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lcom/airbnb/lottie/d;

    invoke-virtual {v1}, Lcom/airbnb/lottie/d;->f()F

    move-result v1

    invoke-static {v0, v1, p1}, Lp1/i;->j(FFF)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->W(I)V

    return-void
.end method

.method public Z(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieDrawable;->r:Z

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lcom/airbnb/lottie/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/d;->u(Z)V

    :cond_0
    return-void
.end method

.method public a0(F)V
    .locals 4
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lcom/airbnb/lottie/d;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->h:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/LottieDrawable$d;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/LottieDrawable$d;-><init>(Lcom/airbnb/lottie/LottieDrawable;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    const-string v0, "Drawable#setProgress"

    invoke-static {v0}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lp1/g;

    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lcom/airbnb/lottie/d;

    invoke-virtual {v2}, Lcom/airbnb/lottie/d;->o()F

    move-result v2

    iget-object v3, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lcom/airbnb/lottie/d;

    invoke-virtual {v3}, Lcom/airbnb/lottie/d;->f()F

    move-result v3

    invoke-static {v2, v3, p1}, Lp1/i;->j(FFF)F

    move-result p1

    invoke-virtual {v1, p1}, Lp1/g;->w(F)V

    invoke-static {v0}, Lcom/airbnb/lottie/c;->b(Ljava/lang/String;)F

    return-void
.end method

.method public b0(I)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lp1/g;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    return-void
.end method

.method public c(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lp1/g;

    invoke-virtual {v0, p1}, Lp1/c;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public c0(I)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lp1/g;

    invoke-virtual {v0, p1}, Lp1/g;->setRepeatMode(I)V

    return-void
.end method

.method public d(Li1/e;Ljava/lang/Object;Lq1/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li1/e;",
            "TT;",
            "Lq1/c<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->p:Ll1/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->h:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/LottieDrawable$e;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/airbnb/lottie/LottieDrawable$e;-><init>(Lcom/airbnb/lottie/LottieDrawable;Li1/e;Ljava/lang/Object;Lq1/c;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {p1}, Li1/e;->d()Li1/f;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Li1/e;->d()Li1/f;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Li1/f;->d(Ljava/lang/Object;Lq1/c;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->J(Li1/e;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li1/e;

    invoke-virtual {v2}, Li1/e;->d()Li1/f;

    move-result-object v2

    invoke-interface {v2, p2, p3}, Li1/f;->d(Ljava/lang/Object;Lq1/c;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/2addr v1, p1

    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    sget-object p1, Lcom/airbnb/lottie/j;->A:Ljava/lang/Float;

    if-ne p2, p1, :cond_3

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->y()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->a0(F)V

    :cond_3
    return-void
.end method

.method public d0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieDrawable;->f:Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->u:Z

    const-string v0, "Drawable#draw"

    invoke-static {v0}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/airbnb/lottie/LottieDrawable;->f:Z

    if-eqz v1, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->h(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v1, "Lottie crashed in draw!"

    invoke-static {v1, p1}, Lp1/f;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->h(Landroid/graphics/Canvas;)V

    :goto_0
    invoke-static {v0}, Lcom/airbnb/lottie/c;->b(Ljava/lang/String;)F

    return-void
.end method

.method public e0(F)V
    .locals 0

    iput p1, p0, Lcom/airbnb/lottie/LottieDrawable;->d:F

    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->j0()V

    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lp1/g;

    invoke-virtual {v0}, Lp1/g;->cancel()V

    return-void
.end method

.method f0(Landroid/widget/ImageView$ScaleType;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->j:Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lp1/g;

    invoke-virtual {v0}, Lp1/g;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lp1/g;

    invoke-virtual {v0}, Lp1/g;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lcom/airbnb/lottie/d;

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->p:Ll1/b;

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->k:Lh1/b;

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lp1/g;

    invoke-virtual {v0}, Lp1/g;->f()V

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    return-void
.end method

.method public g0(F)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lp1/g;

    invoke-virtual {v0, p1}, Lp1/g;->A(F)V

    return-void
.end method

.method public getAlpha()I
    .locals 1

    iget v0, p0, Lcom/airbnb/lottie/LottieDrawable;->q:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lcom/airbnb/lottie/d;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/d;->b()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->B()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    :goto_0
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lcom/airbnb/lottie/d;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/d;->b()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->B()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    :goto_0
    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method h0(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieDrawable;->e:Z

    return-void
.end method

.method public i0(Lcom/airbnb/lottie/q;)V
    .locals 0

    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public invalidateSelf()V
    .locals 1

    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->u:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->u:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public isRunning()Z
    .locals 1

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->F()Z

    move-result v0

    return v0
.end method

.method public k(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->o:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieDrawable;->o:Z

    iget-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lcom/airbnb/lottie/d;

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->e()V

    :cond_1
    return-void
.end method

.method public k0()Z
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lcom/airbnb/lottie/d;

    invoke-virtual {v0}, Lcom/airbnb/lottie/d;->c()Lm/h;

    move-result-object v0

    invoke-virtual {v0}, Lm/h;->l()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->o:Z

    return v0
.end method

.method public m()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lp1/g;

    invoke-virtual {v0}, Lp1/g;->g()V

    return-void
.end method

.method public n()Lcom/airbnb/lottie/d;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lcom/airbnb/lottie/d;

    return-object v0
.end method

.method public q()I
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lp1/g;

    invoke-virtual {v0}, Lp1/g;->i()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public r(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->s()Lh1/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lh1/b;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    iput p1, p0, Lcom/airbnb/lottie/LottieDrawable;->q:I

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string p1, "Use addColorFilter instead."

    invoke-static {p1}, Lp1/f;->c(Ljava/lang/String;)V

    return-void
.end method

.method public start()V
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->I()V

    return-void
.end method

.method public stop()V
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->m()V

    return-void
.end method

.method public t()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->l:Ljava/lang/String;

    return-object v0
.end method

.method public u()F
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lp1/g;

    invoke-virtual {v0}, Lp1/g;->k()F

    move-result v0

    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public w()F
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lp1/g;

    invoke-virtual {v0}, Lp1/g;->l()F

    move-result v0

    return v0
.end method

.method public x()Lcom/airbnb/lottie/m;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lcom/airbnb/lottie/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/airbnb/lottie/d;->m()Lcom/airbnb/lottie/m;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public y()F
    .locals 1
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lp1/g;

    invoke-virtual {v0}, Lp1/g;->h()F

    move-result v0

    return v0
.end method

.method public z()I
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lp1/g;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result v0

    return v0
.end method
