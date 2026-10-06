.class final Ljc/l$a;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lak/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljc/l;->h(Landroid/content/Context;Ljava/util/List;IIIJLjava/util/Set;Ltj/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/j;",
        "Lak/p<",
        "Llk/i0;",
        "Ltj/d<",
        "-",
        "Ljc/b;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.miui.permcenter.privacycenter.usage.PermissionUsageUtilKt$loadAllAppBehaviorByKind$2"
    f = "PermissionUsageUtil.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:J

.field final synthetic f:Landroid/content/Context;

.field final synthetic g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljc/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(IIIJLandroid/content/Context;Ljava/util/Set;Ljava/util/List;Ltj/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIJ",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljc/g;",
            ">;",
            "Ltj/d<",
            "-",
            "Ljc/l$a;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Ljc/l$a;->b:I

    iput p2, p0, Ljc/l$a;->c:I

    iput p3, p0, Ljc/l$a;->d:I

    iput-wide p4, p0, Ljc/l$a;->e:J

    iput-object p6, p0, Ljc/l$a;->f:Landroid/content/Context;

    iput-object p7, p0, Ljc/l$a;->g:Ljava/util/Set;

    iput-object p8, p0, Ljc/l$a;->h:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p9}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILtj/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ltj/d;)Ltj/d;
    .locals 10
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ltj/d<",
            "*>;)",
            "Ltj/d<",
            "Loj/t;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p1, Ljc/l$a;

    iget v1, p0, Ljc/l$a;->b:I

    iget v2, p0, Ljc/l$a;->c:I

    iget v3, p0, Ljc/l$a;->d:I

    iget-wide v4, p0, Ljc/l$a;->e:J

    iget-object v6, p0, Ljc/l$a;->f:Landroid/content/Context;

    iget-object v7, p0, Ljc/l$a;->g:Ljava/util/Set;

    iget-object v8, p0, Ljc/l$a;->h:Ljava/util/List;

    move-object v0, p1

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Ljc/l$a;-><init>(IIIJLandroid/content/Context;Ljava/util/Set;Ljava/util/List;Ltj/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Llk/i0;

    check-cast p2, Ltj/d;

    invoke-virtual {p0, p1, p2}, Ljc/l$a;->invoke(Llk/i0;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Llk/i0;Ltj/d;)Ljava/lang/Object;
    .locals 0
    .param p1    # Llk/i0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llk/i0;",
            "Ltj/d<",
            "-",
            "Ljc/b;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0, p1, p2}, Ljc/l$a;->create(Ljava/lang/Object;Ltj/d;)Ltj/d;

    move-result-object p1

    check-cast p1, Ljc/l$a;

    sget-object p2, Loj/t;->a:Loj/t;

    invoke-virtual {p1, p2}, Ljc/l$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 41
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    move-object/from16 v1, p0

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    iget v0, v1, Ljc/l$a;->a:I

    if-nez v0, :cond_18

    invoke-static/range {p1 .. p1}, Loj/n;->b(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v0, 0x3

    const/16 v6, 0x9

    const-string v8, "pkgName"

    const-string v9, "calleePkg"

    const-string v10, "op"

    const-string v11, "permissionId"

    const-string v12, "mode"

    const-string v13, "startTime"

    const-string v14, "endTime"

    const-string v15, "count"

    const-string v16, "user"

    const-string v17, "_id"

    filled-new-array/range {v8 .. v17}, [Ljava/lang/String;

    move-result-object v8

    sget-boolean v9, Lcom/miui/permcenter/o;->f:Z

    const/4 v10, 0x1

    if-eqz v9, :cond_0

    const/16 v9, 0xb

    invoke-static {v8, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    const-string v9, "copyOf(this, newSize)"

    invoke-static {v8, v9}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, [Ljava/lang/String;

    array-length v9, v8

    sub-int/2addr v9, v10

    const-string v11, "calleeUser"

    aput-object v11, v8, v9

    :cond_0
    move-object v14, v8

    iget v8, v1, Ljc/l$a;->b:I

    const/16 v11, 0x8

    const/4 v15, 0x4

    const/4 v13, 0x2

    if-eq v8, v13, :cond_4

    if-eq v8, v15, :cond_3

    if-eq v8, v11, :cond_2

    const/16 v12, 0x10

    if-eq v8, v12, :cond_1

    const/4 v8, 0x0

    goto :goto_0

    :cond_1
    invoke-static {}, Ljc/l;->a()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_2
    const-string v8, "permissionId == 131072 "

    goto :goto_0

    :cond_3
    const-string v8, "permissionId == 4096 "

    goto :goto_0

    :cond_4
    const-string v8, "permissionId == 32 "

    :goto_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "endTime DESC,_id DESC"

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " LIMIT "

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Ljc/l$a;->c:I

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " OFFSET "

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Ljc/l$a;->d:I

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    iget-wide v4, v1, Ljc/l$a;->e:J

    const/4 v12, 0x0

    :try_start_0
    iget-object v9, v1, Ljc/l$a;->f:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v16, Lcom/miui/permission/PermissionContract;->RECORD_URI:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v18, 0x0

    move v7, v12

    move-object v12, v9

    move v9, v13

    move-object/from16 v13, v16

    move-object v15, v8

    move-object/from16 v16, v18

    :try_start_1
    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v8, :cond_17

    :try_start_2
    new-instance v12, Landroid/util/ArrayMap;

    invoke-direct {v12}, Landroid/util/ArrayMap;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v13, v7

    :goto_1
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v14, :cond_16

    :try_start_4
    invoke-interface {v8, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-boolean v20, Lcom/miui/permcenter/o;->f:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v20, :cond_5

    const/16 v6, 0xa

    :try_start_5
    invoke-interface {v8, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v19
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move/from16 v32, v19

    goto :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_11

    :cond_5
    const/16 v6, 0xa

    move/from16 v32, v7

    :goto_2
    :try_start_6
    invoke-static {v14, v0}, Lz4/b;->f(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v19
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const-string v6, "calleePkgName"

    const-string v9, "callerPkgName"

    if-eqz v19, :cond_7

    :try_start_7
    invoke-static {v15}, Lz4/b;->g(I)Z

    move-result v19
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez v19, :cond_6

    goto :goto_3

    :cond_6
    const/4 v10, 0x4

    goto :goto_5

    :cond_7
    :goto_3
    :try_start_8
    invoke-static {v0, v6}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljc/l;->g(Ljava/lang/String;)Z

    move-result v19
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    xor-int/lit8 v19, v19, 0x1

    if-nez v19, :cond_8

    :try_start_9
    iget-object v10, v1, Ljc/l$a;->f:Landroid/content/Context;

    invoke-static {v14, v9}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v20, v10

    move-object/from16 v21, v14

    move/from16 v22, v31

    move-wide/from16 v23, v16

    move/from16 v25, v15

    invoke-static/range {v20 .. v25}, Ljc/l;->b(Landroid/content/Context;Ljava/lang/String;IJI)Z

    move-result v10

    if-eqz v10, :cond_8

    :goto_4
    move-wide/from16 v39, v2

    move-wide/from16 v37, v4

    move v2, v7

    goto :goto_7

    :catch_1
    move-exception v0

    goto/16 :goto_f

    :cond_8
    if-eqz v19, :cond_6

    iget-object v10, v1, Ljc/l$a;->f:Landroid/content/Context;

    invoke-static {v14, v9}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v20, v10

    move-object/from16 v21, v14

    move/from16 v22, v31

    move-object/from16 v23, v0

    move/from16 v24, v32

    move-wide/from16 v25, v16

    invoke-static/range {v20 .. v26}, Ljc/l;->c(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;IJ)Z

    move-result v10
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v10, :cond_6

    goto :goto_4

    :goto_5
    :try_start_a
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    const/4 v10, 0x5

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v10, 0x6

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v28, v11

    invoke-static {v7}, Lmc/c;->c(Ljava/lang/String;)J

    move-result-wide v10
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    cmp-long v21, v10, v2

    if-lez v21, :cond_9

    move-wide/from16 v39, v2

    move-wide/from16 v37, v4

    :goto_6
    const/4 v2, 0x0

    :goto_7
    const/4 v3, 0x7

    goto/16 :goto_d

    :cond_9
    move-wide/from16 v37, v4

    :try_start_b
    invoke-static {v2, v3, v10, v11}, Lmc/c;->i(JJ)I

    move-result v4

    const/4 v5, 0x6

    if-le v4, v5, :cond_a

    move-wide/from16 v4, v37

    const/4 v10, 0x1

    goto/16 :goto_12

    :cond_a
    const-wide/16 v4, 0x20

    cmp-long v4, v16, v4

    if-nez v4, :cond_b

    if-eqz v19, :cond_b

    move-wide/from16 v39, v2

    goto :goto_6

    :cond_b
    if-eqz v19, :cond_f

    const-wide v20, 0x200000000000L

    cmp-long v5, v16, v20

    if-eqz v5, :cond_c

    sget-object v5, Ljc/h;->a:Ljc/h;

    invoke-virtual {v5, v15}, Ljc/h;->m(I)Z

    move-result v5

    if-eqz v5, :cond_f

    :cond_c
    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    iget-object v5, v1, Ljc/l$a;->f:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    move-wide/from16 v39, v2

    const/4 v2, 0x0

    invoke-virtual {v5, v14, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    invoke-interface {v12, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_d
    move-wide/from16 v39, v2

    const/4 v2, 0x0

    :goto_8
    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    if-eqz v3, :cond_e

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_e

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    goto :goto_9

    :cond_e
    move v3, v2

    :goto_9
    const/16 v5, 0x17

    if-ge v3, v5, :cond_10

    goto :goto_7

    :cond_f
    move-wide/from16 v39, v2

    const/4 v2, 0x0

    :cond_10
    if-nez v4, :cond_11

    const/4 v3, 0x7

    const/16 v30, 0x1

    goto :goto_a

    :cond_11
    const/4 v3, 0x7

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move/from16 v30, v4

    :goto_a
    new-instance v4, Ljc/g;

    iget-object v5, v1, Ljc/l$a;->f:Landroid/content/Context;

    invoke-static {v14, v9}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v6}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v19, :cond_12

    const/16 v27, 0x1

    goto :goto_b

    :cond_12
    move/from16 v27, v2

    :goto_b
    const-string v6, "startTime"

    move-object/from16 v9, v28

    invoke-static {v9, v6}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "endTime"

    invoke-static {v7, v6}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x1000

    const/16 v36, 0x0

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v14

    move-object/from16 v23, v0

    move/from16 v24, v15

    move-wide/from16 v25, v16

    move-object/from16 v28, v9

    move-object/from16 v29, v7

    invoke-direct/range {v20 .. v36}, Ljc/g;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJZLjava/lang/String;Ljava/lang/String;IIIIZILbk/g;)V

    invoke-virtual {v4}, Ljc/g;->m()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    goto :goto_c

    :cond_13
    move v0, v2

    :goto_c
    if-eqz v0, :cond_14

    goto :goto_d

    :cond_14
    iget-object v0, v1, Ljc/l$a;->g:Ljava/util/Set;

    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/b;->b(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    :goto_d
    move v7, v2

    move-wide/from16 v4, v37

    :goto_e
    move-wide/from16 v2, v39

    const/4 v0, 0x3

    const/16 v6, 0x9

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/16 v11, 0x8

    const/4 v13, 0x1

    goto/16 :goto_1

    :cond_15
    invoke-virtual {v4, v10, v11}, Ljc/g;->r(J)V

    iget-object v0, v1, Ljc/l$a;->h:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Ljc/l$a;->g:Ljava/util/Set;

    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/b;->b(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move v7, v2

    move-wide v4, v10

    goto :goto_e

    :catch_2
    move-exception v0

    move-object v9, v8

    move-wide/from16 v4, v37

    goto :goto_10

    :catch_3
    move-exception v0

    move-wide/from16 v37, v4

    :goto_f
    move-object v9, v8

    :goto_10
    const/4 v10, 0x1

    goto :goto_14

    :cond_16
    move-wide/from16 v37, v4

    move v10, v13

    goto :goto_12

    :catch_4
    move-exception v0

    move-wide/from16 v37, v4

    move-object v9, v8

    move v10, v13

    goto :goto_14

    :catchall_0
    move-exception v0

    move-object v9, v8

    goto :goto_16

    :catch_5
    move-exception v0

    move v2, v7

    move v10, v2

    :goto_11
    move-object v9, v8

    goto :goto_14

    :cond_17
    move v2, v7

    move v10, v2

    :goto_12
    invoke-static {v8}, Ldb/b;->a(Landroid/database/Cursor;)V

    goto :goto_15

    :catch_6
    move-exception v0

    move v2, v7

    goto :goto_13

    :catchall_1
    move-exception v0

    const/4 v9, 0x0

    goto :goto_16

    :catch_7
    move-exception v0

    move v2, v12

    :goto_13
    move v10, v2

    const/4 v9, 0x0

    :goto_14
    :try_start_c
    const-string v2, "MIUIPrivacy-UsageUtil"

    const-string v3, "loadAllAppBehavior error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    invoke-static {v9}, Ldb/b;->a(Landroid/database/Cursor;)V

    :goto_15
    new-instance v0, Ljc/b;

    iget v2, v1, Ljc/l$a;->d:I

    invoke-direct {v0, v10, v2, v4, v5}, Ljc/b;-><init>(ZIJ)V

    return-object v0

    :catchall_2
    move-exception v0

    :goto_16
    invoke-static {v9}, Ldb/b;->a(Landroid/database/Cursor;)V

    throw v0

    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
