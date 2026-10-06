.class public final Ljc/l;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic a()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljc/l;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic b(Landroid/content/Context;Ljava/lang/String;IJI)Z
    .locals 0

    invoke-static/range {p0 .. p5}, Ljc/l;->n(Landroid/content/Context;Ljava/lang/String;IJI)Z

    move-result p0

    return p0
.end method

.method public static final synthetic c(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;IJ)Z
    .locals 0

    invoke-static/range {p0 .. p6}, Ljc/l;->o(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;IJ)Z

    move-result p0

    return p0
.end method

.method private static final d()Ljava/lang/String;
    .locals 10

    sget-object v0, Lz4/b;->c:Ljava/util/List;

    const-string v1, "sSupportTerminalPackage"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "\', \'"

    const-string v2, "(\'"

    const-string v3, "\')"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x38

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lqj/l;->E(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lak/l;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lz4/b;->d:Ljava/util/List;

    const-string v2, "sSupportTerminalOp"

    invoke-static {v1, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, ", "

    const-string v3, "("

    const-string v4, ")"

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x38

    const/4 v9, 0x0

    invoke-static/range {v1 .. v9}, Lqj/l;->E(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lak/l;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pkgName IN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AND calleePkg LIKE \'@miui:device:%\' AND op IN "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final e(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "time"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, " "

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ljk/f;->f0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public static final f(I)Z
    .locals 1

    invoke-static {}, Lx4/z1;->e()I

    move-result v0

    if-eq v0, p0, :cond_1

    const/16 v0, 0x3e7

    if-ne p0, v0, :cond_0

    invoke-static {}, Lx4/z1;->r()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final g(Ljava/lang/String;)Z
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "value"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_2

    const-string v0, "null"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    return v1
.end method

.method public static final h(Landroid/content/Context;Ljava/util/List;IIIJLjava/util/Set;Ltj/d;)Ljava/lang/Object;
    .locals 12
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljc/g;",
            ">;IIIJ",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ltj/d<",
            "-",
            "Ljc/b;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Llk/w0;->b()Llk/d0;

    move-result-object v0

    new-instance v11, Ljc/l$a;

    const/4 v10, 0x0

    move-object v1, v11

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object v7, p0

    move-object/from16 v8, p7

    move-object v9, p1

    invoke-direct/range {v1 .. v10}, Ljc/l$a;-><init>(IIIJLandroid/content/Context;Ljava/util/Set;Ljava/util/List;Ltj/d;)V

    move-object/from16 v1, p8

    invoke-static {v0, v11, v1}, Llk/g;->c(Ltj/g;Lak/p;Ltj/d;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final i(Landroid/content/Context;Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 19
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/miui/permcenter/AppPermissionInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    move-object/from16 v7, p0

    invoke-static {v7, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "perms"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filterPackages"

    move-object/from16 v2, p2

    invoke-static {v2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_b

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v10, 0x3

    const-string v3, "pkgName"

    const-string v4, "user"

    const-string v5, "permissionId"

    const-string v6, "endTime"

    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v13

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "permissionId == "

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v11

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "( "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    move v11, v5

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    const/4 v15, 0x1

    if-eqz v12, :cond_3

    add-int/lit8 v12, v11, 0x1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v15

    if-ge v11, v0, :cond_2

    const-string v0, " OR "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    move-object/from16 v1, p1

    move v11, v12

    goto :goto_1

    :cond_3
    const-string v0, " ) AND mode == 0 AND calleePkg == \'null\'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v16, "endTime DESC , _id DESC"

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/16 v6, 0x40

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/permcenter/AppPermissionInfo;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/miui/permcenter/AppPermissionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/miui/permcenter/AppPermissionInfo;->getUid()I

    move-result v6

    invoke-static {v6}, Lx4/z1;->m(I)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "temp"

    invoke-static {v2, v6}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Lcom/miui/permission/PermissionContract;->RECORD_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v2, 0x0

    move v4, v15

    move-object v15, v2

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v11, :cond_b

    :goto_3
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lbk/m;->b(Ljava/lang/Object;)V

    check-cast v1, Lcom/miui/permcenter/AppPermissionInfo;

    invoke-virtual {v1}, Lcom/miui/permcenter/AppPermissionInfo;->getUsageEvent()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    goto/16 :goto_5

    :cond_5
    invoke-interface {v11, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmc/c;->c(Ljava/lang/String;)J

    move-result-wide v13

    cmp-long v1, v13, v8

    if-lez v1, :cond_6

    goto :goto_3

    :cond_6
    invoke-static {v8, v9, v13, v14}, Lmc/c;->i(JJ)I

    move-result v13

    const/4 v1, 0x6

    if-le v13, v1, :cond_7

    goto/16 :goto_7

    :cond_7
    const/4 v14, 0x2

    invoke-interface {v11, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-string v1, "callerPkgName"

    invoke-static {v2, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v15, 0x0

    move-object/from16 v1, p0

    move v10, v4

    move/from16 v16, v5

    move-wide v4, v6

    move-wide/from16 v17, v6

    const/16 v7, 0x40

    move v6, v15

    invoke-static/range {v1 .. v6}, Ljc/l;->n(Landroid/content/Context;Ljava/lang/String;IJI)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_6

    :cond_8
    if-ge v13, v10, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120163

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000e5

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v16

    invoke-virtual {v1, v2, v13, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_4
    const-string v2, "if (timeGap < 1) context\u2026Gap\n                    )"

    invoke-static {v1, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Ljc/h;->a:Ljc/h;

    move-wide/from16 v3, v17

    invoke-virtual {v2, v3, v4, v10, v10}, Ljc/h;->f(JZI)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v1, v4, v16

    invoke-virtual {v3, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.resources.getStr\u2026ageInfoRes, timeWillShow)"

    invoke-static {v1, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lbk/m;->b(Ljava/lang/Object;)V

    check-cast v2, Lcom/miui/permcenter/AppPermissionInfo;

    invoke-virtual {v2, v1}, Lcom/miui/permcenter/AppPermissionInfo;->setUsageEvent(Ljava/lang/String;)V

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lbk/m;->b(Ljava/lang/Object;)V

    check-cast v1, Lcom/miui/permcenter/AppPermissionInfo;

    invoke-virtual {v1, v13}, Lcom/miui/permcenter/AppPermissionInfo;->setUsageRecentDay(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :cond_a
    :goto_5
    move v10, v4

    move/from16 v16, v5

    move v7, v6

    const/4 v14, 0x2

    :goto_6
    move v6, v7

    move v4, v10

    move/from16 v5, v16

    const/4 v10, 0x3

    move-object/from16 v7, p0

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v11

    goto :goto_a

    :catch_0
    move-exception v0

    move-object v1, v11

    goto :goto_8

    :cond_b
    :goto_7
    invoke-static {v11}, Ldb/b;->a(Landroid/database/Cursor;)V

    goto :goto_9

    :catchall_1
    move-exception v0

    goto :goto_a

    :catch_1
    move-exception v0

    :goto_8
    :try_start_2
    const-string v2, "MIUIPrivacy-UsageUtil"

    const-string v3, "loadAppBehaviorByPkgNameAndUser error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v1}, Ldb/b;->a(Landroid/database/Cursor;)V

    :goto_9
    return-void

    :goto_a
    invoke-static {v1}, Ldb/b;->a(Landroid/database/Cursor;)V

    throw v0

    :cond_c
    :goto_b
    return-void
.end method

.method public static final j(Landroid/content/Context;Ljava/lang/String;ILjava/util/List;[ILtj/d;)Ljava/lang/Object;
    .locals 9
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljc/g;",
            ">;[I",
            "Ltj/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Llk/w0;->b()Llk/d0;

    move-result-object v0

    new-instance v8, Ljc/l$b;

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p1

    move v3, p2

    move-object v4, p4

    move-object v5, p0

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Ljc/l$b;-><init>(Ljava/lang/String;I[ILandroid/content/Context;Ljava/util/List;Ltj/d;)V

    invoke-static {v0, v8, p5}, Llk/g;->c(Ltj/g;Lak/p;Ltj/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final k(Landroid/content/Context;Ltj/d;)Ljava/lang/Object;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ltj/d<",
            "-[",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Llk/w0;->b()Llk/d0;

    move-result-object v0

    new-instance v1, Ljc/l$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ljc/l$c;-><init>(Landroid/content/Context;Ltj/d;)V

    invoke-static {v0, v1, p1}, Llk/g;->c(Ltj/g;Lak/p;Ltj/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final l(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ltj/d;)Ljava/lang/Object;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljc/g;",
            ">;",
            "Ltj/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Llk/w0;->b()Llk/d0;

    move-result-object v0

    new-instance v1, Ljc/l$d;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, p2, v2}, Ljc/l$d;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/util/List;Ltj/d;)V

    invoke-static {v0, v1, p3}, Llk/g;->c(Ltj/g;Lak/p;Ltj/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final m(JLjava/lang/String;I)Z
    .locals 2

    sget-boolean v0, Lmc/c;->g:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x4000

    cmp-long p0, v0, p0

    if-nez p0, :cond_0

    invoke-static {p2, p3}, Lmc/c;->o(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final n(Landroid/content/Context;Ljava/lang/String;IJI)Z
    .locals 3

    sget-object v0, Ljc/h;->a:Ljc/h;

    invoke-virtual {v0, p3, p4}, Ljc/h;->k(J)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    invoke-virtual {v0, p5}, Ljc/h;->j(I)Z

    move-result p5

    if-eqz p5, :cond_3

    :cond_0
    invoke-static {p2}, Ljc/l;->f(I)Z

    move-result p5

    if-eqz p5, :cond_3

    invoke-static {p0, p1, p2, v2}, Lmc/c;->r(Landroid/content/Context;Ljava/lang/String;IZ)Z

    move-result p5

    if-nez p5, :cond_3

    invoke-static {p3, p4, p1, p2}, Ljc/l;->m(JLjava/lang/String;I)Z

    move-result p2

    if-nez p2, :cond_3

    sget-boolean p2, Lmc/c;->h:Z

    if-nez p2, :cond_1

    invoke-static {p0, p1}, Lx4/f1;->K(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    :cond_1
    invoke-static {p1}, Lz4/b;->h(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_0
    return v2
.end method

.method private static final o(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;IJ)Z
    .locals 1

    sget-object p2, Ljc/h;->a:Ljc/h;

    invoke-virtual {p2, p1}, Ljc/h;->l(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_2

    sget-object p2, Lmc/c;->f:Ljava/util/List;

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-interface {p2, p5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p1}, Lmc/c;->p(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_0
    invoke-static {p4}, Ljc/l;->f(I)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {p0, p3, p4, v0}, Lmc/c;->r(Landroid/content/Context;Ljava/lang/String;IZ)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-static {}, Lmc/d;->a()Lmc/d;

    move-result-object p2

    invoke-virtual {p2, p0, p1, p3}, Lmc/d;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    sget-boolean p2, Lmc/c;->h:Z

    if-nez p2, :cond_1

    invoke-static {p0, p1}, Lx4/f1;->K(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {p0, p3}, Lx4/f1;->K(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method
