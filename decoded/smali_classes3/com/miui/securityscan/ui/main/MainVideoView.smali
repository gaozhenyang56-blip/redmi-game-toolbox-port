.class public Lcom/miui/securityscan/ui/main/MainVideoView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/miui/fastplayer/FastPlayer$FastPlayerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/securityscan/ui/main/MainVideoView$c;,
        Lcom/miui/securityscan/ui/main/MainVideoView$e;,
        Lcom/miui/securityscan/ui/main/MainVideoView$d;,
        Lcom/miui/securityscan/ui/main/MainVideoView$h;,
        Lcom/miui/securityscan/ui/main/MainVideoView$b;,
        Lcom/miui/securityscan/ui/main/MainVideoView$f;,
        Lcom/miui/securityscan/ui/main/MainVideoView$g;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MainVideoView"


# instance fields
.field private mBgBitmap:Landroid/graphics/Bitmap;

.field private mBgOptions:Landroid/graphics/BitmapFactory$Options;

.field private mBgView:Landroid/widget/ImageView;

.field private mFastPlayer:Lcom/miui/fastplayer/FastPlayer;

.field private mHandler:Landroid/os/Handler;

.field private mHueState:F

.field private mIsSurfaceDestroyed:Z

.field private mPlaybackState:I

.field private mPredictScanFinishListener:Lcom/miui/securityscan/ui/main/MainVideoView$c;

.field private mState:Lcom/miui/securityscan/ui/main/MainVideoView$e;

.field private mSurfaceListener:Lcom/miui/common/ui/VlcTextureView$a;

.field private mTextureView:Lcom/miui/common/ui/VlcTextureView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/MainVideoView;->mFastPlayer:Lcom/miui/fastplayer/FastPlayer;

    sget-object p1, Lcom/miui/securityscan/ui/main/MainVideoView$e;->b:Lcom/miui/securityscan/ui/main/MainVideoView$e;

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/MainVideoView;->mState:Lcom/miui/securityscan/ui/main/MainVideoView$e;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/MainVideoView;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/miui/securityscan/ui/main/MainVideoView$g;

    invoke-direct {p1, p0}, Lcom/miui/securityscan/ui/main/MainVideoView$g;-><init>(Lcom/miui/securityscan/ui/main/MainVideoView;)V

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/MainVideoView;->mSurfaceListener:Lcom/miui/common/ui/VlcTextureView$a;

    return-void
.end method

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

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/MainVideoView;->mFastPlayer:Lcom/miui/fastplayer/FastPlayer;

    sget-object p1, Lcom/miui/securityscan/ui/main/MainVideoView$e;->b:Lcom/miui/securityscan/ui/main/MainVideoView$e;

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/MainVideoView;->mState:Lcom/miui/securityscan/ui/main/MainVideoView$e;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/MainVideoView;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/miui/securityscan/ui/main/MainVideoView$g;

    invoke-direct {p1, p0}, Lcom/miui/securityscan/ui/main/MainVideoView$g;-><init>(Lcom/miui/securityscan/ui/main/MainVideoView;)V

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/MainVideoView;->mSurfaceListener:Lcom/miui/common/ui/VlcTextureView$a;

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

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/MainVideoView;->mFastPlayer:Lcom/miui/fastplayer/FastPlayer;

    sget-object p1, Lcom/miui/securityscan/ui/main/MainVideoView$e;->b:Lcom/miui/securityscan/ui/main/MainVideoView$e;

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/MainVideoView;->mState:Lcom/miui/securityscan/ui/main/MainVideoView$e;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/MainVideoView;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/miui/securityscan/ui/main/MainVideoView$g;

    invoke-direct {p1, p0}, Lcom/miui/securityscan/ui/main/MainVideoView$g;-><init>(Lcom/miui/securityscan/ui/main/MainVideoView;)V

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/MainVideoView;->mSurfaceListener:Lcom/miui/common/ui/VlcTextureView$a;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/securityscan/ui/main/MainVideoView;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/securityscan/ui/main/MainVideoView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/securityscan/ui/main/MainVideoView;)Lcom/miui/securityscan/ui/main/MainVideoView$e;
    .locals 0

    iget-object p0, p0, Lcom/miui/securityscan/ui/main/MainVideoView;->mState:Lcom/miui/securityscan/ui/main/MainVideoView$e;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/securityscan/ui/main/MainVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/securityscan/ui/main/MainVideoView;->mIsSurfaceDestroyed:Z

    return p0
