.class public Lx4/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx4/f$b;,
        Lx4/f$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/concurrent/ExecutorService;

.field private static final b:Lx4/f$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x7

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lx4/f;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AsyncExecuteUtils"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v1, Lx4/f$b;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Lx4/f$b;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lx4/f;->b:Lx4/f$b;

    return-void
.end method

.method static synthetic a()Lx4/f$b;
    .locals 1

    sget-object v0, Lx4/f;->b:Lx4/f$b;

    return-object v0
.end method

.method public static b(Ljava/lang/Runnable;)V
    .locals 2

    sget-object v0, Lx4/f;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lx4/f$a;

    invoke-direct {v1, p0}, Lx4/f$a;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
