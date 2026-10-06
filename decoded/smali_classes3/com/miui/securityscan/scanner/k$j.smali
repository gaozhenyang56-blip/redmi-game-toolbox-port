.class Lcom/miui/securityscan/scanner/k$j;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/securityscan/scanner/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "j"
.end annotation


# instance fields
.field private a:Lcom/miui/securityscan/scanner/k$l;

.field private b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/miui/securityscan/scanner/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Lzf/d;

.field private e:Ljava/lang/String;

.field final synthetic f:Lcom/miui/securityscan/scanner/k;


# direct methods
.method public constructor <init>(Lcom/miui/securityscan/scanner/k;Ljava/lang/String;Lcom/miui/securityscan/scanner/k$l;Ljava/util/concurrent/BlockingQueue;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/miui/securityscan/scanner/k$l;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/miui/securityscan/scanner/a;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/miui/securityscan/scanner/k$j;-><init>(Lcom/miui/securityscan/scanner/k;Ljava/lang/String;Lcom/miui/securityscan/scanner/k$l;Ljava/util/concurrent/BlockingQueue;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/securityscan/scanner/k;Ljava/lang/String;Lcom/miui/securityscan/scanner/k$l;Ljava/util/concurrent/BlockingQueue;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/miui/securityscan/scanner/k$l;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/miui/securityscan/scanner/a;",
            ">;Z)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/securityscan/scanner/k$j;->f:Lcom/miui/securityscan/scanner/k;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/miui/securityscan/scanner/k$j;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/securityscan/scanner/k$j;->a:Lcom/miui/securityscan/scanner/k$l;

    iput-object p4, p0, Lcom/miui/securityscan/scanner/k$j;->b:Ljava/util/concurrent/BlockingQueue;

    iput-boolean p5, p0, Lcom/miui/securityscan/scanner/k$j;->c:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "FetchEntryTask blockingQueue == null ? : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/miui/securityscan/scanner/k$j;->b:Ljava/util/concurrent/BlockingQueue;

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SecurityManager"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public a(Lzf/d;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/scanner/k$j;->d:Lzf/d;

    return-void
.end method

.method public run()V
    .locals 5

    const-string v0, "SecurityManager"

    :try_start_0
    iget-object v1, p0, Lcom/miui/securityscan/scanner/k$j;->a:Lcom/miui/securityscan/scanner/k$l;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/miui/securityscan/scanner/k$l;->d()V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/miui/securityscan/scanner/k$j;->f:Lcom/miui/securityscan/scanner/k;

    invoke-static {v1}, Lcom/miui/securityscan/scanner/k;->a(Lcom/miui/securityscan/scanner/k;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/miui/securityscan/scanner/k$j;->b:Ljava/util/concurrent/BlockingQueue;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/securityscan/scanner/k$j;->f:Lcom/miui/securityscan/scanner/k;

    invoke-static {v1}, Lcom/miui/securityscan/scanner/k;->b(Lcom/miui/securityscan/scanner/k;)Lo4/a;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/securityscan/scanner/k$j;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lo4/a;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/securityscan/scanner/k$j;->a:Lcom/miui/securityscan/scanner/k$l;

    if-eqz v1, :cond_1

    :goto_1
    invoke-interface {v1}, Lcom/miui/securityscan/scanner/k$l;->h()V

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/miui/securityscan/scanner/k$j;->b:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v2, 0xa

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/securityscan/scanner/a;

    if-eqz v1, :cond_5

    iget-object v2, v1, Lcom/miui/securityscan/scanner/a;->d:Lcom/miui/securityscan/scanner/k$n;

    sget-object v3, Lcom/miui/securityscan/scanner/k$n;->b:Lcom/miui/securityscan/scanner/k$n;

    if-ne v2, v3, :cond_2

    iget-object v1, p0, Lcom/miui/securityscan/scanner/k$j;->a:Lcom/miui/securityscan/scanner/k$l;

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/miui/securityscan/scanner/k$j;->a:Lcom/miui/securityscan/scanner/k$l;

    if-eqz v2, :cond_3

    invoke-interface {v2, v1}, Lcom/miui/securityscan/scanner/k$l;->a(Lcom/miui/securityscan/scanner/a;)V

    :cond_3
    iget-boolean v2, p0, Lcom/miui/securityscan/scanner/k$j;->c:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/securityscan/scanner/k$j;->d:Lzf/d;

    sget-object v3, Lzf/d;->c:Lzf/d;

    if-ne v2, v3, :cond_4

    const-wide/16 v1, 0x1f4

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    :cond_4
    sget-object v3, Lzf/d;->e:Lzf/d;

    if-ne v2, v3, :cond_0

    iget v1, v1, Lcom/miui/securityscan/scanner/a;->b:I

    if-eqz v1, :cond_0

    const/16 v2, 0x7d0

    div-int/2addr v2, v1

    add-int/lit8 v2, v2, 0xa

    int-to-long v1, v2

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    :cond_5
    const-string v1, "FetchEntryTask blockingQueue poll timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/securityscan/scanner/k$j;->a:Lcom/miui/securityscan/scanner/k$l;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_6

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "FetchEntryTask InterruptedException"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/securityscan/scanner/k$j;->b:Ljava/util/concurrent/BlockingQueue;

    iput-object v0, p0, Lcom/miui/securityscan/scanner/k$j;->a:Lcom/miui/securityscan/scanner/k$l;

    return-void
.end method