.end method

.method static synthetic access$202(Lcom/miui/securityscan/ui/main/MainVideoView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/securityscan/ui/main/MainVideoView;->mIsSurfaceDestroyed:Z

    return p1
.end method

.method static synthetic access$302(Lcom/miui/securityscan/ui/main/MainVideoView;I)I
    .locals 0

    iput p1, p0, Lcom/miui/securityscan/ui/main/MainVideoView;->mPlaybackState:I

    return p1
.end method

.method static synthetic access$400(Lcom/miui/securityscan/ui/main/MainVideoView;)Lcom/miui/securityscan/ui/main/MainVideoView$c;
    .locals 0

    iget-object p0, p0, Lcom/miui/securityscan/ui/main/MainVideoView;->mPredictScanFinishListener:Lcom/miui/securityscan/ui/main/MainVideoView$c;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/securityscan/ui/main/MainVideoView;)Lcom/miui/common/ui/VlcTextureView;
    .locals 0

    iget-object p0, p0, Lcom/miui/securityscan/ui/main/MainVideoView;->mTextureView:Lcom/miui/common/ui/VlcTextureView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/securityscan/ui/main/MainVideoView;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/miui/securityscan/ui/main/MainVideoView;->mBgBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$602(Lcom/miui/securityscan/ui/main/MainVideoView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/MainVideoView;->mBgBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$700(Lcom/miui/securityscan/ui/main/MainVideoView;)Landroid/graphics/BitmapFactory$Options;
    .locals 0

    iget-object p0, p0, Lcom/miui/securityscan/ui/main/MainVideoView;->mBgOptions:Landroid/graphics/BitmapFactory$Options;

    return-object p0
.end method

.method static synthetic access$800(Lcom/miui/securityscan/ui/main/MainVideoView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/miui/securityscan/ui/main/MainVideoView;->mBgView:Landroid/widget/ImageView;

    return-object p0
.end method

.method private initPlayer()V
    .locals 4

    new-instance v0, Lcom/miui/fastplayer/FastPlayer;

    invoke-direct {v0}, Lcom/miui/fastplayer/FastPlayer;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/MainVideoView;->mFastPlayer:Lcom/miui/fastplayer/FastPlayer;

    :try_start_0
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

    const v1, 0x7f110018

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/MainVideoView;->mFastPlayer:Lcom/miui/fastplayer/FastPlayer;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/miui/fastplayer/FastPlayer;->addDataSource(Landroid/content/Context;Landroid/net/Uri;I)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainVideoView;->mFastPlayer:Lcom/miui/fastplayer/FastPlayer;

    invoke-virtual {v0, p0}, Lcom/miui/fastplayer/FastPlayer;->setCallback(Lcom/miui/fastplayer/FastPlayer$FastPlayerListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initPlayer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainVideoView"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainVideoView;->mTextureView:Lcom/miui/common/ui/VlcTextureView;

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/MainVideoView;->mFastPlayer:Lcom/miui/fastplayer/FastPlayer;

    invoke-virtual {v0, v1}, Lcom/miui/common/ui/VlcTextureView;->setPlayer(Lcom/miui/fastplayer/FastPlayer;)V

    return-void
.end method


# virtual methods
.method public drawFrame()V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainVideoView;->mTextureView:Lcom/miui/common/ui/VlcTextureView;

    invoke-virtual {v0}, Lcom/miui/common/ui/VlcTextureView;->b()V

    return-void
.end method

.method public hideBgView()V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainVideoView;->mTextureView:Lcom/miui/common/ui/VlcTextureView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainVideoView;->mBgView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainVideoView;->mBgView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainVideoView;->mBgView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainVideoView;->mPredictScanFinishListener:Lcom/miui/securityscan/ui/main/MainVideoView$c;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/miui/securityscan/ui/main/MainVideoView;->mPredictScanFinishListener:Lcom/miui/securityscan/ui/main/MainVideoView$c;

    :cond_0
    invoke-virtual {p0}, Lcom/miui/securityscan/ui/main/MainVideoView;->release()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0b0ba6

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/common/ui/VlcTextureView;

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/MainVideoView;->mTextureView:Lcom/miui/common/ui/VlcTextureView;

    const v0, 0x7f0b0173

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/MainVideoView;->mBgView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainVideoView;->mTextureView:Lcom/miui/common/ui/VlcTextureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-static {}, Lx4/t;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainVideoView;->mTextureView:Lcom/miui/common/ui/VlcTextureView;

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/MainVideoView;->mSurfaceListener:Lcom/miui/common/ui/VlcTextureView$a;

    invoke-virtual {v0, v1}, Lcom/miui/common/ui/VlcTextureView;->a(Lcom/miui/common/ui/VlcTextureView$a;)V

    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/MainVideoView;->mBgOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {}, Lx4/t;->h()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainVideoView;->mBgOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {}, Lx4/a0;->m()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_1
    invoke-direct {p0}, Lcom/miui/securityscan/ui/main/MainVideoView;->initPlayer()V

    return-void
.end method

.method public pausePlayVideo()V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainVideoView;->mFastPlayer:Lcom/miui/fastplayer/FastPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/miui/fastplayer/FastPlayer;->pause()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public playerModeChange(II)I
    .locals 0

    new-instance p2, Lcom/miui/securityscan/ui/main/MainVideoView$b;

    invoke-direct {p2, p0, p1}, Lcom/miui/securityscan/ui/main/MainVideoView$b;-><init>(Lcom/miui/securityscan/ui/main/MainVideoView;I)V

    invoke-virtual {p0, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    return p1
.end method

.method public recycleBitmap()V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainVideoView;->mBgBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainVideoView;->mBgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/miui/securityscan/ui/main/MainVideoView;->mFastPlayer:Lcom/miui/fastplayer/FastPlayer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/miui/fastplayer/FastPlayer;->release()V

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/MainVideoView;->mFastPlayer:Lcom/miui/fastplayer/FastPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    invoke-virtual {p0}, Lcom/miui/securityscan/ui/main/MainVideoView;->recycleBitmap()V

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/MainVideoView;->mTextureView:Lcom/miui/common/ui/VlcTextureView;

    invoke-virtual {v1}, Lcom/miui/common/ui/VlcTextureView;->d()V

    invoke-static {}, Lx4/t;->C()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/MainVideoView;->mTextureView:Lcom/miui/common/ui/VlcTextureView;

    iget-object v2, p0, Lcom/miui/securityscan/ui/main/MainVideoView;->mSurfaceListener:Lcom/miui/common/ui/VlcTextureView$a;

    invoke-virtual {v1, v2}, Lcom/miui/common/ui/VlcTextureView;->e(Lcom/miui/common/ui/VlcTextureView$a;)V

    :cond_1
    iget-object v1, p0, Lcom/miui/securityscan/ui/main/MainVideoView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public setPlaySpeed(F)V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainVideoView;->mFastPlayer:Lcom/miui/fastplayer/FastPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/miui/fastplayer/FastPlayer;->setPlayerSpeed(FI)I

    return-void
.end method

.method public setPredictScanFinishListener(Lcom/miui/securityscan/ui/main/MainVideoView$c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/MainVideoView;->mPredictScanFinishListener:Lcom/miui/securityscan/ui/main/MainVideoView$c;

    return-void
.end method

.method public setRenderState(F)V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainVideoView;->mTextureView:Lcom/miui/common/ui/VlcTextureView;

    invoke-virtual {v0, p1}, Lcom/miui/common/ui/VlcTextureView;->setRenderState(F)V

    iput p1, p0, Lcom/miui/securityscan/ui/main/MainVideoView;->mHueState:F

    return-void
.end method

.method public setRenderState(FF)V
    .locals 2

    iput p2, p0, Lcom/miui/securityscan/ui/main/MainVideoView;->mHueState:F

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/miui/securityscan/ui/main/MainVideoView$a;

    invoke-direct {p2, p0}, Lcom/miui/securityscan/ui/main/MainVideoView$a;-><init>(Lcom/miui/securityscan/ui/main/MainVideoView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public showBgView()V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainVideoView;->mBgView:Landroid/widget/ImageView;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainVideoView;->mBgView:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainVideoView;->mTextureView:Lcom/miui/common/ui/VlcTextureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public startPlayVideo()V
    .locals 3

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainVideoView;->mState:Lcom/miui/securityscan/ui/main/MainVideoView$e;

    sget-object v1, Lcom/miui/securityscan/ui/main/MainVideoView$e;->b:Lcom/miui/securityscan/ui/main/MainVideoView$e;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainVideoView;->mFastPlayer:Lcom/miui/fastplayer/FastPlayer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/fastplayer/FastPlayer;->setLoop(ZI)I

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainVideoView;->mFastPlayer:Lcom/miui/fastplayer/FastPlayer;

    invoke-virtual {v0}, Lcom/miui/fastplayer/FastPlayer;->start()I

    sget-object v0, Lcom/miui/securityscan/ui/main/MainVideoView$e;->a:Lcom/miui/securityscan/ui/main/MainVideoView$e;

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/MainVideoView;->mState:Lcom/miui/securityscan/ui/main/MainVideoView$e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MainVideoView"

    const-string v2, "start play error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public stopPlayVideo()V
    .locals 3

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainVideoView;->mState:Lcom/miui/securityscan/ui/main/MainVideoView$e;

    sget-object v1, Lcom/miui/securityscan/ui/main/MainVideoView$e;->a:Lcom/miui/securityscan/ui/main/MainVideoView$e;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainVideoView;->mFastPlayer:Lcom/miui/fastplayer/FastPlayer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v1}, Lcom/miui/fastplayer/FastPlayer;->setLoop(ZI)I

    sget-object v0, Lcom/miui/securityscan/ui/main/MainVideoView$e;->b:Lcom/miui/securityscan/ui/main/MainVideoView$e;

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/MainVideoView;->mState:Lcom/miui/securityscan/ui/main/MainVideoView$e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MainVideoView"

    const-string v2, "stop play error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public updateBackground()V
    .locals 3

    invoke-static {}, Lx4/t;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/securityscan/ui/main/MainVideoView;->mIsSurfaceDestroyed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainVideoView;->mState:Lcom/miui/securityscan/ui/main/MainVideoView$e;

    sget-object v1, Lcom/miui/securityscan/ui/main/MainVideoView$e;->a:Lcom/miui/securityscan/ui/main/MainVideoView$e;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainVideoView;->mBgView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060d09

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/miui/securityscan/ui/main/MainVideoView;->mHueState:F

    iget v1, p0, Lcom/miui/securityscan/ui/main/MainVideoView;->mPlaybackState:I

    invoke-virtual {p0, v0, v1}, Lcom/miui/securityscan/ui/main/MainVideoView;->updateBackground(FI)V

    :goto_0
    return-void
.end method

.method public updateBackground(FI)V
    .locals 1

    new-instance v0, Lcom/miui/securityscan/ui/main/MainVideoView$h;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/securityscan/ui/main/MainVideoView$h;-><init>(Lcom/miui/securityscan/ui/main/MainVideoView;FI)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method
