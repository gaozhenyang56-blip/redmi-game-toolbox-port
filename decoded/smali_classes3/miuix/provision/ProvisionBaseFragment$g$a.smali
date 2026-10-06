.class Lmiuix/provision/ProvisionBaseFragment$g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/provision/ProvisionBaseFragment$g;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmiuix/provision/ProvisionBaseFragment$g;


# direct methods
.method constructor <init>(Lmiuix/provision/ProvisionBaseFragment$g;)V
    .locals 0

    iput-object p1, p0, Lmiuix/provision/ProvisionBaseFragment$g$a;->a:Lmiuix/provision/ProvisionBaseFragment$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    iget-object v0, p0, Lmiuix/provision/ProvisionBaseFragment$g$a;->a:Lmiuix/provision/ProvisionBaseFragment$g;

    iget-object v0, v0, Lmiuix/provision/ProvisionBaseFragment$g;->a:Lmiuix/provision/ProvisionBaseFragment;

    iget-object v0, v0, Lmiuix/provision/ProvisionBaseFragment;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lmiuix/provision/ProvisionBaseFragment$g$a;->a:Lmiuix/provision/ProvisionBaseFragment$g;

    iget-object v0, v0, Lmiuix/provision/ProvisionBaseFragment$g;->a:Lmiuix/provision/ProvisionBaseFragment;

    invoke-static {v0}, Lmiuix/provision/ProvisionBaseFragment;->e0(Lmiuix/provision/ProvisionBaseFragment;)Landroid/view/TextureView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiuix/provision/ProvisionBaseFragment$g$a;->a:Lmiuix/provision/ProvisionBaseFragment$g;

    iget-object v0, v0, Lmiuix/provision/ProvisionBaseFragment$g;->a:Lmiuix/provision/ProvisionBaseFragment;

    invoke-static {v0}, Lmiuix/provision/ProvisionBaseFragment;->e0(Lmiuix/provision/ProvisionBaseFragment;)Landroid/view/TextureView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    :cond_2
    return-void
.end method
