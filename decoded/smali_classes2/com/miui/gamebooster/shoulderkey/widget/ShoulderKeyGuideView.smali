.class public Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyGuideView;
.super Lcom/miui/gamebooster/shoulderkey/widget/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyGuideView$b;
    }
.end annotation


# instance fields
.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/airbnb/lottie/LottieAnimationView;

.field private f:Lcom/airbnb/lottie/LottieAnimationView;

.field private g:Landroid/widget/FrameLayout;

.field private h:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyGuideView$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyGuideView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gamebooster/shoulderkey/widget/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object p1, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyGuideView$b;->a:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyGuideView$b;

    iput-object p1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyGuideView;->h:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyGuideView$b;

    return-void
.end method

.method static synthetic f(Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyGuideView;)Lcom/airbnb/lottie/LottieAnimationView;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyGuideView;->f:Lcom/airbnb/lottie/LottieAnimationView;

    return-object p0
.end method

.method private g()V
    .locals 9

    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyGuideView;->g:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyGuideView;->g:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyGuideView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyGuideView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyGuideView;->e:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->m()V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyGuideView;->g:Landroid/widget/FrameLayout;

    const/4 v5, 0x1

    new-array v6, v5, [F

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v6, v1

    const-string v8, "alpha"

    invoke-static {v4, v8, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v4, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyGuideView;->d:Landroid/widget/TextView;

    new-array v6, v5, [F

    aput v2, v6, v1

    invoke-static {v4, v8, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v3, v5

    iget-object v2, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyGuideView;->c:Landroid/widget/TextView;

    new-array v4, v5, [F

    aput v7, v4, v1

    invoke-static {v2, v8, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v3, v2

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v1, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyGuideView$a;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyGuideView$a;-><init>(Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyGuideView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v1, 0xad

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyGuideView;->h:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyGuideView$b;

    sget-object v0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyGuideView$b;->a:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyGuideView$b;

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyGuideView$b;->b:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyGuideView$b;

    iput-object p1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyGuideView;->h:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyGuideView$b;

    iget-object p1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyGuideView;->d:Landroid/widget/TextView;

    const v0, 0x7f120abb

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyGuideView;->b:Landroid/widget/TextView;

    const v0, 0x7f120ab2

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    invoke-direct {p0}, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyGuideView;->g()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/gamebooster/shoulderkey/widget/a;->a:Lcom/miui/gamebooster/shoulderkey/widget/a$a;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/miui/gamebooster/shoulderkey/widget/a$a;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const v0, 0x7f0b0c21

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyGuideView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0cf1

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyGuideView;->d:Landroid/widget/TextView;

    const v0, 0x7f0b0cf2

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyGuideView;->c:Landroid/widget/TextView;

    const v0, 0x7f0b0409

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyGuideView;->g:Landroid/widget/FrameLayout;

    const v0, 0x7f0b0658

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyGuideView;->e:Lcom/airbnb/lottie/LottieAnimationView;

    const v0, 0x7f0b065a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyGuideView;->f:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyGuideView;->e:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "shoulder_key/images"

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyGuideView;->e:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v2, "shoulder_key/settings_guide.json"

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyGuideView;->f:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyGuideView;->f:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "shoulder_key/using_guide.json"

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    return-void
.end method
