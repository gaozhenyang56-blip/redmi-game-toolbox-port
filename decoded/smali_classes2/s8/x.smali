.class public Ls8/x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls8/x$c;,
        Ls8/x$d;
    }
.end annotation


# static fields
.field private static e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls8/x$c;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "PreLoadManager"

    iput-object v0, p0, Ls8/x;->a:Ljava/lang/String;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Ls8/x;->b:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ls8/x;->c:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Ls8/x;I)V
    .locals 0

    invoke-direct {p0, p1}, Ls8/x;->j(I)V

    return-void
.end method

.method static synthetic b(Ls8/x;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Ls8/x;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Ls8/x;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Ls8/x;->d:Landroid/view/View;

    return-object p1
.end method

.method static synthetic d(Ls8/x;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Ls8/x;->b:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static h(Landroid/content/Context;)Ls8/x;
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Ls8/x;->e:Ljava/lang/ref/WeakReference;

    invoke-static {}, Ls8/x$d;->a()Ls8/x;

    move-result-object p0

    return-object p0
.end method

.method private j(I)V
    .locals 2

    sget-object v0, Ls8/x;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Ls8/x;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public e(Ls8/x$c;)V
    .locals 1

    iget-object v0, p0, Ls8/x;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public f(I)V
    .locals 1

    iget-object v0, p0, Ls8/x;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public g(IZ)Landroid/view/View;
    .locals 3

    :try_start_0
    iget-object v0, p0, Ls8/x;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Ls8/x;->d:Landroid/view/View;

    if-eqz p2, :cond_0

    if-nez v0, :cond_0

    new-instance p2, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v0, Ls8/x$b;

    invoke-direct {v0, p0, p1, p2}, Ls8/x$b;-><init>(Ls8/x;ILjava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v0}, Ls8/x;->e(Ls8/x$c;)V

    const-wide/16 v0, 0x1f4

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v0, v1, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    :cond_0
    iget-object p2, p0, Ls8/x;->b:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "PreLoadManager"

    const-string v0, "getCacheView :"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object p1, p0, Ls8/x;->d:Landroid/view/View;

    return-object p1
.end method

.method public i(I)V
    .locals 2

    iget-object v0, p0, Ls8/x;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Ls8/x$a;

    invoke-direct {v1, p0, p1}, Ls8/x$a;-><init>(Ls8/x;I)V

    invoke-virtual {v0, v1}, Lef/z;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public k(Ls8/x$c;)V
    .locals 1

    iget-object v0, p0, Ls8/x;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
