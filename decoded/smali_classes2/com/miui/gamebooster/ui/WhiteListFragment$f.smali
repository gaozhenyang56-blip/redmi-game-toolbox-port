.class Lcom/miui/gamebooster/ui/WhiteListFragment$f;
.super Lw4/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/ui/WhiteListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lw4/d<",
        "Ljava/util/ArrayList<",
        "Lcom/miui/gamebooster/model/q;",
        ">;>;"
    }
.end annotation


# instance fields
.field private q:Landroid/content/pm/PackageManager;

.field private r:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lw4/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lq0/c;->i()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gamebooster/ui/WhiteListFragment$f;->q:Landroid/content/pm/PackageManager;

    :try_start_0
    invoke-static {}, Lcom/miui/common/e;->d()Landroid/app/Application;
    move-result-object p1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    move-result-object p1

    iput-object p1, p0, Lcom/miui/gamebooster/ui/WhiteListFragment$f;->r:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private K(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Lcom/miui/common/e;->d()Landroid/app/Application;
    move-result-object v4
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    move-result-object v4

    invoke-static {p1, v2}, La8/j0;->k(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_2

    :cond_1
    :goto_0
    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "package_name"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v6, "package_uid"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v4, v3, v1}, La8/k0;->b(Ljava/lang/Object;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    if-eqz v6, :cond_1

    iget v7, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v8, 0x800000

    and-int/2addr v7, v8

    if-eqz v7, :cond_1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-object v5, v3

    :catch_1
    :try_start_2
    invoke-static {p1, v3, v1, v2, v2}, La8/j0;->b(Landroid/content/Context;Ljava/lang/String;IZI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    invoke-static {v5}, Lbl/e;->a(Ljava/io/Closeable;)V

    return-object v0

    :catchall_1
    move-exception p1

    move-object v3, v5

    :goto_1
    invoke-static {v3}, Lbl/e;->a(Ljava/io/Closeable;)V

    throw p1
.end method


# virtual methods
.method public bridge synthetic G()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/WhiteListFragment$f;->J()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public J()Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/gamebooster/model/q;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lq0/c;->i()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0, v1}, Lcom/miui/gamebooster/ui/WhiteListFragment$f;->K(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :try_start_0
    invoke-static {v6, v6}, Lcom/miui/common/g;->b(II)Ljava/util/List;

    move-result-object v5

    invoke-static {}, Lx4/z1;->y()I

    move-result v7

    if-nez v7, :cond_1

    const/16 v7, 0x3e7

    invoke-static {v6, v7}, Lcom/miui/common/g;->b(II)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v5, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "WhiteListFragment"

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ApplicationInfo;

    iget v10, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {v5}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v0

    :cond_3
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v9, 0x1

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    invoke-static {v5}, Lx4/f1;->M(Landroid/content/pm/ApplicationInfo;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/miui/gamebooster/ui/WhiteListFragment$f;->q:Landroid/content/pm/PackageManager;

    iget-object v11, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    if-eqz v10, :cond_4

    iget v10, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    new-instance v10, Lcom/miui/gamebooster/model/d;

    iget-object v11, p0, Lcom/miui/gamebooster/ui/WhiteListFragment$f;->q:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v11}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    iget-object v12, p0, Lcom/miui/gamebooster/ui/WhiteListFragment$f;->q:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v12}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-direct {v10, v5, v9, v11, v12}, Lcom/miui/gamebooster/model/d;-><init>(Landroid/content/pm/ApplicationInfo;ZLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    new-instance v9, Lcom/miui/gamebooster/model/d;

    iget-object v10, p0, Lcom/miui/gamebooster/ui/WhiteListFragment$f;->q:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v10}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    iget-object v11, p0, Lcom/miui/gamebooster/ui/WhiteListFragment$f;->q:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v11}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-direct {v9, v5, v6, v10, v11}, Lcom/miui/gamebooster/model/d;-><init>(Landroid/content/pm/ApplicationInfo;ZLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    new-instance v2, Lcom/miui/gamebooster/model/q;

    invoke-direct {v2}, Lcom/miui/gamebooster/model/q;-><init>()V

    sget-object v5, Lcom/miui/gamebooster/model/r;->a:Lcom/miui/gamebooster/model/r;

    invoke-virtual {v2, v5}, Lcom/miui/gamebooster/model/q;->g(Lcom/miui/gamebooster/model/r;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f100067

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v10, v9, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v6

    invoke-virtual {v5, v7, v8, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/miui/gamebooster/model/q;->f(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/miui/gamebooster/model/q;->h(I)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v5}, Lcom/miui/gamebooster/model/q;->e(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    new-instance v2, Lcom/miui/gamebooster/model/q;

    invoke-direct {v2}, Lcom/miui/gamebooster/model/q;-><init>()V

    sget-object v4, Lcom/miui/gamebooster/model/r;->b:Lcom/miui/gamebooster/model/r;

    invoke-virtual {v2, v4}, Lcom/miui/gamebooster/model/q;->g(Lcom/miui/gamebooster/model/r;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f100142

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v7, v9, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-virtual {v1, v4, v5, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/miui/gamebooster/model/q;->f(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/miui/gamebooster/model/q;->h(I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v1}, Lcom/miui/gamebooster/model/q;->e(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    return-object v0
.end method
