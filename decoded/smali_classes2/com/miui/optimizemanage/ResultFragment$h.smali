.class Lcom/miui/optimizemanage/ResultFragment$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/optimizemanage/ResultFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "h"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/optimizemanage/ResultFragment;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/miui/optimizemanage/ResultFragment;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/optimizemanage/ResultFragment$h;->a:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/optimizemanage/ResultFragment$h;->b:Landroid/content/Context;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    iget-object v0, p0, Lcom/miui/optimizemanage/ResultFragment$h;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/optimizemanage/ResultFragment;

    iget-object v1, p0, Lcom/miui/optimizemanage/ResultFragment$h;->b:Landroid/content/Context;

    if-eqz v1, :cond_3

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {v1}, Ljb/c;->d(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/miui/optimizemanage/ResultFragment;->d0(Lcom/miui/optimizemanage/ResultFragment;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/optimizemanage/optimizeresult/c;

    instance-of v5, v4, Lcom/miui/optimizemanage/optimizeresult/k;

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    check-cast v4, Lcom/miui/optimizemanage/optimizeresult/k;

    iget-object v3, p0, Lcom/miui/optimizemanage/ResultFragment$h;->b:Landroid/content/Context;

    invoke-virtual {v4, v3, v1}, Lcom/miui/optimizemanage/optimizeresult/k;->k(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_1

    :cond_1
    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-static {v0}, Lcom/miui/optimizemanage/ResultFragment;->f0(Lcom/miui/optimizemanage/ResultFragment;)Lcom/miui/optimizemanage/optimizeresult/j;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->clear()V

    invoke-static {v0}, Lcom/miui/optimizemanage/ResultFragment;->f0(Lcom/miui/optimizemanage/ResultFragment;)Lcom/miui/optimizemanage/optimizeresult/j;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    :goto_1
    invoke-static {v0}, Lcom/miui/optimizemanage/ResultFragment;->f0(Lcom/miui/optimizemanage/ResultFragment;)Lcom/miui/optimizemanage/optimizeresult/j;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    invoke-static {v0}, Lcom/miui/optimizemanage/ResultFragment;->d0(Lcom/miui/optimizemanage/ResultFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-static {v0}, Lcom/miui/optimizemanage/ResultFragment;->d0(Lcom/miui/optimizemanage/ResultFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method
