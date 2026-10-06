.class Lcom/miui/networkassistant/ui/thread/DynamicThreadPool$Worker;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Worker"
.end annotation


# instance fields
.field private final index:I

.field private final priority:I

.field private final tag:I

.field final synthetic this$0:Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;


# direct methods
.method public constructor <init>(Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;III)V
    .locals 1

    iput-object p1, p0, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool$Worker;->this$0:Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "worker-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput p3, p0, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool$Worker;->index:I

    iput p2, p0, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool$Worker;->tag:I

    iput p4, p0, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool$Worker;->priority:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget v1, p0, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool$Worker;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool$Worker;->this$0:Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;->access$000(Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool$Worker;->this$0:Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;->access$100(Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;)Ljava/util/Queue;

    move-result-object v0

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool$Worker;->this$0:Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;->access$100(Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool$Worker;->this$0:Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;->access$100(Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Runnable;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool$Worker;->this$0:Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;->access$200(Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;)I

    move-result v1

    iget-object v3, p0, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool$Worker;->this$0:Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;

    invoke-static {v3}, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;->access$300(Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;)I

    move-result v3

    if-le v1, v3, :cond_2

    iget-object v1, p0, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool$Worker;->this$0:Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;->access$400(Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;)[Ljava/lang/Thread;

    move-result-object v1

    iget v3, p0, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool$Worker;->index:I

    iget-object v4, p0, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool$Worker;->this$0:Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;

    invoke-static {v4}, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;->access$400(Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;)[Ljava/lang/Thread;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool$Worker;->this$0:Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;

    invoke-static {v5}, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;->access$200(Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    aput-object v4, v1, v3

    iget-object v1, p0, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool$Worker;->this$0:Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;->access$400(Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;)[Ljava/lang/Thread;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool$Worker;->this$0:Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;

    invoke-static {v3}, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;->access$200(Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aput-object v2, v1, v3

    iget-object v1, p0, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool$Worker;->this$0:Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;->access$210(Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;)I

    iget-object v1, p0, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool$Worker;->this$0:Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;->access$100(Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;)Ljava/util/Queue;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool$Worker;->this$0:Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;->access$100(Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;)Ljava/util/Queue;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_0
    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    :cond_3
    :goto_2
    return-void
.end method
