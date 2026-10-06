.class Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity$d;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field a:[Ljava/lang/String;

.field b:I

.field c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;[Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity$d;->b:I

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity$d;->c:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity$d;->a:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity$d;->a:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x0

    if-ge v3, v1, :cond_2

    aget-object v5, v0, v3

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_0

    return-object v4

    :cond_0
    const/4 v6, 0x1

    invoke-static {p1, v5, v2, v6, v6}, Lm2/f;->J(Landroid/content/Context;Ljava/lang/String;III)V

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_1

    return-object v4

    :cond_1
    const/4 v4, 0x2

    invoke-static {p1, v5, v2, v6, v4}, Lm2/f;->J(Landroid/content/Context;Ljava/lang/String;III)V

    new-array v4, v6, [Ljava/lang/Integer;

    iget v5, p0, Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity$d;->b:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity$d;->b:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p0, v4}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const-string p1, "RemoveBlacklistActivity"

    const-string v0, "Remove blacklist completed."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method protected b(Ljava/lang/Void;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity$d;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;->e0(Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;)V

    :cond_0
    return-void
.end method

.method protected varargs c([Ljava/lang/Integer;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity$d;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;->f0(Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/ProgressDialog;->setProgress(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity$d;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity$d;->b(Ljava/lang/Void;)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity$d;->c([Ljava/lang/Integer;)V

    return-void
.end method
