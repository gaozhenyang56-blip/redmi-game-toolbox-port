.class public Lcom/miui/gamebooster/mutiwindow/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/mutiwindow/b$b;
    }
.end annotation


# static fields
.field private static d:Lcom/miui/gamebooster/mutiwindow/b;


# instance fields
.field private volatile a:Z

.field private b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lf7/e;",
            "Lcom/miui/gamebooster/mutiwindow/b$b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/gzy/redmiport/compat/process/IForegroundInfoListener$Stub;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/mutiwindow/b;->b:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/miui/gamebooster/mutiwindow/b$a;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/mutiwindow/b$a;-><init>(Lcom/miui/gamebooster/mutiwindow/b;)V

    iput-object v0, p0, Lcom/miui/gamebooster/mutiwindow/b;->c:Lcom/gzy/redmiport/compat/process/IForegroundInfoListener$Stub;

    return-void
.end method

.method static synthetic a(Lcom/miui/gamebooster/mutiwindow/b;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/mutiwindow/b;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static c()Lcom/gzy/redmiport/compat/process/ForegroundInfo;
    .locals 1
    invoke-static {}, Lcom/gzy/redmiport/ForegroundMonitor;->current()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;
    return-object v0
.end method

.method public static declared-synchronized d()Lcom/miui/gamebooster/mutiwindow/b;
    .locals 2

    const-class v0, Lcom/miui/gamebooster/mutiwindow/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/gamebooster/mutiwindow/b;->d:Lcom/miui/gamebooster/mutiwindow/b;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/gamebooster/mutiwindow/b;

    invoke-direct {v1}, Lcom/miui/gamebooster/mutiwindow/b;-><init>()V

    sput-object v1, Lcom/miui/gamebooster/mutiwindow/b;->d:Lcom/miui/gamebooster/mutiwindow/b;

    :cond_0
    sget-object v1, Lcom/miui/gamebooster/mutiwindow/b;->d:Lcom/miui/gamebooster/mutiwindow/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private e()V
    .locals 1
    iget-object v0, p0, Lcom/miui/gamebooster/mutiwindow/b;->c:Lcom/gzy/redmiport/compat/process/IForegroundInfoListener$Stub;
    invoke-static {v0}, Lcom/gzy/redmiport/ForegroundMonitor;->start(Ljava/lang/Object;)V
    return-void
.end method

.method private h()V
    .locals 1
    iget-object v0, p0, Lcom/miui/gamebooster/mutiwindow/b;->c:Lcom/gzy/redmiport/compat/process/IForegroundInfoListener$Stub;
    invoke-static {v0}, Lcom/gzy/redmiport/ForegroundMonitor;->stop(Ljava/lang/Object;)V
    return-void
.end method


# virtual methods
.method public b(Lcom/miui/gamebooster/mutiwindow/b$b;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/mutiwindow/b;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Lcom/miui/gamebooster/mutiwindow/b$b;->getId()Lf7/e;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public f()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/mutiwindow/b;->e()V

    return-void
.end method

.method public g(Lcom/miui/gamebooster/mutiwindow/b$b;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/mutiwindow/b;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Lcom/miui/gamebooster/mutiwindow/b$b;->getId()Lf7/e;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z
    move-result v0
    if-eqz v0, :cond_0
    invoke-direct {p0}, Lcom/miui/gamebooster/mutiwindow/b;->h()V
    :cond_0
    return-void
.end method

.method public i()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/mutiwindow/b;->h()V

    return-void
.end method
