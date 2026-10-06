.class Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$h;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "h"
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
            "Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lu7/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;",
            "Ljava/util/List<",
            "Lu7/a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$h;->a:Landroid/content/Context;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$h;->b:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$h;->c:Ljava/util/List;

    return-void
.end method

.method private b(J)Ljava/lang/String;
    .locals 7

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$h;->a:Landroid/content/Context;

    const p2, 0x7f12025f

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/32 p1, 0x5265c00

    cmp-long v2, v0, p1

    if-gtz v2, :cond_1

    iget-object p1, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$h;->a:Landroid/content/Context;

    const p2, 0x7f120264

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-wide v2, 0x9a7ec800L

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gtz v2, :cond_2

    div-long/2addr v0, p1

    long-to-int p1, v0

    iget-object p2, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$h;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f100016

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p2, v0, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const-wide v5, 0x73df16000L

    cmp-long v2, v0, v5

    const-wide/16 v5, 0x1e

    div-long/2addr v0, p1

    div-long/2addr v0, v5

    if-gtz v2, :cond_3

    long-to-int p1, v0

    iget-object p2, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$h;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f100017

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p2, v0, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const-wide/16 p1, 0xc

    div-long/2addr v0, p1

    long-to-int p1, v0

    iget-object p2, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$h;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f100018

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p2, v0, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    iget-object p1, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$h;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    invoke-static {p1}, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->m0(Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;)Landroid/util/SparseArray;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$h;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$h;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lu7/a;

    invoke-virtual {v3}, Lu7/a;->f()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-virtual {v3}, Lu7/a;->d()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v1, v5, v4}, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->n0(Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;Landroid/util/SparseArray;Ljava/lang/String;I)J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$h;->b(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lu7/a;->q(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method protected c(Ljava/lang/Void;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$h;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->e0(Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;)Lq6/f;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->e0(Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;)Lq6/f;

    move-result-object v0

    invoke-virtual {v0}, Lq6/f;->q()V

    invoke-static {p1}, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->e0(Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;)Lq6/f;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$h;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Lq6/f;->p(Ljava/util/List;)V

    invoke-static {p1}, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->e0(Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;)Lq6/f;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$h;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$h;->c(Ljava/lang/Void;)V

    return-void
.end method
