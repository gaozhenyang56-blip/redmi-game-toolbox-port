.class Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$z;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "z"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/app/ActivityManager$TaskDescription;",
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


# direct methods
.method public constructor <init>(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$z;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Landroid/app/ActivityManager$TaskDescription;
    .locals 5

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    iget-object p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$z;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->r0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->g1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.android.settings"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, v4}, Lcom/miui/appmanager/AppManageUtils;->s(Ljava/lang/Object;Landroid/content/pm/PackageManager;Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->g1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2}, Lx4/o0;->l(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    const v2, 0x7f1201b8

    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v2, p1, v1}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    const-string v1, "ApplicationsDetailsActivity"

    const-string v2, "setTaskDescrition getApplicationInfo error"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-object v0
.end method

.method protected b(Landroid/app/ActivityManager$TaskDescription;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$z;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    :cond_1
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$z;->a([Ljava/lang/Void;)Landroid/app/ActivityManager$TaskDescription;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {p0, p1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$z;->b(Landroid/app/ActivityManager$TaskDescription;)V

    return-void
.end method
