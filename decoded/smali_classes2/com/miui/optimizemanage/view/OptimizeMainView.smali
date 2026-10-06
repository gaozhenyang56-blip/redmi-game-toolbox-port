.class public Lcom/miui/optimizemanage/view/OptimizeMainView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"

# interfaces
.implements Lcom/miui/common/ui/a$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/optimizemanage/view/OptimizeMainView$c;
    }
.end annotation


# instance fields
.field private a:Lcom/miui/common/ui/VlcTextureView;

.field private b:Landroid/view/View;

.field private c:Lcom/miui/fastplayer/FastPlayer;

.field private d:I

.field private e:Lcom/miui/common/ui/a$c;

.field private f:Lcom/miui/optimizemanage/view/OptimizeMainView$c;

.field private g:Landroid/os/Handler;

.field private h:Lcom/miui/common/ui/VlcTextureView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/optimizemanage/view/OptimizeMainView;->d:I

    sget-object p1, Lcom/miui/optimizemanage/view/OptimizeMainView$c;->b:Lcom/miui/optimizemanage/view/OptimizeMainView$c;

    iput-object p1, p0, Lcom/miui/optimizemanage/view/OptimizeMainView;->f:Lcom/miui/optimizemanage/view/OptimizeMainView$c;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/miui/optimizemanage/view/OptimizeMainView;->g:Landroid/os/Handler;

    new-instance p1, Lcom/miui/optimizemanage/view/OptimizeMainView$a;

    invoke-direct {p1, p0}, Lcom/miui/optimizemanage/view/OptimizeMainView$a;-><init>(Lcom/miui/optimizemanage/view/OptimizeMainView;)V

    iput-object p1, p0, Lcom/miui/optimizemanage/view/OptimizeMainView;->h:Lcom/miui/common/ui/VlcTextureView$a;

    return-void
.end method

.method static synthetic f(Lcom/miui/optimizemanage/view/OptimizeMainView;)Lcom/miui/optimizemanage/view/OptimizeMainView$c;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizemanage/view/OptimizeMainView;->f:Lcom/miui/optimizemanage/view/OptimizeMainView$c;

    return-object p0
.end method

