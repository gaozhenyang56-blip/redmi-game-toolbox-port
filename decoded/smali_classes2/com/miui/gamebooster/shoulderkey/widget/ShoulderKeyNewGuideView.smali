.class public Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView;
.super Lcom/miui/gamebooster/shoulderkey/widget/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView$b;
    }
.end annotation


# instance fields
.field private b:Landroid/view/View;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Lcom/airbnb/lottie/LottieAnimationView;

.field private g:Lcom/airbnb/lottie/LottieAnimationView;

.field private h:Lcom/airbnb/lottie/LottieAnimationView;

.field private i:Landroid/widget/FrameLayout;

.field private j:Landroid/widget/FrameLayout;

.field private k:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gamebooster/shoulderkey/widget/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object p1, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView$b;->a:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView$b;

    iput-object p1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView;->k:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView$b;

    return-void
.end method

.method private f()V
    .locals 5

    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView;->k:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView$b;

    sget-object v2, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView$b;->a:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView$b;

    if-ne v1, v2, :cond_0

    const v1, 0x7f120aa3

    goto :goto_0

    :cond_0
    const v1, 0x7f120aa4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView;->k:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView$b;

    sget-object v2, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView$b;->a:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView$b;

    if-ne v1, v2, :cond_2

    const v1, 0x7f120aa0

    goto :goto_1

    :cond_2
    const v1, 0x7f120aa1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_3
    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView;->k:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView$b;

    sget-object v2, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView$b;->a:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView$b;

    if-ne v1, v2, :cond_4

    const v1, 0x7f120bcc

    goto :goto_2

    :cond_4
    const v1, 0x7f120bce

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_5
    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView;->b:Landroid/view/View;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView;->k:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView$b;

    sget-object v4, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView$b;->a:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView$b;

    if-ne v3, v4, :cond_6

    move v3, v1

    goto :goto_3

    :cond_6
    move v3, v2

    :goto_3
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView;->h:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_9

    iget-object v3, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView;->k:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView$b;

    sget-object v4, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView$b;->b:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView$b;

    if-ne v3, v4, :cond_8

    goto :goto_4

    :cond_8
    move v1, v2

    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    return-void
.end method

.method private g(Landroid/view/ViewGroup;Lcom/airbnb/lottie/LottieAnimationView;Landroid/view/ViewGroup;Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p2}, Lcom/airbnb/lottie/LottieAnimationView;->m()V

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x1

    new-array v5, v4, [F

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v5, v0

    const-string v6, "alpha"

    invoke-static {p3, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    aput-object p3, v3, v0

    new-array p3, v4, [F

    aput v1, p3, v0

    invoke-static {p1, v6, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance p1, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView$a;

    invoke-direct {p1, p0, p2, p4}, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView$a;-><init>(Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView;Lcom/airbnb/lottie/LottieAnimationView;Lcom/airbnb/lottie/LottieAnimationView;)V

    invoke-virtual {v2, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 p1, 0xad

    invoke-virtual {v2, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b0c70

    if-eq p1, v0, :cond_2

    const v0, 0x7f0b0c8b

    if-eq p1, v0, :cond_1

    const v0, 0x7f0b0cc5

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object p1, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView$b;->b:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView$b;

    iput-object p1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView;->k:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView$b;

    iget-object p1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView;->i:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView;->f:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView;->j:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView;->g:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView;->g(Landroid/view/ViewGroup;Lcom/airbnb/lottie/LottieAnimationView;Landroid/view/ViewGroup;Lcom/airbnb/lottie/LottieAnimationView;)V

    invoke-direct {p0}, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView;->f()V

    const-string p1, "shoulder_key_guide_section_trigger"

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView$b;->a:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView$b;

    iput-object p1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView;->k:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView$b;

    iget-object p1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView;->j:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView;->g:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView;->i:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView;->f:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView;->g(Landroid/view/ViewGroup;Lcom/airbnb/lottie/LottieAnimationView;Landroid/view/ViewGroup;Lcom/airbnb/lottie/LottieAnimationView;)V

    invoke-direct {p0}, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView;->f()V

    const-string p1, "shoulder_key_guide_single_trigger"

    :goto_0
    invoke-static {p1}, Lp7/e;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/miui/gamebooster/shoulderkey/widget/a;->a:Lcom/miui/gamebooster/shoulderkey/widget/a$a;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/miui/gamebooster/shoulderkey/widget/a$a;->b()V

    :cond_3
    :goto_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const v0, 0x7f0b0c8b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView;->b:Landroid/view/View;

    const v0, 0x7f0b0cc5

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView;->h:Lcom/airbnb/lottie/LottieAnimationView;

    const v0, 0x7f0b0c70

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView;->b:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView;->h:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0cf3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView;->d:Landroid/widget/TextView;

    const v0, 0x7f0b0cf1

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView;->e:Landroid/widget/TextView;

    const v0, 0x7f0b0406

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView;->i:Landroid/widget/FrameLayout;

    const v0, 0x7f0b0409

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView;->j:Landroid/widget/FrameLayout;

    const v0, 0x7f0b0658

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView;->f:Lcom/airbnb/lottie/LottieAnimationView;

    const v0, 0x7f0b065a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView;->g:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView;->f:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "shoulder_key/guide_single.zip"

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView;->g:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "shoulder_key/guide_trigger.zip"

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView;->h:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "shoulder_key/guide_next.zip"

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    const-string v0, "shoulder_key_guide_single_trigger"

    invoke-static {v0}, Lp7/e;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView;->f()V

    return-void
.end method
