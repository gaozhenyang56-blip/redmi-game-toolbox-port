.class Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$f;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
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
            "Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field final synthetic c:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;


# direct methods
.method public constructor <init>(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$f;->c:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$f;->a:Ljava/lang/ref/WeakReference;

    iput p3, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$f;->b:I

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$f;->c:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    invoke-static {v0}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->r0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)Lwa/a;

    move-result-object v0

    iget-object v0, v0, Lwa/a;->pkgName:Ljava/lang/String;

    iget v1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$f;->b:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$f;->c:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    invoke-static {p1}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->h0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$i;

    move-result-object p1

    const/16 v0, -0x3ed

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected b(Ljava/lang/Void;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->n:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$f;->c:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    invoke-static {v0}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->r0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)Lwa/a;

    move-result-object v0

    iget-object v0, v0, Lwa/a;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$f;->c:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    invoke-static {p1}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->k0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)Landroid/view/MenuItem;

    move-result-object p1

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$f;->c:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    invoke-static {p1}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->k0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)Landroid/view/MenuItem;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_1
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$f;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$f;->b(Ljava/lang/Void;)V

    return-void
.end method
