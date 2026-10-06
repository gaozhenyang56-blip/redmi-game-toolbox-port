.class Lmiuix/provision/ProvisionBaseFragment$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/provision/ProvisionBaseFragment;->w0(Landroid/view/Surface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmiuix/provision/ProvisionBaseFragment;


# direct methods
.method constructor <init>(Lmiuix/provision/ProvisionBaseFragment;)V
    .locals 0

    iput-object p1, p0, Lmiuix/provision/ProvisionBaseFragment$h;->a:Lmiuix/provision/ProvisionBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseFragment$h;->a:Lmiuix/provision/ProvisionBaseFragment;

    invoke-static {p1}, Lmiuix/provision/ProvisionBaseFragment;->f0(Lmiuix/provision/ProvisionBaseFragment;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseFragment$h;->a:Lmiuix/provision/ProvisionBaseFragment;

    invoke-static {p1}, Lmiuix/provision/ProvisionBaseFragment;->f0(Lmiuix/provision/ProvisionBaseFragment;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    :cond_0
    iget-object p1, p0, Lmiuix/provision/ProvisionBaseFragment$h;->a:Lmiuix/provision/ProvisionBaseFragment;

    iget-object p1, p1, Lmiuix/provision/ProvisionBaseFragment;->b:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method
