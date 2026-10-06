.class Lx5/p$h;
.super Landroid/media/AudioManager$AudioRecordingCallback;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x1f
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx5/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "h"
.end annotation


# instance fields
.field final synthetic a:Lx5/p;


# direct methods
.method private constructor <init>(Lx5/p;)V
    .locals 0

    iput-object p1, p0, Lx5/p$h;->a:Lx5/p;

    invoke-direct {p0}, Landroid/media/AudioManager$AudioRecordingCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lx5/p;Lx5/p$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lx5/p$h;-><init>(Lx5/p;)V

    return-void
.end method


# virtual methods
.method public onRecordingConfigChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/media/AudioManager$AudioRecordingCallback;->onRecordingConfigChanged(Ljava/util/List;)V

    iget-object v0, p0, Lx5/p$h;->a:Lx5/p;

    invoke-static {v0, p1}, Lx5/p;->g(Lx5/p;Ljava/util/List;)Z

    move-result p1

    invoke-static {v0, p1}, Lx5/p;->x(Lx5/p;Z)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onRecordingConfigChanged - update state : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lx5/p$h;->a:Lx5/p;

    invoke-static {v0}, Lx5/p;->w(Lx5/p;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ConversationManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lx5/p$h;->a:Lx5/p;

    invoke-static {p1}, Lx5/p;->w(Lx5/p;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lx5/p$h;->a:Lx5/p;

    invoke-static {p1}, Lx5/p;->h(Lx5/p;)V

    :cond_0
    return-void
.end method
