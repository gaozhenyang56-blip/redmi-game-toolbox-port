.class Lcom/miui/gamebooster/ui/BoosterFragment$w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/ui/BoosterFragment;->W1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/ui/BoosterFragment;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/BoosterFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$w;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const-string v0, "already_added_game"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    :try_start_0
    invoke-static {}, Lcom/miui/common/e;->d()Landroid/app/Application;
    move-result-object v7
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    move-result-object v7

    iget-object v8, p0, Lcom/miui/gamebooster/ui/BoosterFragment$w;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-static {v8}, Lcom/miui/gamebooster/ui/BoosterFragment;->L0(Lcom/miui/gamebooster/ui/BoosterFragment;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v5}, La8/j0;->k(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "package_name"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v9, "package_uid"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v7, v4, v6}, La8/k0;->b(Ljava/lang/Object;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v10, p0, Lcom/miui/gamebooster/ui/BoosterFragment$w;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-static {v10}, Lcom/miui/gamebooster/ui/BoosterFragment;->o0(Lcom/miui/gamebooster/ui/BoosterFragment;)Landroid/content/pm/PackageManager;

    move-result-object v10

    iget-object v11, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    if-eqz v10, :cond_0

    iget v10, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v11, 0x800000

    and-int/2addr v10, v11

    if-eqz v10, :cond_0

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v10, p0, Lcom/miui/gamebooster/ui/BoosterFragment$w;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-static {v10}, Lcom/miui/gamebooster/ui/BoosterFragment;->M0(Lcom/miui/gamebooster/ui/BoosterFragment;)Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v9}, Lx4/f1;->P(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/miui/gamebooster/model/d;

    iget-object v12, p0, Lcom/miui/gamebooster/ui/BoosterFragment$w;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-static {v12}, Lcom/miui/gamebooster/ui/BoosterFragment;->o0(Lcom/miui/gamebooster/ui/BoosterFragment;)Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-direct {v11, v9, v3, v10, v12}, Lcom/miui/gamebooster/model/d;-><init>(Landroid/content/pm/ApplicationInfo;ZLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    iget-object v9, p0, Lcom/miui/gamebooster/ui/BoosterFragment$w;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-static {v9}, Lcom/miui/gamebooster/ui/BoosterFragment;->N0(Lcom/miui/gamebooster/ui/BoosterFragment;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v4, v6, v3, v5}, La8/j0;->b(Landroid/content/Context;Ljava/lang/String;IZI)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v4, v9}, La8/p1;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-object v8, v4

    :catch_1
    :try_start_2
    iget-object v1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$w;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-static {v1}, Lcom/miui/gamebooster/ui/BoosterFragment;->O0(Lcom/miui/gamebooster/ui/BoosterFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4, v6, v3, v5}, La8/j0;->b(Landroid/content/Context;Ljava/lang/String;IZI)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v4, v1}, La8/p1;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    invoke-static {v8}, Lbl/e;->a(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment$w;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    new-instance v1, Lcom/miui/gamebooster/ui/BoosterFragment$w$a;

    iget-object v3, p0, Lcom/miui/gamebooster/ui/BoosterFragment$w;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-static {v3}, Lcom/miui/gamebooster/ui/BoosterFragment;->P0(Lcom/miui/gamebooster/ui/BoosterFragment;)Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, p0, v3, v2}, Lcom/miui/gamebooster/ui/BoosterFragment$w$a;-><init>(Lcom/miui/gamebooster/ui/BoosterFragment$w;Landroid/app/Activity;Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Lcom/miui/gamebooster/ui/BoosterFragment;->S0(Lcom/miui/gamebooster/ui/BoosterFragment;Lcom/miui/common/base/asyn/b;)V

    return-void

    :catchall_1
    move-exception v0

    move-object v4, v8

    :goto_2
    invoke-static {v4}, Lbl/e;->a(Ljava/io/Closeable;)V

    throw v0
.end method
