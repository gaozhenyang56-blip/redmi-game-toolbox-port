.class public Lcom/miui/gamebooster/windowmanager/newbox/c0;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Z

.field private e:Landroid/content/Context;

.field private f:Landroid/content/res/Resources;

.field private g:Lcom/miui/gamebooster/windowmanager/newbox/a0;

.field private h:Lcom/miui/gamebooster/windowmanager/newbox/d0;

.field private i:Landroid/widget/Space;

.field private final j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;IZ)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/miui/gamebooster/windowmanager/newbox/c0$a;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/windowmanager/newbox/c0$a;-><init>(Lcom/miui/gamebooster/windowmanager/newbox/c0;)V

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/c0;->j:Ljava/lang/Runnable;

    iput-boolean p2, p0, Lcom/miui/gamebooster/windowmanager/newbox/c0;->a:Z

    iput-object p3, p0, Lcom/miui/gamebooster/windowmanager/newbox/c0;->b:Ljava/lang/String;

    iput p4, p0, Lcom/miui/gamebooster/windowmanager/newbox/c0;->c:I

    iput-boolean p5, p0, Lcom/miui/gamebooster/windowmanager/newbox/c0;->d:Z

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/windowmanager/newbox/c0;->e(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/miui/gamebooster/windowmanager/newbox/c0;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/windowmanager/newbox/c0;->f(Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Lcom/miui/gamebooster/windowmanager/newbox/c0;)Lcom/miui/gamebooster/windowmanager/newbox/a0;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/windowmanager/newbox/c0;->g:Lcom/miui/gamebooster/windowmanager/newbox/a0;

    return-object p0
.end method

.method static synthetic c(Lcom/miui/gamebooster/windowmanager/newbox/c0;)Landroid/widget/Space;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/windowmanager/newbox/c0;->i:Landroid/widget/Space;

    return-object p0
.end method

.method private d()V
    .locals 6

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/c0;->e:Landroid/content/Context;

    invoke-static {v0}, La8/k2;->B(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/gamebooster/windowmanager/newbox/c0;->getIntervalValue()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/miui/gamebooster/windowmanager/newbox/c0;->getIntervalValue()I

    move-result v0

    :goto_1
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v0, Landroid/widget/Space;

    iget-object v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/c0;->e:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/c0;->i:Landroid/widget/Space;

    const/4 v2, 0x4

    const/4 v4, 0x1

    new-array v5, v4, [Landroid/view/View;

    aput-object v0, v5, v1

    invoke-static {v2, v5}, Ldb/i;->m(I[Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/c0;->i:Landroid/widget/Space;

    invoke-virtual {p0, v0, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private e(Landroid/content/Context;)V
    .locals 10

    iput-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/c0;->e:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/c0;->f:Landroid/content/res/Resources;

    invoke-static {p1}, La8/k2;->B(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/c0;->f:Landroid/content/res/Resources;

    const v2, 0x7f070e47

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-static {}, Lcom/miui/gamebooster/windowmanager/newbox/o0;->b()I

    move-result v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v0, Lcom/miui/gamebooster/windowmanager/newbox/d0;

    iget-object v6, p0, Lcom/miui/gamebooster/windowmanager/newbox/c0;->b:Ljava/lang/String;

    iget v7, p0, Lcom/miui/gamebooster/windowmanager/newbox/c0;->c:I

    iget-boolean v8, p0, Lcom/miui/gamebooster/windowmanager/newbox/c0;->a:Z

    iget-boolean v9, p0, Lcom/miui/gamebooster/windowmanager/newbox/c0;->d:Z

    move-object v4, v0

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/miui/gamebooster/windowmanager/newbox/d0;-><init>(Landroid/content/Context;Ljava/lang/String;IZZ)V

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/c0;->h:Lcom/miui/gamebooster/windowmanager/newbox/d0;

    new-instance v2, Lcom/miui/gamebooster/windowmanager/newbox/b0;

    invoke-direct {v2, p0}, Lcom/miui/gamebooster/windowmanager/newbox/b0;-><init>(Lcom/miui/gamebooster/windowmanager/newbox/c0;)V

    invoke-virtual {v0, v2}, Lcom/miui/gamebooster/windowmanager/newbox/d0;->setOnBrightnessChange(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/c0;->h:Lcom/miui/gamebooster/windowmanager/newbox/d0;

    invoke-virtual {p0, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p1}, La8/k2;->B(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-le p1, v0, :cond_1

    iget-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/c0;->f:Landroid/content/res/Resources;

    const v0, 0x7f070de6

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-static {}, Lcom/miui/gamebooster/windowmanager/newbox/o0;->b()I

    move-result v0

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, p1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance p1, Lcom/miui/gamebooster/windowmanager/newbox/a0;

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/c0;->e:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/miui/gamebooster/windowmanager/newbox/a0;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/c0;->g:Lcom/miui/gamebooster/windowmanager/newbox/a0;

    const/4 v0, 0x4

    new-array v1, v1, [Landroid/view/View;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Ldb/i;->m(I[Landroid/view/View;)V

    iget-boolean p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/c0;->a:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/miui/gamebooster/windowmanager/newbox/c0;->d()V

    iget-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/c0;->g:Lcom/miui/gamebooster/windowmanager/newbox/a0;

    invoke-virtual {p0, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/c0;->g:Lcom/miui/gamebooster/windowmanager/newbox/a0;

    invoke-virtual {p0, p1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/miui/gamebooster/windowmanager/newbox/c0;->d()V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic f(Landroid/view/View;)V
    .locals 4

    invoke-static {}, La8/o0;->h()Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    invoke-static {p1}, La8/o0;->s(Z)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/view/View;

    iget-object v3, p0, Lcom/miui/gamebooster/windowmanager/newbox/c0;->g:Lcom/miui/gamebooster/windowmanager/newbox/a0;

    aput-object v3, v2, v1

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/c0;->i:Landroid/widget/Space;

    aput-object v1, v2, v0

    invoke-static {p1, v2}, Ldb/i;->m(I[Landroid/view/View;)V

    return-void
.end method

.method private getIntervalValue()I
    .locals 7

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/c0;->f:Landroid/content/res/Resources;

    const v1, 0x7f070377

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/c0;->f:Landroid/content/res/Resources;

    const v2, 0x7f070e47

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget-object v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/c0;->f:Landroid/content/res/Resources;

    const v3, 0x7f070de6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iget-object v3, p0, Lcom/miui/gamebooster/windowmanager/newbox/c0;->f:Landroid/content/res/Resources;

    const v4, 0x7f070de5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iget-object v4, p0, Lcom/miui/gamebooster/windowmanager/newbox/c0;->e:Landroid/content/Context;

    invoke-static {v4}, La8/t1;->b(Landroid/content/Context;)I

    move-result v4

    iget-object v5, p0, Lcom/miui/gamebooster/windowmanager/newbox/c0;->e:Landroid/content/Context;

    invoke-static {v5}, La8/k2;->r(Landroid/content/Context;)I

    move-result v5

    invoke-static {}, Lcom/miui/gamebooster/windowmanager/newbox/o0;->a()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v5, v0

    sub-int/2addr v5, v1

    sub-int/2addr v5, v2

    sub-int/2addr v5, v3

    sub-int/2addr v5, v4

    return v5
.end method


# virtual methods
.method public g()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/c0;->g:Lcom/miui/gamebooster/windowmanager/newbox/a0;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x4

    invoke-static {v1, v0}, Ldb/i;->m(I[Landroid/view/View;)V

    return-void
.end method

.method public getGameModeView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMainView()Lcom/miui/gamebooster/windowmanager/newbox/d0;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/c0;->h:Lcom/miui/gamebooster/windowmanager/newbox/d0;

    return-object v0
.end method

.method public getPerformanceTextView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getShoulderView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public h()V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/c0;->j:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public i()V
    .locals 0

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/c0;->j:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/c0;->g:Lcom/miui/gamebooster/windowmanager/newbox/a0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/gamebooster/windowmanager/newbox/a0;->onDetachedFromWindow()V

    :cond_0
    return-void
.end method

.method public setOnChangedListener(Lcom/miui/gamebooster/brightness/a$a;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/c0;->g:Lcom/miui/gamebooster/windowmanager/newbox/a0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/gamebooster/windowmanager/newbox/a0;->setOnChangedListener(Lcom/miui/gamebooster/brightness/a$a;)V

    :cond_0
    return-void
.end method

.method public setOnStatusChangeListener(Ls8/w;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/c0;->h:Lcom/miui/gamebooster/windowmanager/newbox/d0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/gamebooster/windowmanager/newbox/d0;->setOnStatusChangeListener(Ls8/w;)V

    :cond_0
    return-void
.end method
