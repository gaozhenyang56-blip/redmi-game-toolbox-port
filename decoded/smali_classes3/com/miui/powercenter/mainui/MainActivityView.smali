.class public Lcom/miui/powercenter/mainui/MainActivityView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/app/Activity;

.field private c:Lcom/miui/powercenter/quickoptimize/MainContentFrame;

.field private d:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;

.field private e:Lw4/e;

.field private f:Lfe/n;

.field private g:Lfe/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/miui/powercenter/mainui/MainActivityView;->a:Landroid/content/Context;

    return-void
.end method

.method private a()V
    .locals 4

    const v0, 0x7f0b02a2

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-static {}, Lx4/a0;->x()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/powercenter/mainui/MainActivityView;->c:Lcom/miui/powercenter/quickoptimize/MainContentFrame;

    invoke-virtual {v1}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->getNotchOffset()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainActivityView;->d:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;

    invoke-virtual {v0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->t()V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainActivityView;->d:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->u()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/powercenter/mainui/MainActivityView;->e()V

    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainActivityView;->c:Lcom/miui/powercenter/quickoptimize/MainContentFrame;

    invoke-virtual {v0}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->e()V

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainActivityView;->d:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->v()V

    :cond_0
    return-void
.end method

.method public f(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainActivityView;->d:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/miui/powercenter/mainui/MainActivityView;->a()V

    const v0, 0x7f0b087a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;

    iput-object v0, p0, Lcom/miui/powercenter/mainui/MainActivityView;->d:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;

    new-instance v0, Lfe/n$b;

    iget-object v2, p0, Lcom/miui/powercenter/mainui/MainActivityView;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lfe/n$b;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/miui/powercenter/mainui/MainActivityView;->d:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;

    invoke-virtual {v0, v2}, Lfe/n$b;->f(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;)Lfe/n$b;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/powercenter/mainui/MainActivityView;->g:Lfe/j;

    invoke-virtual {v0, v2}, Lfe/n$b;->e(Lfe/j;)Lfe/n$b;

    move-result-object v0

    invoke-virtual {v0}, Lfe/n$b;->d()Lfe/n;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/powercenter/mainui/MainActivityView;->f:Lfe/n;

    iget-object v2, p0, Lcom/miui/powercenter/mainui/MainActivityView;->e:Lw4/e;

    invoke-virtual {v0, v2}, Lfe/n;->c(Lw4/e;)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/powercenter/mainui/MainActivityView;->d:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;

    invoke-virtual {p1}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->x()V

    return v1

    :cond_0
    iget-object p1, p0, Lcom/miui/powercenter/mainui/MainActivityView;->f:Lfe/n;

    invoke-virtual {p1}, Lfe/n;->a()V

    :cond_1
    return v1
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainActivityView;->c:Lcom/miui/powercenter/quickoptimize/MainContentFrame;

    invoke-virtual {v0}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->g()V

    return-void
.end method

.method public getScreenHeight()I
    .locals 2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, p0, Lcom/miui/powercenter/mainui/MainActivityView;->a:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public h(II)V
    .locals 2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/powercenter/mainui/MainActivityView;->c:Lcom/miui/powercenter/quickoptimize/MainContentFrame;

    invoke-virtual {v1, v0, p2, p1}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->h(ZII)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0b02a3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;

    iput-object v0, p0, Lcom/miui/powercenter/mainui/MainActivityView;->c:Lcom/miui/powercenter/quickoptimize/MainContentFrame;

    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainActivityView;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/miui/powercenter/mainui/MainActivityView;->b:Landroid/app/Activity;

    :cond_0
    return-void
.end method

.method public setContentAlpha(F)V
    .locals 2

    const v0, -0x40666666    # -1.2f

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p1, v0

    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainActivityView;->c:Lcom/miui/powercenter/quickoptimize/MainContentFrame;

    invoke-virtual {v0, p1}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->setHeaderLayoutAlpha(F)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setContentAlpha alpha:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MainActivityView"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setEventHandler(Lw4/e;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/powercenter/mainui/MainActivityView;->e:Lw4/e;

    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainActivityView;->c:Lcom/miui/powercenter/quickoptimize/MainContentFrame;

    invoke-virtual {v0, p1}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->setEventHandler(Lw4/e;)V

    return-void
.end method

.method public setFinalResultAlpha(F)V
    .locals 2

    const v0, -0x40666666    # -1.2f

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p1, v0

    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainActivityView;->c:Lcom/miui/powercenter/quickoptimize/MainContentFrame;

    invoke-virtual {v0, p1}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->setFinalResultIconAlpha(F)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFinalResultAlpha alpha:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MainActivityView"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setResultDataAdapter(Lfe/j;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/mainui/MainActivityView;->g:Lfe/j;

    return-void
.end method

.method public setSplitPadding(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainActivityView;->c:Lcom/miui/powercenter/quickoptimize/MainContentFrame;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lme/w;->H(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainActivityView;->c:Lcom/miui/powercenter/quickoptimize/MainContentFrame;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p1, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void
.end method
