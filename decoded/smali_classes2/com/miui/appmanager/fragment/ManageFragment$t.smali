.class Lcom/miui/appmanager/fragment/ManageFragment$t;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/appmanager/fragment/ManageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "t"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/miui/appmanager/fragment/ManageFragment$k;",
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

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/appmanager/fragment/ManageFragment$t;->b:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/miui/appmanager/fragment/ManageFragment$t;->c:Ljava/util/List;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/appmanager/fragment/ManageFragment$t;->a:Landroid/content/Context;

    :cond_0
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/miui/appmanager/fragment/ManageFragment$k;
    .locals 1

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/appmanager/fragment/ManageFragment$t;->a:Landroid/content/Context;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/appmanager/fragment/ManageFragment$t;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/appmanager/fragment/ManageFragment;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/miui/appmanager/fragment/ManageFragment$k;

    invoke-direct {v0}, Lcom/miui/appmanager/fragment/ManageFragment$k;-><init>()V

    invoke-static {p1}, Lcom/miui/appmanager/fragment/ManageFragment;->b0(Lcom/miui/appmanager/fragment/ManageFragment;)Landroid/util/SparseArray;

    move-result-object p1

    iput-object p1, v0, Lcom/miui/appmanager/fragment/ManageFragment$k;->a:Landroid/util/SparseArray;

    :cond_0
    return-object v0
.end method

.method protected b(Lcom/miui/appmanager/fragment/ManageFragment$k;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/miui/appmanager/fragment/ManageFragment$t;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_3

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ManageFragment$t;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh3/d;

    invoke-virtual {v0}, Lh3/d;->w()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    iget-object v5, p0, Lcom/miui/appmanager/fragment/ManageFragment$t;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/appmanager/fragment/ManageFragment;

    if-nez v5, :cond_1

    return-void

    :cond_1
    iget-object v6, p1, Lcom/miui/appmanager/fragment/ManageFragment$k;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lh3/d;->s()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Lcom/miui/appmanager/AppManageUtils;->P(Landroid/util/SparseArray;Ljava/lang/String;I)J

    move-result-wide v6

    invoke-virtual {v0}, Lh3/d;->x()J

    move-result-wide v8

    cmp-long v3, v8, v6

    if-eqz v3, :cond_2

    invoke-static {v5, v6, v7}, Lcom/miui/appmanager/fragment/ManageFragment;->c0(Lcom/miui/appmanager/fragment/ManageFragment;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lh3/d;->I(Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Lh3/d;->H(J)V

    move v2, v4

    :cond_2
    add-int/lit8 v1, v1, 0x1

    move-object v0, v5

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    invoke-static {v0}, Lcom/miui/appmanager/fragment/ManageFragment;->q0(Lcom/miui/appmanager/fragment/ManageFragment;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {v0}, Lcom/miui/appmanager/fragment/ManageFragment;->D0(Lcom/miui/appmanager/fragment/ManageFragment;)Le3/a;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    const/4 p1, -0x1

    invoke-static {v0, p1}, Lcom/miui/appmanager/fragment/ManageFragment;->Q0(Lcom/miui/appmanager/fragment/ManageFragment;I)I

    goto :goto_1

    :cond_4
    invoke-static {v0, v4}, Lcom/miui/appmanager/fragment/ManageFragment;->Q0(Lcom/miui/appmanager/fragment/ManageFragment;I)I

    :cond_5
    :goto_1
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/appmanager/fragment/ManageFragment$t;->a([Ljava/lang/Void;)Lcom/miui/appmanager/fragment/ManageFragment$k;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/appmanager/fragment/ManageFragment$k;

    invoke-virtual {p0, p1}, Lcom/miui/appmanager/fragment/ManageFragment$t;->b(Lcom/miui/appmanager/fragment/ManageFragment$k;)V

    return-void
.end method
