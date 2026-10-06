.class public Lrh/e$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrh/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final y:Lsh/g;


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Lzh/a;

.field private g:Ljava/util/concurrent/Executor;

.field private h:Ljava/util/concurrent/Executor;

.field private i:Z

.field private j:Z

.field private k:I

.field private l:I

.field private m:Z

.field private n:Lsh/g;

.field private o:I

.field private p:J

.field private q:I

.field private r:Lph/a;

.field private s:Llh/a;

.field private t:Loh/a;

.field private u:Lwh/c;

.field private v:Luh/b;

.field private w:Lrh/c;

.field private x:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lsh/g;->a:Lsh/g;

    sput-object v0, Lrh/e$b;->y:Lsh/g;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lrh/e$b;->b:I

    iput v0, p0, Lrh/e$b;->c:I

    iput v0, p0, Lrh/e$b;->d:I

    iput v0, p0, Lrh/e$b;->e:I

    const/4 v1, 0x0

    iput-object v1, p0, Lrh/e$b;->f:Lzh/a;

    iput-object v1, p0, Lrh/e$b;->g:Ljava/util/concurrent/Executor;

    iput-object v1, p0, Lrh/e$b;->h:Ljava/util/concurrent/Executor;

    iput-boolean v0, p0, Lrh/e$b;->i:Z

    iput-boolean v0, p0, Lrh/e$b;->j:Z

    const/4 v2, 0x3

    iput v2, p0, Lrh/e$b;->k:I

    iput v2, p0, Lrh/e$b;->l:I

    iput-boolean v0, p0, Lrh/e$b;->m:Z

    sget-object v2, Lrh/e$b;->y:Lsh/g;

    iput-object v2, p0, Lrh/e$b;->n:Lsh/g;

    iput v0, p0, Lrh/e$b;->o:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lrh/e$b;->p:J

    iput v0, p0, Lrh/e$b;->q:I

    iput-object v1, p0, Lrh/e$b;->r:Lph/a;

    iput-object v1, p0, Lrh/e$b;->s:Llh/a;

    iput-object v1, p0, Lrh/e$b;->t:Loh/a;

    iput-object v1, p0, Lrh/e$b;->u:Lwh/c;

    iput-object v1, p0, Lrh/e$b;->w:Lrh/c;

    iput-boolean v0, p0, Lrh/e$b;->x:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lrh/e$b;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lrh/e$b;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lrh/e$b;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lrh/e$b;)I
    .locals 0

    iget p0, p0, Lrh/e$b;->b:I

    return p0
.end method

.method static synthetic c(Lrh/e$b;)Lsh/g;
    .locals 0

    iget-object p0, p0, Lrh/e$b;->n:Lsh/g;

    return-object p0
.end method

.method static synthetic d(Lrh/e$b;)Llh/a;
    .locals 0

    iget-object p0, p0, Lrh/e$b;->s:Llh/a;

    return-object p0
.end method

.method static synthetic e(Lrh/e$b;)Lph/a;
    .locals 0

    iget-object p0, p0, Lrh/e$b;->r:Lph/a;

    return-object p0
.end method

.method static synthetic f(Lrh/e$b;)Lrh/c;
    .locals 0

    iget-object p0, p0, Lrh/e$b;->w:Lrh/c;

    return-object p0
.end method

.method static synthetic g(Lrh/e$b;)Lwh/c;
    .locals 0

    iget-object p0, p0, Lrh/e$b;->u:Lwh/c;

    return-object p0
.end method

.method static synthetic h(Lrh/e$b;)Luh/b;
    .locals 0

    iget-object p0, p0, Lrh/e$b;->v:Luh/b;

    return-object p0
.end method

.method static synthetic i(Lrh/e$b;)Z
    .locals 0

    iget-boolean p0, p0, Lrh/e$b;->i:Z

    return p0
.end method

.method static synthetic j(Lrh/e$b;)Z
    .locals 0

    iget-boolean p0, p0, Lrh/e$b;->j:Z

    return p0
.end method

.method static synthetic k(Lrh/e$b;)Z
    .locals 0

    iget-boolean p0, p0, Lrh/e$b;->x:Z

    return p0
.end method

.method static synthetic l(Lrh/e$b;)I
    .locals 0

    iget p0, p0, Lrh/e$b;->c:I

    return p0
.end method

.method static synthetic m(Lrh/e$b;)I
    .locals 0

    iget p0, p0, Lrh/e$b;->d:I

    return p0
.end method

.method static synthetic n(Lrh/e$b;)I
    .locals 0

    iget p0, p0, Lrh/e$b;->e:I

    return p0
.end method

.method static synthetic o(Lrh/e$b;)Lzh/a;
    .locals 0

    iget-object p0, p0, Lrh/e$b;->f:Lzh/a;

    return-object p0
.end method

