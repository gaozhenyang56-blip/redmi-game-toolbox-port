.class public Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$j;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/miui/gamebooster/model/w;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$j;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/w;",
            ">;"
        }
    .end annotation

    iget-object p1, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$j;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$j;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Li8/c;->B(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->y0(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Li8/c;->A(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->y0(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v2

    invoke-static {v2}, La8/j0;->g(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$j;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-static {v3}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->h0(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {v3}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->h0(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v3}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->o0(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    invoke-static {v3}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->o0(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v3}, Li4/a;->k(Landroid/content/Context;)Li4/a;

    move-result-object p1

    invoke-virtual {p1, v3}, Li4/a;->o(Li4/a$d;)V

    invoke-virtual {p1}, Li4/a;->j()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    if-eqz v4, :cond_2

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->D0(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    :try_start_0
    invoke-virtual {p1, v5}, Li4/a;->f(Ljava/lang/String;)Li4/b;

    move-result-object v7

    new-instance v13, Lh8/r;

    const-string v8, "pkg_icon://"

    invoke-virtual {v8, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Li4/b;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Li4/b;->c()I

    move-result v11

    invoke-static {v3}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->h0(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    move-object v7, v13

    move-object v8, v5

    invoke-direct/range {v7 .. v12}, Lh8/r;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-static {v3}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->h0(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v13, v7}, Lh8/r;->h(Z)V

    invoke-virtual {v13}, Lh8/r;->f()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v13, v6}, Lh8/r;->g(Z)V

    :cond_4
    invoke-virtual {v13}, Lh8/r;->f()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_6
    new-instance p1, Lh8/r$a;

    invoke-direct {p1}, Lh8/r$a;-><init>()V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/miui/gamebooster/model/w;

    invoke-direct {v1}, Lcom/miui/gamebooster/model/w;-><init>()V

    sget-object v2, Lcom/miui/gamebooster/model/r;->a:Lcom/miui/gamebooster/model/r;

    invoke-virtual {v1, v2}, Lcom/miui/gamebooster/model/w;->f(Lcom/miui/gamebooster/model/r;)V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f10000a

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    new-array v8, v6, [Ljava/lang/Object;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-virtual {v2, v5, v7, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gamebooster/model/w;->e(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/gamebooster/model/w;->g(I)V

    invoke-virtual {v1, v4}, Lcom/miui/gamebooster/model/w;->h(Ljava/util/List;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/gamebooster/model/w;

    invoke-direct {v1}, Lcom/miui/gamebooster/model/w;-><init>()V

    sget-object v2, Lcom/miui/gamebooster/model/r;->b:Lcom/miui/gamebooster/model/r;

    invoke-virtual {v1, v2}, Lcom/miui/gamebooster/model/w;->f(Lcom/miui/gamebooster/model/r;)V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10007b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gamebooster/model/w;->e(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/gamebooster/model/w;->g(I)V

    invoke-virtual {v1, v0}, Lcom/miui/gamebooster/model/w;->h(Ljava/util/List;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1

    :cond_7
    :goto_2
    return-object v0
.end method

.method protected b(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/w;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$j;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-static {v0, p1}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->s0(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;Ljava/util/List;)Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gamebooster/model/w;

    invoke-virtual {v3}, Lcom/miui/gamebooster/model/w;->c()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->t0(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-static {v0}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->r0(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gamebooster/model/w;

    invoke-static {v0}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->t0(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3}, Lcom/miui/gamebooster/model/w;->d()Ljava/util/List;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_3
    invoke-static {v0}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->q0(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;)Lcom/miui/gamebooster/ui/c;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-static {v0}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->q0(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;)Lcom/miui/gamebooster/ui/c;

    move-result-object p1

    invoke-static {v0}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->t0(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/miui/gamebooster/ui/c;->n(Ljava/util/List;)V

    invoke-static {v0}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->q0(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;)Lcom/miui/gamebooster/ui/c;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :cond_4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f10002c

    invoke-virtual {p1, v3, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->u0(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->u0(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->v0(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;)V

    invoke-static {v0}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->r0(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;)Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->w0(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;Ljava/util/List;)V

    :cond_5
    :goto_2
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$j;->a([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$j;->b(Ljava/util/List;)V

    return-void
.end method
