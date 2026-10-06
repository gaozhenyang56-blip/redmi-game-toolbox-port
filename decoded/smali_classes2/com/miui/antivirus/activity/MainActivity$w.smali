.class Lcom/miui/antivirus/activity/MainActivity$w;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antivirus/activity/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "w"
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
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/antivirus/activity/MainActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/antivirus/activity/MainActivity$w;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9

    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity$w;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/antivirus/activity/MainActivity;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const-wide/high16 v1, 0x20000000000000L

    invoke-static {p1, v1, v2}, Lcom/miui/permcenter/n;->A(Landroid/content/Context;J)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/permcenter/AppPermissionInfo;

    invoke-virtual {v4}, Lcom/miui/permcenter/AppPermissionInfo;->getPermissionToAction()Ljava/util/HashMap;

    move-result-object v5

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    invoke-static {p1}, Lcom/miui/antivirus/activity/MainActivity;->e0(Lcom/miui/antivirus/activity/MainActivity;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/permission/PermissionManager;->getInstance(Landroid/content/Context;)Lcom/miui/permission/PermissionManager;

    move-result-object v5

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v4}, Lcom/miui/permcenter/AppPermissionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v8

    invoke-virtual {v5, v1, v2, v6, v7}, Lcom/miui/permission/PermissionManager;->setApplicationPermission(JI[Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method protected b(Ljava/lang/Void;)V
    .locals 3

    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity$w;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/antivirus/activity/MainActivity;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/miui/antivirus/activity/MainActivity;->e0(Lcom/miui/antivirus/activity/MainActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f121a7f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-static {p1}, Lcom/miui/antivirus/activity/MainActivity;->P0(Lcom/miui/antivirus/activity/MainActivity;)Lo2/g;

    move-result-object v0

    invoke-virtual {v0, v2}, Lo2/g;->q0(Z)V

    invoke-static {p1}, Lcom/miui/antivirus/activity/MainActivity;->d0(Lcom/miui/antivirus/activity/MainActivity;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/antivirus/activity/MainActivity$w;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/antivirus/activity/MainActivity$w;->b(Ljava/lang/Void;)V

    return-void
.end method