.method static synthetic p(Lrh/e$b;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lrh/e$b;->g:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic q(Lrh/e$b;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lrh/e$b;->h:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic r(Lrh/e$b;)I
    .locals 0

    iget p0, p0, Lrh/e$b;->k:I

    return p0
.end method

.method static synthetic s(Lrh/e$b;)I
    .locals 0

    iget p0, p0, Lrh/e$b;->l:I

    return p0
.end method

.method private x()V
    .locals 5

    iget-object v0, p0, Lrh/e$b;->g:Ljava/util/concurrent/Executor;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lrh/e$b;->k:I

    iget v2, p0, Lrh/e$b;->l:I

    iget-object v3, p0, Lrh/e$b;->n:Lsh/g;

    invoke-static {v0, v2, v3}, Lrh/a;->c(IILsh/g;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lrh/e$b;->g:Ljava/util/concurrent/Executor;

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lrh/e$b;->i:Z

    :goto_0
    iget-object v0, p0, Lrh/e$b;->h:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_1

    iget v0, p0, Lrh/e$b;->k:I

    iget v1, p0, Lrh/e$b;->l:I

    iget-object v2, p0, Lrh/e$b;->n:Lsh/g;

    invoke-static {v0, v1, v2}, Lrh/a;->c(IILsh/g;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lrh/e$b;->h:Ljava/util/concurrent/Executor;

    goto :goto_1

    :cond_1
    iput-boolean v1, p0, Lrh/e$b;->j:Z

    :goto_1
    iget-object v0, p0, Lrh/e$b;->s:Llh/a;

    if-nez v0, :cond_3

    iget-object v0, p0, Lrh/e$b;->t:Loh/a;

    if-nez v0, :cond_2

    invoke-static {}, Lrh/a;->d()Loh/a;

    move-result-object v0

    iput-object v0, p0, Lrh/e$b;->t:Loh/a;

    :cond_2
    iget-object v0, p0, Lrh/e$b;->a:Landroid/content/Context;

    iget-object v1, p0, Lrh/e$b;->t:Loh/a;

    iget-wide v2, p0, Lrh/e$b;->p:J

    iget v4, p0, Lrh/e$b;->q:I

    invoke-static {v0, v1, v2, v3, v4}, Lrh/a;->b(Landroid/content/Context;Loh/a;JI)Llh/a;

    move-result-object v0

    iput-object v0, p0, Lrh/e$b;->s:Llh/a;

    :cond_3
    iget-object v0, p0, Lrh/e$b;->r:Lph/a;

    if-nez v0, :cond_4

    iget-object v0, p0, Lrh/e$b;->a:Landroid/content/Context;

    iget v1, p0, Lrh/e$b;->o:I

    invoke-static {v0, v1}, Lrh/a;->g(Landroid/content/Context;I)Lph/a;

    move-result-object v0

    iput-object v0, p0, Lrh/e$b;->r:Lph/a;

    :cond_4
    iget-boolean v0, p0, Lrh/e$b;->m:Z

    if-eqz v0, :cond_5

    new-instance v0, Lqh/a;

    iget-object v1, p0, Lrh/e$b;->r:Lph/a;

    invoke-static {}, Lai/d;->a()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lqh/a;-><init>(Lph/a;Ljava/util/Comparator;)V

    iput-object v0, p0, Lrh/e$b;->r:Lph/a;

    :cond_5
    iget-object v0, p0, Lrh/e$b;->u:Lwh/c;

    if-nez v0, :cond_6

    iget-object v0, p0, Lrh/e$b;->a:Landroid/content/Context;

    invoke-static {v0}, Lrh/a;->f(Landroid/content/Context;)Lwh/c;

    move-result-object v0

    iput-object v0, p0, Lrh/e$b;->u:Lwh/c;

    :cond_6
    iget-object v0, p0, Lrh/e$b;->v:Luh/b;

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lrh/e$b;->x:Z

    invoke-static {v0}, Lrh/a;->e(Z)Luh/b;

    move-result-object v0

    iput-object v0, p0, Lrh/e$b;->v:Luh/b;

    :cond_7
    iget-object v0, p0, Lrh/e$b;->w:Lrh/c;

    if-nez v0, :cond_8

    invoke-static {}, Lrh/c;->u()Lrh/c;

    move-result-object v0

    iput-object v0, p0, Lrh/e$b;->w:Lrh/c;

    :cond_8
    return-void
.end method


# virtual methods
.method public t()Lrh/e;
    .locals 2

    invoke-direct {p0}, Lrh/e$b;->x()V

    new-instance v0, Lrh/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lrh/e;-><init>(Lrh/e$b;Lrh/e$a;)V

    return-object v0
.end method

.method public u()Lrh/e$b;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lrh/e$b;->m:Z

    return-object p0
.end method

.method public v(Loh/a;)Lrh/e$b;
    .locals 2

    iget-object v0, p0, Lrh/e$b;->s:Llh/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "diskCache() and diskCacheFileNameGenerator() calls overlap each other"

    invoke-static {v1, v0}, Lai/c;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lrh/e$b;->t:Loh/a;

    return-object p0
.end method

.method public w(I)Lrh/e$b;
    .locals 2

    if-lez p1, :cond_1

    iget-object v0, p0, Lrh/e$b;->s:Llh/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "diskCache(), diskCacheSize() and diskCacheFileCount calls overlap each other"

    invoke-static {v1, v0}, Lai/c;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    int-to-long v0, p1

    iput-wide v0, p0, Lrh/e$b;->p:J

    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxCacheSize must be a positive number"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public y(Lsh/g;)Lrh/e$b;
    .locals 2

    iget-object v0, p0, Lrh/e$b;->g:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lrh/e$b;->h:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls."

    invoke-static {v1, v0}, Lai/c;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iput-object p1, p0, Lrh/e$b;->n:Lsh/g;

    return-object p0
.end method

.method public z(I)Lrh/e$b;
    .locals 2

    iget-object v0, p0, Lrh/e$b;->g:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lrh/e$b;->h:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls."

    invoke-static {v1, v0}, Lai/c;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x1

    if-ge p1, v0, :cond_2

    :goto_0
    iput v0, p0, Lrh/e$b;->l:I

    goto :goto_1

    :cond_2
    const/16 v0, 0xa

    if-le p1, v0, :cond_3

    goto :goto_0

    :cond_3
    iput p1, p0, Lrh/e$b;->l:I

    :goto_1
    return-object p0
.end method
