.class public Lcom/miui/antivirus/ui/MainActivityView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/miui/antivirus/ui/CustomActionBar;

.field private c:Lcom/miui/antivirus/ui/MainContentFrame;

.field private d:Lcom/miui/antivirus/ui/MainHandleBar;

.field private e:Lcom/miui/antivirus/result/ScanResultFrame;

.field private f:Lw4/e;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/LinearLayout;

.field private i:Lcom/miui/antivirus/result/c0;

.field private j:Lcom/miui/antivirus/result/n;

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/antivirus/result/a;",
            ">;"
        }
    .end annotation
.end field

.field private l:Z

.field private m:I

.field private n:I

.field private o:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/miui/antivirus/ui/MainActivityView;->k:Ljava/util/ArrayList;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/miui/antivirus/ui/MainActivityView;->o:Z

    iput-object p1, p0, Lcom/miui/antivirus/ui/MainActivityView;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/miui/antivirus/ui/MainActivityView;)Lw4/e;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/ui/MainActivityView;->f:Lw4/e;

    return-object p0
.end method

.method static synthetic b(Lcom/miui/antivirus/ui/MainActivityView;)Lcom/miui/antivirus/ui/MainHandleBar;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/ui/MainActivityView;->d:Lcom/miui/antivirus/ui/MainHandleBar;

    return-object p0
.end method

.method static synthetic c(Lcom/miui/antivirus/ui/MainActivityView;)Lcom/miui/antivirus/ui/MainContentFrame;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/ui/MainActivityView;->c:Lcom/miui/antivirus/ui/MainContentFrame;

    return-object p0
.end method

