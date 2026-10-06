.class public abstract Lzi/c6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzi/c6$a;
    }
.end annotation


# static fields
.field private static final r:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static s:Z


# instance fields
.field protected a:I

.field protected b:J

.field protected volatile c:J

.field protected volatile d:J

.field private e:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lzi/f6;",
            ">;"
        }
    .end annotation
.end field

.field protected final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lzi/h6;",
            "Lzi/c6$a;",
            ">;"
        }
    .end annotation
.end field

.field protected final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lzi/h6;",
            "Lzi/c6$a;",
            ">;"
        }
    .end annotation
.end field

.field protected i:Lzi/p6;

.field protected j:Ljava/lang/String;

.field protected k:Ljava/lang/String;

.field private l:I

.field protected final m:I

.field protected n:Lzi/d6;

.field protected o:Lcom/xiaomi/push/service/XMPushService;

.field private p:J

.field protected q:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lzi/c6;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    sput-boolean v1, Lzi/c6;->s:Z

    :try_start_0
    const-string v0, "smack.debugEnabled"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lzi/c6;->s:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-static {}, Lzi/i6;->c()Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lzi/d6;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lzi/c6;->a:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lzi/c6;->b:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lzi/c6;->c:J

    iput-wide v0, p0, Lzi/c6;->d:J

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lzi/c6;->e:Ljava/util/LinkedList;

    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lzi/c6;->f:Ljava/util/Collection;

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lzi/c6;->g:Ljava/util/Map;

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lzi/c6;->h:Ljava/util/Map;

    const/4 v2, 0x0

    iput-object v2, p0, Lzi/c6;->i:Lzi/p6;

    const-string v2, ""

    iput-object v2, p0, Lzi/c6;->j:Ljava/lang/String;

    iput-object v2, p0, Lzi/c6;->k:Ljava/lang/String;

    const/4 v2, 0x2

    iput v2, p0, Lzi/c6;->l:I

    sget-object v2, Lzi/c6;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    iput v2, p0, Lzi/c6;->m:I

    iput-wide v0, p0, Lzi/c6;->p:J

    iput-wide v0, p0, Lzi/c6;->q:J

    iput-object p2, p0, Lzi/c6;->n:Lzi/d6;

    iput-object p1, p0, Lzi/c6;->o:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {p0}, Lzi/c6;->u()V

    return-void
.end method

