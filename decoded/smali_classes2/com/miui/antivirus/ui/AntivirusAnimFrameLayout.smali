.class public Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/miui/antivirus/ui/d;
.implements Lcom/miui/fastplayer/FastPlayer$FastPlayerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout$c;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AntiAnimFrameLayout"


# instance fields
.field private isLoopingStop:Z

.field private isReleasedPlayer:Z

.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mBgView:Landroid/view/View;

.field private mPlaybackState:I

.field private mPlayer:Lcom/miui/fastplayer/FastPlayer;

.field private mSurfaceListener:Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout$c;

.field private mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mVideo:Lcom/miui/common/ui/VlcTextureView;

.field private mVideoLayout:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

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

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout$a;

    invoke-direct {p1, p0}, Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout$a;-><init>(Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;)V

    iput-object p1, p0, Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance p1, Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout$c;

    invoke-direct {p1, p0}, Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout$c;-><init>(Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;)V

    iput-object p1, p0, Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;->mSurfaceListener:Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout$c;

    invoke-direct {p0}, Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;->createPlayer()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;)Lcom/miui/common/ui/VlcTextureView;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;->mVideo:Lcom/miui/common/ui/VlcTextureView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;)Lcom/miui/fastplayer/FastPlayer;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;->mPlayer:Lcom/miui/fastplayer/FastPlayer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;)I
    .locals 0

    iget p0, p0, Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;->mPlaybackState:I

    return p0
.end method

.method static synthetic access$300(Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;->updateBgView(Z)V

    return-void
.end method

.method private createPlayer()V
    .locals 1

    new-instance v0, Lcom/miui/fastplayer/FastPlayer;

    invoke-direct {v0}, Lcom/miui/fastplayer/FastPlayer;-><init>()V

    iput-object v0, p0, Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;->mPlayer:Lcom/miui/fastplayer/FastPlayer;

    return-void
.end method

.method private playVideo()V
    .locals 5

    const-string v0, "/"

    const-string v1, "android.resource://"

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v3, 0x7f110000

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f110001

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;->mPlayer:Lcom/miui/fastplayer/FastPlayer;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4}, Lcom/miui/fastplayer/FastPlayer;->addDataSource(Landroid/content/Context;Landroid/net/Uri;I)V

    iget-object v1, p0, Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;->mPlayer:Lcom/miui/fastplayer/FastPlayer;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/miui/fastplayer/FastPlayer;->addDataSource(Landroid/content/Context;Landroid/net/Uri;I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;->mPlayer:Lcom/miui/fastplayer/FastPlayer;

    invoke-virtual {v0, v4, v4}, Lcom/miui/fastplayer/FastPlayer;->setLoop(ZI)I

    iget-object v0, p0, Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;->mPlayer:Lcom/miui/fastplayer/FastPlayer;

    invoke-virtual {v0, v3, v3}, Lcom/miui/fastplayer/FastPlayer;->setLoop(ZI)I

    iget-object v0, p0, Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;->mPlayer:Lcom/miui/fastplayer/FastPlayer;

    invoke-virtual {v0, p0}, Lcom/miui/fastplayer/FastPlayer;->setCallback(Lcom/miui/fastplayer/FastPlayer$FastPlayerListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AntiAnimFrameLayout"

    const-string v2, "play video exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private updateBgView(Z)V
    .locals 4

    invoke-static {}, Lx4/t;->C()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;->mPlayer:Lcom/miui/fastplayer/FastPlayer;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;->mPlaybackState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;->mBgView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060d09

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    iget-object v0, p0, Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;->mBgView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;->mVideo:Lcom/miui/common/ui/VlcTextureView;

    if-eqz p1, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public adjustAnimMarginTop(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;->mVideoLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object p1, p0, Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;->mVideoLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public dismiss()V
    .locals 3

    iget-object v0, p0, Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;->mVideoLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual {p0}, Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;->stopAnimAndRelease()V

    return-void
.end method

.method public getScale()F
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;->mVideo:Lcom/miui/common/ui/VlcTextureView;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    return v0
.end method

.method public init()V
    .locals 2

    const v0, 0x7f0b00ce

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/common/ui/VlcTextureView;

    iput-object v0, p0, Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;->mVideo:Lcom/miui/common/ui/VlcTextureView;

    const v0, 0x7f0b0d74

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;->mVideoLayout:Landroid/widget/FrameLayout;

    const v0, 0x7f0b0173

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;->mBgView:Landroid/view/View;

    invoke-static {}, Lx4/t;->C()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;->mBgView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;->mVideo:Lcom/miui/common/ui/VlcTextureView;

    iget-object v1, p0, Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;->mSurfaceListener:Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout$c;

    invoke-virtual {v0, v1}, Lcom/miui/common/ui/VlcTextureView;->a(Lcom/miui/common/ui/VlcTextureView$a;)V

    :goto_0
    iget-object v0, p0, Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;->mVideo:Lcom/miui/common/ui/VlcTextureView;

    iget-object v1, p0, Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;->mPlayer:Lcom/miui/fastplayer/FastPlayer;

    invoke-virtual {v0, v1}, Lcom/miui/common/ui/VlcTextureView;->setPlayer(Lcom/miui/fastplayer/FastPlayer;)V

    return-void
.end method

.method public playerModeChange(II)I
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iput p1, p0, Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;->mPlaybackState:I

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public scale(F)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;->mVideo:Lcom/miui/common/ui/VlcTextureView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;->mVideo:Lcom/miui/common/ui/VlcTextureView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public setLoopingStop(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;->isLoopingStop:Z

    return-void
.end method

.method public startAnim()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;->playVideo()V

    return-void
.end method

.method public stopAnimAndRelease()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;->isReleasedPlayer:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;->mPlayer:Lcom/miui/fastplayer/FastPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/fastplayer/FastPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;->mPlayer:Lcom/miui/fastplayer/FastPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    iget-object v0, p0, Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;->mVideo:Lcom/miui/common/ui/VlcTextureView;

    invoke-virtual {v0}, Lcom/miui/common/ui/VlcTextureView;->d()V

    invoke-static {}, Lx4/t;->C()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;->mVideo:Lcom/miui/common/ui/VlcTextureView;

    iget-object v1, p0, Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;->mSurfaceListener:Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout$c;

    invoke-virtual {v0, v1}, Lcom/miui/common/ui/VlcTextureView;->e(Lcom/miui/common/ui/VlcTextureView$a;)V

    :cond_2
    iget-object v0, p0, Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;->isReleasedPlayer:Z

    return-void
.end method

.method public updateSecurityStatus(Lw2/r;)V
    .locals 2

    sget-object v0, Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, v0, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
