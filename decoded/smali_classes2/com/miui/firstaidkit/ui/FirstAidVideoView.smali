.class public Lcom/miui/firstaidkit/ui/FirstAidVideoView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/miui/common/ui/a$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/firstaidkit/ui/FirstAidVideoView$b;
    }
.end annotation


# instance fields
.field private a:Landroid/view/TextureView;

.field private b:Landroid/view/View;

.field private c:Lcom/miui/fastplayer/FastPlayer;

.field private d:Lcom/miui/firstaidkit/ui/FirstAidVideoView$b;

.field private final e:Landroid/os/Handler;

.field private f:Z

.field private g:Lcom/miui/common/ui/a$c;

.field private final h:Landroid/view/TextureView$SurfaceTextureListener;


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

    sget-object p1, Lcom/miui/firstaidkit/ui/FirstAidVideoView$b;->b:Lcom/miui/firstaidkit/ui/FirstAidVideoView$b;

    iput-object p1, p0, Lcom/miui/firstaidkit/ui/FirstAidVideoView;->d:Lcom/miui/firstaidkit/ui/FirstAidVideoView$b;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/miui/firstaidkit/ui/FirstAidVideoView;->e:Landroid/os/Handler;

    new-instance p1, Lcom/miui/firstaidkit/ui/FirstAidVideoView$a;

    invoke-direct {p1, p0}, Lcom/miui/firstaidkit/ui/FirstAidVideoView$a;-><init>(Lcom/miui/firstaidkit/ui/FirstAidVideoView;)V

    iput-object p1, p0, Lcom/miui/firstaidkit/ui/FirstAidVideoView;->h:Landroid/view/TextureView$SurfaceTextureListener;

    return-void
.end method

