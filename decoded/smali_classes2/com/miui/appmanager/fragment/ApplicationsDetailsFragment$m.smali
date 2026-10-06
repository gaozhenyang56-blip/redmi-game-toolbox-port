.class Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$m;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;
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
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;",
            ">;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method public constructor <init>(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;I)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$m;->a:Ljava/lang/ref/WeakReference;

    iput p2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$m;->b:I

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$m;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->g1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {p1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->v0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$m;->b:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    invoke-static {p1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->w0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$u;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected b(Ljava/lang/Void;)V
    .locals 2

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$m;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;

    if-eqz p1, :cond_3

    sget-object v0, Le3/c;->d:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->v0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->B0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->C0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Landroid/view/MenuItem;

    move-result-object p1

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->C0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Landroid/view/MenuItem;

    move-result-object p1

    const/4 v0, 0x1

    :goto_1
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_3
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$m;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$m;->b(Ljava/lang/Void;)V

    return-void
.end method
