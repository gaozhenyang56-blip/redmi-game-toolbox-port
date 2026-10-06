.class public Lcom/miui/securityscan/ui/main/MainContentFrameLite;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lwf/a;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/miui/securityscan/ui/main/GlowingRingAnimView;

.field private b:Lcom/miui/common/customview/ScoreTextView;

.field private c:Lcom/miui/common/customview/ScoreTextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/Button;

.field private g:Landroid/view/ViewStub;

.field private h:Landroid/widget/RelativeLayout;

.field private i:Landroid/widget/RelativeLayout;

.field private final j:Landroid/content/Context;

.field private k:Landroid/animation/AnimatorSet;

.field private l:Landroid/animation/ObjectAnimator;

.field private m:Landroid/animation/ObjectAnimator;

.field private n:Landroid/animation/ObjectAnimator;

.field private o:Landroid/animation/ObjectAnimator;

.field private p:Landroid/animation/ObjectAnimator;

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:Ljava/lang/String;

.field private x:Z

.field private y:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/securityscan/ui/main/MainContentFrameLite;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->q:I

    const/4 p2, -0x1

    iput p2, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->t:I

    iput p2, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->u:I

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->j:Landroid/content/Context;

    return-void
.end method

.method static synthetic A(Lcom/miui/securityscan/ui/main/MainContentFrameLite;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->f:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic B(Lcom/miui/securityscan/ui/main/MainContentFrameLite;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->f:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic C(Lcom/miui/securityscan/ui/main/MainContentFrameLite;)I
    .locals 0

    iget p0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->t:I

    return p0
.end method

.method static synthetic D(Lcom/miui/securityscan/ui/main/MainContentFrameLite;)I
    .locals 0

    iget p0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->u:I

    return p0
.end method

.method static synthetic E(Lcom/miui/securityscan/ui/main/MainContentFrameLite;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->w:Ljava/lang/String;

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

.method private synthetic H(Landroid/view/ViewStub;Landroid/view/View;)V
    .locals 1

    const p1, 0x7f0b0986

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/common/customview/ScoreTextView;

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->c:Lcom/miui/common/customview/ScoreTextView;

    const p1, 0x7f0b0afd

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->e:Landroid/widget/TextView;

    iget p2, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->v:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p2, v0}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    return-void
.end method

.method private J(Landroid/content/res/Configuration;)V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const v2, 0x7f07120b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f070309

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-boolean v5, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->x:Z

    if-eqz v5, :cond_2

    iget p1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p1, p1, 0xf

    const v1, 0x7f071a29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->b:Lcom/miui/common/customview/ScoreTextView;

    int-to-float v1, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const v1, 0x7f071b57

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->d:Landroid/widget/TextView;

    int-to-float v1, v1

    invoke-virtual {v2, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const v1, 0x7f071b59

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x7f071210

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const v1, 0x7f07030d

    goto :goto_1

    :cond_1
    :goto_0
    const p1, 0x7f07120e

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const v1, 0x7f07030b

    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    move v2, p1

    move v4, v0

    goto :goto_2

    :cond_2
    iget-boolean p1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->y:Z

    if-eqz p1, :cond_4

    const/4 p1, 0x2

    if-ne v1, p1, :cond_3

    const p1, 0x7f07120d

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const p1, 0x7f07030a

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_2

    :cond_3
    const p1, 0x7f07120f

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    :cond_4
    :goto_2
    invoke-direct {p0, v2}, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->setVideoViewMarginTop(I)V

    invoke-direct {p0, v4}, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->setScoreContentMarginTop(I)V

    return-void
.end method

.method private setScoreContentMarginTop(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setVideoViewMarginTop(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->a:Lcom/miui/securityscan/ui/main/GlowingRingAnimView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->a:Lcom/miui/securityscan/ui/main/GlowingRingAnimView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic v(Lcom/miui/securityscan/ui/main/MainContentFrameLite;Landroid/view/ViewStub;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->H(Landroid/view/ViewStub;Landroid/view/View;)V

    return-void
.end method

.method static synthetic w(Lcom/miui/securityscan/ui/main/MainContentFrameLite;)Lcom/miui/securityscan/ui/main/GlowingRingAnimView;
    .locals 0

    iget-object p0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->a:Lcom/miui/securityscan/ui/main/GlowingRingAnimView;

    return-object p0
.end method

.method static synthetic x(Lcom/miui/securityscan/ui/main/MainContentFrameLite;)Lcom/miui/common/customview/ScoreTextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->c:Lcom/miui/common/customview/ScoreTextView;

    return-object p0
.end method

.method static synthetic y(Lcom/miui/securityscan/ui/main/MainContentFrameLite;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->e:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic z(Lcom/miui/securityscan/ui/main/MainContentFrameLite;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->j:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public I(II)V
    .locals 2

    const/4 v0, 0x1

    if-ge p2, p1, :cond_0

    iget v1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->q:I

    if-nez v1, :cond_0

    iput v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->q:I

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->a:Lcom/miui/securityscan/ui/main/GlowingRingAnimView;

    invoke-virtual {p1, v0}, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->setType(I)V

    goto :goto_0

    :cond_0
    if-lt p2, p1, :cond_1

    iget p1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->q:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->q:I

    iget-object p2, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->a:Lcom/miui/securityscan/ui/main/GlowingRingAnimView;

    invoke-virtual {p2, p1}, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->setType(I)V

    :cond_1
    :goto_0
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
    .locals 7

    new-instance v5, Landroid/view/animation/PathInterpolator;

    const v0, 0x3ecccccd    # 0.4f

    const v1, 0x3ef5c28f    # 0.48f

    const/high16 v2, 0x3e800000    # 0.25f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v5, v0, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->f:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->m:Landroid/animation/ObjectAnimator;

    invoke-direct {p0, v0}, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->F(Landroid/animation/ObjectAnimator;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->f:Landroid/widget/Button;

    const-wide/16 v1, 0x190

    invoke-static {v0, v1, v2, v5}, Leg/t;->f(Landroid/view/View;JLandroid/animation/TimeInterpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->m:Landroid/animation/ObjectAnimator;

    :cond_0
    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->l:Landroid/animation/ObjectAnimator;

    invoke-direct {p0, v0}, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->F(Landroid/animation/ObjectAnimator;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move v6, v0

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->h:Landroid/widget/RelativeLayout;

    const-wide/16 v1, 0x190

    const/4 v3, 0x0

    iget v4, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->r:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-static/range {v0 .. v6}, Leg/t;->j(Landroid/view/ViewGroup;JFFLandroid/animation/TimeInterpolator;Z)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->l:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->a:Lcom/miui/securityscan/ui/main/GlowingRingAnimView;

    invoke-virtual {v0}, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->k()V

    return-void
.end method

.method public f(II)V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->f:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->j:Landroid/content/Context;

    invoke-static {v1, p2, v0, p1}, Leg/t;->g(Landroid/content/Context;ILandroid/widget/Button;I)V

    goto :goto_0

    :cond_0
    iput p2, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->t:I

    iput p1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->u:I

    :goto_0
    return-void
.end method

.method public g(IIII)V
    .locals 0

    iput p1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->v:I

    return-void
.end method

.method public getScoreText()I
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->b:Lcom/miui/common/customview/ScoreTextView;

    invoke-virtual {v0}, Lcom/miui/common/customview/ScoreTextView;->getTextScore()I

    move-result v0

    return v0
.end method

.method public h()V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->f:Landroid/widget/Button;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->g:Landroid/view/ViewStub;

    new-instance v1, Lcom/miui/securityscan/ui/main/MainContentFrameLite$d;

    invoke-direct {v1, p0}, Lcom/miui/securityscan/ui/main/MainContentFrameLite$d;-><init>(Lcom/miui/securityscan/ui/main/MainContentFrameLite;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->g:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_0
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

    new-instance v1, Lcom/miui/securityscan/ui/main/k;

    invoke-direct {v1, p0}, Lcom/miui/securityscan/ui/main/k;-><init>(Lcom/miui/securityscan/ui/main/MainContentFrameLite;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    return-void
.end method

.method public k(II)V
    .locals 2

    const/4 v0, 0x1

    if-ge p2, p1, :cond_0

    iget v1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->q:I

    if-nez v1, :cond_0

    iput v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->q:I

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->a:Lcom/miui/securityscan/ui/main/GlowingRingAnimView;

    invoke-virtual {p1, v0}, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->setType(I)V

    goto :goto_0

    :cond_0
    if-lt p2, p1, :cond_1

    iget p1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->q:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->q:I

    iget-object p2, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->a:Lcom/miui/securityscan/ui/main/GlowingRingAnimView;

    invoke-virtual {p2, p1}, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->setType(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public l()V
    .locals 13

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f19999a    # 0.6f

    const v2, 0x3eb33333    # 0.35f

    const v3, 0x3e428f5c    # 0.19f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->a:Lcom/miui/securityscan/ui/main/GlowingRingAnimView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->a:Lcom/miui/securityscan/ui/main/GlowingRingAnimView;

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

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->b:Lcom/miui/common/customview/ScoreTextView;

    new-array v4, v3, [F

    fill-array-data v4, :array_1

    const-string v8, "scaleX"

    invoke-static {v1, v8, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v9, 0x12c

    invoke-virtual {v1, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v4, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->b:Lcom/miui/common/customview/ScoreTextView;

    new-array v11, v3, [F

    fill-array-data v11, :array_2

    const-string v12, "scaleY"

    invoke-static {v4, v12, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v4, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v9, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->c:Lcom/miui/common/customview/ScoreTextView;

    new-array v10, v3, [F

    fill-array-data v10, :array_3

    invoke-static {v9, v5, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v9, 0xc8

    invoke-virtual {v5, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v5, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    new-instance v9, Lcom/miui/securityscan/ui/main/MainContentFrameLite$b;

    invoke-direct {v9, p0}, Lcom/miui/securityscan/ui/main/MainContentFrameLite$b;-><init>(Lcom/miui/securityscan/ui/main/MainContentFrameLite;)V

    invoke-virtual {v5, v9}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v5, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->a:Lcom/miui/securityscan/ui/main/GlowingRingAnimView;

    new-array v9, v3, [F

    fill-array-data v9, :array_4

    invoke-static {v5, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v5, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v8, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->a:Lcom/miui/securityscan/ui/main/GlowingRingAnimView;

    new-array v9, v3, [F

    fill-array-data v9, :array_5

    invoke-static {v8, v12, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v8, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v9, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->a:Lcom/miui/securityscan/ui/main/GlowingRingAnimView;

    new-array v10, v3, [F

    fill-array-data v10, :array_6

    const-string v11, "translationY"

    invoke-static {v9, v11, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v9, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->k:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v0}, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->G(Landroid/animation/AnimatorSet;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->k:Landroid/animation/AnimatorSet;

    const/4 v6, 0x4

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v1, v6, v2

    const/4 v1, 0x1

    aput-object v4, v6, v1

    aput-object v5, v6, v3

    const/4 v1, 0x3

    aput-object v8, v6, v1

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->k:Landroid/animation/AnimatorSet;

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
        0x3f63d70a    # 0.89f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f63d70a    # 0.89f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x3f0f5c29    # 0.56f
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x3f0f5c29    # 0.56f
        0x3f800000    # 1.0f
    .end array-data

    :array_6
    .array-data 4
        -0x3d980000    # -58.0f
        0x0
    .end array-data
.end method

.method public m()V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->p:Landroid/animation/ObjectAnimator;

    invoke-direct {p0, v0}, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->F(Landroid/animation/ObjectAnimator;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->n:Landroid/animation/ObjectAnimator;

    invoke-direct {p0, v0}, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->F(Landroid/animation/ObjectAnimator;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->o:Landroid/animation/ObjectAnimator;

    invoke-direct {p0, v0}, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->F(Landroid/animation/ObjectAnimator;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->m:Landroid/animation/ObjectAnimator;

    invoke-direct {p0, v0}, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->F(Landroid/animation/ObjectAnimator;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->l:Landroid/animation/ObjectAnimator;

    invoke-direct {p0, v0}, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->F(Landroid/animation/ObjectAnimator;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->k:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v0}, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->G(Landroid/animation/AnimatorSet;)V

    return-void
.end method

.method public n()V
    .locals 8

    new-instance v7, Landroid/view/animation/PathInterpolator;

    const v0, 0x3f19999a    # 0.6f

    const v1, 0x3ecccccd    # 0.4f

    const v2, 0x3e4ccccd    # 0.2f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v7, v0, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->l:Landroid/animation/ObjectAnimator;

    invoke-direct {p0, v0}, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->F(Landroid/animation/ObjectAnimator;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->h:Landroid/widget/RelativeLayout;

    iget v1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->r:I

    neg-int v1, v1

    int-to-float v4, v1

    const-wide/16 v1, 0x190

    const/4 v3, 0x0

    const/4 v6, 0x1

    move-object v5, v7

    invoke-static/range {v0 .. v6}, Leg/t;->j(Landroid/view/ViewGroup;JFFLandroid/animation/TimeInterpolator;Z)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->l:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->f:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->m:Landroid/animation/ObjectAnimator;

    invoke-direct {p0, v0}, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->F(Landroid/animation/ObjectAnimator;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->f:Landroid/widget/Button;

    const-wide/16 v1, 0x190

    invoke-static {v0, v1, v2, v7}, Leg/t;->f(Landroid/view/View;JLandroid/animation/TimeInterpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->m:Landroid/animation/ObjectAnimator;

    :cond_0
    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->n:Landroid/animation/ObjectAnimator;

    invoke-direct {p0, v0}, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->F(Landroid/animation/ObjectAnimator;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->d:Landroid/widget/TextView;

    const-wide/16 v1, 0x12c

    const-wide/16 v3, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Leg/t;->e(Landroid/view/View;JJ)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->n:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->o:Landroid/animation/ObjectAnimator;

    invoke-direct {p0, v0}, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->F(Landroid/animation/ObjectAnimator;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->b:Lcom/miui/common/customview/ScoreTextView;

    invoke-static {v0, v1, v2, v3, v4}, Leg/t;->e(Landroid/view/View;JJ)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->o:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method public o()V
    .locals 7

    new-instance v5, Landroid/view/animation/PathInterpolator;

    const v0, 0x3ecccccd    # 0.4f

    const v1, 0x3ef5c28f    # 0.48f

    const/high16 v2, 0x3e800000    # 0.25f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v5, v0, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->f:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->m:Landroid/animation/ObjectAnimator;

    invoke-direct {p0, v0}, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->F(Landroid/animation/ObjectAnimator;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->f:Landroid/widget/Button;

    const-wide/16 v1, 0x190

    invoke-static {v0, v1, v2, v5}, Leg/t;->c(Landroid/view/View;JLandroid/animation/TimeInterpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->m:Landroid/animation/ObjectAnimator;

    :cond_0
    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->l:Landroid/animation/ObjectAnimator;

    invoke-direct {p0, v0}, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->F(Landroid/animation/ObjectAnimator;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->h:Landroid/widget/RelativeLayout;

    const-wide/16 v1, 0x190

    iget v3, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->r:I

    neg-int v3, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->s:I

    neg-int v4, v4

    int-to-float v4, v4

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Leg/t;->j(Landroid/view/ViewGroup;JFFLandroid/animation/TimeInterpolator;Z)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->l:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b01a2

    if-eq p1, v0, :cond_0

    const v0, 0x7f0b02a5

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->j:Landroid/content/Context;

    instance-of v1, v0, Lcom/miui/securityscan/MainActivity;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/miui/securityscan/MainActivity;

    invoke-virtual {v0, p1}, Lcom/miui/securityscan/MainActivity;->t0(I)V

    :cond_1
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0, p1}, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->J(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    invoke-static {}, Lx4/t;->r()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->x:Z

    invoke-static {}, Lx4/t;->E()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->y:Z

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0711e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->r:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0711e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->s:I

    const v0, 0x7f0b048d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->a:Lcom/miui/securityscan/ui/main/GlowingRingAnimView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->j:Landroid/content/Context;

    instance-of v2, v0, Lcom/miui/securityscan/MainActivity;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/miui/securityscan/MainActivity;

    invoke-virtual {v0, p0}, Lcom/miui/securityscan/MainActivity;->A0(Lwf/a;)V

    goto :goto_0

    :cond_0
    check-cast v0, Lcom/miui/securityscan/OptimizeAndResultActivity;

    invoke-virtual {v0, p0}, Lcom/miui/securityscan/OptimizeAndResultActivity;->Q0(Lwf/a;)V

    :goto_0
    const v0, 0x7f0b09f8

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/common/customview/ScoreTextView;

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->b:Lcom/miui/common/customview/ScoreTextView;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Lcom/miui/common/customview/ScoreTextView;->setScore(I)V

    const v0, 0x7f0b0afc

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->d:Landroid/widget/TextView;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    const/4 v4, 0x0

    if-lt v2, v3, :cond_1

    invoke-static {v0, v4}, Lcom/miui/securityscan/ui/main/g;->a(Landroid/widget/TextView;Z)V

    :cond_1
    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->j:Landroid/content/Context;

    const v3, 0x7f1207ed

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b01a3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->g:Landroid/view/ViewStub;

    const v0, 0x7f0b02a5

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setClickable(Z)V

    const v0, 0x7f0b02a3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->J(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public p()V
    .locals 0

    return-void
.end method

.method public q(II)V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->j:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->e:Landroid/widget/TextView;

    invoke-static {v0, p2, v1, p1}, Leg/t;->h(Landroid/content/Context;ILandroid/widget/TextView;I)V

    return-void
.end method

.method public r(II)V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->b:Lcom/miui/common/customview/ScoreTextView;

    invoke-virtual {v0, p2}, Lcom/miui/common/customview/ScoreTextView;->setScore(I)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->c:Lcom/miui/common/customview/ScoreTextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/miui/common/customview/ScoreTextView;->setScore(I)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->j:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->c:Lcom/miui/common/customview/ScoreTextView;

    invoke-static {v0, p2, v1, p1}, Leg/t;->h(Landroid/content/Context;ILandroid/widget/TextView;I)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->f(II)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->j:Landroid/content/Context;

    invoke-static {v1, p2, v0, p1}, Leg/t;->h(Landroid/content/Context;ILandroid/widget/TextView;I)V

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->I(II)V

    return-void
.end method

.method public s(I)I
    .locals 3

    sget-object v0, Lcom/miui/securityscan/scanner/o;->o:Lcom/miui/securityscan/scanner/o$b;

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/o$b;->a()Lcom/miui/securityscan/scanner/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/o;->E()Z

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
    iget-object v1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->b:Lcom/miui/common/customview/ScoreTextView;

    invoke-virtual {v1, v0}, Lcom/miui/common/customview/ScoreTextView;->setScore(I)V

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->c:Lcom/miui/common/customview/ScoreTextView;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/miui/common/customview/ScoreTextView;->setScore(I)V

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->j:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->c:Lcom/miui/common/customview/ScoreTextView;

    invoke-static {v1, v0, v2, p1}, Leg/t;->h(Landroid/content/Context;ILandroid/widget/TextView;I)V

    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->f(II)V

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->e:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->j:Landroid/content/Context;

    invoke-static {v2, v0, v1, p1}, Leg/t;->h(Landroid/content/Context;ILandroid/widget/TextView;I)V

    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->k(II)V

    return v0
.end method

.method public setActionButtonClickable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->f:Landroid/widget/Button;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    :cond_0
    return-void
.end method

.method public setActionButtonText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->f:Landroid/widget/Button;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->w:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setContentFrameAlpha(F)V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public setContentMainClickable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method public setPlaySpeed(F)V
    .locals 0

    return-void
.end method

.method public setPredictScanFinishListener(Lcom/miui/securityscan/ui/main/MainVideoView$c;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->a:Lcom/miui/securityscan/ui/main/GlowingRingAnimView;

    invoke-virtual {v0, p1}, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->setPredictScanFinishListener(Lcom/miui/securityscan/ui/main/MainVideoView$c;)V

    return-void
.end method

.method public setResultScoreText(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->c:Lcom/miui/common/customview/ScoreTextView;

    invoke-virtual {v0, p1}, Lcom/miui/common/customview/ScoreTextView;->setScore(I)V

    return-void
.end method

.method public setResultStatusTextPadding(I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->e:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v0, p1, v1, p1, v2}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    return-void
.end method

.method public setScoreText(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->b:Lcom/miui/common/customview/ScoreTextView;

    invoke-virtual {v0, p1}, Lcom/miui/common/customview/ScoreTextView;->setScore(I)V

    return-void
.end method

.method public setScreenSize(I)V
    .locals 0

    return-void
.end method

.method public setStatusBottomText(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/miui/securityscan/ui/main/MainContentFrameLite$c;

    invoke-direct {v1, p0}, Lcom/miui/securityscan/ui/main/MainContentFrameLite$c;-><init>(Lcom/miui/securityscan/ui/main/MainContentFrameLite;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->j:Landroid/content/Context;

    instance-of v1, v0, Lcom/miui/securityscan/MainActivity;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/miui/securityscan/MainActivity;

    invoke-virtual {v0, p1}, Lcom/miui/securityscan/MainActivity;->D0(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lcom/miui/securityscan/OptimizeAndResultActivity;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/miui/securityscan/OptimizeAndResultActivity;

    invoke-virtual {v0, p1}, Lcom/miui/securityscan/OptimizeAndResultActivity;->R0(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setStatusBottomVisible(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setStatusTopText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public stopPlay()V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->a:Lcom/miui/securityscan/ui/main/GlowingRingAnimView;

    invoke-virtual {v0}, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->n()V

    return-void
.end method

.method public t()V
    .locals 3

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->e:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->e:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->p:Landroid/animation/ObjectAnimator;

    invoke-direct {p0, v0}, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->F(Landroid/animation/ObjectAnimator;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->e:Landroid/widget/TextView;

    const-wide/16 v1, 0x190

    invoke-static {v0, v1, v2, v1, v2}, Leg/t;->e(Landroid/view/View;JJ)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->p:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->n:Landroid/animation/ObjectAnimator;

    invoke-direct {p0, v0}, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->F(Landroid/animation/ObjectAnimator;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->d:Landroid/widget/TextView;

    const-wide/16 v1, 0x12c

    invoke-static {v0, v1, v2}, Leg/t;->b(Landroid/view/View;J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->n:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->o:Landroid/animation/ObjectAnimator;

    invoke-direct {p0, v0}, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->F(Landroid/animation/ObjectAnimator;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->b:Lcom/miui/common/customview/ScoreTextView;

    invoke-static {v0, v1, v2}, Leg/t;->b(Landroid/view/View;J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->o:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method public u()V
    .locals 13

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f19999a    # 0.6f

    const v2, 0x3eb33333    # 0.35f

    const v3, 0x3e428f5c    # 0.19f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->a:Lcom/miui/securityscan/ui/main/GlowingRingAnimView;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const-string v4, "alpha"

    invoke-static {v1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v5, 0x190

    invoke-virtual {v1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Lcom/miui/securityscan/ui/main/MainContentFrameLite$a;

    invoke-direct {v3, p0}, Lcom/miui/securityscan/ui/main/MainContentFrameLite$a;-><init>(Lcom/miui/securityscan/ui/main/MainContentFrameLite;)V

    invoke-virtual {v1, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->c:Lcom/miui/common/customview/ScoreTextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->c:Lcom/miui/common/customview/ScoreTextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->b:Lcom/miui/common/customview/ScoreTextView;

    new-array v7, v2, [F

    fill-array-data v7, :array_1

    const-string v8, "scaleX"

    invoke-static {v1, v8, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v9, 0x12c

    invoke-virtual {v1, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v7, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->b:Lcom/miui/common/customview/ScoreTextView;

    new-array v11, v2, [F

    fill-array-data v11, :array_2

    const-string v12, "scaleY"

    invoke-static {v7, v12, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v7, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v7, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v9, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->c:Lcom/miui/common/customview/ScoreTextView;

    new-array v10, v2, [F

    fill-array-data v10, :array_3

    invoke-static {v9, v4, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v9, 0x258

    invoke-virtual {v4, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v4, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v4, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->a:Lcom/miui/securityscan/ui/main/GlowingRingAnimView;

    new-array v9, v2, [F

    fill-array-data v9, :array_4

    invoke-static {v4, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v4, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v8, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->a:Lcom/miui/securityscan/ui/main/GlowingRingAnimView;

    new-array v9, v2, [F

    fill-array-data v9, :array_5

    invoke-static {v8, v12, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v8, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v9, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->a:Lcom/miui/securityscan/ui/main/GlowingRingAnimView;

    new-array v10, v2, [F

    fill-array-data v10, :array_6

    const-string v11, "translationY"

    invoke-static {v9, v11, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v9, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->k:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v0}, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->G(Landroid/animation/AnimatorSet;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->k:Landroid/animation/AnimatorSet;

    const/4 v5, 0x5

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v1, v5, v3

    const/4 v1, 0x1

    aput-object v7, v5, v1

    aput-object v4, v5, v2

    const/4 v1, 0x3

    aput-object v8, v5, v1

    const/4 v1, 0x4

    aput-object v9, v5, v1

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->k:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f63d70a    # 0.89f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f63d70a    # 0.89f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x3f0f5c29    # 0.56f
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x3f0f5c29    # 0.56f
    .end array-data

    :array_6
    .array-data 4
        0x0
        -0x3d980000    # -58.0f
    .end array-data
.end method
