.class Lx5/p$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnModeChangedListener;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x1f
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx5/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation


# instance fields
.field final synthetic a:Lx5/p;


# direct methods
.method constructor <init>(Lx5/p;)V
    .locals 0

    iput-object p1, p0, Lx5/p$g;->a:Lx5/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onModeChanged(I)V
    .locals 3

    iget-object v0, p0, Lx5/p$g;->a:Lx5/p;

    invoke-static {v0}, Lx5/p;->r(Lx5/p;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lx5/p$g;->a:Lx5/p;

    invoke-static {v1, p1}, Lx5/p;->s(Lx5/p;I)I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "ConversationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onModeChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    iget-object p1, p0, Lx5/p$g;->a:Lx5/p;

    invoke-static {p1}, Lx5/p;->t(Lx5/p;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lx5/p$g;->a:Lx5/p;

    invoke-static {p1}, Lx5/p;->u(Lx5/p;)V

    iget-object p1, p0, Lx5/p$g;->a:Lx5/p;

    invoke-static {p1}, Lx5/p;->v(Lx5/p;)V

    const-string p1, "ConversationManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "after onModeChange mIsCurrentAtCommunicationState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lx5/p$g;->a:Lx5/p;

    invoke-static {v1}, Lx5/p;->w(Lx5/p;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
