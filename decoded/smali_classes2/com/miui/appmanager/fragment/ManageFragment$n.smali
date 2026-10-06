.class Lcom/miui/appmanager/fragment/ManageFragment$n;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/appmanager/fragment/ManageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "n"
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

.field private final c:Ljava/util/List;
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

    iput-object v0, p0, Lcom/miui/appmanager/fragment/ManageFragment$n;->a:Landroid/content/Context;

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/appmanager/fragment/ManageFragment$n;->b:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/miui/appmanager/fragment/ManageFragment$n;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    iget-object p1, p0, Lcom/miui/appmanager/fragment/ManageFragment$n;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh3/f;

    check-cast v2, Lh3/d;

    invoke-virtual {v2}, Lh3/d;->r()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :try_start_0
    invoke-virtual {v2}, Lh3/d;->p()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-static {v1}, Lcom/miui/appmanager/fragment/ManageFragment;->n0(Lcom/miui/appmanager/fragment/ManageFragment;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/appmanager/AppManageUtils;->G0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lh3/d;->D(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v3, "ManageFragment"

    const-string v4, "getLabel failed "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/miui/appmanager/fragment/ManageFragment$n;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/appmanager/fragment/ManageFragment;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lh3/d;->r()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/appmanager/fragment/ManageFragment;->a1(Ljava/lang/String;)Le3/g;

    move-result-object v3

    invoke-virtual {v2, v3}, Lh3/d;->E(Le3/g;)V

    goto :goto_0

    :cond_3
    :goto_2
    return-object v0
.end method

.method protected b(Ljava/lang/Void;)V
    .locals 1

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/miui/appmanager/fragment/ManageFragment$n;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/appmanager/fragment/ManageFragment;

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/miui/appmanager/fragment/ManageFragment;->o0(Lcom/miui/appmanager/fragment/ManageFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/miui/appmanager/fragment/ManageFragment;->r0(Lcom/miui/appmanager/fragment/ManageFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/miui/appmanager/fragment/ManageFragment;->d0(Lcom/miui/appmanager/fragment/ManageFragment;)V

    :cond_1
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/appmanager/fragment/ManageFragment;->p0(Lcom/miui/appmanager/fragment/ManageFragment;Z)Z

    :cond_2
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/appmanager/fragment/ManageFragment$n;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/appmanager/fragment/ManageFragment$n;->b(Ljava/lang/Void;)V

    return-void
.end method