.method private d(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "connected"

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "connecting"

    return-object p1

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    const-string p1, "disconnected"

    return-object p1

    :cond_2
    const-string p1, "unknown"

    return-object p1
.end method

.method private g(I)V
    .locals 5

    iget-object v0, p0, Lzi/c6;->e:Ljava/util/LinkedList;

    monitor-enter v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    :try_start_0
    iget-object p1, p0, Lzi/c6;->e:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lzi/c6;->e:Ljava/util/LinkedList;

    new-instance v2, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lzi/c6;->e:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/4 v1, 0x6

    if-le p1, v1, :cond_1

    iget-object p1, p0, Lzi/c6;->e:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public abstract A(Z)V
.end method

.method public B()Z
    .locals 1

    iget v0, p0, Lzi/c6;->l:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized C()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lzi/c6;->p:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public D()Z
    .locals 2

    iget v0, p0, Lzi/c6;->l:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public E()V
    .locals 2

    iget-object v0, p0, Lzi/c6;->e:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lzi/c6;->e:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a()I
    .locals 1

    iget v0, p0, Lzi/c6;->a:I

    return v0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lzi/c6;->d:J

    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lzi/c6;->n:Lzi/d6;

    invoke-virtual {v0}, Lzi/d6;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lzi/h6;",
            "Lzi/c6$a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lzi/c6;->g:Ljava/util/Map;

    return-object v0
.end method

.method public f()Lzi/d6;
    .locals 1

    iget-object v0, p0, Lzi/c6;->n:Lzi/d6;

    return-object v0
.end method

.method public h(IILjava/lang/Exception;)V
    .locals 5

    iget v0, p0, Lzi/c6;->l:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v0, :cond_0

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {p0, v0}, Lzi/c6;->d(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-direct {p0, p1}, Lzi/c6;->d(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-static {p2}, Lcom/xiaomi/push/service/o0;->a(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    const-string v0, "update the connection status. %1$s -> %2$s : %3$s "

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lpi/c;->n(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lzi/c6;->o:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lzi/h0;->v(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lzi/c6;->g(I)V

    :cond_1
    const/16 v0, 0xa

    if-ne p1, v2, :cond_3

    iget-object p2, p0, Lzi/c6;->o:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {p2, v0}, Lcom/xiaomi/push/service/XMPushService;->a(I)V

    iget p2, p0, Lzi/c6;->l:I

    if-eqz p2, :cond_2

    const-string p2, "try set connected while not connecting."

    invoke-static {p2}, Lpi/c;->n(Ljava/lang/String;)V

    :cond_2
    iput p1, p0, Lzi/c6;->l:I

    iget-object p1, p0, Lzi/c6;->f:Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lzi/f6;

    invoke-interface {p2, p0}, Lzi/f6;->b(Lzi/c6;)V

    goto :goto_0

    :cond_3
    if-nez p1, :cond_5

    iget p2, p0, Lzi/c6;->l:I

    if-eq p2, v1, :cond_4

    const-string p2, "try set connecting while not disconnected."

    invoke-static {p2}, Lpi/c;->n(Ljava/lang/String;)V

    :cond_4
    iput p1, p0, Lzi/c6;->l:I

    iget-object p1, p0, Lzi/c6;->f:Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lzi/f6;

    invoke-interface {p2, p0}, Lzi/f6;->a(Lzi/c6;)V

    goto :goto_1

    :cond_5
    if-ne p1, v1, :cond_9

    iget-object v1, p0, Lzi/c6;->o:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/XMPushService;->a(I)V

    iget v0, p0, Lzi/c6;->l:I

    if-nez v0, :cond_7

    iget-object p2, p0, Lzi/c6;->f:Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzi/f6;

    if-nez p3, :cond_6

    new-instance v1, Ljava/util/concurrent/CancellationException;

    const-string v2, "disconnect while connecting"

    invoke-direct {v1, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    move-object v1, p3

    :goto_3
    invoke-interface {v0, p0, v1}, Lzi/f6;->a(Lzi/c6;Ljava/lang/Exception;)V

    goto :goto_2

    :cond_7
    if-ne v0, v2, :cond_8

    iget-object v0, p0, Lzi/c6;->f:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzi/f6;

    invoke-interface {v1, p0, p2, p3}, Lzi/f6;->a(Lzi/c6;ILjava/lang/Exception;)V

    goto :goto_4

    :cond_8
    iput p1, p0, Lzi/c6;->l:I

    :cond_9
    return-void
.end method

.method public abstract i(Lcom/xiaomi/push/service/k0$b;)V
.end method

.method public declared-synchronized j(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lzi/c6;->l:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setChallenge hash = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lzi/p0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lpi/c;->n(Ljava/lang/String;)V

    iput-object p1, p0, Lzi/c6;->j:Ljava/lang/String;

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v3, v0}, Lzi/c6;->h(IILjava/lang/Exception;)V

    goto :goto_0

    :cond_0
    const-string p1, "ignore setChallenge because connection was disconnected"

    invoke-static {p1}, Lpi/c;->n(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public abstract k(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public l(Lzi/f6;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lzi/c6;->f:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lzi/c6;->f:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public m(Lzi/h6;)V
    .locals 1

    iget-object v0, p0, Lzi/c6;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public n(Lzi/h6;Lzi/q6;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lzi/c6$a;

    invoke-direct {v0, p1, p2}, Lzi/c6$a;-><init>(Lzi/h6;Lzi/q6;)V

    iget-object p2, p0, Lzi/c6;->g:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Packet listener is null."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract o(Lzi/u6;)V
.end method

.method public abstract p([Lzi/r5;)V
.end method

.method public q()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized r(J)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lzi/c6;->p:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long p1, v0, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public s()I
    .locals 1

    iget v0, p0, Lzi/c6;->l:I

    return v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lzi/c6;->n:Lzi/d6;

    invoke-virtual {v0}, Lzi/d6;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected u()V
    .locals 6

    iget-object v0, p0, Lzi/c6;->n:Lzi/d6;

    invoke-virtual {v0}, Lzi/d6;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lzi/c6;->i:Lzi/p6;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "smack.debuggerClass"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_0

    :try_start_1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_1
    if-nez v0, :cond_1

    new-instance v0, Lzi/a6;

    invoke-direct {v0, p0}, Lzi/a6;-><init>(Lzi/c6;)V

    iput-object v0, p0, Lzi/c6;->i:Lzi/p6;

    goto :goto_2

    :cond_1
    const/4 v1, 0x3

    :try_start_2
    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Lzi/c6;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Ljava/io/Writer;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-class v5, Ljava/io/Reader;

    aput-object v5, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p0, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzi/p6;

    iput-object v0, p0, Lzi/c6;->i:Lzi/p6;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can\'t initialize the configured debugger!"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :goto_2
    return-void
.end method

.method public abstract v(ILjava/lang/Exception;)V
.end method

.method public abstract w(Lzi/r5;)V
.end method

.method public x(Lzi/f6;)V
    .locals 1

    iget-object v0, p0, Lzi/c6;->f:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public y(Lzi/h6;)V
    .locals 1

    iget-object v0, p0, Lzi/c6;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public z(Lzi/h6;Lzi/q6;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lzi/c6$a;

    invoke-direct {v0, p1, p2}, Lzi/c6$a;-><init>(Lzi/h6;Lzi/q6;)V

    iget-object p2, p0, Lzi/c6;->h:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Packet listener is null."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
