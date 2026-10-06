.class Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$y;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "y"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$y;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 8

    iget-object p2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$y;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;

    if-nez p2, :cond_0

    return-void

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

    iget-wide v6, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    add-long/2addr v4, v6

    invoke-static {p2}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->i0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)J

    move-result-wide v6

    cmp-long p1, v0, v6

    if-nez p1, :cond_1

    invoke-static {p2}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->t0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)J

    move-result-wide v6

    cmp-long p1, v2, v6

    if-nez p1, :cond_1

    invoke-static {p2}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->k0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)J

    move-result-wide v6

    cmp-long p1, v4, v6

    if-eqz p1, :cond_2

    :cond_1
    invoke-static {p2, v0, v1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->j0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;J)J

    invoke-static {p2, v2, v3}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->u0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;J)J

    invoke-static {p2, v4, v5}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->l0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;J)J

    invoke-static {p2}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->i0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)J

    move-result-wide v0

    invoke-static {p2}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->t0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {p2}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->k0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p2, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->z0:J

    invoke-static {p2}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->w0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$u;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    return-void
.end method
