.class Lcom/miui/networkassistant/service/wrapper/TmBinderCacher$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher$1;->this$0:Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    const-string v0, "TmBinderCacher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher$1;->this$0:Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;

    invoke-static {v0}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->access$000(Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher$1;->this$0:Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;

    invoke-static {v1, p1}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->access$102(Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    iget-object p1, p0, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher$1;->this$0:Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;

    invoke-static {p1, p2}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->access$202(Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;Landroid/os/IBinder;)Landroid/os/IBinder;

    iget-object p1, p0, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher$1;->this$0:Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;

    invoke-static {p1}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->access$300(Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;)Ljava/util/ArrayList;

    move-result-object p1

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p2, p0, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher$1;->this$0:Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;

    invoke-static {p2}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->access$300(Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ServiceConnection;

    iget-object v2, p0, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher$1;->this$0:Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;

    invoke-static {v2}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->access$100(Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;)Landroid/content/ComponentName;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher$1;->this$0:Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;

    invoke-static {v3}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->access$200(Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;)Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_0

    :cond_0
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception p2

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p2

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const-string v0, "TmBinderCacher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher$1;->this$0:Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;

    invoke-static {p1}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->access$000(Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher$1;->this$0:Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;

    invoke-static {v0}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->access$400(Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
