.class Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$h;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "h"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic k:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;


# direct methods
.method public constructor <init>(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$h;->k:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$h;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 6

    iget-object p2, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$h;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Landroid/app/Activity;->isDestroyed()Z

    move-result p2

    if-eqz p2, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v4, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long/2addr v2, v4

    iget-wide v4, p1, Landroid/content/pm/PackageStats;->codeSize:J

    add-long/2addr v2, v4

    iget-wide v4, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    iget-wide p1, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    add-long/2addr v4, p1

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$h;->k:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    invoke-static {p1}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->r0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)Lwa/a;

    move-result-object p1

    iget-wide p1, p1, Lwa/a;->dataSize:J

    cmp-long p1, v0, p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$h;->k:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    invoke-static {p1}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->r0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)Lwa/a;

    move-result-object p1

    iget-wide p1, p1, Lwa/a;->codeSize:J

    cmp-long p1, v2, p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$h;->k:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    invoke-static {p1}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->r0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)Lwa/a;

    move-result-object p1

    iget-wide p1, p1, Lwa/a;->cacheSize:J

    cmp-long p1, v4, p1

    if-eqz p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$h;->k:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    invoke-static {p1}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->r0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)Lwa/a;

    move-result-object p1

    iput-wide v0, p1, Lwa/a;->dataSize:J

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$h;->k:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    invoke-static {p1}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->r0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)Lwa/a;

    move-result-object p1

    iput-wide v2, p1, Lwa/a;->codeSize:J

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$h;->k:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    invoke-static {p1}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->r0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)Lwa/a;

    move-result-object p1

    iput-wide v4, p1, Lwa/a;->cacheSize:J

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$h;->k:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    invoke-static {p1}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->r0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)Lwa/a;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$h;->k:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    invoke-static {p2}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->r0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)Lwa/a;

    move-result-object p2

    iget-wide v0, p2, Lwa/a;->dataSize:J

    iget-object p2, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$h;->k:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    invoke-static {p2}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->r0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)Lwa/a;

    move-result-object p2

    iget-wide v2, p2, Lwa/a;->codeSize:J

    add-long/2addr v0, v2

    iget-object p2, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$h;->k:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    invoke-static {p2}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->r0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)Lwa/a;

    move-result-object p2

    iget-wide v2, p2, Lwa/a;->cacheSize:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Lwa/a;->totalSize:J

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$h;->k:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    invoke-static {p1}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->h0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$i;

    move-result-object p1

    const/16 p2, -0x3ec

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    :goto_0
    return-void
.end method
