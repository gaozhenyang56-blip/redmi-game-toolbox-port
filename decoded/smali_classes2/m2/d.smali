.class public Lm2/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm2/d$b;,
        Lm2/d$c;,
        Lm2/d$d;,
        Lm2/d$g;,
        Lm2/d$f;,
        Lm2/d$e;
    }
.end annotation


# static fields
.field private static h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static volatile j:Lm2/d;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Ljava/util/concurrent/ThreadPoolExecutor;

.field private d:Landroid/content/ContentResolver;

.field private e:Lm2/d$c;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lm2/d$b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lm2/d;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lm2/d;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lm2/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object v0, p0, Lm2/d;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lm2/d;->f:Ljava/util/ArrayList;

    new-instance v0, Lm2/d$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lm2/d$a;-><init>(Lm2/d;Landroid/os/Looper;)V

    iput-object v0, p0, Lm2/d;->g:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lm2/d;->a:Landroid/content/Context;

    sget-object p1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    new-instance v0, Lm2/d$c;

    iget-object v1, p0, Lm2/d;->g:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lm2/d$c;-><init>(Lm2/d;Landroid/os/Handler;)V

    iput-object v0, p0, Lm2/d;->e:Lm2/d$c;

    iget-object v0, p0, Lm2/d;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lm2/d;->d:Landroid/content/ContentResolver;

    iget-object v1, p0, Lm2/d;->e:Lm2/d$c;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method static synthetic a(Lm2/d;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lm2/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic b(Lm2/d;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lm2/d;->f:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic c(Lm2/d;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lm2/d;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic d(Lm2/d;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lm2/d;->g:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic e()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, Lm2/d;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic f()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, Lm2/d;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static h(Landroid/content/Context;)Lm2/d;
    .locals 2

    sget-object v0, Lm2/d;->j:Lm2/d;

    if-nez v0, :cond_1

    const-class v0, Lm2/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lm2/d;->j:Lm2/d;

    if-nez v1, :cond_0

    new-instance v1, Lm2/d;

    invoke-direct {v1, p0}, Lm2/d;-><init>(Landroid/content/Context;)V

    sput-object v1, Lm2/d;->j:Lm2/d;

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
    sget-object p0, Lm2/d;->j:Lm2/d;

    return-object p0
.end method


# virtual methods
.method public g(Lm2/d$b;)V
    .locals 1

    iget-object v0, p0, Lm2/d;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lm2/d;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public i()Z
    .locals 1

    sget-object v0, Lm2/d;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public j()V
    .locals 3

    invoke-static {}, Lx4/a0;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lm2/d;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lm2/d;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lm2/d$d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lm2/d$d;-><init>(Lm2/d;Lm2/d$a;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public k(Ljava/lang/String;Lm2/d$e;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lm2/d$e;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lm2/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p2, p0, Lm2/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    return-object p1

    :cond_1
    iget-object v0, p0, Lm2/d;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lm2/d$f;

    invoke-direct {v2, p0, p1, p2}, Lm2/d$f;-><init>(Lm2/d;Ljava/lang/String;Lm2/d$e;)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-object v1
.end method

.method public l(Lm2/d$b;)V
    .locals 1

    iget-object v0, p0, Lm2/d;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
