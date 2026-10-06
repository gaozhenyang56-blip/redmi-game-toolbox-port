.class Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$f;
.super Lw4/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lw4/d<",
        "Ljava/util/List<",
        "Lu7/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field private q:Landroid/content/Context;

.field private r:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;)V
    .locals 1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lw4/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$f;->q:Landroid/content/Context;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$f;->r:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static synthetic J(Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$f;->K(Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;)V

    return-void
.end method

.method private static synthetic K(Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->j0(Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic G()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$f;->L()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public L()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lu7/a;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$f;->q:Landroid/content/Context;

    invoke-static {v1}, Li4/a;->k(Landroid/content/Context;)Li4/a;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Li4/a;->j()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$f;->r:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;

    if-nez v3, :cond_0

    return-object v0

    :cond_0
    invoke-static {v3}, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->i0(Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;)Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$i;

    move-result-object v4

    new-instance v5, Lcom/miui/gamebooster/storage/ui/a;

    invoke-direct {v5, v3}, Lcom/miui/gamebooster/storage/ui/a;-><init>(Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    iget-object v4, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$f;->q:Landroid/content/Context;

    invoke-static {v4}, Lf7/c;->c(Landroid/content/Context;)Lf7/c;

    move-result-object v4

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5}, Lf7/c;->i(Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    new-instance v5, Lu7/a;

    invoke-direct {v5}, Lu7/a;-><init>()V

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v6}, Lu7/a;->j(Landroid/content/pm/ApplicationInfo;)V

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lu7/a;->m(Ljava/lang/String;)V

    iget v6, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v5, v6}, Lu7/a;->r(I)V

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v6}, Lu7/a;->p(I)V

    const/16 v6, 0x3e7

    if-ne v4, v6, :cond_2

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v6, "pkg_icon_xspace://"

    goto :goto_1

    :cond_2
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v6, "pkg_icon://"

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lu7/a;->k(Ljava/lang/String;)V

    :try_start_0
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Li4/a;->f(Ljava/lang/String;)Li4/b;

    move-result-object v3

    invoke-virtual {v3}, Li4/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lu7/a;->l(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    const-string v4, "GameUninstallFragment"

    const-string v6, "get app info failed"

    invoke-static {v4, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method
