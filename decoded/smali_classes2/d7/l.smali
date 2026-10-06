.class public Ld7/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static j:Ld7/l;


# instance fields
.field private final a:Landroid/view/WindowManager;

.field private b:Landroid/view/View;

.field private c:Landroid/animation/ValueAnimator;

.field private d:Lcom/miui/gamebooster/shoulderkey/widget/GbGameModeView;

.field private e:Landroid/view/View;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ld7/v;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ld7/v;

.field private h:Lcom/miui/gamebooster/widget/GtbTipsView;

.field private i:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld7/l;->f:Ljava/util/List;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Ld7/l;->a:Landroid/view/WindowManager;

    return-void
.end method

.method public static B(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Ld7/x;->g()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Ld7/u;->f(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private synthetic C(Z)V
    .locals 0

    invoke-direct {p0}, Ld7/l;->J()V

    return-void
.end method

.method private static synthetic D(Lcom/miui/dock/sidebar/j;Landroid/animation/ValueAnimator;)V
    .locals 7

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/dock/sidebar/j;->w()Lcom/miui/dock/sidebar/RegionSamplingImageView;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v1

    new-instance v3, Lmiuix/animation/controller/AnimState;

    invoke-direct {v3}, Lmiuix/animation/controller/AnimState;-><init>()V

    sget-object v4, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v5

    const/high16 v6, 0x42f80000    # 124.0f

    mul-float/2addr v5, v6

    float-to-double v5, v5

    invoke-virtual {v3, v4, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v3

    new-array v4, v0, [Lmiuix/animation/base/AnimConfig;

    new-instance v5, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v5}, Lmiuix/animation/base/AnimConfig;-><init>()V

    invoke-virtual {v5, v0}, Lmiuix/animation/base/AnimConfig;->enableStartImmediately(Z)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-interface {v1, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of v0, p0, Lcom/miui/dock/sidebar/c;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/miui/dock/sidebar/c;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/dock/sidebar/c;->r(F)V

    :cond_2
    return-void
.end method

.method private synthetic E()V
    .locals 1

    iget-object v0, p0, Ld7/l;->g:Ld7/v;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ld7/v;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Ld7/l;->g:Ld7/v;

    :cond_0
    invoke-direct {p0}, Ld7/l;->M()V

    return-void
.end method

.method private synthetic F(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ld7/l;->K()V

    return-void
.end method

.method private synthetic G(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ld7/l;->K()V

    return-void
.end method

.method private synthetic H(Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;Landroid/view/WindowManager;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ld7/l;->Z(Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;Landroid/view/WindowManager;)V

    return-void
.end method

.method private J()V
    .locals 3

    iget-object v0, p0, Ld7/l;->d:Lcom/miui/gamebooster/shoulderkey/widget/GbGameModeView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-direct {p0, v1}, Ld7/l;->N([Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Ld7/l;->d:Lcom/miui/gamebooster/shoulderkey/widget/GbGameModeView;

    :cond_0
    return-void
.end method

.method private K()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeGtView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ld7/l;->h:Lcom/miui/gamebooster/widget/GtbTipsView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GTGuideManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Ld7/l;->h:Lcom/miui/gamebooster/widget/GtbTipsView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    new-array v4, v3, [Landroid/view/View;

    aput-object v0, v4, v2

    invoke-direct {p0, v4}, Ld7/l;->N([Landroid/view/View;)V

    iput-object v1, p0, Ld7/l;->h:Lcom/miui/gamebooster/widget/GtbTipsView;

    :cond_0
    iget-object v0, p0, Ld7/l;->e:Landroid/view/View;

    if-eqz v0, :cond_1

    new-array v3, v3, [Landroid/view/View;

    aput-object v0, v3, v2

    invoke-direct {p0, v3}, Ld7/l;->N([Landroid/view/View;)V

    iput-object v1, p0, Ld7/l;->e:Landroid/view/View;

    :cond_1
    return-void
.end method

.method private M()V
    .locals 4

    iget-object v0, p0, Ld7/l;->c:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v1, p0, Ld7/l;->c:Landroid/animation/ValueAnimator;

    :cond_0
    iget-object v0, p0, Ld7/l;->b:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/view/View;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-direct {p0, v2}, Ld7/l;->N([Landroid/view/View;)V

    iput-object v1, p0, Ld7/l;->b:Landroid/view/View;

    :cond_1
    return-void
.end method

.method private varargs N([Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Ld7/l;->a:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    :try_start_0
    iget-object v3, p0, Ld7/l;->a:Landroid/view/WindowManager;

    invoke-interface {v3, v2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private O(Lcom/miui/dock/sidebar/j;Z)V
    .locals 7

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/miui/dock/sidebar/j;->w()Lcom/miui/dock/sidebar/RegionSamplingImageView;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/miui/dock/sidebar/j;->w()Lcom/miui/dock/sidebar/RegionSamplingImageView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/dock/sidebar/j;->w()Lcom/miui/dock/sidebar/RegionSamplingImageView;

    move-result-object p2

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v1

    new-instance v3, Lmiuix/animation/controller/AnimState;

    invoke-direct {v3}, Lmiuix/animation/controller/AnimState;-><init>()V

    sget-object v4, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v3

    new-array v4, v0, [Lmiuix/animation/base/AnimConfig;

    new-instance v5, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v5}, Lmiuix/animation/base/AnimConfig;-><init>()V

    invoke-virtual {v5, v0}, Lmiuix/animation/base/AnimConfig;->enableStartImmediately(Z)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-interface {v1, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    const/4 v0, -0x2

    invoke-direct {p0, p1, v0}, Ld7/l;->P(Lcom/miui/dock/sidebar/j;I)V

    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of p2, p1, Lcom/miui/dock/sidebar/c;

    if-eqz p2, :cond_1

    check-cast p1, Lcom/miui/dock/sidebar/c;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/miui/dock/sidebar/c;->r(F)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string p1, "GTGuideManager"

    const-string p2, "resetBackground sidebar is null!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private P(Lcom/miui/dock/sidebar/j;I)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/miui/dock/sidebar/j;->w()Lcom/miui/dock/sidebar/RegionSamplingImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/miui/dock/sidebar/j;->w()Lcom/miui/dock/sidebar/RegionSamplingImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, La8/k2;->L(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/dock/sidebar/j;->z()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object p2, p0, Ld7/l;->a:Landroid/view/WindowManager;

    invoke-virtual {p1}, Lcom/miui/dock/sidebar/j;->z()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private R(Landroid/content/Context;Ljava/lang/String;ILandroid/view/WindowManager$LayoutParams;)V
    .locals 3

    iget-object v0, p0, Ld7/l;->d:Lcom/miui/gamebooster/shoulderkey/widget/GbGameModeView;

    if-nez v0, :cond_2

    iget-object v0, p0, Ld7/l;->g:Ld7/v;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0e01fe

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/gamebooster/shoulderkey/widget/GbGameModeView;

    iput-object p1, p0, Ld7/l;->d:Lcom/miui/gamebooster/shoulderkey/widget/GbGameModeView;

    invoke-virtual {p1, p2, p3}, Lcom/miui/gamebooster/shoulderkey/widget/GbGameModeView;->f(Ljava/lang/String;I)V

    iget-object p1, p0, Ld7/l;->g:Ld7/v;

    instance-of p3, p1, Ld7/u;

    if-eqz p3, :cond_1

    check-cast p1, Ld7/u;

    invoke-virtual {p1, p2}, Ld7/u;->i(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Ld7/l;->d:Lcom/miui/gamebooster/shoulderkey/widget/GbGameModeView;

    new-instance p2, Ld7/h;

    invoke-direct {p2, p0}, Ld7/h;-><init>(Ld7/l;)V

    invoke-virtual {p1, p2}, Lcom/miui/gamebooster/shoulderkey/widget/GbGameModeView;->setOnGuideViewEvent(Lcom/miui/gamebooster/shoulderkey/widget/GbGameModeView$a;)V

    invoke-static {p4}, Ls8/y;->a(Landroid/view/WindowManager$LayoutParams;)V

    iget-object p1, p0, Ld7/l;->a:Landroid/view/WindowManager;

    iget-object p2, p0, Ld7/l;->d:Lcom/miui/gamebooster/shoulderkey/widget/GbGameModeView;

    invoke-interface {p1, p2, p4}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Ld7/l;->g:Ld7/v;

    invoke-virtual {p1}, Ld7/v;->c()V

    :cond_2
    :goto_0
    return-void
.end method

.method private T(Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;Landroid/view/WindowManager;)V
    .locals 9

    invoke-virtual {p1}, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->getGameTurboLayout()Lcom/miui/gamebooster/windowmanager/newbox/c0;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/gamebooster/windowmanager/newbox/c0;->getMainView()Lcom/miui/gamebooster/windowmanager/newbox/d0;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/miui/gamebooster/windowmanager/newbox/c0;->getMainView()Lcom/miui/gamebooster/windowmanager/newbox/d0;

    move-result-object v6

    const v0, 0x7f0b0019

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v8, Ld7/l$e;

    move-object v2, v8

    move-object v3, p0

    move-object v4, v0

    move-object v5, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Ld7/l$e;-><init>(Ld7/l;Landroid/view/View;Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;Lcom/miui/gamebooster/windowmanager/newbox/d0;Landroid/view/WindowManager;)V

    invoke-virtual {v1, v8}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_2
    :goto_0
    return-void
.end method

.method private U(Landroid/content/Context;ZLandroid/view/WindowManager$LayoutParams;Lcom/miui/dock/sidebar/j;)V
    .locals 4

    iget-object v0, p0, Ld7/l;->b:Landroid/view/View;

    if-nez v0, :cond_3

    iget-object v0, p0, Ld7/l;->g:Ld7/v;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e01ff

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ld7/l;->b:Landroid/view/View;

    instance-of v1, v0, Lcom/miui/gamebooster/shoulderkey/widget/TbGuideView;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/miui/gamebooster/shoulderkey/widget/TbGuideView;

    new-instance v1, Ld7/l$b;

    invoke-direct {v1, p0}, Ld7/l$b;-><init>(Ld7/l;)V

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/shoulderkey/widget/TbGuideView;->setOnGuideViewEvent(Lcom/miui/gamebooster/shoulderkey/widget/TbGuideView$a;)V

    invoke-static {p3}, Ls8/y;->a(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Ld7/l;->a:Landroid/view/WindowManager;

    iget-object v1, p0, Ld7/l;->b:Landroid/view/View;

    invoke-interface {v0, v1, p3}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    const/4 p3, 0x7

    new-array p3, p3, [F

    fill-array-data p3, :array_0

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p3

    iput-object p3, p0, Ld7/l;->c:Landroid/animation/ValueAnimator;

    new-instance v0, Ld7/f;

    invoke-direct {v0, p4}, Ld7/f;-><init>(Lcom/miui/dock/sidebar/j;)V

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p3, p0, Ld7/l;->c:Landroid/animation/ValueAnimator;

    new-instance v0, Ld7/l$c;

    invoke-direct {v0, p0, p4, p1, p2}, Ld7/l$c;-><init>(Ld7/l;Lcom/miui/dock/sidebar/j;Landroid/content/Context;Z)V

    invoke-virtual {p3, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Ld7/l;->c:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0x4b0

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Ld7/l;->c:Landroid/animation/ValueAnimator;

    sget-boolean p2, Ln6/a;->a:Z

    if-eqz p2, :cond_2

    const/4 p3, -0x1

    goto :goto_0

    :cond_2
    const/4 p3, 0x1

    :goto_0
    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object p1, p0, Ld7/l;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    if-eqz p2, :cond_3

    iget-object p1, p0, Ld7/l;->b:Landroid/view/View;

    new-instance p2, Ld7/g;

    invoke-direct {p2, p0}, Ld7/g;-><init>(Ld7/l;)V

    const-wide/16 p3, 0x1388

    invoke-virtual {p1, p2, p3, p4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private V(Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;Landroid/view/View;Landroid/view/WindowManager;ZLjava/lang/String;)V
    .locals 10

    if-eqz p2, :cond_1

    iget-object v0, p0, Ld7/l;->g:Ld7/v;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v9, Ld7/l$f;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move v6, p4

    move-object v7, p3

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Ld7/l$f;-><init>(Ld7/l;Landroid/view/View;Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;Landroid/content/Context;ZLandroid/view/WindowManager;Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    sget-boolean p1, Ln6/a;->a:Z

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    :cond_1
    :goto_0
    return-void
.end method

.method private Y(Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;)V
    .locals 11

    if-eqz p1, :cond_3

    iget-object v0, p0, Ld7/l;->h:Lcom/miui/gamebooster/widget/GtbTipsView;

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->getGameTurboLayout()Lcom/miui/gamebooster/windowmanager/newbox/c0;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/miui/gamebooster/windowmanager/newbox/c0;->getMainView()Lcom/miui/gamebooster/windowmanager/newbox/d0;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120bd2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f120bd1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f120bce

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Ld7/l;->h:Lcom/miui/gamebooster/widget/GtbTipsView;

    const v6, 0x7f07100d

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v5, v1}, Lcom/miui/gamebooster/widget/GtbTipsView;->n(I)V

    iget-object v1, p0, Ld7/l;->h:Lcom/miui/gamebooster/widget/GtbTipsView;

    invoke-virtual {v1, v2, v3}, Lcom/miui/gamebooster/widget/GtbTipsView;->m(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Ld7/l;->h:Lcom/miui/gamebooster/widget/GtbTipsView;

    invoke-virtual {v1, v4}, Lcom/miui/gamebooster/widget/GtbTipsView;->j(Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stepToSmallFunc: LocationInWindow "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget v4, v1, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "GTGuideManager"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Ld7/l;->h:Lcom/miui/gamebooster/widget/GtbTipsView;

    invoke-virtual {p1}, Lcom/miui/gamebooster/windowmanager/newbox/c0;->getMainView()Lcom/miui/gamebooster/windowmanager/newbox/d0;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v7

    aget v8, v1, v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v9

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v10

    invoke-virtual/range {v5 .. v10}, Lcom/miui/gamebooster/widget/GtbTipsView;->g(Landroid/view/View;IIII)V

    iget-object p1, p0, Ld7/l;->h:Lcom/miui/gamebooster/widget/GtbTipsView;

    new-instance v0, Ld7/j;

    invoke-direct {v0, p0}, Ld7/j;-><init>(Ld7/l;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private Z(Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;Landroid/view/WindowManager;)V
    .locals 6

    if-eqz p1, :cond_3

    iget-object p2, p0, Ld7/l;->h:Lcom/miui/gamebooster/widget/GtbTipsView;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->getGameTurboLayout()Lcom/miui/gamebooster/windowmanager/newbox/c0;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/miui/gamebooster/windowmanager/newbox/c0;->getMainView()Lcom/miui/gamebooster/windowmanager/newbox/d0;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f120bd0

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f120bcf

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f120bce

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f070e1e

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object p2, p0, Ld7/l;->h:Lcom/miui/gamebooster/widget/GtbTipsView;

    invoke-virtual {p2, v0, v2}, Lcom/miui/gamebooster/widget/GtbTipsView;->m(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Ld7/l;->h:Lcom/miui/gamebooster/widget/GtbTipsView;

    invoke-virtual {p2, v3}, Lcom/miui/gamebooster/widget/GtbTipsView;->j(Ljava/lang/String;)V

    const/4 p2, 0x2

    new-array p2, p2, [I

    invoke-virtual {p1, p2}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v0, p0, Ld7/l;->h:Lcom/miui/gamebooster/widget/GtbTipsView;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    const/4 p1, 0x1

    aget p1, p2, p1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result p2

    add-int/2addr p1, p2

    sub-int v3, p1, v5

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gamebooster/widget/GtbTipsView;->g(Landroid/view/View;IIII)V

    iget-object p1, p0, Ld7/l;->h:Lcom/miui/gamebooster/widget/GtbTipsView;

    new-instance p2, Ld7/k;

    invoke-direct {p2, p0}, Ld7/k;-><init>(Ld7/l;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/miui/dock/sidebar/j;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Ld7/l;->D(Lcom/miui/dock/sidebar/j;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private a0(Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;Landroid/view/WindowManager;)V
    .locals 8

    if-eqz p1, :cond_3

    iget-object v0, p0, Ld7/l;->h:Lcom/miui/gamebooster/widget/GtbTipsView;

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->getGameTurboLayout()Lcom/miui/gamebooster/windowmanager/newbox/c0;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/miui/gamebooster/windowmanager/newbox/c0;->getMainView()Lcom/miui/gamebooster/windowmanager/newbox/d0;

    move-result-object v2

    if-nez v2, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f120bd2

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f120bd1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f070e1e

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v6, p0, Ld7/l;->h:Lcom/miui/gamebooster/widget/GtbTipsView;

    const v7, 0x7f07100d

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/miui/gamebooster/widget/GtbTipsView;->n(I)V

    iget-object v1, p0, Ld7/l;->h:Lcom/miui/gamebooster/widget/GtbTipsView;

    invoke-virtual {v1, v3, v4}, Lcom/miui/gamebooster/widget/GtbTipsView;->m(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stepToSmallFunc: LocationInWindow "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    aget v6, v1, v4

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "GTGuideManager"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Ld7/l;->h:Lcom/miui/gamebooster/widget/GtbTipsView;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    aget v4, v1, v4

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int v7, v1, v5

    move-object v1, v3

    move v3, v0

    move v5, v6

    move v6, v7

    invoke-virtual/range {v1 .. v6}, Lcom/miui/gamebooster/widget/GtbTipsView;->g(Landroid/view/View;IIII)V

    iget-object v0, p0, Ld7/l;->h:Lcom/miui/gamebooster/widget/GtbTipsView;

    new-instance v1, Ld7/i;

    invoke-direct {v1, p0, p1, p2}, Ld7/i;-><init>(Ld7/l;Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;Landroid/view/WindowManager;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static synthetic b(Ld7/l;Z)V
    .locals 0

    invoke-direct {p0, p1}, Ld7/l;->C(Z)V

    return-void
.end method

.method public static synthetic c(Ld7/l;Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;Landroid/view/WindowManager;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ld7/l;->H(Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;Landroid/view/WindowManager;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Ld7/l;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Ld7/l;->F(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Ld7/l;)V
    .locals 0

    invoke-direct {p0}, Ld7/l;->E()V

    return-void
.end method

.method public static synthetic f(Ld7/l;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Ld7/l;->G(Landroid/view/View;)V

    return-void
.end method

.method static synthetic g(Ld7/l;)Ld7/v;
    .locals 0

    iget-object p0, p0, Ld7/l;->g:Ld7/v;

    return-object p0
.end method

.method static synthetic h(Ld7/l;Ld7/v;)Ld7/v;
    .locals 0

    iput-object p1, p0, Ld7/l;->g:Ld7/v;

    return-object p1
.end method

.method static synthetic i(Ld7/l;)V
    .locals 0

    invoke-direct {p0}, Ld7/l;->M()V

    return-void
.end method

.method static synthetic j(Ld7/l;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Ld7/l;->e:Landroid/view/View;

    return-object p0
.end method

.method static synthetic k(Ld7/l;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Ld7/l;->e:Landroid/view/View;

    return-object p1
.end method

.method static synthetic l(Ld7/l;Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;Landroid/view/WindowManager;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ld7/l;->a0(Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;Landroid/view/WindowManager;)V

    return-void
.end method

.method static synthetic m(Ld7/l;Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;)V
    .locals 0

    invoke-direct {p0, p1}, Ld7/l;->Y(Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;)V

    return-void
.end method

.method static synthetic n(Ld7/l;Lcom/miui/dock/sidebar/j;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ld7/l;->P(Lcom/miui/dock/sidebar/j;I)V

    return-void
.end method

.method static synthetic o(Ld7/l;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Ld7/l;->b:Landroid/view/View;

    return-object p0
.end method

.method static synthetic p(Ld7/l;Lcom/miui/dock/sidebar/j;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ld7/l;->O(Lcom/miui/dock/sidebar/j;Z)V

    return-void
.end method

.method static synthetic q(Ld7/l;)Lcom/miui/gamebooster/widget/GtbTipsView;
    .locals 0

    iget-object p0, p0, Ld7/l;->h:Lcom/miui/gamebooster/widget/GtbTipsView;

    return-object p0
.end method

.method static synthetic r(Ld7/l;Lcom/miui/gamebooster/widget/GtbTipsView;)Lcom/miui/gamebooster/widget/GtbTipsView;
    .locals 0

    iput-object p1, p0, Ld7/l;->h:Lcom/miui/gamebooster/widget/GtbTipsView;

    return-object p1
.end method

.method static synthetic s(Ld7/l;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Ld7/l;->z(Landroid/view/View;)V

    return-void
.end method

.method static synthetic t(Ld7/l;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    invoke-direct {p0}, Ld7/l;->w()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method static synthetic u(Ld7/l;Z)Z
    .locals 0

    iput-boolean p1, p0, Ld7/l;->i:Z

    return p1
.end method

.method static synthetic v(Ld7/l;)V
    .locals 0

    invoke-direct {p0}, Ld7/l;->K()V

    return-void
.end method

.method private w()Landroid/view/WindowManager$LayoutParams;
    .locals 3

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    invoke-static {v0}, Ls8/y;->a(Landroid/view/WindowManager$LayoutParams;)V

    const/16 v1, 0x7d3

    const/16 v1, 0x7f6
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v1, 0x50328

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    :cond_0
    const v1, 0x7f1307fe

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    return-object v0
.end method

.method public static declared-synchronized x()Ld7/l;
    .locals 2

    const-class v0, Ld7/l;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ld7/l;->j:Ld7/l;

    if-nez v1, :cond_0

    new-instance v1, Ld7/l;

    invoke-direct {v1}, Ld7/l;-><init>()V

    sput-object v1, Ld7/l;->j:Ld7/l;

    :cond_0
    sget-object v1, Ld7/l;->j:Ld7/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private y(Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    iget-object v1, p0, Ld7/l;->g:Ld7/v;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, v1, Ld7/v;->b:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    return-object v0

    :cond_1
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->getGameTurboLayout()Lcom/miui/gamebooster/windowmanager/newbox/c0;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/gamebooster/windowmanager/newbox/c0;->getMainView()Lcom/miui/gamebooster/windowmanager/newbox/d0;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p1}, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->getDockLayout()Lcom/miui/gamebooster/windowmanager/newbox/e;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-virtual {p1}, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->getGameModeView()Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-virtual {p1}, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->getShoulderView()Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_0
    return-object v0
.end method

.method private z(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x1706

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Ld7/l;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Ld7/l;->g:Ld7/v;

    invoke-static {p1}, Ld7/u;->g(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Ld7/u;

    invoke-direct {v0, v1}, Ld7/u;-><init>(I)V

    invoke-virtual {v0, p1}, Ld7/u;->i(Ljava/lang/String;)V

    iget-object p1, p0, Ld7/l;->f:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    invoke-static {p1}, La8/k2;->B(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-static {}, La8/k2;->A()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, La8/g0;->O()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    if-eqz v1, :cond_4

    invoke-static {}, Ld7/x;->h()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Ld7/l;->f:Ljava/util/List;

    new-instance v1, Ld7/x;

    invoke-direct {v1, v0}, Ld7/x;-><init>(I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {}, Ld7/w;->g()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lx4/z1;->r()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Ld7/l;->f:Ljava/util/List;

    new-instance v1, Ld7/w;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ld7/w;-><init>(I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-static {}, Ld7/y;->h()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Ld7/l;->f:Ljava/util/List;

    new-instance v1, Ld7/y;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ld7/y;-><init>(I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object p1, p0, Ld7/l;->f:Ljava/util/List;

    new-instance v1, Ld7/l$a;

    invoke-direct {v1, p0}, Ld7/l$a;-><init>(Ld7/l;)V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object p1, p0, Ld7/l;->f:Ljava/util/List;

    invoke-static {p1}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Ld7/l;->f:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ld7/v;

    iput-object p1, p0, Ld7/l;->g:Ld7/v;

    :cond_5
    return-void
.end method

.method public I()V
    .locals 1

    invoke-virtual {p0}, Ld7/l;->Q()V

    const/4 v0, 0x0

    iput-object v0, p0, Ld7/l;->g:Ld7/v;

    return-void
.end method

.method public L()V
    .locals 0

    invoke-direct {p0}, Ld7/l;->M()V

    invoke-direct {p0}, Ld7/l;->J()V

    invoke-direct {p0}, Ld7/l;->K()V

    return-void
.end method

.method public Q()V
    .locals 1

    iget-object v0, p0, Ld7/l;->g:Ld7/v;

    instance-of v0, v0, Ld7/x;

    if-eqz v0, :cond_0

    invoke-static {}, Lp7/d;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ld7/x;->f()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ld7/x;->i()V

    :cond_0
    return-void
.end method

.method public S(Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;Landroid/view/WindowManager;)V
    .locals 3

    sget-boolean v0, Ln6/a;->a:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Ld7/l;->T(Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;Landroid/view/WindowManager;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->getGameTurboLayout()Lcom/miui/gamebooster/windowmanager/newbox/c0;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/miui/gamebooster/windowmanager/newbox/c0;->getMainView()Lcom/miui/gamebooster/windowmanager/newbox/d0;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/miui/gamebooster/windowmanager/newbox/c0;->getPerformanceTextView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Ld7/l$d;

    invoke-direct {v2, p0, v0, p1, p2}, Ld7/l$d;-><init>(Ld7/l;Landroid/view/View;Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;Landroid/view/WindowManager;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public W(Landroid/content/Context;ZLcom/miui/dock/sidebar/j;Ljava/lang/String;ILandroid/view/WindowManager$LayoutParams;)V
    .locals 1

    invoke-virtual {p0, p4}, Ld7/l;->A(Ljava/lang/String;)V

    iget-object v0, p0, Ld7/l;->g:Ld7/v;

    instance-of v0, v0, Ld7/u;

    if-eqz v0, :cond_0

    invoke-static {p4}, Ld7/u;->h(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-direct {p0, p1, p4, p5, p6}, Ld7/l;->R(Landroid/content/Context;Ljava/lang/String;ILandroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p6, p3}, Ld7/l;->U(Landroid/content/Context;ZLandroid/view/WindowManager$LayoutParams;Lcom/miui/dock/sidebar/j;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public X(Lcom/miui/dock/sidebar/j;ILandroid/view/WindowManager;ZLjava/lang/String;)V
    .locals 6

    iget-object v0, p0, Ld7/l;->g:Ld7/v;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/miui/dock/sidebar/j;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/dock/sidebar/j;->H()Z

    move-result v2

    invoke-virtual {v0, v1, v2, p2}, Ld7/v;->b(Landroid/content/Context;ZI)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p1, "GTGuideManager"

    const-string p2, "showNewTurboGuideViewIfNeed: need not show gt guide"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p0}, Ld7/l;->L()V

    invoke-virtual {p1}, Lcom/miui/dock/sidebar/j;->A()Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;

    move-result-object v1

    iget-object p1, p0, Ld7/l;->g:Ld7/v;

    instance-of p1, p1, Ld7/w;

    if-eqz p1, :cond_2

    iget-object p1, p0, Ld7/l;->a:Landroid/view/WindowManager;

    invoke-virtual {p0, v1, p1}, Ld7/l;->S(Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;Landroid/view/WindowManager;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v1}, Ld7/l;->y(Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;)Landroid/view/View;

    move-result-object v2

    move-object v0, p0

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Ld7/l;->V(Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;Landroid/view/View;Landroid/view/WindowManager;ZLjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Ld7/l;->g:Ld7/v;

    invoke-virtual {p1}, Ld7/v;->d()V

    return-void
.end method
