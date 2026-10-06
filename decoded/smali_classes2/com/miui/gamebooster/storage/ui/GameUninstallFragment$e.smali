.class Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$e;->a:Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager;->d()Lcom/miui/gamebooster/storage/utils/UninstallAppsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$e;->a:Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;

    invoke-static {v1}, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->d0(Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager;->b(Ljava/util/List;)V

    return-void
.end method
