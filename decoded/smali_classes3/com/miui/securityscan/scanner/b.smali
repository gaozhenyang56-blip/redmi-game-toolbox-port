.class public Lcom/miui/securityscan/scanner/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lzf/g;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/miui/securityscan/scanner/a;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/scanner/b;->a:Ljava/util/Map;

    invoke-static {}, Lzf/g;->values()[Lzf/g;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/miui/securityscan/scanner/b;->a:Ljava/util/Map;

    new-instance v5, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v5}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 5

    invoke-static {}, Lzf/g;->values()[Lzf/g;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/miui/securityscan/scanner/b;->a:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/Collection;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected b(Lzf/g;)Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzf/g;",
            ")",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/miui/securityscan/scanner/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/securityscan/scanner/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/BlockingQueue;

    return-object p1
.end method

.method protected c(Lzf/g;Lcom/miui/securityscan/scanner/a;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1, p2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    return-void
.end method
