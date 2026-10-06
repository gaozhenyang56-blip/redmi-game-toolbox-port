.class public Lcom/miui/gamebooster/beauty/BeautyView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/beauty/BeautyView$c;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/view/ViewGroup;

.field private c:Landroid/view/ViewGroup;

.field private d:Landroid/view/ViewGroup;

.field private e:Landroid/view/ViewGroup;

.field private f:Landroid/content/res/Resources;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/view/View;

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;

.field private p:Lcom/miui/gamebooster/beauty/BeautySmallView;

.field private q:Landroid/animation/AnimatorSet;

.field private r:Landroid/os/Handler;

.field private s:Lcom/miui/gamebooster/beauty/BeautyView$c;

.field private t:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/miui/gamebooster/beauty/BeautyView;->r:Landroid/os/Handler;

    new-instance p2, Lcom/miui/gamebooster/beauty/BeautyView$a;

    invoke-direct {p2, p0}, Lcom/miui/gamebooster/beauty/BeautyView$a;-><init>(Lcom/miui/gamebooster/beauty/BeautyView;)V

    iput-object p2, p0, Lcom/miui/gamebooster/beauty/BeautyView;->t:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/beauty/BeautyView;->i(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/miui/gamebooster/beauty/BeautyView;)Lcom/miui/gamebooster/beauty/BeautySmallView;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/beauty/BeautyView;->p:Lcom/miui/gamebooster/beauty/BeautySmallView;

    return-object p0
.end method

