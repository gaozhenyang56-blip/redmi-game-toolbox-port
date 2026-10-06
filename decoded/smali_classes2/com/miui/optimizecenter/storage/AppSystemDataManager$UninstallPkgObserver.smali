.class public Lcom/miui/optimizecenter/storage/AppSystemDataManager$UninstallPkgObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/optimizecenter/storage/AppSystemDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UninstallPkgObserver"
.end annotation


# instance fields
.field a:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/AppSystemDataManager$UninstallPkgObserver;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .locals 1

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/AppSystemDataManager$UninstallPkgObserver;->a:Landroid/os/Handler;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, -0x3eb

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/optimizecenter/storage/AppSystemDataManager$UninstallPkgObserver;->a:Landroid/os/Handler;

    return-void
.end method
