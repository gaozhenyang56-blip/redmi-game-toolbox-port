.class public Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/networkassistant/ui/thread/DynamicThreadPool$Worker;
    }
.end annotation


# static fields
.field private static LOGV:Z = false

.field private static TAG:Ljava/lang/String; = "DynamicThreadPool"

.field private static poolCount:I


# instance fields
.field private final maxThreads:I

.field private final minThreads:I

.field private poolID:I

.field private final priority:I

.field private final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private volatile running:Z

.field private threadCount:I

.field private final threads:[Ljava/lang/Thread;

.field private final threshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/Queue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;-><init>(Ljava/util/Queue;II)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Queue;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;II)V"
        }
    .end annotation

    const/16 v0, 0x32

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;-><init>(Ljava/util/Queue;III)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Queue;III)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;III)V"
        }
    .end annotation

    const/4 v5, 0x3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;-><init>(Ljava/util/Queue;IIII)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Queue;IIII)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;IIII)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;->poolID:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;->running:Z

    iput-object p1, p0, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;->queue:Ljava/util/Queue;

    iput p2, p0, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;->minThreads:I

    iput p3, p0, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;->maxThreads:I

    iput p4, p0, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;->threshold:I

    iput p5, p0, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;->priority:I

    sget p1, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;->poolCount:I

    iput p1, p0, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;->poolID:I

    add-int/2addr p1, v1

    sput p1, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;->poolCount:I

    new-array p1, p3, [Ljava/lang/Thread;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;->threads:[Ljava/lang/Thread;

    :goto_0
    iget p1, p0, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;->minThreads:I

    if-ge v0, p1, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;->threads:[Ljava/lang/Thread;

    new-instance p2, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool$Worker;

    iget p3, p0, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;->poolID:I

    iget p4, p0, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;->priority:I

    invoke-direct {p2, p0, p3, v0, p4}, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool$Worker;-><init>(Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;III)V

    aput-object p2, p1, v0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;->threads:[Ljava/lang/Thread;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;->threadCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;->running:Z

    return p0
.end method

.method static synthetic access$100(Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;)Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;->queue:Ljava/util/Queue;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;)I
    .locals 0

    iget p0, p0, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;->threadCount:I

    return p0
.end method

.method static synthetic access$210(Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;)I
    .locals 2

    iget v0, p0, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;->threadCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;->threadCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;)I
    .locals 0

    iget p0, p0, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;->minThreads:I

    return p0
.end method

.method static synthetic access$400(Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;)[Ljava/lang/Thread;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;->threads:[Ljava/lang/Thread;

    return-object p0
.end method


# virtual methods
.method public activeThreads()I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;->threads:[Ljava/lang/Thread;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;->queue:Ljava/util/Queue;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;->threadCount:I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;->queue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    iget v2, p0, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;->threshold:I

    if-lt v1, v2, :cond_2

    :cond_1
    iget v1, p0, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;->threadCount:I

    iget v2, p0, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;->maxThreads:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;->threads:[Ljava/lang/Thread;

    new-instance v3, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool$Worker;

    iget v4, p0, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;->poolID:I

    iget v5, p0, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;->threadCount:I

    iget v6, p0, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;->priority:I

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool$Worker;-><init>(Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;III)V

    aput-object v3, v2, v1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;->threads:[Ljava/lang/Thread;

    iget v2, p0, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;->threadCount:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    iget v1, p0, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;->threadCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;->threadCount:I

    :cond_2
    iget-object v1, p0, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;->queue:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;->queue:Ljava/util/Queue;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public shutdown()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;->running:Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;->queue:Ljava/util/Queue;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;->queue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/thread/DynamicThreadPool;->queue:Ljava/util/Queue;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
