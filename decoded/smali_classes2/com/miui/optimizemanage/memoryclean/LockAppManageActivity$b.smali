.class Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity$b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;->m0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Ljb/d;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;


# direct methods
.method constructor <init>(Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity$b;->a:Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Ljb/d;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljb/e;->b()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity$b;->a:Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;

    invoke-static {v0, p1}, Ljb/c;->c(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljb/d;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity$b;->a:Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;->e0(Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;Z)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity$b;->a:Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;

    invoke-virtual {v0, p1}, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;->n0(Ljava/util/List;)V

    iget-object p1, p0, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity$b;->a:Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;

    invoke-static {p1}, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;->f0(Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;)Lcom/miui/optimizemanage/memoryclean/a;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity$b;->a([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity$b;->b(Ljava/util/List;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity$b;->a:Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;->e0(Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;Z)V

    return-void
.end method
