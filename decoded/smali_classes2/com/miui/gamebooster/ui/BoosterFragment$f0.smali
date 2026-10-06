.class Lcom/miui/gamebooster/ui/BoosterFragment$f0;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/ui/BoosterFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList<",
        "Lcom/miui/gamebooster/model/d;",
        ">;",
        "Ljava/util/ArrayList<",
        "Lcom/miui/gamebooster/model/d;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/gamebooster/ui/BoosterFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/gamebooster/ui/BoosterFragment;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment$f0;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/miui/gamebooster/model/d;",
            ">;"
        }
    .end annotation

    iget-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$f0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/gamebooster/ui/BoosterFragment;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lcom/miui/gamebooster/ui/BoosterFragment;->m0(Lcom/miui/gamebooster/ui/BoosterFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, La8/j0;->a(Landroid/content/Context;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lcom/miui/gamebooster/ui/BoosterFragment;->n0(Lcom/miui/gamebooster/ui/BoosterFragment;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "top_200_games.json"

    invoke-static {v3, v4}, La8/g;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4

    invoke-static {p1}, Lcom/miui/gamebooster/ui/BoosterFragment;->o0(Lcom/miui/gamebooster/ui/BoosterFragment;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-static {v6, v1}, La8/k0;->m(Landroid/content/pm/PackageManager;Ljava/util/List;)Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    invoke-static {v6}, Lx4/f1;->M(Landroid/content/pm/ApplicationInfo;)Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {p1, v6}, Lcom/miui/gamebooster/ui/BoosterFragment;->V1(Landroid/content/pm/ApplicationInfo;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_1
    invoke-static {p1}, Lcom/miui/gamebooster/ui/BoosterFragment;->p0(Lcom/miui/gamebooster/ui/BoosterFragment;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v6}, Lx4/f1;->P(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1}, Lcom/miui/gamebooster/ui/BoosterFragment;->q0(Lcom/miui/gamebooster/ui/BoosterFragment;)Landroid/content/Context;

    move-result-object v8

    iget-object v9, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v10, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8, v7, v9, v10, v4}, La8/j0;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    new-instance v8, Lcom/miui/gamebooster/model/d;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/BoosterFragment;->o0(Lcom/miui/gamebooster/ui/BoosterFragment;)Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-direct {v8, v6, v5, v7, v9}, Lcom/miui/gamebooster/model/d;-><init>(Landroid/content/pm/ApplicationInfo;ZLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    new-array v1, v5, [Ljava/util/ArrayList;

    aput-object v0, v1, v4

    invoke-virtual {p0, v1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/miui/gamebooster/ui/BoosterFragment;->r0(Lcom/miui/gamebooster/ui/BoosterFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lcom/miui/gamebooster/ui/BoosterFragment;->o0(Lcom/miui/gamebooster/ui/BoosterFragment;)Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-static {v0, p1, v2}, La8/k0;->l(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method protected b(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/gamebooster/model/d;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment$f0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/ui/BoosterFragment;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-static {v0}, Lcom/miui/gamebooster/ui/BoosterFragment;->s0(Lcom/miui/gamebooster/ui/BoosterFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/miui/gamebooster/ui/BoosterFragment;->s0(Lcom/miui/gamebooster/ui/BoosterFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    invoke-static {v0}, Lcom/miui/gamebooster/ui/BoosterFragment;->s0(Lcom/miui/gamebooster/ui/BoosterFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    invoke-static {v0}, Lcom/miui/gamebooster/ui/BoosterFragment;->t0(Lcom/miui/gamebooster/ui/BoosterFragment;)V

    invoke-static {v0}, Lcom/miui/gamebooster/ui/BoosterFragment;->v0(Lcom/miui/gamebooster/ui/BoosterFragment;)V

    :cond_2
    invoke-static {v0}, Lcom/miui/gamebooster/ui/BoosterFragment;->w0(Lcom/miui/gamebooster/ui/BoosterFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-static {v0}, Lcom/miui/gamebooster/ui/BoosterFragment;->s0(Lcom/miui/gamebooster/ui/BoosterFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/miui/gamebooster/ui/BoosterFragment;->x0(Landroid/content/Context;I)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected varargs c([Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/ArrayList<",
            "Lcom/miui/gamebooster/model/d;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment$f0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/ui/BoosterFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/miui/gamebooster/ui/BoosterFragment;->s0(Lcom/miui/gamebooster/ui/BoosterFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-static {v0}, Lcom/miui/gamebooster/ui/BoosterFragment;->s0(Lcom/miui/gamebooster/ui/BoosterFragment;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    aget-object p1, p1, v2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Lcom/miui/gamebooster/ui/BoosterFragment;->t0(Lcom/miui/gamebooster/ui/BoosterFragment;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/ui/BoosterFragment$f0;->a([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/ui/BoosterFragment$f0;->b(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/ui/BoosterFragment$f0;->c([Ljava/util/ArrayList;)V

    return-void
.end method
