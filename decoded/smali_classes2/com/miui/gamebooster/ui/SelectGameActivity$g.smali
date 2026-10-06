.class Lcom/miui/gamebooster/ui/SelectGameActivity$g;
.super Lw4/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/ui/SelectGameActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/ui/SelectGameActivity$g$a;
    }
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
.field private final q:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/gamebooster/ui/SelectGameActivity;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Lcom/miui/gamebooster/ui/SelectGameActivity;Landroid/content/pm/PackageManager;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lw4/d;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/SelectGameActivity$g;->q:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/miui/gamebooster/ui/SelectGameActivity$g;->r:Landroid/content/pm/PackageManager;

    return-void
.end method

.method private J()Lcom/miui/gamebooster/ui/SelectGameActivity$g$a;
    .locals 13

    invoke-virtual {p0}, Lq0/c;->i()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lm7/a;->g(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-static {}, Lx4/z1;->e()I

    move-result v5

    invoke-static {v4, v5}, Lcom/miui/common/g;->b(II)Ljava/util/List;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {}, Lx4/z1;->y()I

    move-result v6

    if-nez v6, :cond_0

    const/16 v6, 0x3e7

    invoke-static {v4, v6}, Lcom/miui/common/g;->b(II)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    goto :goto_0

    :catch_1
    move-exception v6

    move-object v5, v3

    :goto_0
    invoke-static {}, Lcom/miui/gamebooster/ui/SelectGameActivity;->h0()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ApplicationInfo;

    iget v9, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Li8/c;->B(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v5}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ApplicationInfo;

    invoke-static {v8}, Lx4/f1;->M(Landroid/content/pm/ApplicationInfo;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v9}, Lgh/b;->i(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {p0}, Lq0/c;->i()Landroid/content/Context;

    move-result-object v9

    iget-object v10, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v9, v10, v4}, Lx4/t;->y(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/miui/gamebooster/ui/SelectGameActivity$g;->r:Landroid/content/pm/PackageManager;

    iget-object v10, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    if-eqz v9, :cond_2

    new-instance v9, Lcom/miui/gamebooster/model/d;

    iget-object v10, p0, Lcom/miui/gamebooster/ui/SelectGameActivity$g;->r:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v10}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    iget-object v11, p0, Lcom/miui/gamebooster/ui/SelectGameActivity$g;->r:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v11}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    const/4 v12, 0x1

    invoke-direct {v9, v8, v12, v10, v11}, Lcom/miui/gamebooster/model/d;-><init>(Landroid/content/pm/ApplicationInfo;ZLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    iget v10, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_3
    invoke-virtual {v9, v4}, Lcom/miui/gamebooster/model/d;->g(Z)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    invoke-virtual {v9}, Lcom/miui/gamebooster/model/d;->d()Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v9, v12}, Lcom/miui/gamebooster/model/d;->h(Z)V

    goto :goto_3

    :cond_4
    new-instance v0, Lcom/miui/gamebooster/model/d$a;

    invoke-direct {v0}, Lcom/miui/gamebooster/model/d$a;-><init>()V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v0, Lcom/miui/gamebooster/ui/SelectGameActivity$g$a;

    invoke-direct {v0, v2, v1, v7, v3}, Lcom/miui/gamebooster/ui/SelectGameActivity$g$a;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/miui/gamebooster/ui/SelectGameActivity$a;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic G()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/SelectGameActivity$g;->K()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public K()Ljava/util/ArrayList;
    .locals 11
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

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/SelectGameActivity$g;->J()Lcom/miui/gamebooster/ui/SelectGameActivity$g$a;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gamebooster/ui/SelectGameActivity$g;->q:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gamebooster/ui/SelectGameActivity;

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/miui/gamebooster/ui/SelectGameActivity;->r0(Lcom/miui/gamebooster/ui/SelectGameActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-static {v2}, Lcom/miui/gamebooster/ui/SelectGameActivity;->r0(Lcom/miui/gamebooster/ui/SelectGameActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1}, Lcom/miui/gamebooster/ui/SelectGameActivity$g$a;->b()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v2, Lcom/miui/gamebooster/model/q;

    invoke-direct {v2}, Lcom/miui/gamebooster/model/q;-><init>()V

    invoke-virtual {p0}, Lq0/c;->i()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lcom/miui/gamebooster/model/r;->a:Lcom/miui/gamebooster/model/r;

    invoke-virtual {v2, v4}, Lcom/miui/gamebooster/model/q;->g(Lcom/miui/gamebooster/model/r;)V

    invoke-virtual {v1}, Lcom/miui/gamebooster/ui/SelectGameActivity$g$a;->a()Ljava/util/ArrayList;

    move-result-object v4

    const v5, 0x7f100067

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-virtual {v3, v5, v6, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/miui/gamebooster/model/q;->f(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/miui/gamebooster/model/q;->h(I)V

    invoke-virtual {v2, v4}, Lcom/miui/gamebooster/model/q;->e(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/miui/gamebooster/ui/SelectGameActivity$g$a;->c()Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Lcom/miui/gamebooster/model/q;

    invoke-direct {v2}, Lcom/miui/gamebooster/model/q;-><init>()V

    sget-object v4, Lcom/miui/gamebooster/model/r;->b:Lcom/miui/gamebooster/model/r;

    invoke-virtual {v2, v4}, Lcom/miui/gamebooster/model/q;->g(Lcom/miui/gamebooster/model/r;)V

    const v4, 0x7f100142

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/gamebooster/model/q;->f(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/miui/gamebooster/model/q;->h(I)V

    invoke-virtual {v2, v1}, Lcom/miui/gamebooster/model/q;->e(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method