.method static synthetic g(Lcom/miui/optimizemanage/view/OptimizeMainView;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizemanage/view/OptimizeMainView;->g:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic h(Lcom/miui/optimizemanage/view/OptimizeMainView;)Lcom/miui/common/ui/VlcTextureView;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizemanage/view/OptimizeMainView;->a:Lcom/miui/common/ui/VlcTextureView;

    return-object p0
.end method

.method private i(I)Landroid/net/Uri;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method private j()V
    .locals 4

    new-instance v0, Lcom/miui/fastplayer/FastPlayer;

    invoke-direct {v0}, Lcom/miui/fastplayer/FastPlayer;-><init>()V

    iput-object v0, p0, Lcom/miui/optimizemanage/view/OptimizeMainView;->c:Lcom/miui/fastplayer/FastPlayer;

    iget-object v1, p0, Lcom/miui/optimizemanage/view/OptimizeMainView;->a:Lcom/miui/common/ui/VlcTextureView;

    invoke-virtual {v1, v0}, Lcom/miui/common/ui/VlcTextureView;->setPlayer(Lcom/miui/fastplayer/FastPlayer;)V

    :try_start_0
    iget-object v0, p0, Lcom/miui/optimizemanage/view/OptimizeMainView;->c:Lcom/miui/fastplayer/FastPlayer;

    invoke-static {}, Lcom/miui/common/e;->c()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f110014

    invoke-direct {p0, v2}, Lcom/miui/optimizemanage/view/OptimizeMainView;->i(I)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/fastplayer/FastPlayer;->addDataSource(Landroid/content/Context;Landroid/net/Uri;I)V

    invoke-virtual {p0}, Lcom/miui/optimizemanage/view/OptimizeMainView;->k()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/optimizemanage/view/OptimizeMainView;->l()V

    iget-object v0, p0, Lcom/miui/optimizemanage/view/OptimizeMainView;->e:Lcom/miui/common/ui/a$c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/miui/common/ui/a$c;->a()V

    :cond_0
    return-void
.end method

.method public k()V
    .locals 3

    iget-object v0, p0, Lcom/miui/optimizemanage/view/OptimizeMainView;->f:Lcom/miui/optimizemanage/view/OptimizeMainView$c;

    sget-object v1, Lcom/miui/optimizemanage/view/OptimizeMainView$c;->b:Lcom/miui/optimizemanage/view/OptimizeMainView$c;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/miui/optimizemanage/view/OptimizeMainView;->m(Z)V

    iget-object v1, p0, Lcom/miui/optimizemanage/view/OptimizeMainView;->c:Lcom/miui/fastplayer/FastPlayer;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v0}, Lcom/miui/fastplayer/FastPlayer;->setPlayerSpeed(FI)I

    iget-object v1, p0, Lcom/miui/optimizemanage/view/OptimizeMainView;->c:Lcom/miui/fastplayer/FastPlayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/miui/fastplayer/FastPlayer;->setLoop(ZI)I

    iget-object v0, p0, Lcom/miui/optimizemanage/view/OptimizeMainView;->c:Lcom/miui/fastplayer/FastPlayer;

    invoke-virtual {v0}, Lcom/miui/fastplayer/FastPlayer;->start()I

    sget-object v0, Lcom/miui/optimizemanage/view/OptimizeMainView$c;->a:Lcom/miui/optimizemanage/view/OptimizeMainView$c;

    iput-object v0, p0, Lcom/miui/optimizemanage/view/OptimizeMainView;->f:Lcom/miui/optimizemanage/view/OptimizeMainView$c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OptimizeMainView"

    const-string v2, "prepare mediasource error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public l()V
    .locals 3

    iget-object v0, p0, Lcom/miui/optimizemanage/view/OptimizeMainView;->f:Lcom/miui/optimizemanage/view/OptimizeMainView$c;

    sget-object v1, Lcom/miui/optimizemanage/view/OptimizeMainView$c;->a:Lcom/miui/optimizemanage/view/OptimizeMainView$c;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/optimizemanage/view/OptimizeMainView;->c:Lcom/miui/fastplayer/FastPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/miui/fastplayer/FastPlayer;->setLoop(ZI)I

    iget-object v0, p0, Lcom/miui/optimizemanage/view/OptimizeMainView;->c:Lcom/miui/fastplayer/FastPlayer;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0, v2, v1}, Lcom/miui/fastplayer/FastPlayer;->setPlayerSpeed(FI)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sget-object v0, Lcom/miui/optimizemanage/view/OptimizeMainView$c;->b:Lcom/miui/optimizemanage/view/OptimizeMainView$c;

    iput-object v0, p0, Lcom/miui/optimizemanage/view/OptimizeMainView;->f:Lcom/miui/optimizemanage/view/OptimizeMainView$c;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/optimizemanage/view/OptimizeMainView;->m(Z)V

    return-void
.end method

