.class public La8/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La8/h$c;,
        La8/h$d;,
        La8/h$e;,
        La8/h$f;
    }
.end annotation


# static fields
.field private static e:Ljava/util/concurrent/ExecutorService;

.field private static f:Lb0/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb0/g<",
            "La8/h$d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Landroid/view/LayoutInflater;

.field private c:La8/h$e;

.field private d:Landroid/os/Handler$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v7, La8/h$a;

    invoke-direct {v7}, La8/h$a;-><init>()V

    const/4 v1, 0x3

    const/4 v2, 0x3

    const-wide/16 v3, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v8, La8/h;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lb0/g;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lb0/g;-><init>(I)V

    sput-object v0, La8/h;->f:Lb0/g;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, La8/h$b;

    invoke-direct {v0, p0}, La8/h$b;-><init>(La8/h;)V

    iput-object v0, p0, La8/h;->d:Landroid/os/Handler$Callback;

    new-instance v0, La8/h$c;

    invoke-direct {v0, p1}, La8/h$c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, La8/h;->b:Landroid/view/LayoutInflater;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, La8/h;->d:Landroid/os/Handler$Callback;

    invoke-direct {p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, La8/h;->a:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(La8/h;)Landroid/view/LayoutInflater;
    .locals 0

    iget-object p0, p0, La8/h;->b:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method static synthetic b(La8/h;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, La8/h;->a:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public c(ILandroid/view/ViewGroup;La8/h$f;)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # La8/h$f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    if-eqz p3, :cond_0

    invoke-virtual {p0}, La8/h;->d()La8/h$d;

    move-result-object v0

    iput-object p0, v0, La8/h$d;->a:La8/h;

    iput p1, v0, La8/h$d;->c:I

    iput-object p2, v0, La8/h$d;->b:Landroid/view/ViewGroup;

    iput-object p3, v0, La8/h$d;->e:La8/h$f;

    new-instance p1, La8/h$e;

    invoke-direct {p1, v0}, La8/h$e;-><init>(La8/h$d;)V

    iput-object p1, p0, La8/h;->c:La8/h$e;

    sget-object p2, La8/h;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p2, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "callback argument may not be null!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d()La8/h$d;
    .locals 1

    sget-object v0, La8/h;->f:Lb0/g;

    invoke-virtual {v0}, Lb0/g;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La8/h$d;

    if-nez v0, :cond_0

    new-instance v0, La8/h$d;

    invoke-direct {v0}, La8/h$d;-><init>()V

    :cond_0
    return-object v0
.end method

.method public e(La8/h$d;)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p1, La8/h$d;->e:La8/h$f;

    iput-object v0, p1, La8/h$d;->a:La8/h;

    iput-object v0, p1, La8/h$d;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    iput v1, p1, La8/h$d;->c:I

    iput-object v0, p1, La8/h$d;->d:Landroid/view/View;

    sget-object v0, La8/h;->f:Lb0/g;

    invoke-virtual {v0, p1}, Lb0/g;->a(Ljava/lang/Object;)Z

    return-void
.end method