.method private d(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->c:Lcom/miui/antivirus/ui/MainContentFrame;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    return-void
.end method

.method private e(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->d:Lcom/miui/antivirus/ui/MainHandleBar;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    return-void
.end method

.method private f(II)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->c:Lcom/miui/antivirus/ui/MainContentFrame;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object p1, p0, Lcom/miui/antivirus/ui/MainActivityView;->d:Lcom/miui/antivirus/ui/MainHandleBar;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    return-void
.end method

.method private g(I)I
    .locals 5

    invoke-static {}, Lx4/a0;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0711dd

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07014b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07014c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/miui/antivirus/ui/MainActivityView;->c:Lcom/miui/antivirus/ui/MainContentFrame;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v3, p0, Lcom/miui/antivirus/ui/MainActivityView;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070157

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v3, v2

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p1, v1

    sub-int/2addr p1, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07013e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/miui/antivirus/ui/MainActivityView;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070495

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/miui/antivirus/ui/MainActivityView;->c:Lcom/miui/antivirus/ui/MainContentFrame;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget-object v3, p0, Lcom/miui/antivirus/ui/MainActivityView;->c:Lcom/miui/antivirus/ui/MainContentFrame;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int/2addr v2, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    sub-int p1, v2, p1

    :goto_0
    return p1
.end method

.method private h(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-static {}, Lx4/t;->p()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lx4/a0;->z(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    iget-object v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->b:Lcom/miui/antivirus/ui/CustomActionBar;

    iget-object v3, p0, Lcom/miui/antivirus/ui/MainActivityView;->e:Lcom/miui/antivirus/result/ScanResultFrame;

    if-nez v3, :cond_1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/miui/antivirus/ui/CustomActionBar;->setIsShowSecondTitle(Z)V

    return-void
.end method


# virtual methods
.method public getResultControl()Lcom/miui/antivirus/result/c0;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->i:Lcom/miui/antivirus/result/c0;

    return-object v0
.end method

.method public getScreenHeight()I
    .locals 2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, p0, Lcom/miui/antivirus/ui/MainActivityView;->a:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public i(IZZ)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->c:Lcom/miui/antivirus/ui/MainContentFrame;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/antivirus/ui/MainContentFrame;->q(ILjava/lang/Boolean;Z)V

    return-void
.end method

.method public j()V
    .locals 7

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->d:Lcom/miui/antivirus/ui/MainHandleBar;

    const/4 v1, 0x3

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "alpha"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/antivirus/ui/MainActivityView;->d:Lcom/miui/antivirus/ui/MainHandleBar;

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_1

    const-string v5, "scaleX"

    invoke-static {v2, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v4, p0, Lcom/miui/antivirus/ui/MainActivityView;->d:Lcom/miui/antivirus/ui/MainHandleBar;

    new-array v5, v3, [F

    fill-array-data v5, :array_2

    const-string v6, "scaleY"

    invoke-static {v4, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    const v6, 0x3f99999a    # 1.2f

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v2, v1, v6

    const/4 v2, 0x1

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v0, 0x12c

    invoke-virtual {v5, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/miui/antivirus/ui/MainActivityView$a;

    invoke-direct {v0, p0}, Lcom/miui/antivirus/ui/MainActivityView$a;-><init>(Lcom/miui/antivirus/ui/MainActivityView;)V

    invoke-virtual {v5, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->b:Lcom/miui/antivirus/ui/CustomActionBar;

    invoke-virtual {v0, v2}, Lcom/miui/antivirus/ui/CustomActionBar;->b(Z)V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3e99999a    # 0.3f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data
.end method

.method public k()V
    .locals 2

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->b:Lcom/miui/antivirus/ui/CustomActionBar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/ui/CustomActionBar;->setIsShowSecondTitle(Z)V

    return-void
.end method

.method public l()V
    .locals 10

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->e:Lcom/miui/antivirus/result/ScanResultFrame;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->b:Lcom/miui/antivirus/ui/CustomActionBar;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070057

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/miui/antivirus/ui/MainActivityView;->e:Lcom/miui/antivirus/result/ScanResultFrame;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070058

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v2, v0

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/miui/antivirus/ui/MainActivityView;->e:Lcom/miui/antivirus/result/ScanResultFrame;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/miui/antivirus/ui/MainActivityView;->getScreenHeight()I

    move-result v1

    iget-object v2, p0, Lcom/miui/antivirus/ui/MainActivityView;->e:Lcom/miui/antivirus/result/ScanResultFrame;

    const/4 v3, 0x2

    new-array v4, v3, [F

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v5

    int-to-float v1, v1

    add-float/2addr v5, v1

    const/4 v6, 0x0

    aput v5, v4, v6

    iget-object v5, p0, Lcom/miui/antivirus/ui/MainActivityView;->e:Lcom/miui/antivirus/result/ScanResultFrame;

    invoke-virtual {v5}, Landroid/view/View;->getTranslationY()F

    move-result v5

    const/4 v7, 0x1

    aput v5, v4, v7

    const-string v5, "translationY"

    invoke-static {v2, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v4, p0, Lcom/miui/antivirus/ui/MainActivityView;->e:Lcom/miui/antivirus/result/ScanResultFrame;

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v8

    add-float/2addr v8, v1

    invoke-virtual {v4, v8}, Landroid/view/View;->setTranslationY(F)V

    iget-object v1, p0, Lcom/miui/antivirus/ui/MainActivityView;->e:Lcom/miui/antivirus/result/ScanResultFrame;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    invoke-direct {p0, v0}, Lcom/miui/antivirus/ui/MainActivityView;->g(I)I

    move-result v0

    iget-object v1, p0, Lcom/miui/antivirus/ui/MainActivityView;->c:Lcom/miui/antivirus/ui/MainContentFrame;

    new-array v8, v3, [F

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v9

    aput v9, v8, v6

    iget-object v9, p0, Lcom/miui/antivirus/ui/MainActivityView;->c:Lcom/miui/antivirus/ui/MainContentFrame;

    invoke-virtual {v9}, Landroid/view/View;->getTranslationY()F

    move-result v9

    int-to-float v0, v0

    sub-float/2addr v9, v0

    aput v9, v8, v7

    invoke-static {v1, v5, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v5, 0x3f19999a    # 0.6f

    const v8, 0x3eb33333    # 0.35f

    const v9, 0x3e428f5c    # 0.19f

    invoke-direct {v1, v5, v8, v9, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v1, v3, [F

    iget-object v4, p0, Lcom/miui/antivirus/ui/MainActivityView;->c:Lcom/miui/antivirus/ui/MainContentFrame;

    invoke-virtual {v4}, Lcom/miui/antivirus/ui/MainContentFrame;->getVideoScale()F

    move-result v4

    aput v4, v1, v6

    const v4, 0x3f0bc6a8    # 0.546f

    aput v4, v1, v7

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v4, Lcom/miui/antivirus/ui/MainActivityView$b;

    invoke-direct {v4, p0}, Lcom/miui/antivirus/ui/MainActivityView$b;-><init>(Lcom/miui/antivirus/ui/MainActivityView;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v4, Lcom/miui/antivirus/ui/MainActivityView$c;

    invoke-direct {v4, p0}, Lcom/miui/antivirus/ui/MainActivityView$c;-><init>(Lcom/miui/antivirus/ui/MainActivityView;)V

    invoke-virtual {v1, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v5, 0x3fc00000    # 1.5f

    invoke-direct {v4, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v2, v3, v6

    aput-object v0, v3, v7

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v2, 0x15e

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
.end method

.method public m(Lcom/miui/antivirus/result/n;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/antivirus/result/n;",
            "Ljava/util/ArrayList<",
            "Lcom/miui/antivirus/result/a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/antivirus/ui/MainActivityView;->j:Lcom/miui/antivirus/result/n;

    iput-object p2, p0, Lcom/miui/antivirus/ui/MainActivityView;->k:Ljava/util/ArrayList;

    iget-boolean v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->o:Z

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->c:Lcom/miui/antivirus/ui/MainContentFrame;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->d:Lcom/miui/antivirus/ui/MainHandleBar;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->c:Lcom/miui/antivirus/ui/MainContentFrame;

    invoke-virtual {v0}, Lcom/miui/antivirus/ui/MainContentFrame;->release()V

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->e:Lcom/miui/antivirus/result/ScanResultFrame;

    if-nez v0, :cond_5

    const v0, 0x7f0b0d5b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f0b0da3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/result/ScanResultFrame;

    iput-object v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->e:Lcom/miui/antivirus/result/ScanResultFrame;

    new-instance v0, Lcom/miui/antivirus/result/c0$c;

    iget-object v2, p0, Lcom/miui/antivirus/ui/MainActivityView;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/miui/antivirus/result/c0$c;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/miui/antivirus/ui/MainActivityView;->e:Lcom/miui/antivirus/result/ScanResultFrame;

    invoke-virtual {v0, v2}, Lcom/miui/antivirus/result/c0$c;->h(Lcom/miui/antivirus/result/ScanResultFrame;)Lcom/miui/antivirus/result/c0$c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/antivirus/result/c0$c;->g(Lcom/miui/antivirus/result/n;)Lcom/miui/antivirus/result/c0$c;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/miui/antivirus/result/c0$c;->a(Ljava/util/ArrayList;)Lcom/miui/antivirus/result/c0$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/antivirus/result/c0$c;->f()Lcom/miui/antivirus/result/c0;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/antivirus/ui/MainActivityView;->i:Lcom/miui/antivirus/result/c0;

    iget-boolean p1, p0, Lcom/miui/antivirus/ui/MainActivityView;->l:Z

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/miui/antivirus/ui/MainActivityView;->m:I

    const/4 p2, 0x3

    const/4 v0, 0x0

    if-eq p1, p2, :cond_2

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    move p1, v0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070a3a

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070495

    :goto_2
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object p2, p0, Lcom/miui/antivirus/ui/MainActivityView;->e:Lcom/miui/antivirus/result/ScanResultFrame;

    invoke-virtual {p2, p1, v0, p1, v0}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_4
    iget-object p1, p0, Lcom/miui/antivirus/ui/MainActivityView;->i:Lcom/miui/antivirus/result/c0;

    iget-object p2, p0, Lcom/miui/antivirus/ui/MainActivityView;->f:Lw4/e;

    invoke-virtual {p1, p2}, Lcom/miui/antivirus/result/c0;->n(Lw4/e;)V

    iget-object p1, p0, Lcom/miui/antivirus/ui/MainActivityView;->e:Lcom/miui/antivirus/result/ScanResultFrame;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :cond_5
    return-void
.end method

.method public n()V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->c:Lcom/miui/antivirus/ui/MainContentFrame;

    invoke-virtual {v0}, Lcom/miui/antivirus/ui/MainContentFrame;->t()V

    return-void
.end method

.method public o(Lw2/r;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->c:Lcom/miui/antivirus/ui/MainContentFrame;

    invoke-virtual {v0, p1}, Lcom/miui/antivirus/ui/MainContentFrame;->u(Lw2/r;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {}, Lx4/t;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->e:Lcom/miui/antivirus/result/ScanResultFrame;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/antivirus/ui/MainActivityView;->k()V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/antivirus/ui/MainActivityView;->h(Landroid/content/res/Configuration;)V

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->l:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget p1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p1, p1, 0xf

    iget v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->m:I

    if-eq v0, p1, :cond_8

    iput p1, p0, Lcom/miui/antivirus/ui/MainActivityView;->m:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    move p1, v1

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, 0x1

    :goto_2
    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/antivirus/ui/MainActivityView;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070b03

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/antivirus/ui/MainActivityView;->e(I)V

    invoke-direct {p0, p1}, Lcom/miui/antivirus/ui/MainActivityView;->d(I)V

    iget-object p1, p0, Lcom/miui/antivirus/ui/MainActivityView;->e:Lcom/miui/antivirus/result/ScanResultFrame;

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/miui/antivirus/ui/MainActivityView;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07015a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070133

    :goto_3
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/miui/antivirus/ui/MainActivityView;->f(II)V

    goto/16 :goto_5

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070a3a

    goto :goto_4

    :cond_5
    iget-object p1, p0, Lcom/miui/antivirus/ui/MainActivityView;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0708dc

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/antivirus/ui/MainActivityView;->e(I)V

    invoke-direct {p0, p1}, Lcom/miui/antivirus/ui/MainActivityView;->d(I)V

    iget-object p1, p0, Lcom/miui/antivirus/ui/MainActivityView;->e:Lcom/miui/antivirus/result/ScanResultFrame;

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/miui/antivirus/ui/MainActivityView;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07015b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070134

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070495

    goto :goto_4

    :cond_7
    invoke-static {}, Lx4/t;->E()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iget v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->n:I

    if-eq v0, p1, :cond_8

    iput p1, p0, Lcom/miui/antivirus/ui/MainActivityView;->n:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070146

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/antivirus/ui/MainActivityView;->e(I)V

    invoke-direct {p0, p1}, Lcom/miui/antivirus/ui/MainActivityView;->d(I)V

    iget-object p1, p0, Lcom/miui/antivirus/ui/MainActivityView;->e:Lcom/miui/antivirus/result/ScanResultFrame;

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07013a

    :goto_4
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->e:Lcom/miui/antivirus/result/ScanResultFrame;

    invoke-virtual {v0, p1, v1, p1, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_8
    :goto_5
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    invoke-static {}, Lx4/t;->r()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->l:Z

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    iput v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->m:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->n:I

    const v0, 0x7f0b02a3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/ui/MainContentFrame;

    iput-object v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->c:Lcom/miui/antivirus/ui/MainContentFrame;

    const v0, 0x7f0b04b3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/ui/MainHandleBar;

    iput-object v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->d:Lcom/miui/antivirus/ui/MainHandleBar;

    const v0, 0x7f0b0982

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->g:Landroid/widget/ImageView;

    const v0, 0x7f0b09ef

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->h:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0067

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/ui/CustomActionBar;

    iput-object v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->b:Lcom/miui/antivirus/ui/CustomActionBar;

    iget-boolean v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->l:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->m:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07015a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v2, p0, Lcom/miui/antivirus/ui/MainActivityView;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070133

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/miui/antivirus/ui/MainActivityView;->f(II)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070b03

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07015b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v2, p0, Lcom/miui/antivirus/ui/MainActivityView;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070134

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/miui/antivirus/ui/MainActivityView;->f(II)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0708dc

    :goto_2
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/antivirus/ui/MainActivityView;->e(I)V

    invoke-direct {p0, v0}, Lcom/miui/antivirus/ui/MainActivityView;->d(I)V

    goto :goto_4

    :cond_3
    iget-object v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->a:Landroid/content/Context;

    invoke-static {v0}, Lw2/t;->E(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070157

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v2, p0, Lcom/miui/antivirus/ui/MainActivityView;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070130

    :goto_3
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/miui/antivirus/ui/MainActivityView;->f(II)V

    goto :goto_4

    :cond_4
    invoke-static {}, Lw2/t;->B()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070158

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v2, p0, Lcom/miui/antivirus/ui/MainActivityView;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070131

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070159

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v2, p0, Lcom/miui/antivirus/ui/MainActivityView;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070132

    goto :goto_3

    :goto_4
    invoke-static {}, Lx4/t;->p()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Lx4/a0;->z(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->b:Lcom/miui/antivirus/ui/CustomActionBar;

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/ui/CustomActionBar;->setIsShowSecondTitle(Z)V

    :cond_6
    return-void
.end method

.method public p(Lcom/miui/antivirus/ui/MainHandleBar$d;Lcom/miui/antivirus/ui/MainHandleBar$c;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->d:Lcom/miui/antivirus/ui/MainHandleBar;

    invoke-virtual {v0, p1, p2}, Lcom/miui/antivirus/ui/MainHandleBar;->c(Lcom/miui/antivirus/ui/MainHandleBar$d;Lcom/miui/antivirus/ui/MainHandleBar$c;)V

    return-void
.end method

.method public setActionButtonText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->d:Lcom/miui/antivirus/ui/MainHandleBar;

    invoke-virtual {v0, p1}, Lcom/miui/antivirus/ui/MainHandleBar;->setActionButtonText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setAutoToResult(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/antivirus/ui/MainActivityView;->o:Z

    return-void
.end method

.method public setContentAlpha(F)V
    .locals 1

    const v0, -0x40666666    # -1.2f

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p1, v0

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->c:Lcom/miui/antivirus/ui/MainContentFrame;

    invoke-virtual {v0, p1}, Lcom/miui/antivirus/ui/MainContentFrame;->setHeaderLayoutAlpha(F)V

    return-void
.end method

.method public setContentProgressText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->c:Lcom/miui/antivirus/ui/MainContentFrame;

    invoke-virtual {v0, p1}, Lcom/miui/antivirus/ui/MainContentFrame;->setProgressText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setContentSummary(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->c:Lcom/miui/antivirus/ui/MainContentFrame;

    invoke-virtual {v0, p1}, Lcom/miui/antivirus/ui/MainContentFrame;->setSummaryText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEventHandler(Lw4/e;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/antivirus/ui/MainActivityView;->f:Lw4/e;

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->c:Lcom/miui/antivirus/ui/MainContentFrame;

    invoke-virtual {v0, p1}, Lcom/miui/antivirus/ui/MainContentFrame;->setEventHandler(Lw4/e;)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->d:Lcom/miui/antivirus/ui/MainHandleBar;

    invoke-virtual {v0, p1}, Lcom/miui/antivirus/ui/MainHandleBar;->setEventHandler(Lw4/e;)V

    return-void
.end method

.method public setHandleActionButtonEnabled(Ljava/lang/Boolean;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->d:Lcom/miui/antivirus/ui/MainHandleBar;

    invoke-virtual {v0, p1}, Lcom/miui/antivirus/ui/MainHandleBar;->setHandleActionButtonEnabled(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setInflateVideoAnim(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->c:Lcom/miui/antivirus/ui/MainContentFrame;

    invoke-virtual {v0, p1}, Lcom/miui/antivirus/ui/MainContentFrame;->setInflateVideoAnim(Z)V

    return-void
.end method

.method public setScanResult(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->c:Lcom/miui/antivirus/ui/MainContentFrame;

    invoke-virtual {v0, p1}, Lcom/miui/antivirus/ui/MainContentFrame;->setScanResult(Ljava/lang/CharSequence;)V

    return-void
.end method