.method public m(Z)V
    .locals 4

    invoke-static {}, Lx4/t;->C()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/optimizemanage/view/OptimizeMainView;->f:Lcom/miui/optimizemanage/view/OptimizeMainView$c;

    sget-object v1, Lcom/miui/optimizemanage/view/OptimizeMainView$c;->b:Lcom/miui/optimizemanage/view/OptimizeMainView$c;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/optimizemanage/view/OptimizeMainView;->b:Landroid/view/View;

    const v1, 0x7f080dcf

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/optimizemanage/view/OptimizeMainView;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060d09

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    iget-object v0, p0, Lcom/miui/optimizemanage/view/OptimizeMainView;->b:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/miui/optimizemanage/view/OptimizeMainView;->a:Lcom/miui/common/ui/VlcTextureView;

    if-eqz p1, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/miui/optimizemanage/view/OptimizeMainView;->release()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const v0, 0x7f0b0ba6

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/common/ui/VlcTextureView;

    iput-object v0, p0, Lcom/miui/optimizemanage/view/OptimizeMainView;->a:Lcom/miui/common/ui/VlcTextureView;

    const v0, 0x7f0b0173

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/view/OptimizeMainView;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/optimizemanage/view/OptimizeMainView;->a:Lcom/miui/common/ui/VlcTextureView;

    const/high16 v1, 0x43480000    # 200.0f

    invoke-virtual {v0, v1}, Lcom/miui/common/ui/VlcTextureView;->setRenderHue(F)V

    invoke-static {}, Lx4/t;->C()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/optimizemanage/view/OptimizeMainView;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/optimizemanage/view/OptimizeMainView;->a:Lcom/miui/common/ui/VlcTextureView;

    iget-object v1, p0, Lcom/miui/optimizemanage/view/OptimizeMainView;->h:Lcom/miui/common/ui/VlcTextureView$a;

    invoke-virtual {v0, v1}, Lcom/miui/common/ui/VlcTextureView;->a(Lcom/miui/common/ui/VlcTextureView$a;)V

    :goto_0
    invoke-direct {p0}, Lcom/miui/optimizemanage/view/OptimizeMainView;->j()V

    return-void
.end method

.method public release()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/miui/optimizemanage/view/OptimizeMainView;->c:Lcom/miui/fastplayer/FastPlayer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/miui/fastplayer/FastPlayer;->release()V

    iput-object v0, p0, Lcom/miui/optimizemanage/view/OptimizeMainView;->c:Lcom/miui/fastplayer/FastPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iget-object v1, p0, Lcom/miui/optimizemanage/view/OptimizeMainView;->a:Lcom/miui/common/ui/VlcTextureView;

    invoke-virtual {v1}, Lcom/miui/common/ui/VlcTextureView;->d()V

    invoke-static {}, Lx4/t;->C()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/optimizemanage/view/OptimizeMainView;->a:Lcom/miui/common/ui/VlcTextureView;

    iget-object v2, p0, Lcom/miui/optimizemanage/view/OptimizeMainView;->h:Lcom/miui/common/ui/VlcTextureView$a;

    invoke-virtual {v1, v2}, Lcom/miui/common/ui/VlcTextureView;->e(Lcom/miui/common/ui/VlcTextureView$a;)V

    :cond_1
    iget-object v1, p0, Lcom/miui/optimizemanage/view/OptimizeMainView;->g:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public setAnimProgress(F)V
    .locals 7

    iget v0, p0, Lcom/miui/optimizemanage/view/OptimizeMainView;->d:I

    int-to-float v1, v0

    const/high16 v2, 0x43340000    # 180.0f

    cmpl-float v3, p1, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ltz v3, :cond_0

    if-nez v0, :cond_0

    iput v6, p0, Lcom/miui/optimizemanage/view/OptimizeMainView;->d:I

    int-to-float v5, v6

    goto :goto_0

    :cond_0
    cmpg-float p1, p1, v2

    if-gez p1, :cond_1

    if-ne v0, v6, :cond_1

    iput v4, p0, Lcom/miui/optimizemanage/view/OptimizeMainView;->d:I

    :cond_1
    :goto_0
    const/4 p1, 0x2

    new-array p1, p1, [F

    aput v1, p1, v4

    aput v5, p1, v6

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/miui/optimizemanage/view/OptimizeMainView$b;

    invoke-direct {v0, p0}, Lcom/miui/optimizemanage/view/OptimizeMainView$b;-><init>(Lcom/miui/optimizemanage/view/OptimizeMainView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public setOnAnimOverListener(Lcom/miui/common/ui/a$c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizemanage/view/OptimizeMainView;->e:Lcom/miui/common/ui/a$c;

    return-void
.end method

.method public startAnim()V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/optimizemanage/view/OptimizeMainView;->k()V

    return-void
.end method
