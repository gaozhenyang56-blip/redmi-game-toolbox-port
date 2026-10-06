.class Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$g;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lu7/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;",
            "Ljava/util/List<",
            "Lu7/a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$g;->a:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$g;->b:Ljava/util/List;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$g;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 7

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$g;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;

    if-nez p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$g;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$g;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu7/a;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    if-le v2, v3, :cond_2

    iget-object v2, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$g;->a:Landroid/content/Context;

    invoke-virtual {v1}, Lu7/a;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v1}, Lu7/a;->f()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/miui/appmanager/AppManageUtils;->L(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;I)Lcom/miui/appmanager/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/appmanager/a;->a()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/miui/appmanager/a;->b()J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-virtual {v1}, Lu7/a;->f()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1}, Lu7/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p1, v2, v1, v3}, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->c0(Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;ILjava/lang/String;Ljava/lang/Long;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->k0(Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1}, Lu7/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lu7/a;->f()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-static {p1}, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->l0(Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;)Landroid/content/pm/IPackageStatsObserver$Stub;

    move-result-object v4

    invoke-static {v2, v3, v1, v4}, Lcom/miui/appmanager/AppManageUtils;->J(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$g;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
