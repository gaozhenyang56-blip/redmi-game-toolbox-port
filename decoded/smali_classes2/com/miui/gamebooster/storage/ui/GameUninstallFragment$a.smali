.class Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$a;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$a;->a:Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->codeSize:J

    add-long/2addr v0, v2

    const-string p2, "GameUninstallFragment"

    const-string v2, "userHandle"

    invoke-static {p2, p1, v2}, Lbh/e;->g(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v2, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$a;->a:Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;

    iget-object p1, p1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2, p2, p1, v0}, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->c0(Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;ILjava/lang/String;Ljava/lang/Long;)V

    return-void
.end method
