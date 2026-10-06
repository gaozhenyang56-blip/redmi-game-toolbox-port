.class Lwa/a$a;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwa/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lwa/a;


# direct methods
.method constructor <init>(Lwa/a;)V
    .locals 0

    iput-object p1, p0, Lwa/a$a;->a:Lwa/a;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lwa/a$a;->a:Lwa/a;

    iget-wide v0, p1, Landroid/content/pm/PackageStats;->dataSize:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long/2addr v0, v2

    iput-wide v0, p2, Lwa/a;->dataSize:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v4, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long/2addr v2, v4

    iget-wide v4, p1, Landroid/content/pm/PackageStats;->codeSize:J

    add-long/2addr v2, v4

    iput-wide v2, p2, Lwa/a;->codeSize:J

    iget-wide v4, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    iget-wide v6, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    add-long/2addr v4, v6

    iput-wide v4, p2, Lwa/a;->cacheSize:J

    add-long/2addr v0, v2

    iput-wide v0, p2, Lwa/a;->systemSize:J

    iput-wide v0, p2, Lwa/a;->totalSize:J

    return-void
.end method
