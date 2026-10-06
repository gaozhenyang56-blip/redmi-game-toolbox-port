.class public Lnc/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/PermissionGroupInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getAllPermissionGroups(I)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move v2, v0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    aget-object v4, p1, v2

    invoke-virtual {v3, v4, v0}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :catch_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Z[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 16
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Loc/f;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Loc/e$b;

    invoke-direct {v3, v2}, Loc/e$b;-><init>(Landroid/content/pm/PackageManager;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    move-object/from16 v6, p2

    invoke-static {v0, v6}, Lnc/b;->a(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :catch_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PermissionGroupInfo;

    if-nez p1, :cond_0

    iget-object v11, v7, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-static {v11}, Loc/i;->g(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v11, v7, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-static {v2, v11}, Loc/i;->d(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/util/List;

    move-result-object v11
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v12, v10

    :cond_1
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/PermissionInfo;

    iget-object v14, v13, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-interface {v5, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v13}, Lnc/a;->a(Landroid/content/pm/PermissionInfo;)I

    move-result v14

    if-ne v14, v9, :cond_1

    iget v13, v13, Landroid/content/pm/PermissionInfo;->flags:I

    and-int v14, v13, v8

    if-eqz v14, :cond_1

    and-int/lit8 v13, v13, 0x2

    if-nez v13, :cond_1

    move v12, v9

    goto :goto_1

    :cond_2
    if-nez v12, :cond_3

    goto :goto_0

    :cond_3
    new-instance v8, Loc/e;

    iget-object v9, v7, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v0, v9, v1, v3}, Loc/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Loc/e$b;)V

    invoke-virtual {v8, v10}, Loc/e;->k(Z)V

    new-instance v9, Loc/f;

    iget-object v10, v7, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    iget-object v7, v7, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8}, Loc/e;->f()I

    move-result v11

    invoke-virtual {v8}, Loc/e;->b()I

    move-result v8

    invoke-direct {v9, v10, v7, v11, v8}, Loc/f;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v6, 0x1000

    invoke-virtual {v2, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/PackageInfo;

    iget-object v11, v11, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v11, :cond_6

    goto :goto_2

    :cond_6
    array-length v12, v11

    move v13, v10

    :goto_3
    if-ge v13, v12, :cond_5

    aget-object v14, v11, v13

    invoke-interface {v6, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_7
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    if-nez v7, :cond_9

    goto :goto_4

    :cond_9
    array-length v11, v7

    move v12, v10

    :goto_5
    if-ge v12, v11, :cond_8

    aget-object v13, v7, v12

    iget-object v14, v13, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-interface {v5, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    goto :goto_6

    :cond_a
    invoke-static {v13}, Lnc/a;->a(Landroid/content/pm/PermissionInfo;)I

    move-result v14

    if-ne v14, v9, :cond_e

    iget v14, v13, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/2addr v14, v8

    if-nez v14, :cond_b

    goto :goto_6

    :cond_b
    if-nez p1, :cond_c

    iget-object v14, v13, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-static {v14}, Loc/i;->g(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_c

    goto :goto_6

    :cond_c
    iget-object v14, v13, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-interface {v6, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_d

    goto :goto_6

    :cond_d
    new-instance v14, Loc/e;

    iget-object v15, v13, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-direct {v14, v0, v15, v1, v3}, Loc/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Loc/e$b;)V

    invoke-virtual {v14, v10}, Loc/e;->k(Z)V

    new-instance v15, Loc/f;

    iget-object v8, v13, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iget-object v13, v13, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14}, Loc/e;->f()I

    move-result v9

    invoke-virtual {v14}, Loc/e;->b()I

    move-result v14

    invoke-direct {v15, v8, v13, v9, v14}, Loc/f;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v4, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    :goto_6
    add-int/lit8 v12, v12, 0x1

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v9, 0x1

    goto :goto_5

    :cond_f
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    :goto_7
    if-ge v10, v0, :cond_11

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Loc/f;

    invoke-virtual {v1}, Loc/f;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.permission-group.UNDEFINED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {v1}, Loc/f;->e()I

    move-result v1

    if-nez v1, :cond_10

    invoke-interface {v4, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_8

    :cond_10
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_11
    :goto_8
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v4
.end method
