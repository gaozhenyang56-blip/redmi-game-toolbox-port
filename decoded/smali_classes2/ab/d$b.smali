.class Lab/d$b;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lab/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:J

.field k:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lab/d$b;->k:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method synthetic constructor <init>(Lab/d$a;)V
    .locals 0

    invoke-direct {p0}, Lab/d$b;-><init>()V

    return-void
.end method


# virtual methods
.method public o8()J
    .locals 2

    iget-wide v0, p0, Lab/d$b;->a:J

    return-wide v0
.end method

.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 8

    if-eqz p2, :cond_0

    new-instance p2, Lta/h;

    invoke-direct {p2}, Lta/h;-><init>()V

    iget-wide v0, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    iget-wide v4, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long/2addr v2, v4

    iget-wide v4, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long/2addr v2, v4

    iget-object v6, p1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    iput-object v6, p2, Lta/h;->a:Ljava/lang/String;

    iget-wide v6, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    iput-wide v6, p2, Lta/h;->b:J

    iget-wide v6, p1, Landroid/content/pm/PackageStats;->codeSize:J

    iput-wide v6, p2, Lta/h;->c:J

    iget-wide v6, p1, Landroid/content/pm/PackageStats;->dataSize:J

    iput-wide v6, p2, Lta/h;->d:J

    iput-wide v0, p2, Lta/h;->e:J

    iput-wide v2, p2, Lta/h;->f:J

    iput-wide v4, p2, Lta/h;->g:J

    invoke-virtual {p2, p1}, Lta/h;->b(Landroid/content/pm/PackageStats;)J

    move-result-wide v0

    iput-wide v0, p2, Lta/h;->h:J

    invoke-virtual {p2, p1}, Lta/h;->a(Landroid/content/pm/PackageStats;)J

    move-result-wide v0

    iput-wide v0, p2, Lta/h;->i:J

    iget-wide p1, p2, Lta/h;->h:J

    add-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lab/d$b;->p8(J)V

    :cond_0
    iget-object p1, p0, Lab/d$b;->k:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public p8(J)V
    .locals 0

    iput-wide p1, p0, Lab/d$b;->a:J

    return-void
.end method

.method public v1()V
    .locals 1

    iget-object v0, p0, Lab/d$b;->k:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    return-void
.end method
