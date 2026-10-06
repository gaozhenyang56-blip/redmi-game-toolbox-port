.class public Lcom/miui/gamebooster/shoulderkey/widget/TbGuideView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/shoulderkey/widget/TbGuideView$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Lcom/airbnb/lottie/LottieAnimationView;

.field private d:Lcom/miui/gamebooster/shoulderkey/widget/TbGuideView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic f(Lcom/miui/gamebooster/shoulderkey/widget/TbGuideView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/shoulderkey/widget/TbGuideView;->g()V

    return-void
.end method

.method private synthetic g()V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/TbGuideView;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/miui/gamebooster/shoulderkey/widget/TbGuideView;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v0

    sub-int/2addr v2, v0

    int-to-float v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/TbGuideView;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x171

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method


# virtual methods
.method public h(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/TbGuideView;->a:Landroid/widget/TextView;

    invoke-static {v0, p1}, Ldb/i;->f(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/gamebooster/shoulderkey/widget/TbGuideView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120bcc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ldb/i;->f(Landroid/widget/TextView;Ljava/lang/String;)V

    sget-boolean p1, Ln6/a;->a:Z

    if-eqz p1, :cond_0

    new-instance p1, Lr7/e;

    invoke-direct {p1, p0}, Lr7/e;-><init>(Lcom/miui/gamebooster/shoulderkey/widget/TbGuideView;)V

    const-wide/16 v0, 0x334

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b0c6d

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/gamebooster/shoulderkey/widget/TbGuideView;->d:Lcom/miui/gamebooster/shoulderkey/widget/TbGuideView$a;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/miui/gamebooster/shoulderkey/widget/TbGuideView$a;->a()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/gamebooster/shoulderkey/widget/TbGuideView;->d:Lcom/miui/gamebooster/shoulderkey/widget/TbGuideView$a;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/miui/gamebooster/shoulderkey/widget/TbGuideView$a;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const v0, 0x7f0b0c6d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/TbGuideView;->b:Landroid/widget/TextView;

    const v0, 0x7f0b0cf1

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/TbGuideView;->a:Landroid/widget/TextView;

    const v0, 0x7f0b0658

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/TbGuideView;->c:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/TbGuideView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnGuideViewEvent(Lcom/miui/gamebooster/shoulderkey/widget/TbGuideView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/shoulderkey/widget/TbGuideView;->d:Lcom/miui/gamebooster/shoulderkey/widget/TbGuideView$a;

    return-void
.end method
