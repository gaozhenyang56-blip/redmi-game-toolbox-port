.class public Lcom/xiaomi/mipush/sdk/p$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mipush/sdk/p$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lzi/u7;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/Runnable;

.field final synthetic e:Lcom/xiaomi/mipush/sdk/p$a;


# direct methods
.method public constructor <init>(Lcom/xiaomi/mipush/sdk/p$a;)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/p$a$a;->e:Lcom/xiaomi/mipush/sdk/p$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/p$a$a;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/p$a$a;->b:Ljava/util/ArrayList;

    new-instance p1, Lcom/xiaomi/mipush/sdk/i1;

    invoke-direct {p1, p0}, Lcom/xiaomi/mipush/sdk/i1;-><init>(Lcom/xiaomi/mipush/sdk/p$a$a;)V

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/p$a$a;->d:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mipush/sdk/p$a$a;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mipush/sdk/p$a$a;->c:Ljava/util/concurrent/ScheduledFuture;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaomi/mipush/sdk/p$a$a;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/p$a$a;->c:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method

.method private c()V
    .locals 8

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/p$a$a;->c:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/p$a$a;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/p$a$a;->d:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    const-wide/16 v5, 0x3e8

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v1 .. v7}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/p$a$a;->c:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/xiaomi/mipush/sdk/p$a$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/p$a$a;->c()V

    return-void
.end method

.method private f()V
    .locals 7

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/p$a$a;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzi/u7;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/p$a$a;->e:Lcom/xiaomi/mipush/sdk/p$a;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/p$a;->a(Lcom/xiaomi/mipush/sdk/p$a;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/p$a$a;->e:Lcom/xiaomi/mipush/sdk/p$a;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/p$a;->a(Lcom/xiaomi/mipush/sdk/p$a;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/m0;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/m0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/mipush/sdk/m0;->d()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Lzi/u7;

    aput-object v0, v5, v1

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/16 v5, 0x7800

    invoke-static {v1, v2, v3, v5}, Lcom/xiaomi/push/service/f1;->b(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzi/q8;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MiTinyDataClient Send item by PushServiceClient.sendMessage(XmActionNotification)."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lzi/u7;->y()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lpi/c;->B(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/p$a$a;->e:Lcom/xiaomi/mipush/sdk/p$a;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/p$a;->a(Lcom/xiaomi/mipush/sdk/p$a;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/d0;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/d0;

    move-result-object v3

    sget-object v5, Lzi/q7;->j:Lzi/q7;

    const/4 v6, 0x0

    invoke-virtual {v3, v2, v5, v4, v6}, Lcom/xiaomi/mipush/sdk/d0;->B(Lzi/c9;Lzi/q7;ZLzi/d8;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/xiaomi/mipush/sdk/p$a$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/p$a$a;->f()V

    return-void
.end method


# virtual methods
.method public e(Lzi/u7;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/p$a$a;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lcom/xiaomi/mipush/sdk/h1;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/mipush/sdk/h1;-><init>(Lcom/xiaomi/mipush/sdk/p$a$a;Lzi/u7;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
