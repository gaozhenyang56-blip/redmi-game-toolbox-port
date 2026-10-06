.class Lcom/miui/firstaidkit/a$f;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/firstaidkit/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# instance fields
.field private a:Lp5/b;

.field private b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/miui/securityscan/scanner/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Random;

.field private final d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/firstaidkit/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/firstaidkit/a;Lp5/b;Ljava/util/concurrent/BlockingQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/firstaidkit/a;",
            "Lp5/b;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/miui/securityscan/scanner/a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/firstaidkit/a$f;->d:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/miui/firstaidkit/a$f;->a:Lp5/b;

    iput-object p3, p0, Lcom/miui/firstaidkit/a$f;->b:Ljava/util/concurrent/BlockingQueue;

    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcom/miui/firstaidkit/a$f;->c:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "FetchEntryTask"

    iget-object v1, p0, Lcom/miui/firstaidkit/a$f;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/firstaidkit/a;

    if-nez v1, :cond_0

    return-void

    :cond_0
    :goto_0
    :try_start_0
    invoke-static {v1}, Lcom/miui/firstaidkit/a;->a(Lcom/miui/firstaidkit/a;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/miui/firstaidkit/a$f;->b:Ljava/util/concurrent/BlockingQueue;

    if-eqz v2, :cond_0

    const-wide/16 v3, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/securityscan/scanner/a;

    if-eqz v2, :cond_3

    iget-object v3, v2, Lcom/miui/securityscan/scanner/a;->d:Lcom/miui/securityscan/scanner/k$n;

    sget-object v4, Lcom/miui/securityscan/scanner/k$n;->b:Lcom/miui/securityscan/scanner/k$n;

    const-wide/16 v5, 0xc8

    if-ne v3, v4, :cond_1

    iget-object v1, p0, Lcom/miui/firstaidkit/a$f;->c:Ljava/util/Random;

    const/16 v3, 0x1f4

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-long v3, v1

    add-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    iget-object v1, p0, Lcom/miui/firstaidkit/a$f;->a:Lp5/b;

    if-eqz v1, :cond_4

    invoke-virtual {v2}, Lcom/miui/securityscan/scanner/a;->a()I

    move-result v2

    invoke-interface {v1, v2}, Lp5/b;->b(I)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/miui/firstaidkit/a$f;->a:Lp5/b;

    if-eqz v3, :cond_2

    invoke-interface {v3, v2}, Lp5/b;->a(Lcom/miui/securityscan/scanner/a;)V

    :cond_2
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    :cond_3
    const-string v1, "FetchEntryTask blockingQueue poll timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/firstaidkit/a$f;->a:Lp5/b;

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lp5/b;->b(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "FetchEntryTask InterruptedException"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/firstaidkit/a$f;->b:Ljava/util/concurrent/BlockingQueue;

    iput-object v0, p0, Lcom/miui/firstaidkit/a$f;->a:Lp5/b;

    return-void
.end method
