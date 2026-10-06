.class public Lcom/miui/gamebooster/ui/touch/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/ui/touch/b$d;,
        Lcom/miui/gamebooster/ui/touch/b$c;
    }
.end annotation


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/PopupWindow;

.field private e:Landroid/content/Context;

.field private f:I

.field private g:Lcom/miui/gamebooster/ui/touch/b$d;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/gamebooster/ui/touch/b$a;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/touch/b$a;-><init>(Lcom/miui/gamebooster/ui/touch/b;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/touch/b;->i:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/touch/b;->a:Landroid/os/Handler;

    iput-object p1, p0, Lcom/miui/gamebooster/ui/touch/b;->b:Landroid/view/View;

    iput-object p2, p0, Lcom/miui/gamebooster/ui/touch/b;->h:Ljava/lang/String;

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/touch/b;->k()V

    return-void
.end method

.method static synthetic a(Lcom/miui/gamebooster/ui/touch/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/touch/b;->g()V

    return-void
.end method

.method static synthetic b(Lcom/miui/gamebooster/ui/touch/b;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/ui/touch/b;->o(Landroid/view/View;)V

    return-void
.end method

.method static synthetic c(Lcom/miui/gamebooster/ui/touch/b;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/ui/touch/b;->m(I)V

    return-void
.end method

.method static synthetic d(Lcom/miui/gamebooster/ui/touch/b;Lcom/miui/gamebooster/ui/touch/b$d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/ui/touch/b;->n(Lcom/miui/gamebooster/ui/touch/b$d;)V

    return-void
.end method

.method static synthetic e(Lcom/miui/gamebooster/ui/touch/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/touch/b;->p()V

    return-void
.end method

.method static synthetic f(Lcom/miui/gamebooster/ui/touch/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/touch/b;->l()V

    return-void
.end method

.method private g()V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/b;->d:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method private h(I)I
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/b;->e:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private k()V
    .locals 3

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/touch/b;->e:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/b;->b:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v0, "BubblePop"

    const-string v1, "error init view"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/touch/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/touch/b;->b:Landroid/view/View;

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/touch/b;->d:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/b;->d:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private l()V
    .locals 5

    :try_start_0
    invoke-static {}, La8/k2;->A()Z

    move-result v0

    const/16 v1, 0x33

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/b;->d:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/miui/gamebooster/ui/touch/b;->c:Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/touch/b;->j()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/touch/b;->i()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/b;->b:Landroid/view/View;

    const v1, 0x7f0806c9

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f071e0c

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/ui/touch/b;->h(I)I

    move-result v0

    iget-object v2, p0, Lcom/miui/gamebooster/ui/touch/b;->d:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/miui/gamebooster/ui/touch/b;->c:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v4, v0

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/touch/b;->i()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/b;->b:Landroid/view/View;

    const v1, 0x7f0806c8

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/b;->g:Lcom/miui/gamebooster/ui/touch/b$d;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/miui/gamebooster/ui/touch/b$d;->onShow()V

    :cond_1
    iget v0, p0, Lcom/miui/gamebooster/ui/touch/b;->f:I

    if-lez v0, :cond_2

    iget-object v1, p0, Lcom/miui/gamebooster/ui/touch/b;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/miui/gamebooster/ui/touch/b;->i:Ljava/lang/Runnable;

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "BubblePop"

    const-string v2, "show pop erro"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return-void
.end method

.method private m(I)V
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/ui/touch/b;->f:I

    return-void
.end method

.method private n(Lcom/miui/gamebooster/ui/touch/b$d;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/touch/b;->g:Lcom/miui/gamebooster/ui/touch/b$d;

    return-void
.end method

.method private o(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/touch/b;->c:Landroid/view/View;

    return-void
.end method

.method private p()V
    .locals 4

    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/b;->a:Landroid/os/Handler;

    new-instance v1, Lcom/miui/gamebooster/ui/touch/b$b;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/ui/touch/b$b;-><init>(Lcom/miui/gamebooster/ui/touch/b;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public i()I
    .locals 4

    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/b;->b:Landroid/view/View;

    const v1, 0x7f070eb8

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/b;->c:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const v0, 0x7f070eb9

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/ui/touch/b;->h(I)I

    move-result v0

    const/high16 v2, -0x80000000

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget-object v3, p0, Lcom/miui/gamebooster/ui/touch/b;->b:Landroid/view/View;

    invoke-virtual {v3, v0, v2}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/b;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-direct {p0, v1}, Lcom/miui/gamebooster/ui/touch/b;->h(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/miui/gamebooster/ui/touch/b;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_1
    :goto_1
    invoke-direct {p0, v1}, Lcom/miui/gamebooster/ui/touch/b;->h(I)I

    move-result v0

    goto :goto_0
.end method

.method public j()I
    .locals 4

    const v0, 0x7f070eb9

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/ui/touch/b;->h(I)I

    move-result v1

    iget-object v2, p0, Lcom/miui/gamebooster/ui/touch/b;->b:Landroid/view/View;

    if-nez v2, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/miui/gamebooster/ui/touch/b;->h(I)I

    move-result v0

    const/high16 v2, -0x80000000

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget-object v3, p0, Lcom/miui/gamebooster/ui/touch/b;->b:Landroid/view/View;

    invoke-virtual {v3, v0, v2}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/b;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/b;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const v2, 0x7f071d7b

    invoke-direct {p0, v2}, Lcom/miui/gamebooster/ui/touch/b;->h(I)I

    move-result v2

    sub-int/2addr v1, v2

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/b;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const v2, 0x7f071df9

    invoke-direct {p0, v2}, Lcom/miui/gamebooster/ui/touch/b;->h(I)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0
.end method
