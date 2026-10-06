.class public Lcom/miui/securityscan/ui/main/TabletTextureView;
.super Lcom/miui/securityscan/ui/main/b;
.source "SourceFile"


# instance fields
.field private m:Lcom/miui/securityscan/ui/main/o;

.field private n:Z

.field private o:Lcom/miui/securityscan/ui/main/MainVideoView$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/securityscan/ui/main/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/miui/securityscan/ui/main/TabletTextureView;->r(Landroid/content/Context;)V

    return-void
.end method

.method private r(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/ui/main/b;->setEGLContextClientVersion(I)V

    new-instance v0, Lcom/miui/securityscan/ui/main/o;

    invoke-direct {v0, p1}, Lcom/miui/securityscan/ui/main/o;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/TabletTextureView;->m:Lcom/miui/securityscan/ui/main/o;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f05000b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/TabletTextureView;->m:Lcom/miui/securityscan/ui/main/o;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0}, Lcom/miui/securityscan/ui/main/o;->q(FFF)V

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/TabletTextureView;->m:Lcom/miui/securityscan/ui/main/o;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-virtual {p1, v1, v0, v0, v0}, Lcom/miui/securityscan/ui/main/o;->w(FFFF)V

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/TabletTextureView;->m:Lcom/miui/securityscan/ui/main/o;

    const v1, 0x3f11eb85    # 0.57f

    const v2, 0x3f30a3d7    # 0.69f

    invoke-virtual {p1, v0, v1, v2}, Lcom/miui/securityscan/ui/main/o;->m(FFF)V

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/TabletTextureView;->m:Lcom/miui/securityscan/ui/main/o;

    const v1, 0x3ea3d70a    # 0.32f

    invoke-virtual {p1, v2, v1, v0}, Lcom/miui/securityscan/ui/main/o;->n(FFF)V

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/TabletTextureView;->m:Lcom/miui/securityscan/ui/main/o;

    const v0, 0x3f0f5c29    # 0.56f

    const v1, 0x3e851eb8    # 0.26f

    invoke-virtual {p1, v1, v2, v0}, Lcom/miui/securityscan/ui/main/o;->o(FFF)V

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/TabletTextureView;->m:Lcom/miui/securityscan/ui/main/o;

    const v0, 0x3e8a3d71    # 0.27f

    invoke-virtual {p1, v2, v1, v0}, Lcom/miui/securityscan/ui/main/o;->p(FFF)V

    :cond_0
    iget-object p1, p0, Lcom/miui/securityscan/ui/main/TabletTextureView;->m:Lcom/miui/securityscan/ui/main/o;

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/ui/main/b;->setRenderer(Lcom/miui/securityscan/ui/main/b$n;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/ui/main/b;->setRenderMode(I)V

    return-void
.end method

.method private t()V
    .locals 4

    iget-boolean v0, p0, Lcom/miui/securityscan/ui/main/TabletTextureView;->n:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/securityscan/ui/main/TabletTextureView;->n:Z

    invoke-virtual {p0}, Lcom/miui/securityscan/ui/main/TabletTextureView;->m()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/miui/securityscan/ui/main/TabletTextureView$a;

    invoke-direct {v1, p0}, Lcom/miui/securityscan/ui/main/TabletTextureView$a;-><init>(Lcom/miui/securityscan/ui/main/TabletTextureView;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public m()V
    .locals 1

    invoke-super {p0}, Lcom/miui/securityscan/ui/main/b;->m()V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/TabletTextureView;->m:Lcom/miui/securityscan/ui/main/o;

    invoke-virtual {v0}, Lcom/miui/securityscan/ui/main/o;->l()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/TextureView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/TabletTextureView;->m:Lcom/miui/securityscan/ui/main/o;

    invoke-virtual {v0, p1}, Lcom/miui/securityscan/ui/main/o;->s(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Lcom/miui/securityscan/ui/main/b;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/TabletTextureView;->o:Lcom/miui/securityscan/ui/main/MainVideoView$c;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/TabletTextureView;->o:Lcom/miui/securityscan/ui/main/MainVideoView$c;

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/TextureView;->onMeasure(II)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/TabletTextureView;->m:Lcom/miui/securityscan/ui/main/o;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/TabletTextureView;->m:Lcom/miui/securityscan/ui/main/o;

    invoke-virtual {v0, p1, p2}, Lcom/miui/securityscan/ui/main/o;->r(II)V

    :cond_0
    return-void
.end method

.method public s(FF)V
    .locals 2

    invoke-direct {p0}, Lcom/miui/securityscan/ui/main/TabletTextureView;->t()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/miui/securityscan/ui/main/TabletTextureView$b;

    invoke-direct {p2, p0}, Lcom/miui/securityscan/ui/main/TabletTextureView$b;-><init>(Lcom/miui/securityscan/ui/main/TabletTextureView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public setPredictScanFinishListener(Lcom/miui/securityscan/ui/main/MainVideoView$c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/TabletTextureView;->o:Lcom/miui/securityscan/ui/main/MainVideoView$c;

    return-void
.end method

.method public setRenderState(F)V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/TabletTextureView;->m:Lcom/miui/securityscan/ui/main/o;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/miui/securityscan/ui/main/o;->t(F)V

    invoke-direct {p0}, Lcom/miui/securityscan/ui/main/TabletTextureView;->t()V

    return-void
.end method

.method public u()V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/TabletTextureView;->m:Lcom/miui/securityscan/ui/main/o;

    invoke-virtual {v0}, Lcom/miui/securityscan/ui/main/o;->x()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/securityscan/ui/main/TabletTextureView;->n:Z

    return-void
.end method

.method public v()V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/TabletTextureView;->m:Lcom/miui/securityscan/ui/main/o;

    invoke-virtual {v0}, Lcom/miui/securityscan/ui/main/o;->y()V

    invoke-virtual {p0}, Lcom/miui/securityscan/ui/main/b;->l()V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/TabletTextureView;->o:Lcom/miui/securityscan/ui/main/MainVideoView$c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/miui/securityscan/ui/main/MainVideoView$c;->w()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/securityscan/ui/main/TabletTextureView;->n:Z

    return-void
.end method
