.class public Lcom/miui/securityscan/ui/main/ScanContentFramePad;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lwf/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/securityscan/ui/main/ScanContentFramePad$e;
    }
.end annotation


# instance fields
.field private a:Lcom/miui/securityscan/ui/main/MainVideoView;

.field private b:Lcom/miui/common/customview/ScoreTextView;

.field private c:Landroid/widget/ImageView;

.field private d:Lcom/miui/common/customview/ScoreTextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/view/ViewStub;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/widget/RelativeLayout;

.field private k:Landroid/content/Context;

.field private l:Landroid/animation/AnimatorSet;

.field private m:Landroid/animation/ObjectAnimator;

.field private n:Landroid/animation/ObjectAnimator;

.field private o:Landroid/animation/ObjectAnimator;

.field private p:I

.field private q:Z

.field private r:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/securityscan/ui/main/ScanContentFramePad;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->p:I

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->k:Landroid/content/Context;

    return-void
.end method

.method static synthetic A(Lcom/miui/securityscan/ui/main/ScanContentFramePad;Lcom/miui/common/customview/ScoreTextView;)Lcom/miui/common/customview/ScoreTextView;
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->d:Lcom/miui/common/customview/ScoreTextView;

    return-object p1
.end method

.method static synthetic B(Lcom/miui/securityscan/ui/main/ScanContentFramePad;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->f:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic C(Lcom/miui/securityscan/ui/main/ScanContentFramePad;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->f:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic D(Lcom/miui/securityscan/ui/main/ScanContentFramePad;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->q:Z

    return p0
.end method

.method static synthetic E(Lcom/miui/securityscan/ui/main/ScanContentFramePad;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->k:Landroid/content/Context;

    return-object p0
.end method

.method private F(Landroid/animation/ObjectAnimator;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method private G(Landroid/animation/AnimatorSet;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method private I(Landroid/content/res/Configuration;)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const v2, 0x7f07120b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f070309

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-boolean v4, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->q:Z

    if-eqz v4, :cond_3

    iget p1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p1, p1, 0xf

    iget v1, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->r:I

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->r:I

    const p1, 0x7f071a29

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->b:Lcom/miui/common/customview/ScoreTextView;

    int-to-float p1, p1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    const p1, 0x7f071b57

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->e:Landroid/widget/TextView;

    int-to-float p1, p1

    invoke-virtual {v1, v2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    const p1, 0x7f071b59

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    iget p1, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->r:I

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const p1, 0x7f071210

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const v1, 0x7f07030d

    goto :goto_1

    :cond_2
    :goto_0
    const p1, 0x7f07120e

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const v1, 0x7f07030b

    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    move v2, p1

    move v3, v0

    goto :goto_2

    :cond_3
    const/4 p1, 0x2

    if-ne v1, p1, :cond_4

    const p1, 0x7f07120c

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const p1, 0x7f07030a

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :cond_4
    :goto_2
    invoke-direct {p0, v2}, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->setVideoViewMarginTop(I)V

    invoke-direct {p0, v3}, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->setScoreContentMarginTop(I)V

    return-void
.end method

.method private setScoreContentMarginTop(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->i:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setStatusViewMarginTop(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->e:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setVideoViewMarginTop(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->a:Lcom/miui/securityscan/ui/main/MainVideoView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->a:Lcom/miui/securityscan/ui/main/MainVideoView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic v(Lcom/miui/securityscan/ui/main/ScanContentFramePad;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->h:Landroid/view/View;

    return-object p0
.end method

.method static synthetic w(Lcom/miui/securityscan/ui/main/ScanContentFramePad;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->h:Landroid/view/View;

    return-object p1
.end method

.method static synthetic x(Lcom/miui/securityscan/ui/main/ScanContentFramePad;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->c:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic y(Lcom/miui/securityscan/ui/main/ScanContentFramePad;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->c:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic z(Lcom/miui/securityscan/ui/main/ScanContentFramePad;)Lcom/miui/common/customview/ScoreTextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->d:Lcom/miui/common/customview/ScoreTextView;

    return-object p0
.end method


# virtual methods
.method public H(II)V
    .locals 2

    const/4 v0, 0x1

    if-ge p2, p1, :cond_0

    iget v1, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->p:I

    if-nez v1, :cond_0

    iput v0, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->p:I

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->a:Lcom/miui/securityscan/ui/main/MainVideoView;

    const/high16 p2, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p1, p2}, Lcom/miui/securityscan/ui/main/MainVideoView;->setRenderState(F)V

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->a:Lcom/miui/securityscan/ui/main/MainVideoView;

    invoke-virtual {p1}, Lcom/miui/securityscan/ui/main/MainVideoView;->updateBackground()V

    goto :goto_1

    :cond_0
    if-lt p2, p1, :cond_1

    iget p1, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->p:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->p:I

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->a:Lcom/miui/securityscan/ui/main/MainVideoView;

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c(I)V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->a:Lcom/miui/securityscan/ui/main/MainVideoView;

    invoke-virtual {v0}, Lcom/miui/securityscan/ui/main/MainVideoView;->startPlayVideo()V

    return-void
.end method

.method public f(II)V
    .locals 0

    return-void
.end method

.method public g(IIII)V
    .locals 0

    return-void
.end method

.method public getScoreText()I
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->b:Lcom/miui/common/customview/ScoreTextView;

    invoke-virtual {v0}, Lcom/miui/common/customview/ScoreTextView;->getTextScore()I

    move-result v0

    return v0
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method public i()V
    .locals 0

    return-void
.end method

.method public j()V
    .locals 2

    const v0, 0x7f0b0988

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->g:Landroid/view/ViewStub;

    new-instance v1, Lcom/miui/securityscan/ui/main/ScanContentFramePad$c;

    invoke-direct {v1, p0}, Lcom/miui/securityscan/ui/main/ScanContentFramePad$c;-><init>(Lcom/miui/securityscan/ui/main/ScanContentFramePad;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->g:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    return-void
.end method

.method public k(II)V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p2, p1, :cond_0

    iget v3, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->p:I

    if-nez v3, :cond_0

    iput v2, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->p:I

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->a:Lcom/miui/securityscan/ui/main/MainVideoView;

    invoke-virtual {p1, v1, v0}, Lcom/miui/securityscan/ui/main/MainVideoView;->setRenderState(FF)V

    goto :goto_0

    :cond_0
    if-lt p2, p1, :cond_1

    iget p1, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->p:I

    if-ne p1, v2, :cond_1

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->p:I

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->a:Lcom/miui/securityscan/ui/main/MainVideoView;

    invoke-virtual {p1, v0, v1}, Lcom/miui/securityscan/ui/main/MainVideoView;->setRenderState(FF)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->a:Lcom/miui/securityscan/ui/main/MainVideoView;

    invoke-virtual {p1}, Lcom/miui/securityscan/ui/main/MainVideoView;->updateBackground()V

    return-void
.end method

.method public l()V
    .locals 15

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f19999a    # 0.6f

    const v2, 0x3eb33333    # 0.35f

    const v3, 0x3e428f5c    # 0.19f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->a:Lcom/miui/securityscan/ui/main/MainVideoView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->a:Lcom/miui/securityscan/ui/main/MainVideoView;

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    const-string v5, "alpha"

    invoke-static {v1, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v6, 0x190

    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->c:Landroid/widget/ImageView;

    new-array v4, v3, [F

    fill-array-data v4, :array_1

    const-string v8, "scaleX"

    invoke-static {v1, v8, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v4, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->c:Landroid/widget/ImageView;

    new-array v9, v3, [F

    fill-array-data v9, :array_2

    const-string v10, "scaleY"

    invoke-static {v4, v10, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v4, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v9, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->b:Lcom/miui/common/customview/ScoreTextView;

    new-array v11, v3, [F

    fill-array-data v11, :array_3

    invoke-static {v9, v8, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    const-wide/16 v11, 0x12c

    invoke-virtual {v9, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v9, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v13, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->b:Lcom/miui/common/customview/ScoreTextView;

    new-array v14, v3, [F

    fill-array-data v14, :array_4

    invoke-static {v13, v10, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    invoke-virtual {v13, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v13, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v11, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->h:Landroid/view/View;

    new-array v12, v3, [F

    fill-array-data v12, :array_5

    invoke-static {v11, v5, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v11, 0xc8

    invoke-virtual {v5, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v5, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    new-instance v11, Lcom/miui/securityscan/ui/main/ScanContentFramePad$a;

    invoke-direct {v11, p0}, Lcom/miui/securityscan/ui/main/ScanContentFramePad$a;-><init>(Lcom/miui/securityscan/ui/main/ScanContentFramePad;)V

    invoke-virtual {v5, v11}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v5, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->a:Lcom/miui/securityscan/ui/main/MainVideoView;

    new-array v11, v3, [F

    fill-array-data v11, :array_6

    invoke-static {v5, v8, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v5, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v8, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->a:Lcom/miui/securityscan/ui/main/MainVideoView;

    new-array v11, v3, [F

    fill-array-data v11, :array_7

    invoke-static {v8, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v8, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v10, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->a:Lcom/miui/securityscan/ui/main/MainVideoView;

    new-array v11, v3, [F

    fill-array-data v11, :array_8

    const-string v12, "translationY"

    invoke-static {v10, v12, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v10, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v10}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->l:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v0}, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->G(Landroid/animation/AnimatorSet;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->l:Landroid/animation/AnimatorSet;

    const/4 v6, 0x6

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v1, v6, v2

    const/4 v1, 0x1

    aput-object v4, v6, v1

    aput-object v9, v6, v3

    const/4 v1, 0x3

    aput-object v13, v6, v1

    const/4 v1, 0x4

    aput-object v5, v6, v1

    const/4 v1, 0x5

    aput-object v8, v6, v1

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->l:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/miui/securityscan/ui/main/ScanContentFramePad$b;

    invoke-direct {v1, p0}, Lcom/miui/securityscan/ui/main/ScanContentFramePad$b;-><init>(Lcom/miui/securityscan/ui/main/ScanContentFramePad;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->l:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3fe47ae1    # 1.785f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3fe47ae1    # 1.785f
    .end array-data

    :array_3
    .array-data 4
        0x3f63d70a    # 0.89f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f63d70a    # 0.89f
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_6
    .array-data 4
        0x3f0f5c29    # 0.56f
        0x3f800000    # 1.0f
    .end array-data

    :array_7
    .array-data 4
        0x3f0f5c29    # 0.56f
        0x3f800000    # 1.0f
    .end array-data

    :array_8
    .array-data 4
        -0x3d500000    # -88.0f
        0x0
    .end array-data
.end method

.method public m()V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->o:Landroid/animation/ObjectAnimator;

    invoke-direct {p0, v0}, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->F(Landroid/animation/ObjectAnimator;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->m:Landroid/animation/ObjectAnimator;

    invoke-direct {p0, v0}, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->F(Landroid/animation/ObjectAnimator;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->n:Landroid/animation/ObjectAnimator;

    invoke-direct {p0, v0}, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->F(Landroid/animation/ObjectAnimator;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->l:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v0}, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->G(Landroid/animation/AnimatorSet;)V

    return-void
.end method

.method public n()V
    .locals 5

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->m:Landroid/animation/ObjectAnimator;

    invoke-direct {p0, v0}, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->F(Landroid/animation/ObjectAnimator;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->e:Landroid/widget/TextView;

    const-wide/16 v1, 0x12c

    const-wide/16 v3, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Leg/t;->e(Landroid/view/View;JJ)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->m:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->n:Landroid/animation/ObjectAnimator;

    invoke-direct {p0, v0}, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->F(Landroid/animation/ObjectAnimator;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->b:Lcom/miui/common/customview/ScoreTextView;

    invoke-static {v0, v1, v2, v3, v4}, Leg/t;->e(Landroid/view/View;JJ)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->n:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method public o()V
    .locals 0

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0, p1}, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->I(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    invoke-static {}, Lx4/t;->r()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->q:Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/securityscan/scanner/k;->n(Landroid/content/Context;)Lcom/miui/securityscan/scanner/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/k;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lef/x;->p(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/securityscan/scanner/ScoreManager;->j()Lcom/miui/securityscan/scanner/ScoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/ScoreManager;->q()I

    move-result v0

    :goto_0
    const v1, 0x7f0b0d76

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/securityscan/ui/main/MainVideoView;

    iput-object v1, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->a:Lcom/miui/securityscan/ui/main/MainVideoView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->k:Landroid/content/Context;

    check-cast v1, Lcom/miui/securityscan/OptimizeAndResultActivity;

    invoke-virtual {v1, p0}, Lcom/miui/securityscan/OptimizeAndResultActivity;->Q0(Lwf/a;)V

    const v1, 0x7f0b02a5

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->i:Landroid/view/View;

    const v1, 0x7f0b09f8

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/common/customview/ScoreTextView;

    iput-object v1, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->b:Lcom/miui/common/customview/ScoreTextView;

    invoke-virtual {v1, v0}, Lcom/miui/common/customview/ScoreTextView;->setScore(I)V

    const v0, 0x7f0b0afc

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->k:Landroid/content/Context;

    const v2, 0x7f1207ed

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b02a3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->I(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public p()V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->a:Lcom/miui/securityscan/ui/main/MainVideoView;

    invoke-virtual {v0}, Lcom/miui/securityscan/ui/main/MainVideoView;->pausePlayVideo()V

    return-void
.end method

.method public q(II)V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->k:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->f:Landroid/widget/TextView;

    invoke-static {v0, p2, v1, p1}, Leg/t;->h(Landroid/content/Context;ILandroid/widget/TextView;I)V

    return-void
.end method

.method public r(II)V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->b:Lcom/miui/common/customview/ScoreTextView;

    invoke-virtual {v0, p2}, Lcom/miui/common/customview/ScoreTextView;->setScore(I)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->d:Lcom/miui/common/customview/ScoreTextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/miui/common/customview/ScoreTextView;->setScore(I)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->k:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->d:Lcom/miui/common/customview/ScoreTextView;

    invoke-static {v0, p2, v1, p1}, Leg/t;->h(Landroid/content/Context;ILandroid/widget/TextView;I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->k:Landroid/content/Context;

    invoke-static {v1, p2, v0, p1}, Leg/t;->h(Landroid/content/Context;ILandroid/widget/TextView;I)V

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->H(II)V

    return-void
.end method

.method public s(I)I
    .locals 3

    invoke-static {}, Lcom/miui/securityscan/scanner/ScoreManager;->j()Lcom/miui/securityscan/scanner/ScoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/ScoreManager;->q()I

    move-result v0

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->b:Lcom/miui/common/customview/ScoreTextView;

    invoke-virtual {v1, v0}, Lcom/miui/common/customview/ScoreTextView;->setScore(I)V

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->d:Lcom/miui/common/customview/ScoreTextView;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/miui/common/customview/ScoreTextView;->setScore(I)V

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->k:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->d:Lcom/miui/common/customview/ScoreTextView;

    invoke-static {v1, v0, v2, p1}, Leg/t;->h(Landroid/content/Context;ILandroid/widget/TextView;I)V

    :cond_0
    iget-object v1, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->f:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->k:Landroid/content/Context;

    invoke-static {v2, v0, v1, p1}, Leg/t;->h(Landroid/content/Context;ILandroid/widget/TextView;I)V

    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->k(II)V

    return v0
.end method

.method public setActionButtonClickable(Z)V
    .locals 0

    return-void
.end method

.method public setActionButtonText(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setContentFrameAlpha(F)V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public setContentMainClickable(Z)V
    .locals 0

    return-void
.end method

.method public setPlaySpeed(F)V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->a:Lcom/miui/securityscan/ui/main/MainVideoView;

    invoke-virtual {v0, p1}, Lcom/miui/securityscan/ui/main/MainVideoView;->setPlaySpeed(F)V

    return-void
.end method

.method public setPredictScanFinishListener(Lcom/miui/securityscan/ui/main/MainVideoView$c;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->a:Lcom/miui/securityscan/ui/main/MainVideoView;

    invoke-virtual {v0, p1}, Lcom/miui/securityscan/ui/main/MainVideoView;->setPredictScanFinishListener(Lcom/miui/securityscan/ui/main/MainVideoView$c;)V

    return-void
.end method

.method public setResultScoreText(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->d:Lcom/miui/common/customview/ScoreTextView;

    invoke-virtual {v0, p1}, Lcom/miui/common/customview/ScoreTextView;->setScore(I)V

    return-void
.end method

.method public setResultStatusTextPadding(I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->f:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v0, p1, v1, p1, v2}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    return-void
.end method

.method public setScoreText(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->b:Lcom/miui/common/customview/ScoreTextView;

    invoke-virtual {v0, p1}, Lcom/miui/common/customview/ScoreTextView;->setScore(I)V

    return-void
.end method

.method public setScreenSize(I)V
    .locals 0

    return-void
.end method

.method public setStatusBottomText(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/miui/securityscan/ui/main/ScanContentFramePad$d;

    invoke-direct {v1, p0}, Lcom/miui/securityscan/ui/main/ScanContentFramePad$d;-><init>(Lcom/miui/securityscan/ui/main/ScanContentFramePad;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->k:Landroid/content/Context;

    check-cast v0, Lcom/miui/securityscan/OptimizeAndResultActivity;

    invoke-virtual {v0, p1}, Lcom/miui/securityscan/OptimizeAndResultActivity;->R0(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setStatusBottomVisible(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setStatusTopText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public stopPlay()V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->a:Lcom/miui/securityscan/ui/main/MainVideoView;

    invoke-virtual {v0}, Lcom/miui/securityscan/ui/main/MainVideoView;->stopPlayVideo()V

    return-void
.end method

.method public t()V
    .locals 5

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->f:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->o:Landroid/animation/ObjectAnimator;

    invoke-direct {p0, v0}, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->F(Landroid/animation/ObjectAnimator;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->f:Landroid/widget/TextView;

    const-wide/16 v1, 0x190

    const-wide/16 v3, 0x12c

    invoke-static {v0, v1, v2, v3, v4}, Leg/t;->e(Landroid/view/View;JJ)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->o:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->m:Landroid/animation/ObjectAnimator;

    invoke-direct {p0, v0}, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->F(Landroid/animation/ObjectAnimator;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->e:Landroid/widget/TextView;

    invoke-static {v0, v3, v4}, Leg/t;->b(Landroid/view/View;J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->m:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->n:Landroid/animation/ObjectAnimator;

    invoke-direct {p0, v0}, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->F(Landroid/animation/ObjectAnimator;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->b:Lcom/miui/common/customview/ScoreTextView;

    invoke-static {v0, v3, v4}, Leg/t;->b(Landroid/view/View;J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->n:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method public u()V
    .locals 17

    move-object/from16 v0, p0

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3f19999a    # 0.6f

    const v3, 0x3eb33333    # 0.35f

    const v4, 0x3e428f5c    # 0.19f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iget-object v2, v0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->a:Lcom/miui/securityscan/ui/main/MainVideoView;

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    const-string v6, "alpha"

    invoke-static {v2, v6, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v7, 0x190

    invoke-virtual {v2, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v4, Lcom/miui/securityscan/ui/main/ScanContentFramePad$e;

    iget-object v9, v0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->a:Lcom/miui/securityscan/ui/main/MainVideoView;

    invoke-direct {v4, v9}, Lcom/miui/securityscan/ui/main/ScanContentFramePad$e;-><init>(Lcom/miui/securityscan/ui/main/MainVideoView;)V

    invoke-virtual {v2, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v2, v0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->h:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, v0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->h:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->c:Landroid/widget/ImageView;

    const v9, 0x3fe47ae1    # 1.785f

    invoke-virtual {v2, v9}, Landroid/view/View;->setScaleX(F)V

    iget-object v2, v0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v9}, Landroid/view/View;->setScaleY(F)V

    iget-object v2, v0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->c:Landroid/widget/ImageView;

    const/high16 v10, 0x42b00000    # 88.0f

    invoke-virtual {v2, v10}, Landroid/view/View;->setTranslationY(F)V

    iget-object v2, v0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean v2, v0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->q:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const v5, 0x3f866666    # 1.05f

    :goto_0
    iget-object v2, v0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->c:Landroid/widget/ImageView;

    new-array v10, v3, [F

    aput v9, v10, v4

    const/4 v11, 0x1

    aput v5, v10, v11

    const-string v12, "scaleX"

    invoke-static {v2, v12, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v10, v0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->c:Landroid/widget/ImageView;

    new-array v13, v3, [F

    aput v9, v13, v4

    aput v5, v13, v11

    const-string v5, "scaleY"

    invoke-static {v10, v5, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v9, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v10, v0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->c:Landroid/widget/ImageView;

    new-array v13, v3, [F

    fill-array-data v13, :array_1

    const-string v14, "translationY"

    invoke-static {v10, v14, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    invoke-virtual {v10, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v10, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v13, v0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->b:Lcom/miui/common/customview/ScoreTextView;

    new-array v15, v3, [F

    fill-array-data v15, :array_2

    invoke-static {v13, v12, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    move-object/from16 v16, v12

    const-wide/16 v11, 0x12c

    invoke-virtual {v13, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v13, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v15, v0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->b:Lcom/miui/common/customview/ScoreTextView;

    new-array v4, v3, [F

    fill-array-data v4, :array_3

    invoke-static {v15, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v4, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v11, v0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->h:Landroid/view/View;

    new-array v12, v3, [F

    fill-array-data v12, :array_4

    invoke-static {v11, v6, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v6, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v6, v0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->a:Lcom/miui/securityscan/ui/main/MainVideoView;

    new-array v11, v3, [F

    fill-array-data v11, :array_5

    move-object/from16 v12, v16

    invoke-static {v6, v12, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v6, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v11, v0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->a:Lcom/miui/securityscan/ui/main/MainVideoView;

    new-array v12, v3, [F

    fill-array-data v12, :array_6

    invoke-static {v11, v5, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v5, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v11, v0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->a:Lcom/miui/securityscan/ui/main/MainVideoView;

    new-array v12, v3, [F

    fill-array-data v12, :array_7

    invoke-static {v11, v14, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    invoke-virtual {v11, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v11, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, v0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->l:Landroid/animation/AnimatorSet;

    invoke-direct {v0, v1}, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->G(Landroid/animation/AnimatorSet;)V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, v0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->l:Landroid/animation/AnimatorSet;

    const/16 v7, 0x8

    new-array v7, v7, [Landroid/animation/Animator;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v2, 0x1

    aput-object v9, v7, v2

    aput-object v13, v7, v3

    const/4 v2, 0x3

    aput-object v4, v7, v2

    const/4 v2, 0x4

    aput-object v6, v7, v2

    const/4 v2, 0x5

    aput-object v5, v7, v2

    const/4 v2, 0x6

    aput-object v10, v7, v2

    const/4 v2, 0x7

    aput-object v11, v7, v2

    invoke-virtual {v1, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v1, v0, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->l:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x42b00000    # 88.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f63d70a    # 0.89f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f63d70a    # 0.89f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x3f0f5c29    # 0.56f
    .end array-data

    :array_6
    .array-data 4
        0x3f800000    # 1.0f
        0x3f0f5c29    # 0.56f
    .end array-data

    :array_7
    .array-data 4
        0x0
        -0x3d500000    # -88.0f
    .end array-data
.end method
