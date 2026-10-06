.class Lcom/miui/appmanager/fragment/ManageFragment$s;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/appmanager/fragment/ManageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "s"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/appmanager/fragment/ManageFragment;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lh3/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/appmanager/fragment/ManageFragment;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/appmanager/fragment/ManageFragment;",
            "Ljava/util/List<",
            "Lh3/f;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/fragment/ManageFragment$s;->a:Landroid/content/Context;

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/appmanager/fragment/ManageFragment$s;->b:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/miui/appmanager/fragment/ManageFragment$s;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/miui/appmanager/fragment/ManageFragment$s;->a:Landroid/content/Context;

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/appmanager/fragment/ManageFragment$s;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_4

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ManageFragment$s;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/appmanager/fragment/ManageFragment;

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_4

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lcom/miui/appmanager/fragment/ManageFragment$s;->c:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh3/d;

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x19

    if-le v3, v4, :cond_3

    iget-object v3, p0, Lcom/miui/appmanager/fragment/ManageFragment$s;->a:Landroid/content/Context;

    invoke-virtual {v2}, Lh3/d;->p()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v2}, Lh3/d;->w()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/miui/appmanager/AppManageUtils;->L(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;I)Lcom/miui/appmanager/a;

    move-result-object v3

    iget-wide v4, v3, Lcom/miui/appmanager/a;->c:J

    iget-wide v6, v3, Lcom/miui/appmanager/a;->b:J

    add-long/2addr v4, v6

    invoke-virtual {v2}, Lh3/d;->w()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v2}, Lh3/d;->s()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v1, v3, v2, v4}, Lcom/miui/appmanager/fragment/ManageFragment;->t0(Lcom/miui/appmanager/fragment/ManageFragment;ILjava/lang/String;Ljava/lang/Long;)V

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lcom/miui/appmanager/fragment/ManageFragment;->n0(Lcom/miui/appmanager/fragment/ManageFragment;)Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v1, v1, Lcom/miui/appmanager/fragment/ManageFragment;->s0:Landroid/content/pm/IPackageStatsObserver$Stub;

    invoke-virtual {v2}, Lh3/d;->s()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lh3/d;->w()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {v3, v4, v2, v1}, Lcom/miui/appmanager/AppManageUtils;->J(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/appmanager/fragment/ManageFragment$s;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
