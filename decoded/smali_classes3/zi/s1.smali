.class public Lzi/s1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzi/s1$c;,
        Lzi/s1$d;,
        Lzi/s1$b;,
        Lzi/s1$a;
    }
.end annotation


# static fields
.field private static volatile e:Lzi/s1;


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lzi/r1;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lzi/s1$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lzi/s1;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0xf

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lzi/s1;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzi/s1;->d:Ljava/util/ArrayList;

    iput-object p1, p0, Lzi/s1;->a:Landroid/content/Context;

    return-void
.end method

.method private b(Ljava/lang/String;)Lzi/r1;
    .locals 1

    iget-object v0, p0, Lzi/s1;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzi/r1;

    if-nez p1, :cond_1

    iget-object v0, p0, Lzi/s1;->b:Ljava/util/HashMap;

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    throw p1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_1
    return-object p1
.end method

.method public static c(Landroid/content/Context;)Lzi/s1;
    .locals 2

    sget-object v0, Lzi/s1;->e:Lzi/s1;

    if-nez v0, :cond_1

    const-class v0, Lzi/s1;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lzi/s1;->e:Lzi/s1;

    if-nez v1, :cond_0

    new-instance v1, Lzi/s1;

    invoke-direct {v1, p0}, Lzi/s1;-><init>(Landroid/content/Context;)V

    sput-object v1, Lzi/s1;->e:Lzi/s1;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lzi/s1;->e:Lzi/s1;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lzi/s1;->b(Ljava/lang/String;)Lzi/r1;

    move-result-object p1

    invoke-virtual {p1}, Lzi/r1;->c()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lzi/s1;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lzi/s1;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public e(Lzi/s1$a;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "should exec init method first!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
