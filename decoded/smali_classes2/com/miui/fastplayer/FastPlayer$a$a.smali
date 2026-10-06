.class Lcom/miui/fastplayer/FastPlayer$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/fastplayer/FastPlayer$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/fastplayer/FastPlayer$a;


# direct methods
.method constructor <init>(Lcom/miui/fastplayer/FastPlayer$a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/fastplayer/FastPlayer$a$a;->a:Lcom/miui/fastplayer/FastPlayer$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/miui/fastplayer/FastPlayer$a$a;->a:Lcom/miui/fastplayer/FastPlayer$a;

    iget-object p1, p1, Lcom/miui/fastplayer/FastPlayer$a;->a:Lcom/miui/fastplayer/FastPlayer;

    invoke-static {p1}, Lcom/miui/fastplayer/FastPlayer;->access$700(Lcom/miui/fastplayer/FastPlayer;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object p1, p0, Lcom/miui/fastplayer/FastPlayer$a$a;->a:Lcom/miui/fastplayer/FastPlayer$a;

    iget-object p1, p1, Lcom/miui/fastplayer/FastPlayer$a;->a:Lcom/miui/fastplayer/FastPlayer;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/fastplayer/FastPlayer;->access$802(Lcom/miui/fastplayer/FastPlayer;Z)Z

    iget-object p1, p0, Lcom/miui/fastplayer/FastPlayer$a$a;->a:Lcom/miui/fastplayer/FastPlayer$a;

    iget-object p1, p1, Lcom/miui/fastplayer/FastPlayer$a;->a:Lcom/miui/fastplayer/FastPlayer;

    invoke-static {p1}, Lcom/miui/fastplayer/FastPlayer;->access$900(Lcom/miui/fastplayer/FastPlayer;)Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p1, p0, Lcom/miui/fastplayer/FastPlayer$a$a;->a:Lcom/miui/fastplayer/FastPlayer$a;

    iget-object p1, p1, Lcom/miui/fastplayer/FastPlayer$a;->a:Lcom/miui/fastplayer/FastPlayer;

    invoke-static {p1}, Lcom/miui/fastplayer/FastPlayer;->access$700(Lcom/miui/fastplayer/FastPlayer;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object p1, p0, Lcom/miui/fastplayer/FastPlayer$a$a;->a:Lcom/miui/fastplayer/FastPlayer$a;

    iget-object p1, p1, Lcom/miui/fastplayer/FastPlayer$a;->a:Lcom/miui/fastplayer/FastPlayer;

    invoke-static {p1}, Lcom/miui/fastplayer/FastPlayer;->access$700(Lcom/miui/fastplayer/FastPlayer;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_4
    iget-object v0, p0, Lcom/miui/fastplayer/FastPlayer$a$a;->a:Lcom/miui/fastplayer/FastPlayer$a;

    iget-object v0, v0, Lcom/miui/fastplayer/FastPlayer$a;->a:Lcom/miui/fastplayer/FastPlayer;

    invoke-static {v0}, Lcom/miui/fastplayer/FastPlayer;->access$700(Lcom/miui/fastplayer/FastPlayer;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method
