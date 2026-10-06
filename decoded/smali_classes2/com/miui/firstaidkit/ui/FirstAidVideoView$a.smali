.class Lcom/miui/firstaidkit/ui/FirstAidVideoView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/firstaidkit/ui/FirstAidVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:Landroid/view/Surface;

.field final synthetic b:Lcom/miui/firstaidkit/ui/FirstAidVideoView;


# direct methods
.method constructor <init>(Lcom/miui/firstaidkit/ui/FirstAidVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/firstaidkit/ui/FirstAidVideoView$a;->b:Lcom/miui/firstaidkit/ui/FirstAidVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/firstaidkit/ui/FirstAidVideoView$a;->a:Landroid/view/Surface;

    return-void
.end method

.method public static synthetic a(Lcom/miui/firstaidkit/ui/FirstAidVideoView$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/firstaidkit/ui/FirstAidVideoView$a;->b()V

    return-void
.end method

.method private synthetic b()V
    .locals 2

    iget-object v0, p0, Lcom/miui/firstaidkit/ui/FirstAidVideoView$a;->b:Lcom/miui/firstaidkit/ui/FirstAidVideoView;

    invoke-static {v0}, Lcom/miui/firstaidkit/ui/FirstAidVideoView;->d(Lcom/miui/firstaidkit/ui/FirstAidVideoView;)Lcom/miui/firstaidkit/ui/FirstAidVideoView$b;

    move-result-object v0

    sget-object v1, Lcom/miui/firstaidkit/ui/FirstAidVideoView$b;->a:Lcom/miui/firstaidkit/ui/FirstAidVideoView$b;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/firstaidkit/ui/FirstAidVideoView$a;->b:Lcom/miui/firstaidkit/ui/FirstAidVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/firstaidkit/ui/FirstAidVideoView;->h(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    new-instance p2, Landroid/view/Surface;

    invoke-direct {p2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p2, p0, Lcom/miui/firstaidkit/ui/FirstAidVideoView$a;->a:Landroid/view/Surface;

    iget-object p1, p0, Lcom/miui/firstaidkit/ui/FirstAidVideoView$a;->b:Lcom/miui/firstaidkit/ui/FirstAidVideoView;

    invoke-static {p1, p2}, Lcom/miui/firstaidkit/ui/FirstAidVideoView;->b(Lcom/miui/firstaidkit/ui/FirstAidVideoView;Landroid/view/Surface;)V

    iget-object p1, p0, Lcom/miui/firstaidkit/ui/FirstAidVideoView$a;->b:Lcom/miui/firstaidkit/ui/FirstAidVideoView;

    invoke-static {p1}, Lcom/miui/firstaidkit/ui/FirstAidVideoView;->c(Lcom/miui/firstaidkit/ui/FirstAidVideoView;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/miui/firstaidkit/ui/a;

    invoke-direct {p2, p0}, Lcom/miui/firstaidkit/ui/a;-><init>(Lcom/miui/firstaidkit/ui/FirstAidVideoView$a;)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    iget-object p1, p0, Lcom/miui/firstaidkit/ui/FirstAidVideoView$a;->a:Landroid/view/Surface;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/firstaidkit/ui/FirstAidVideoView$a;->a:Landroid/view/Surface;

    :cond_0
    iget-object p1, p0, Lcom/miui/firstaidkit/ui/FirstAidVideoView$a;->b:Lcom/miui/firstaidkit/ui/FirstAidVideoView;

    invoke-static {p1}, Lcom/miui/firstaidkit/ui/FirstAidVideoView;->d(Lcom/miui/firstaidkit/ui/FirstAidVideoView;)Lcom/miui/firstaidkit/ui/FirstAidVideoView$b;

    move-result-object p1

    sget-object v0, Lcom/miui/firstaidkit/ui/FirstAidVideoView$b;->a:Lcom/miui/firstaidkit/ui/FirstAidVideoView$b;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/miui/firstaidkit/ui/FirstAidVideoView$a;->b:Lcom/miui/firstaidkit/ui/FirstAidVideoView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/firstaidkit/ui/FirstAidVideoView;->h(Z)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
