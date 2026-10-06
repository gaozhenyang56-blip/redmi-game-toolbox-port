.class Lx5/p$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x1f
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx5/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "i"
.end annotation


# instance fields
.field final synthetic a:Lx5/p;


# direct methods
.method constructor <init>(Lx5/p;)V
    .locals 0

    iput-object p1, p0, Lx5/p$i;->a:Lx5/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommunicationDeviceChanged(Landroid/media/AudioDeviceInfo;)V
    .locals 0
    .param p1    # Landroid/media/AudioDeviceInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lx5/p$i;->a:Lx5/p;

    invoke-virtual {p1}, Lx5/p;->o1()V

    return-void
.end method
