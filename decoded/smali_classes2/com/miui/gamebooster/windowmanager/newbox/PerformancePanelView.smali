.class public Lcom/miui/gamebooster/windowmanager/newbox/PerformancePanelView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/RadioGroup;

.field private f:Z

.field private g:Lcom/miui/gamebooster/framerate/FrameRateView;

.field private h:Lcom/miui/gamebooster/framerate/FrameRateViewController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gamebooster/windowmanager/newbox/PerformancePanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/PerformancePanelView;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/miui/gamebooster/windowmanager/newbox/PerformancePanelView;->i()V

    invoke-direct {p0}, Lcom/miui/gamebooster/windowmanager/newbox/PerformancePanelView;->k()V

    return-void
.end method

.method public static synthetic f(Lcom/miui/gamebooster/windowmanager/newbox/PerformancePanelView;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Loj/t;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gamebooster/windowmanager/newbox/PerformancePanelView;->j(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Loj/t;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/miui/gamebooster/windowmanager/newbox/PerformancePanelView;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/gamebooster/windowmanager/newbox/PerformancePanelView;->l(ZZ)V

    return-void
.end method

.method private h(Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 4

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance p1, Landroid/text/style/AbsoluteSizeSpan;

    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-direct {p1, v1, v2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/16 v3, 0x12

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method private i()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/PerformancePanelView;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e01ab

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0b0431

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/PerformancePanelView;->b:Landroid/widget/TextView;

    const v0, 0x7f0b0435

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/PerformancePanelView;->c:Landroid/widget/TextView;

    const v0, 0x7f0b0434

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/PerformancePanelView;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/PerformancePanelView;->b:Landroid/widget/TextView;

    invoke-static {v0}, La8/d2;->a(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/PerformancePanelView;->c:Landroid/widget/TextView;

    invoke-static {v0}, La8/d2;->a(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/PerformancePanelView;->d:Landroid/widget/TextView;

    invoke-static {v0}, La8/d2;->a(Landroid/widget/TextView;)V

    const v0, 0x7f0b045f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/framerate/FrameRateView;

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/PerformancePanelView;->g:Lcom/miui/gamebooster/framerate/FrameRateView;

    new-instance v1, Lcom/miui/gamebooster/windowmanager/newbox/m0;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/windowmanager/newbox/m0;-><init>(Lcom/miui/gamebooster/windowmanager/newbox/PerformancePanelView;)V

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/framerate/FrameRateView;->setFrameRateChangeListener(Lak/q;)V

    const v0, 0x7f0b0460

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/PerformancePanelView;->e:Landroid/widget/RadioGroup;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/PerformancePanelView;->e:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/PerformancePanelView;->e:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1}, La8/d2;->a(Landroid/widget/TextView;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/miui/gamebooster/framerate/FrameRateViewController;

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/PerformancePanelView;->g:Lcom/miui/gamebooster/framerate/FrameRateView;

    invoke-direct {v0, v1}, Lcom/miui/gamebooster/framerate/FrameRateViewController;-><init>(Lcom/miui/gamebooster/framerate/FrameRateView;)V

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/PerformancePanelView;->h:Lcom/miui/gamebooster/framerate/FrameRateViewController;

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/PerformancePanelView;->e:Landroid/widget/RadioGroup;
    const/16 v1, 0x8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    return-void
.end method

.method private synthetic j(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Loj/t;
    .locals 5

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I
    move-result v0
    if-gez v0, :port_valid_values
    const-string v1, "平均 --"
    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/PerformancePanelView;->b:Landroid/widget/TextView;
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    const-string v1, "波动 --"
    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/PerformancePanelView;->c:Landroid/widget/TextView;
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    const-string v1, "FPS --"
    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/PerformancePanelView;->d:Landroid/widget/TextView;
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    const/4 v0, 0x0
    return-object v0
    :port_valid_values
    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/PerformancePanelView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const p2, 0x7f12095e

    invoke-virtual {v1, p2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/miui/gamebooster/windowmanager/newbox/PerformancePanelView;->h(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/miui/gamebooster/windowmanager/newbox/PerformancePanelView;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const p1, 0x7f120960

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/windowmanager/newbox/PerformancePanelView;->h(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/PerformancePanelView;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p3, v0, v4

    const p3, 0x7f12095f

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/miui/gamebooster/windowmanager/newbox/PerformancePanelView;->h(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private k()V
    .locals 0
    return-void
.end method

.method private l(ZZ)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateView: unsupported = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " performanceMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PerformancePanelView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0b0462

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    invoke-static {}, Lc7/c;->q()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f12094d

    goto :goto_0

    :cond_0
    const v2, 0x7f120a8a

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/PerformancePanelView;->f:Z

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    const v1, 0x7f0b045e

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    xor-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/PerformancePanelView;->g:Lcom/miui/gamebooster/framerate/FrameRateView;

    if-eqz p2, :cond_2

    sget-object v3, Lcom/miui/gamebooster/framerate/FrameRateView$c;->b:Lcom/miui/gamebooster/framerate/FrameRateView$c;

    goto :goto_2

    :cond_2
    sget-object v3, Lcom/miui/gamebooster/framerate/FrameRateView$c;->a:Lcom/miui/gamebooster/framerate/FrameRateView$c;

    :goto_2
    invoke-virtual {v2, v3}, Lcom/miui/gamebooster/framerate/FrameRateView;->p(Lcom/miui/gamebooster/framerate/FrameRateView$c;)V

    iget-object v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/PerformancePanelView;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz p2, :cond_3

    const v4, 0x7f060309

    goto :goto_3

    :cond_3
    const v4, 0x7f0602f5

    :goto_3
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/PerformancePanelView;->e:Landroid/widget/RadioGroup;

    if-nez p1, :cond_4

    if-eqz p2, :cond_4

    goto :goto_4

    :cond_4
    move v0, v1

    :goto_4
    invoke-virtual {v2, v0}, Landroid/widget/RadioGroup;->check(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/PerformancePanelView;->e:Landroid/widget/RadioGroup;

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    goto :goto_5

    :cond_5
    move-object p1, p0

    :goto_5
    invoke-virtual {v0, p1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    iget-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/PerformancePanelView;->a:Landroid/content/Context;

    if-eqz p2, :cond_6

    const p2, 0x7f080e33

    goto :goto_6

    :cond_6
    const p2, 0x7f080e32

    :goto_6
    invoke-static {p1, p2}, Lf/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/PerformancePanelView;->h:Lcom/miui/gamebooster/framerate/FrameRateViewController;

    invoke-virtual {v0}, Lcom/miui/gamebooster/framerate/FrameRateViewController;->h()V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/PerformancePanelView;->h:Lcom/miui/gamebooster/framerate/FrameRateViewController;

    invoke-virtual {v0}, Lcom/miui/gamebooster/framerate/FrameRateViewController;->g()V

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method
