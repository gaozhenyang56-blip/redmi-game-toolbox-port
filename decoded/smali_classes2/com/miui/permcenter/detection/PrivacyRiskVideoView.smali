.class public Lcom/miui/permcenter/detection/PrivacyRiskVideoView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lsb/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/permcenter/detection/PrivacyRiskVideoView$a;
    }
.end annotation


# instance fields
.field private a:Lcom/miui/common/ui/VlcTextureView;

.field private b:Lcom/miui/fastplayer/FastPlayer;

.field private c:Lcom/miui/permcenter/detection/PrivacyRiskVideoView$a;

.field private d:Z


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

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object p1, Lcom/miui/permcenter/detection/PrivacyRiskVideoView$a;->b:Lcom/miui/permcenter/detection/PrivacyRiskVideoView$a;

    iput-object p1, p0, Lcom/miui/permcenter/detection/PrivacyRiskVideoView;->c:Lcom/miui/permcenter/detection/PrivacyRiskVideoView$a;

    return-void
.end method

.method public static synthetic c(Lcom/miui/permcenter/detection/PrivacyRiskVideoView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/detection/PrivacyRiskVideoView;->e(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private d()V
    .locals 4

    new-instance v0, Lcom/miui/fastplayer/FastPlayer;

    invoke-direct {v0}, Lcom/miui/fastplayer/FastPlayer;-><init>()V

    iput-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskVideoView;->b:Lcom/miui/fastplayer/FastPlayer;

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

    const v1, 0x7f110006

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/miui/permcenter/detection/PrivacyRiskVideoView;->b:Lcom/miui/fastplayer/FastPlayer;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Lcom/miui/fastplayer/FastPlayer;->addDataSource(Landroid/content/Context;Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "MainVideoView"

    const-string v3, "initPlayerAndPrepareSources: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskVideoView;->b:Lcom/miui/fastplayer/FastPlayer;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/miui/fastplayer/FastPlayer;->setLoop(ZI)I

    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskVideoView;->a:Lcom/miui/common/ui/VlcTextureView;

    iget-object v1, p0, Lcom/miui/permcenter/detection/PrivacyRiskVideoView;->b:Lcom/miui/fastplayer/FastPlayer;

    invoke-virtual {v0, v1}, Lcom/miui/common/ui/VlcTextureView;->setPlayer(Lcom/miui/fastplayer/FastPlayer;)V

    invoke-direct {p0}, Lcom/miui/permcenter/detection/PrivacyRiskVideoView;->g()V

    return-void
.end method

.method private synthetic e(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskVideoView;->a:Lcom/miui/common/ui/VlcTextureView;

    invoke-virtual {v0, p1}, Lcom/miui/common/ui/VlcTextureView;->setRenderState(F)V

    return-void
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskVideoView;->c:Lcom/miui/permcenter/detection/PrivacyRiskVideoView$a;

    sget-object v1, Lcom/miui/permcenter/detection/PrivacyRiskVideoView$a;->b:Lcom/miui/permcenter/detection/PrivacyRiskVideoView$a;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskVideoView;->b:Lcom/miui/fastplayer/FastPlayer;

    invoke-virtual {v0}, Lcom/miui/fastplayer/FastPlayer;->start()I

    sget-object v0, Lcom/miui/permcenter/detection/PrivacyRiskVideoView$a;->a:Lcom/miui/permcenter/detection/PrivacyRiskVideoView$a;

    iput-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskVideoView;->c:Lcom/miui/permcenter/detection/PrivacyRiskVideoView$a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    invoke-direct {p0}, Lcom/miui/permcenter/detection/PrivacyRiskVideoView;->g()V

    return-void
.end method

.method public varargs b([F)Landroid/animation/ObjectAnimator;
    .locals 1

    const-string v0, "alpha"

    invoke-static {p0, v0, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    return-object p1
.end method

.method public f()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/permcenter/detection/PrivacyRiskVideoView;->d()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/miui/permcenter/detection/PrivacyRiskVideoView;->release()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0b0ba6

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/common/ui/VlcTextureView;

    iput-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskVideoView;->a:Lcom/miui/common/ui/VlcTextureView;

    const/high16 v1, 0x43480000    # 200.0f

    invoke-virtual {v0, v1}, Lcom/miui/common/ui/VlcTextureView;->setRenderHue(F)V

    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskVideoView;->a:Lcom/miui/common/ui/VlcTextureView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/miui/common/ui/VlcTextureView;->setRenderState(F)V

    invoke-virtual {p0}, Lcom/miui/permcenter/detection/PrivacyRiskVideoView;->f()V

    return-void
.end method

.method public release()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskVideoView;->b:Lcom/miui/fastplayer/FastPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/fastplayer/FastPlayer;->release()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskVideoView;->b:Lcom/miui/fastplayer/FastPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskVideoView;->a:Lcom/miui/common/ui/VlcTextureView;

    invoke-virtual {v0}, Lcom/miui/common/ui/VlcTextureView;->d()V

    return-void
.end method

.method public setMainViewScaleX(F)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    return-void
.end method

.method public setMainViewScaleY(F)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public setState(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskVideoView;->d:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/permcenter/detection/PrivacyRiskVideoView;->d:Z

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Lsb/d;

    invoke-direct {v0, p0}, Lsb/d;-><init>(Lcom/miui/permcenter/detection/PrivacyRiskVideoView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskVideoView;->c:Lcom/miui/permcenter/detection/PrivacyRiskVideoView$a;

    sget-object v1, Lcom/miui/permcenter/detection/PrivacyRiskVideoView$a;->a:Lcom/miui/permcenter/detection/PrivacyRiskVideoView$a;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskVideoView;->b:Lcom/miui/fastplayer/FastPlayer;

    invoke-virtual {v0}, Lcom/miui/fastplayer/FastPlayer;->pause()I

    sget-object v0, Lcom/miui/permcenter/detection/PrivacyRiskVideoView$a;->b:Lcom/miui/permcenter/detection/PrivacyRiskVideoView$a;

    iput-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskVideoView;->c:Lcom/miui/permcenter/detection/PrivacyRiskVideoView$a;

    return-void
.end method
