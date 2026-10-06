.class public Li/c;
.super Li/f;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$a;->c:Landroidx/annotation/RestrictTo$a;
    }
.end annotation


# static fields
.field private static volatile c:Li/c;

.field private static final d:Ljava/util/concurrent/Executor;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private static final e:Ljava/util/concurrent/Executor;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field private a:Li/f;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Li/f;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Li/a;

    invoke-direct {v0}, Li/a;-><init>()V

    sput-object v0, Li/c;->d:Ljava/util/concurrent/Executor;

    new-instance v0, Li/b;

    invoke-direct {v0}, Li/b;-><init>()V

    sput-object v0, Li/c;->e:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Li/f;-><init>()V

    new-instance v0, Li/d;

    invoke-direct {v0}, Li/d;-><init>()V

    iput-object v0, p0, Li/c;->b:Li/f;

    iput-object v0, p0, Li/c;->a:Li/f;

    return-void
.end method

.method public static synthetic a(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Li/c;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Li/c;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static c()Li/c;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Li/c;->c:Li/c;

    if-eqz v0, :cond_0

    sget-object v0, Li/c;->c:Li/c;

    return-object v0

    :cond_0
    const-class v0, Li/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Li/c;->c:Li/c;

    if-nez v1, :cond_1

    new-instance v1, Li/c;

    invoke-direct {v1}, Li/c;-><init>()V

    sput-object v1, Li/c;->c:Li/c;

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Li/c;->c:Li/c;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static synthetic d(Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {}, Li/c;->c()Li/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Li/c;->postToMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic e(Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {}, Li/c;->c()Li/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Li/c;->executeOnDiskIO(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public executeOnDiskIO(Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Li/c;->a:Li/f;

    invoke-virtual {v0, p1}, Li/f;->executeOnDiskIO(Ljava/lang/Runnable;)V

    return-void
.end method

.method public f(Li/f;)V
    .locals 0
    .param p1    # Li/f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    iget-object p1, p0, Li/c;->b:Li/f;

    :cond_0
    iput-object p1, p0, Li/c;->a:Li/f;

    return-void
.end method

.method public isMainThread()Z
    .locals 1

    iget-object v0, p0, Li/c;->a:Li/f;

    invoke-virtual {v0}, Li/f;->isMainThread()Z

    move-result v0

    return v0
.end method

.method public postToMainThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Li/c;->a:Li/f;

    invoke-virtual {v0, p1}, Li/f;->postToMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
