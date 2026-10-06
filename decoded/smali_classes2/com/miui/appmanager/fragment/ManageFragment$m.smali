.class Lcom/miui/appmanager/fragment/ManageFragment$m;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/appmanager/fragment/ManageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "m"
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

    iput-object v0, p0, Lcom/miui/appmanager/fragment/ManageFragment$m;->a:Landroid/content/Context;

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/appmanager/fragment/ManageFragment$m;->b:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/miui/appmanager/fragment/ManageFragment$m;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    iget-object p1, p0, Lcom/miui/appmanager/fragment/ManageFragment$m;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/appmanager/fragment/ManageFragment;

    if-eqz p1, :cond_4

    invoke-static {p1}, Lcom/miui/appmanager/fragment/ManageFragment;->b0(Lcom/miui/appmanager/fragment/ManageFragment;)Landroid/util/SparseArray;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/miui/appmanager/fragment/ManageFragment$m;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    iget-object v2, p0, Lcom/miui/appmanager/fragment/ManageFragment$m;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh3/d;

    invoke-virtual {v2}, Lh3/d;->w()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v2}, Lh3/d;->s()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/appmanager/fragment/ManageFragment$m;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/appmanager/fragment/ManageFragment;

    if-nez v5, :cond_2

    return-object v0

    :cond_2
    invoke-static {p1, v4, v3}, Lcom/miui/appmanager/AppManageUtils;->P(Landroid/util/SparseArray;Ljava/lang/String;I)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/miui/appmanager/fragment/ManageFragment;->c0(Lcom/miui/appmanager/fragment/ManageFragment;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lh3/d;->I(Ljava/lang/String;)V

    invoke-virtual {v2, v6, v7}, Lh3/d;->H(J)V

    invoke-static {v5, v4, v3}, Lcom/miui/appmanager/fragment/ManageFragment;->R0(Lcom/miui/appmanager/fragment/ManageFragment;Ljava/lang/String;I)Z

    move-result v3

    invoke-virtual {v2}, Lh3/d;->y()Z

    move-result v4

    if-eq v3, v4, :cond_3

    invoke-virtual {v2, v3}, Lh3/d;->B(Z)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method protected b(Ljava/lang/Void;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/miui/appmanager/fragment/ManageFragment$m;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/appmanager/fragment/ManageFragment;

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/miui/appmanager/fragment/ManageFragment;->U0(Lcom/miui/appmanager/fragment/ManageFragment;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/miui/appmanager/fragment/ManageFragment;->D0(Lcom/miui/appmanager/fragment/ManageFragment;)Le3/a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/miui/appmanager/fragment/ManageFragment;->d0(Lcom/miui/appmanager/fragment/ManageFragment;)V

    :goto_0
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/appmanager/fragment/ManageFragment;->f0(Lcom/miui/appmanager/fragment/ManageFragment;Z)Z

    :cond_2
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/appmanager/fragment/ManageFragment$m;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/appmanager/fragment/ManageFragment$m;->b(Ljava/lang/Void;)V

    return-void
.end method
