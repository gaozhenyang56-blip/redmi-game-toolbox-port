.class public Lcom/miui/securityscan/ui/main/MainContentFrameFold;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lwf/a;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/miui/securityscan/ui/main/MainVideoView;

.field private b:Lcom/miui/common/customview/ScoreTextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/Button;

.field private e:Landroid/view/ViewStub;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Landroid/widget/RelativeLayout;

.field private h:Landroid/animation/ObjectAnimator;

.field private i:Landroid/animation/ObjectAnimator;

.field private j:Landroid/content/Context;

.field private k:I

.field private l:I

.field private m:I

.field private n:Ljava/lang/String;

.field private o:I

.field private p:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/securityscan/ui/main/MainContentFrameFold;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->k:I

    const/4 p2, -0x1

    iput p2, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->l:I

    iput p2, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->m:I

    const/4 p2, 0x2

    iput p2, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->o:I

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->j:Landroid/content/Context;

    return-void
.end method

.method private A(Landroid/animation/ObjectAnimator;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method private B()V
    .locals 4

    const v0, 0x7f0b0d76

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/ui/main/MainVideoView;

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->a:Lcom/miui/securityscan/ui/main/MainVideoView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->j:Landroid/content/Context;

    check-cast v0, Lcom/miui/securityscan/MainActivity;

    invoke-virtual {v0, p0}, Lcom/miui/securityscan/MainActivity;->A0(Lwf/a;)V

    const v0, 0x7f0b09f8

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/common/customview/ScoreTextView;

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->b:Lcom/miui/common/customview/ScoreTextView;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Lcom/miui/common/customview/ScoreTextView;->setScore(I)V

    const v0, 0x7f0b0afc

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->j:Landroid/content/Context;

    const v3, 0x7f1207ed

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b01a3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->e:Landroid/view/ViewStub;

    const v0, 0x7f0b02a5

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    const v0, 0x7f0b02a3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0711e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->p:I

    return-void
.end method

.method static synthetic v(Lcom/miui/securityscan/ui/main/MainContentFrameFold;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->d:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic w(Lcom/miui/securityscan/ui/main/MainContentFrameFold;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->d:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic x(Lcom/miui/securityscan/ui/main/MainContentFrameFold;)I
    .locals 0

    iget p0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->l:I

    return p0
.end method

.method static synthetic y(Lcom/miui/securityscan/ui/main/MainContentFrameFold;)I
    .locals 0

    iget p0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->m:I

    return p0
.end method

.method static synthetic z(Lcom/miui/securityscan/ui/main/MainContentFrameFold;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->n:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public C(II)V
    .locals 2

    const/4 v0, 0x1

    if-ge p2, p1, :cond_0

    iget v1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->k:I

    if-nez v1, :cond_0

    iput v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->k:I

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->a:Lcom/miui/securityscan/ui/main/MainVideoView;

    const/high16 p2, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p1, p2}, Lcom/miui/securityscan/ui/main/MainVideoView;->setRenderState(F)V

    goto :goto_1

    :cond_0
    if-lt p2, p1, :cond_1

    iget p1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->k:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->k:I

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->a:Lcom/miui/securityscan/ui/main/MainVideoView;

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
    .locals 7

    new-instance v5, Landroid/view/animation/PathInterpolator;

    const v0, 0x3ecccccd    # 0.4f

    const v1, 0x3ef5c28f    # 0.48f

    const/high16 v2, 0x3e800000    # 0.25f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v5, v0, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->d:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->h:Landroid/animation/ObjectAnimator;

    invoke-direct {p0, v0}, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->A(Landroid/animation/ObjectAnimator;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->d:Landroid/widget/Button;

    const-wide/16 v1, 0x190

    invoke-static {v0, v1, v2, v5}, Leg/t;->f(Landroid/view/View;JLandroid/animation/TimeInterpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->h:Landroid/animation/ObjectAnimator;

    :cond_0
    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->i:Landroid/animation/ObjectAnimator;

    invoke-direct {p0, v0}, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->A(Landroid/animation/ObjectAnimator;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->f:Landroid/widget/RelativeLayout;

    const-wide/16 v1, 0x190

    const/4 v3, 0x0

    iget v4, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->p:I

    neg-int v4, v4

    int-to-float v4, v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Leg/t;->j(Landroid/view/ViewGroup;JFFLandroid/animation/TimeInterpolator;Z)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->i:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->a:Lcom/miui/securityscan/ui/main/MainVideoView;

    invoke-virtual {v0}, Lcom/miui/securityscan/ui/main/MainVideoView;->startPlayVideo()V

    return-void
.end method

.method public f(II)V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->d:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->j:Landroid/content/Context;

    invoke-static {v1, p2, v0, p1}, Leg/t;->g(Landroid/content/Context;ILandroid/widget/Button;I)V

    goto :goto_0

    :cond_0
    iput p2, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->l:I

    iput p1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->m:I

    :goto_0
    return-void
.end method

.method public g(IIII)V
    .locals 0

    return-void
.end method

.method public getScoreText()I
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->b:Lcom/miui/common/customview/ScoreTextView;

    invoke-virtual {v0}, Lcom/miui/common/customview/ScoreTextView;->getTextScore()I

    move-result v0

    return v0
.end method

.method public h()V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->d:Landroid/widget/Button;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->e:Landroid/view/ViewStub;

    new-instance v1, Lcom/miui/securityscan/ui/main/MainContentFrameFold$a;

    invoke-direct {v1, p0}, Lcom/miui/securityscan/ui/main/MainContentFrameFold$a;-><init>(Lcom/miui/securityscan/ui/main/MainContentFrameFold;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->e:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_0
    return-void
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->a:Lcom/miui/securityscan/ui/main/MainVideoView;

    invoke-virtual {v0}, Lcom/miui/securityscan/ui/main/MainVideoView;->drawFrame()V

    return-void
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public k(II)V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p2, p1, :cond_0

    iget v3, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->k:I

    if-nez v3, :cond_0

    iput v2, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->k:I

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->a:Lcom/miui/securityscan/ui/main/MainVideoView;

    invoke-virtual {p1, v1, v0}, Lcom/miui/securityscan/ui/main/MainVideoView;->setRenderState(FF)V

    goto :goto_0

    :cond_0
    if-lt p2, p1, :cond_1

    iget p1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->k:I

    if-ne p1, v2, :cond_1

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->k:I

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->a:Lcom/miui/securityscan/ui/main/MainVideoView;

    invoke-virtual {p1, v0, v1}, Lcom/miui/securityscan/ui/main/MainVideoView;->setRenderState(FF)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->a:Lcom/miui/securityscan/ui/main/MainVideoView;

    invoke-virtual {p1}, Lcom/miui/securityscan/ui/main/MainVideoView;->updateBackground()V

    return-void
.end method

.method public l()V
    .locals 0

    return-void
.end method

.method public m()V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->h:Landroid/animation/ObjectAnimator;

    invoke-direct {p0, v0}, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->A(Landroid/animation/ObjectAnimator;)V

    return-void
.end method

.method public n()V
    .locals 0

    return-void
.end method

.method public o()V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b01a2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->j:Landroid/content/Context;

    const-class v1, Lcom/miui/securityscan/OptimizeAndResultActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->j:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    invoke-direct {p0}, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->B()V

    return-void
.end method

.method public p()V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->a:Lcom/miui/securityscan/ui/main/MainVideoView;

    invoke-virtual {v0}, Lcom/miui/securityscan/ui/main/MainVideoView;->pausePlayVideo()V

    return-void
.end method

.method public q(II)V
    .locals 0

    return-void
.end method

.method public r(II)V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->b:Lcom/miui/common/customview/ScoreTextView;

    invoke-virtual {v0, p2}, Lcom/miui/common/customview/ScoreTextView;->setScore(I)V

    invoke-virtual {p0, p1, p2}, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->f(II)V

    invoke-virtual {p0, p1, p2}, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->C(II)V

    return-void
.end method

.method public s(I)I
    .locals 2

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
    iget-object v1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->b:Lcom/miui/common/customview/ScoreTextView;

    invoke-virtual {v1, v0}, Lcom/miui/common/customview/ScoreTextView;->setScore(I)V

    invoke-virtual {p0, p1, v0}, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->f(II)V

    invoke-virtual {p0, p1, v0}, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->k(II)V

    return v0
.end method

.method public setActionButtonClickable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->d:Landroid/widget/Button;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    :cond_0
    return-void
.end method

.method public setActionButtonText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->d:Landroid/widget/Button;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->n:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setContentFrameAlpha(F)V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public setContentMainClickable(Z)V
    .locals 0

    return-void
.end method

.method public setPlaySpeed(F)V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->a:Lcom/miui/securityscan/ui/main/MainVideoView;

    invoke-virtual {v0, p1}, Lcom/miui/securityscan/ui/main/MainVideoView;->setPlaySpeed(F)V

    return-void
.end method

.method public setPredictScanFinishListener(Lcom/miui/securityscan/ui/main/MainVideoView$c;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->a:Lcom/miui/securityscan/ui/main/MainVideoView;

    invoke-virtual {v0, p1}, Lcom/miui/securityscan/ui/main/MainVideoView;->setPredictScanFinishListener(Lcom/miui/securityscan/ui/main/MainVideoView$c;)V

    return-void
.end method

.method public setResultScoreText(I)V
    .locals 0

    return-void
.end method

.method public setResultStatusTextPadding(I)V
    .locals 0

    return-void
.end method

.method public setScoreText(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->b:Lcom/miui/common/customview/ScoreTextView;

    invoke-virtual {v0, p1}, Lcom/miui/common/customview/ScoreTextView;->setScore(I)V

    return-void
.end method

.method public setScreenSize(I)V
    .locals 1

    iget v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->o:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->o:I

    :cond_0
    return-void
.end method

.method public setStatusBottomText(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setStatusBottomVisible(I)V
    .locals 0

    return-void
.end method

.method public setStatusTopText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public stopPlay()V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->a:Lcom/miui/securityscan/ui/main/MainVideoView;

    invoke-virtual {v0}, Lcom/miui/securityscan/ui/main/MainVideoView;->stopPlayVideo()V

    return-void
.end method

.method public t()V
    .locals 0

    return-void
.end method

.method public u()V
    .locals 0

    return-void
.end method
