.class Lcom/miui/apppredict/activity/FolderSearchActivity$f;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/apppredict/activity/FolderSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/miui/apppredict/activity/FolderSearchActivity$d;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/apppredict/activity/FolderSearchActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/miui/apppredict/activity/FolderSearchActivity;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/apppredict/activity/FolderSearchActivity$f;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/miui/apppredict/activity/FolderSearchActivity$d;
    .locals 0

    invoke-static {}, Lcom/miui/apppredict/activity/FolderSearchActivity;->x0()Lcom/miui/apppredict/activity/FolderSearchActivity$d;

    move-result-object p1

    return-object p1
.end method

.method protected b(Lcom/miui/apppredict/activity/FolderSearchActivity$d;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/apppredict/activity/FolderSearchActivity$f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/apppredict/activity/FolderSearchActivity;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcom/miui/apppredict/activity/FolderSearchActivity;->y0(Lcom/miui/apppredict/activity/FolderSearchActivity;Lcom/miui/apppredict/activity/FolderSearchActivity$d;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/apppredict/activity/FolderSearchActivity$f;->a([Ljava/lang/Void;)Lcom/miui/apppredict/activity/FolderSearchActivity$d;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/apppredict/activity/FolderSearchActivity$d;

    invoke-virtual {p0, p1}, Lcom/miui/apppredict/activity/FolderSearchActivity$f;->b(Lcom/miui/apppredict/activity/FolderSearchActivity$d;)V

    return-void
.end method