.method static synthetic b(Lcom/miui/gamebooster/beauty/BeautyView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/beauty/BeautyView;->m:Landroid/view/View;

    return-object p0
.end method

.method static synthetic c(Lcom/miui/gamebooster/beauty/BeautyView;Landroid/view/View;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gamebooster/beauty/BeautyView;->n(Landroid/view/View;Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic d(Lcom/miui/gamebooster/beauty/BeautyView;)I
    .locals 0

    iget p0, p0, Lcom/miui/gamebooster/beauty/BeautyView;->a:I

    return p0
.end method

.method static synthetic e(Lcom/miui/gamebooster/beauty/BeautyView;I)I
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/beauty/BeautyView;->a:I

    return p1
.end method

.method static synthetic f(Lcom/miui/gamebooster/beauty/BeautyView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/beauty/BeautyView;->t:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic g(Lcom/miui/gamebooster/beauty/BeautyView;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/beauty/BeautyView;->r:Landroid/os/Handler;

    return-object p0
.end method

.method private h(Landroid/view/View;Landroid/view/View;IIII)V
    .locals 9

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object p1

    new-array v1, v0, [Lmiuix/animation/base/AnimConfig;

    new-instance v3, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v3}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v4, 0x2

    new-array v5, v4, [F

    fill-array-data v5, :array_0

    const/4 v6, -0x2

    invoke-virtual {v3, v6, v5}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {p1, v1}, Lmiuix/animation/IVisibleStyle;->hide([Lmiuix/animation/base/AnimConfig;)V

    new-array p1, v0, [Landroid/view/View;

    aput-object p2, p1, v2

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object p1

    new-array v1, v0, [Lmiuix/animation/base/AnimConfig;

    new-instance v3, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v3}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v5, v4, [F

    fill-array-data v5, :array_1

    invoke-virtual {v3, v6, v5}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {p1, v1}, Lmiuix/animation/IVisibleStyle;->show([Lmiuix/animation/base/AnimConfig;)V

    new-array p1, v0, [Landroid/view/View;

    aput-object p2, p1, v2

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p1

    new-instance p2, Lmiuix/animation/controller/AnimState;

    const-string v1, "start"

    invoke-direct {p2, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v1, Lmiuix/animation/property/ViewProperty;->WIDTH:Lmiuix/animation/property/ViewProperty;

    int-to-double v7, p3

    invoke-virtual {p2, v1, v7, v8}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    sget-object p3, Lmiuix/animation/property/ViewProperty;->HEIGHT:Lmiuix/animation/property/ViewProperty;

    int-to-double v7, p4

    invoke-virtual {p2, p3, v7, v8}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    sget-object p4, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const-wide/16 v7, 0x0

    invoke-virtual {p2, p4, v7, v8}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    new-instance v3, Lmiuix/animation/controller/AnimState;

    const-string v5, "end"

    invoke-direct {v3, v5}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    int-to-double v7, p5

    invoke-virtual {v3, v1, v7, v8}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p5

    int-to-double v7, p6

    invoke-virtual {p5, p3, v7, v8}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p3

    const-wide/high16 p5, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p3, p4, p5, p6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p3

    new-array p4, v0, [Lmiuix/animation/base/AnimConfig;

    new-instance p5, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p5}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array p6, v4, [F

    fill-array-data p6, :array_2

    invoke-virtual {p5, v6, p6}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object p5

    aput-object p5, p4, v2

    invoke-interface {p1, p2, p3, p4}, Lmiuix/animation/IStateStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3e99999a    # 0.3f
    .end array-data

    :array_1
    .array-data 4
        0x3f733333    # 0.95f
        0x3e4ccccd    # 0.2f
    .end array-data

    :array_2
    .array-data 4
        0x3f666666    # 0.9f
        0x3e4ccccd    # 0.2f
    .end array-data
.end method

.method private i(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gamebooster/beauty/BeautyView;->f:Landroid/content/res/Resources;

    invoke-static {}, Lw5/f;->U()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/beauty/BeautyView;->j(Z)V

    :cond_0
    return-void
.end method

.method private k()V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyView;->m:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/beauty/BeautyView;->f:Landroid/content/res/Resources;

    const v2, 0x7f070270

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/miui/gamebooster/beauty/BeautyView;->m:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private l()V
    .locals 7

    invoke-direct {p0}, Lcom/miui/gamebooster/beauty/BeautyView;->k()V

    iget v0, p0, Lcom/miui/gamebooster/beauty/BeautyView;->a:I

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyView;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyView;->p:Lcom/miui/gamebooster/beauty/BeautySmallView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyView;->m:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyView;->p:Lcom/miui/gamebooster/beauty/BeautySmallView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v0

    invoke-static {}, Lw5/f;->G()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lw5/f;->B()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    invoke-virtual {v0}, Lw5/f;->C()Z

    move-result v4

    invoke-static {}, Lw5/f;->a0()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Lw5/f;->E()Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v2

    goto :goto_2

    :cond_3
    move v5, v3

    :goto_2
    invoke-static {}, Lw5/f;->Y()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v0}, Lw5/f;->D()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    move v2, v3

    :goto_3
    invoke-static {v1, v4, v5, v2}, Lw5/i;->e(ZZZZ)V

    return-void
.end method

.method private m()V
    .locals 4

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyView;->r:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/gamebooster/beauty/BeautyView;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyView;->r:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/gamebooster/beauty/BeautyView;->t:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private n(Landroid/view/View;Landroid/view/View;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    iget-object v4, v0, Lcom/miui/gamebooster/beauty/BeautyView;->n:Landroid/view/View;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    iget-object v4, v0, Lcom/miui/gamebooster/beauty/BeautyView;->q:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_1

    return-void

    :cond_1
    const/16 v4, 0x3e8

    new-instance v6, Le8/b;

    invoke-direct {v6}, Le8/b;-><init>()V

    const v7, 0x3f4ccccd    # 0.8f

    invoke-virtual {v6, v7}, Le8/b;->a(F)Le8/b;

    move-result-object v7

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-virtual {v7, v8}, Le8/b;->b(F)Le8/b;

    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    int-to-long v8, v4

    invoke-virtual {v7, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v7, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v4, 0x4

    const-string v8, "scaleY"

    const-string v9, "scaleX"

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x2

    if-eqz v3, :cond_2

    new-array v13, v12, [F

    fill-array-data v13, :array_0

    invoke-static {v9, v13}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    new-array v14, v10, [F

    const/4 v15, 0x0

    aput v15, v14, v11

    const-string v5, "pivotX"

    invoke-static {v5, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    new-array v14, v12, [F

    fill-array-data v14, :array_1

    invoke-static {v8, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    new-array v6, v10, [F

    aput v15, v6, v11

    const-string v15, "pivotY"

    invoke-static {v15, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v13, v4, v11

    aput-object v5, v4, v10

    aput-object v14, v4, v12

    const/4 v5, 0x3

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-array v6, v12, [F

    fill-array-data v6, :array_2

    invoke-static {v1, v9, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    new-array v9, v12, [F

    fill-array-data v9, :array_3

    invoke-static {v1, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v6, v5, v11

    aput-object v8, v5, v10

    aput-object v4, v5, v12

    invoke-virtual {v7, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0

    :cond_2
    new-array v5, v12, [F

    fill-array-data v5, :array_4

    invoke-static {v2, v9, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    new-array v6, v12, [F

    fill-array-data v6, :array_5

    invoke-static {v2, v8, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    new-array v13, v12, [F

    fill-array-data v13, :array_6

    invoke-static {v1, v9, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    new-array v13, v12, [F

    fill-array-data v13, :array_7

    invoke-static {v1, v8, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v9, v4, v11

    aput-object v8, v4, v10

    aput-object v5, v4, v12

    const/4 v5, 0x3

    aput-object v6, v4, v5

    invoke-virtual {v7, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_0
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v5, Le8/b;

    invoke-direct {v5}, Le8/b;-><init>()V

    const v6, 0x3f666666    # 0.9f

    invoke-virtual {v5, v6}, Le8/b;->a(F)Le8/b;

    move-result-object v5

    const v6, 0x3e19999a    # 0.15f

    invoke-virtual {v5, v6}, Le8/b;->b(F)Le8/b;

    new-array v5, v12, [F

    fill-array-data v5, :array_8

    const-string v6, "alpha"

    invoke-static {v1, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    new-array v8, v12, [F

    fill-array-data v8, :array_9

    invoke-static {v2, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0x64

    invoke-virtual {v5, v8, v9}, Landroid/animation/Animator;->setStartDelay(J)V

    const/16 v8, 0x320

    int-to-long v8, v8

    invoke-virtual {v5, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v5, Lcom/miui/gamebooster/beauty/BeautyView$b;

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/miui/gamebooster/beauty/BeautyView$b;-><init>(Lcom/miui/gamebooster/beauty/BeautyView;Landroid/view/View;Landroid/view/View;Z)V

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, v0, Lcom/miui/gamebooster/beauty/BeautyView;->q:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v1, v0, Lcom/miui/gamebooster/beauty/BeautyView;->q:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3e99999a    # 0.3f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3e99999a    # 0.3f
    .end array-data

    :array_2
    .array-data 4
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x3e99999a    # 0.3f
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x3e99999a    # 0.3f
    .end array-data

    :array_6
    .array-data 4
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data

    :array_7
    .array-data 4
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data

    :array_8
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_9
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private o()V
    .locals 5

    invoke-static {}, Lw5/f;->G()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v0

    invoke-virtual {v0}, Lw5/f;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    :goto_1
    new-array v1, v1, [Landroid/view/View;

    iget-object v4, p0, Lcom/miui/gamebooster/beauty/BeautyView;->b:Landroid/view/ViewGroup;

    aput-object v4, v1, v2

    invoke-static {v3, v1}, Ldb/i;->m(I[Landroid/view/View;)V

    if-eqz v0, :cond_2

    invoke-static {}, Lw5/f;->q0()V

    :cond_2
    iget-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyView;->g:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    invoke-static {}, Lw5/f;->H()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    :cond_3
    return-void
.end method

.method private p()V
    .locals 4

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v0

    invoke-virtual {v0}, Lw5/f;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lw5/f;->t0()V

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/view/View;

    iget-object v3, p0, Lcom/miui/gamebooster/beauty/BeautyView;->c:Landroid/view/ViewGroup;

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ldb/i;->m(I[Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyView;->h:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v2

    invoke-virtual {v2}, Lw5/f;->K()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    :cond_2
    invoke-static {}, Lw5/f;->L()Z

    move-result v0

    iget-object v2, p0, Lcom/miui/gamebooster/beauty/BeautyView;->l:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    if-eqz v0, :cond_3

    const v0, 0x7f0806dd

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    invoke-virtual {v2, v1, v1, v0, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :cond_4
    return-void
.end method

.method private q()V
    .locals 5

    invoke-static {}, Lw5/f;->Y()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v0

    invoke-virtual {v0}, Lw5/f;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    :goto_1
    new-array v1, v1, [Landroid/view/View;

    iget-object v4, p0, Lcom/miui/gamebooster/beauty/BeautyView;->e:Landroid/view/ViewGroup;

    aput-object v4, v1, v2

    invoke-static {v3, v1}, Ldb/i;->m(I[Landroid/view/View;)V

    if-eqz v0, :cond_2

    invoke-static {}, Lw5/f;->v0()V

    :cond_2
    iget-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyView;->j:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    invoke-static {}, Lw5/f;->W()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    :cond_3
    return-void
.end method

.method private r()V
    .locals 5

    invoke-static {}, Lw5/f;->a0()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v0

    invoke-virtual {v0}, Lw5/f;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {}, Lw5/f;->C0()V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/miui/gamebooster/beauty/BeautyView;->c:Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v3, v2, v4, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v4, p0, Lcom/miui/gamebooster/beauty/BeautyView;->c:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_2

    :cond_3
    const/16 v0, 0x8

    :goto_2
    new-array v1, v1, [Landroid/view/View;

    iget-object v3, p0, Lcom/miui/gamebooster/beauty/BeautyView;->d:Landroid/view/ViewGroup;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ldb/i;->m(I[Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyView;->i:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v1

    invoke-virtual {v1}, Lw5/f;->l()Lw5/a;

    move-result-object v1

    invoke-static {v1}, Lw5/f;->Z(Lw5/a;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    :cond_4
    return-void
.end method

.method private s()V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyView;->p:Lcom/miui/gamebooster/beauty/BeautySmallView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/gamebooster/beauty/BeautySmallView;->g()V

    :cond_0
    return-void
.end method


# virtual methods
.method public j(Z)V
    .locals 3

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v0

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v1

    invoke-virtual {v1}, Lw5/f;->h()I

    move-result v1

    invoke-static {}, Lw5/f;->q()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lw5/f;->O0(ZII)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b0618

    const v1, 0x7f0708a2

    const v2, 0x7f0706ec

    if-eq p1, v0, :cond_6

    const v0, 0x7f0b069b

    if-eq p1, v0, :cond_5

    const v0, 0x7f0b0c49

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-static {}, Lw5/i;->d()V

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/miui/gamebooster/beauty/BeautySettingsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x14000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_1
    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object p1

    invoke-virtual {p1}, Lw5/f;->l()Lw5/a;

    move-result-object p1

    invoke-static {p1}, Lw5/f;->Z(Lw5/a;)Z

    move-result v0

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v1

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2, p1}, Lw5/f;->S0(ZLw5/a;)V

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v1

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lw5/f;->R0(Z)V

    invoke-direct {p0}, Lcom/miui/gamebooster/beauty/BeautyView;->r()V

    invoke-direct {p0}, Lcom/miui/gamebooster/beauty/BeautyView;->s()V

    invoke-direct {p0}, Lcom/miui/gamebooster/beauty/BeautyView;->m()V

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyView;->s:Lcom/miui/gamebooster/beauty/BeautyView$c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/miui/gamebooster/beauty/BeautyView$c;->b(Lw5/a;)V

    :cond_0
    invoke-static {}, Lw5/i;->j()V

    goto/16 :goto_0

    :pswitch_2
    invoke-static {}, Lw5/f;->W()Z

    move-result p1

    xor-int/lit8 v0, p1, 0x1

    invoke-static {v0}, Lw5/f;->w0(Z)V

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lw5/f;->Q0(Z)V

    invoke-direct {p0}, Lcom/miui/gamebooster/beauty/BeautyView;->q()V

    invoke-direct {p0}, Lcom/miui/gamebooster/beauty/BeautyView;->s()V

    invoke-static {}, Lw5/i;->i()V

    goto/16 :goto_0

    :pswitch_3
    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object p1

    invoke-virtual {p1}, Lw5/f;->K()Z

    move-result p1

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v0

    xor-int/lit8 p1, p1, 0x1

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v1

    invoke-virtual {v1}, Lw5/f;->h()I

    move-result v1

    invoke-static {}, Lw5/f;->q()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lw5/f;->O0(ZII)V

    invoke-direct {p0}, Lcom/miui/gamebooster/beauty/BeautyView;->p()V

    invoke-direct {p0}, Lcom/miui/gamebooster/beauty/BeautyView;->s()V

    invoke-direct {p0}, Lcom/miui/gamebooster/beauty/BeautyView;->m()V

    iget-object p1, p0, Lcom/miui/gamebooster/beauty/BeautyView;->s:Lcom/miui/gamebooster/beauty/BeautyView$c;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/miui/gamebooster/beauty/BeautyView$c;->a()V

    :cond_1
    invoke-static {}, Lw5/i;->h()V

    goto/16 :goto_0

    :pswitch_4
    invoke-static {}, Lw5/f;->H()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lw5/f;->L0(Z)V

    invoke-direct {p0}, Lcom/miui/gamebooster/beauty/BeautyView;->o()V

    invoke-direct {p0}, Lcom/miui/gamebooster/beauty/BeautyView;->s()V

    invoke-direct {p0}, Lcom/miui/gamebooster/beauty/BeautyView;->m()V

    invoke-static {}, Lw5/i;->g()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lw5/f;->p()Lw5/f;

    invoke-static {}, Lw5/f;->L()Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/miui/gamebooster/beauty/BeautyView;->r:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/miui/gamebooster/beauty/BeautyView;->q:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_4
    iget-object v4, p0, Lcom/miui/gamebooster/beauty/BeautyView;->m:Landroid/view/View;

    iget-object v5, p0, Lcom/miui/gamebooster/beauty/BeautyView;->n:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    iget-object p1, p0, Lcom/miui/gamebooster/beauty/BeautyView;->m:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/miui/gamebooster/beauty/BeautyView;->h(Landroid/view/View;Landroid/view/View;IIII)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/miui/gamebooster/beauty/BeautyView;->m:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyView;->p:Lcom/miui/gamebooster/beauty/BeautySmallView;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gamebooster/beauty/BeautyView;->n(Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_0

    :cond_6
    iget-object v3, p0, Lcom/miui/gamebooster/beauty/BeautyView;->n:Landroid/view/View;

    iget-object v4, p0, Lcom/miui/gamebooster/beauty/BeautyView;->m:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    iget-object p1, p0, Lcom/miui/gamebooster/beauty/BeautyView;->m:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    iget-object p1, p0, Lcom/miui/gamebooster/beauty/BeautyView;->m:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/miui/gamebooster/beauty/BeautyView;->h(Landroid/view/View;Landroid/view/View;IIII)V

    invoke-direct {p0}, Lcom/miui/gamebooster/beauty/BeautyView;->m()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0b05e3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v0

    invoke-virtual {v0}, Lw5/f;->K()Z

    move-result v0

    invoke-static {v0}, Lw5/f;->u0(Z)V

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v0

    invoke-virtual {v0}, Lw5/f;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/beauty/BeautyView;->j(Z)V

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyView;->r:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    invoke-static {}, Lw5/f;->i()I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/beauty/BeautyView;->a:I

    const v0, 0x7f0b0691

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyView;->m:Landroid/view/View;

    const v0, 0x7f0b0673

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyView;->b:Landroid/view/ViewGroup;

    const v0, 0x7f0b0680

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyView;->c:Landroid/view/ViewGroup;

    const v0, 0x7f0b0697

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyView;->d:Landroid/view/ViewGroup;

    const v0, 0x7f0b0693

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyView;->e:Landroid/view/ViewGroup;

    const v0, 0x7f0b05e3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyView;->g:Landroid/widget/ImageView;

    const v0, 0x7f0b05e4

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyView;->h:Landroid/widget/ImageView;

    const v0, 0x7f0b0c49

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyView;->l:Landroid/widget/TextView;

    const v0, 0x7f0b05e6

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyView;->i:Landroid/widget/ImageView;

    const v0, 0x7f0b05e5

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyView;->j:Landroid/widget/ImageView;

    const v0, 0x7f0b05e7

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyView;->k:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyView;->g:Landroid/widget/ImageView;

    invoke-static {v0}, Le8/a;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyView;->h:Landroid/widget/ImageView;

    invoke-static {v0}, Le8/a;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyView;->i:Landroid/widget/ImageView;

    invoke-static {v0}, Le8/a;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyView;->j:Landroid/widget/ImageView;

    invoke-static {v0}, Le8/a;->a(Landroid/view/View;)V

    const v0, 0x7f0b0681

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyView;->n:Landroid/view/View;

    const v0, 0x7f0b0618

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyView;->o:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b069b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/beauty/BeautySmallView;

    iput-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyView;->p:Lcom/miui/gamebooster/beauty/BeautySmallView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyView;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyView;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyView;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyView;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyView;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyView;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/miui/gamebooster/beauty/BeautyView;->l()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v0, -0x80000000

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setOnStatusChangeListener(Lcom/miui/gamebooster/beauty/BeautyView$c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/beauty/BeautyView;->s:Lcom/miui/gamebooster/beauty/BeautyView$c;

    return-void
.end method

.method public t()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/gamebooster/beauty/BeautyView;->o()V

    invoke-direct {p0}, Lcom/miui/gamebooster/beauty/BeautyView;->p()V

    invoke-direct {p0}, Lcom/miui/gamebooster/beauty/BeautyView;->r()V

    invoke-direct {p0}, Lcom/miui/gamebooster/beauty/BeautyView;->q()V

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyView;->p:Lcom/miui/gamebooster/beauty/BeautySmallView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/gamebooster/beauty/BeautySmallView;->g()V

    :cond_0
    return-void
.end method
