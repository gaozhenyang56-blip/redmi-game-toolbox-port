.class Lmiuix/provision/ProvisionBaseActivity$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/provision/ProvisionBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmiuix/provision/ProvisionBaseActivity;


# direct methods
.method constructor <init>(Lmiuix/provision/ProvisionBaseActivity;)V
    .locals 0

    iput-object p1, p0, Lmiuix/provision/ProvisionBaseActivity$f;->a:Lmiuix/provision/ProvisionBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1    # Landroid/graphics/SurfaceTexture;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p2, "OobeUtil2"

    const-string p3, " Inner onSurfaceTextureAvailable "

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lmiuix/provision/ProvisionBaseActivity$f;->a:Lmiuix/provision/ProvisionBaseActivity;

    new-instance p3, Landroid/view/Surface;

    invoke-direct {p3, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-static {p2, p3}, Lmiuix/provision/ProvisionBaseActivity;->f0(Lmiuix/provision/ProvisionBaseActivity;Landroid/view/Surface;)V

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity$f;->a:Lmiuix/provision/ProvisionBaseActivity;

    invoke-static {p1}, Lmiuix/provision/ProvisionBaseActivity;->h0(Lmiuix/provision/ProvisionBaseActivity;)Landroid/media/MediaPlayer;

    move-result-object p1

    new-instance p2, Lmiuix/provision/ProvisionBaseActivity$f$a;

    invoke-direct {p2, p0}, Lmiuix/provision/ProvisionBaseActivity$f$a;-><init>(Lmiuix/provision/ProvisionBaseActivity$f;)V

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0
    .param p1    # Landroid/graphics/SurfaceTexture;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1    # Landroid/graphics/SurfaceTexture;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1    # Landroid/graphics/SurfaceTexture;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