.method static synthetic b(Lcom/miui/firstaidkit/ui/FirstAidVideoView;Landroid/view/Surface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/firstaidkit/ui/FirstAidVideoView;->e(Landroid/view/Surface;)V

    return-void
.end method

.method static synthetic c(Lcom/miui/firstaidkit/ui/FirstAidVideoView;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/firstaidkit/ui/FirstAidVideoView;->e:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic d(Lcom/miui/firstaidkit/ui/FirstAidVideoView;)Lcom/miui/firstaidkit/ui/FirstAidVideoView$b;
    .locals 0

    iget-object p0, p0, Lcom/miui/firstaidkit/ui/FirstAidVideoView;->d:Lcom/miui/firstaidkit/ui/FirstAidVideoView$b;

    return-object p0
.end method

.method private e(Landroid/view/Surface;)V
    .locals 4

    new-instance v0, Lcom/miui/fastplayer/FastPlayer;

    invoke-direct {v0}, Lcom/miui/fastplayer/FastPlayer;-><init>()V

    iput-object v0, p0, Lcom/miui/firstaidkit/ui/FirstAidVideoView;->c:Lcom/miui/fastplayer/FastPlayer;

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/miui/firstaidkit/ui/FirstAidVideoView;->getDataSourceUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/fastplayer/FastPlayer;->addDataSource(Landroid/content/Context;Landroid/net/Uri;I)V

    iget-object v0, p0, Lcom/miui/firstaidkit/ui/FirstAidVideoView;->c:Lcom/miui/fastplayer/FastPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/miui/fastplayer/FastPlayer;->setLoop(ZI)I

    iget-object v0, p0, Lcom/miui/firstaidkit/ui/FirstAidVideoView;->c:Lcom/miui/fastplayer/FastPlayer;

    invoke-virtual {v0, p1}, Lcom/miui/fastplayer/FastPlayer;->setSurface(Landroid/view/Surface;)I

    invoke-direct {p0}, Lcom/miui/firstaidkit/ui/FirstAidVideoView;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FirstAidVideoView"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lcom/miui/firstaidkit/ui/FirstAidVideoView;->d:Lcom/miui/firstaidkit/ui/FirstAidVideoView$b;

    sget-object v1, Lcom/miui/firstaidkit/ui/FirstAidVideoView$b;->b:Lcom/miui/firstaidkit/ui/FirstAidVideoView$b;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/firstaidkit/ui/FirstAidVideoView;->c:Lcom/miui/fastplayer/FastPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/fastplayer/FastPlayer;->start()I

    :cond_1
    sget-object v0, Lcom/miui/firstaidkit/ui/FirstAidVideoView$b;->a:Lcom/miui/firstaidkit/ui/FirstAidVideoView$b;

    iput-object v0, p0, Lcom/miui/firstaidkit/ui/FirstAidVideoView;->d:Lcom/miui/firstaidkit/ui/FirstAidVideoView$b;

    return-void
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/miui/firstaidkit/ui/FirstAidVideoView;->d:Lcom/miui/firstaidkit/ui/FirstAidVideoView$b;

    sget-object v1, Lcom/miui/firstaidkit/ui/FirstAidVideoView$b;->a:Lcom/miui/firstaidkit/ui/FirstAidVideoView$b;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/firstaidkit/ui/FirstAidVideoView;->c:Lcom/miui/fastplayer/FastPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/fastplayer/FastPlayer;->pause()I

    :cond_1
    sget-object v0, Lcom/miui/firstaidkit/ui/FirstAidVideoView$b;->b:Lcom/miui/firstaidkit/ui/FirstAidVideoView$b;

    iput-object v0, p0, Lcom/miui/firstaidkit/ui/FirstAidVideoView;->d:Lcom/miui/firstaidkit/ui/FirstAidVideoView$b;

    return-void
.end method

.method private getDataSourceUri()Landroid/net/Uri;
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

    const v1, 0x7f110006

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/firstaidkit/ui/FirstAidVideoView;->g()V

    iget-object v0, p0, Lcom/miui/firstaidkit/ui/FirstAidVideoView;->g:Lcom/miui/common/ui/a$c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/miui/common/ui/a$c;->a()V

    :cond_0
    return-void
.end method

.method public h(Z)V
    .locals 4

    invoke-static {}, Lx4/t;->C()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/firstaidkit/ui/FirstAidVideoView;->d:Lcom/miui/firstaidkit/ui/FirstAidVideoView$b;

    sget-object v1, Lcom/miui/firstaidkit/ui/FirstAidVideoView$b;->a:Lcom/miui/firstaidkit/ui/FirstAidVideoView$b;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/firstaidkit/ui/FirstAidVideoView;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060d09

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    iget-object v0, p0, Lcom/miui/firstaidkit/ui/FirstAidVideoView;->b:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/miui/firstaidkit/ui/FirstAidVideoView;->a:Landroid/view/TextureView;

    if-eqz p1, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/miui/firstaidkit/ui/FirstAidVideoView;->release()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0b0ba6

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    iput-object v0, p0, Lcom/miui/firstaidkit/ui/FirstAidVideoView;->a:Landroid/view/TextureView;

    const v0, 0x7f0b0173

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/firstaidkit/ui/FirstAidVideoView;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/firstaidkit/ui/FirstAidVideoView;->a:Landroid/view/TextureView;

    iget-object v1, p0, Lcom/miui/firstaidkit/ui/FirstAidVideoView;->h:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    invoke-static {}, Lx4/t;->C()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/firstaidkit/ui/FirstAidVideoView;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/firstaidkit/ui/FirstAidVideoView;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/firstaidkit/ui/FirstAidVideoView;->c:Lcom/miui/fastplayer/FastPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/fastplayer/FastPlayer;->pause()I

    iget-object v0, p0, Lcom/miui/firstaidkit/ui/FirstAidVideoView;->c:Lcom/miui/fastplayer/FastPlayer;

    invoke-virtual {v0}, Lcom/miui/fastplayer/FastPlayer;->release()V

    iput-object v1, p0, Lcom/miui/firstaidkit/ui/FirstAidVideoView;->c:Lcom/miui/fastplayer/FastPlayer;

    :cond_1
    iget-object v0, p0, Lcom/miui/firstaidkit/ui/FirstAidVideoView;->a:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iget-object v0, p0, Lcom/miui/firstaidkit/ui/FirstAidVideoView;->e:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/firstaidkit/ui/FirstAidVideoView;->f:Z

    return-void
.end method

.method public setOnAnimOverListener(Lcom/miui/common/ui/a$c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/firstaidkit/ui/FirstAidVideoView;->g:Lcom/miui/common/ui/a$c;

    return-void
.end method

.method public startAnim()V
    .locals 0

    return-void
.end method
