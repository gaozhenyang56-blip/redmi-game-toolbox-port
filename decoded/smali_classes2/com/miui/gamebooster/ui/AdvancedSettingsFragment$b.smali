.class Lcom/miui/gamebooster/ui/AdvancedSettingsFragment$b;
.super Lw4/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/ui/AdvancedSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lw4/d<",
        "Ljava/util/ArrayList<",
        "Lcom/miui/gamebooster/model/d;",
        ">;>;"
    }
.end annotation


# instance fields
.field private q:Landroid/content/pm/PackageManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lw4/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lq0/c;->i()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsFragment$b;->q:Landroid/content/pm/PackageManager;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/miui/gamebooster/ui/AdvancedSettingsFragment$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/ui/AdvancedSettingsFragment$b;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic G()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/AdvancedSettingsFragment$b;->J()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public J()Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/gamebooster/model/d;",
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
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Lcom/miui/common/e;->d()Landroid/app/Application;
    move-result-object v4
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v5, "AdvancedSettingsFrag"

    const-string v6, "fetch IPackageManager error: "

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, v3

    :goto_0
    const/4 v5, -0x1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x1

    :try_start_1
    invoke-static {v1, v2}, La8/j0;->k(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "package_name"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v9, "package_uid"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v4, v3, v5}, La8/k0;->b(Ljava/lang/Object;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    if-eqz v9, :cond_1

    iget-object v10, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsFragment$b;->q:Landroid/content/pm/PackageManager;

    iget-object v11, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    if-eqz v10, :cond_1

    iget v10, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v11, 0x800000

    and-int/2addr v10, v11

    if-eqz v10, :cond_1

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1, v9}, Lx4/f1;->P(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/miui/gamebooster/model/d;

    iget-object v12, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsFragment$b;->q:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v12}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-direct {v11, v9, v7, v10, v12}, Lcom/miui/gamebooster/model/d;-><init>(Landroid/content/pm/ApplicationInfo;ZLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    invoke-static {v1, v3, v5, v7, v2}, La8/j0;->b(Landroid/content/Context;Ljava/lang/String;IZI)V

    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v3, v8

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-object v8, v3

    :catch_2
    :try_start_3
    invoke-static {v1, v3, v5, v7, v2}, La8/j0;->b(Landroid/content/Context;Ljava/lang/String;IZI)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    invoke-static {v8}, Lbl/e;->a(Ljava/io/Closeable;)V

    return-object v0

    :goto_3
    invoke-static {v3}, Lbl/e;->a(Ljava/io/Closeable;)V

    throw v0
.end method
