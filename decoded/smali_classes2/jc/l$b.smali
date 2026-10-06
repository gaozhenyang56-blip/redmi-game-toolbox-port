.class final Ljc/l$b;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lak/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljc/l;->j(Landroid/content/Context;Ljava/lang/String;ILjava/util/List;[ILtj/d;)Ljava/lang/Object;
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
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.miui.permcenter.privacycenter.usage.PermissionUsageUtilKt$loadAppBehaviorByPkgNameAndUser$2"
    f = "PermissionUsageUtil.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:[I

.field final synthetic e:Landroid/content/Context;

.field final synthetic f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljc/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;I[ILandroid/content/Context;Ljava/util/List;Ltj/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[I",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljc/g;",
            ">;",
            "Ltj/d<",
            "-",
            "Ljc/l$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ljc/l$b;->b:Ljava/lang/String;

    iput p2, p0, Ljc/l$b;->c:I

    iput-object p3, p0, Ljc/l$b;->d:[I

    iput-object p4, p0, Ljc/l$b;->e:Landroid/content/Context;

    iput-object p5, p0, Ljc/l$b;->f:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILtj/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ltj/d;)Ltj/d;
    .locals 7
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

    new-instance p1, Ljc/l$b;

    iget-object v1, p0, Ljc/l$b;->b:Ljava/lang/String;

    iget v2, p0, Ljc/l$b;->c:I

    iget-object v3, p0, Ljc/l$b;->d:[I

    iget-object v4, p0, Ljc/l$b;->e:Landroid/content/Context;

    iget-object v5, p0, Ljc/l$b;->f:Ljava/util/List;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Ljc/l$b;-><init>(Ljava/lang/String;I[ILandroid/content/Context;Ljava/util/List;Ltj/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Llk/i0;

    check-cast p2, Ltj/d;

    invoke-virtual {p0, p1, p2}, Ljc/l$b;->invoke(Llk/i0;Ltj/d;)Ljava/lang/Object;

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
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0, p1, p2}, Ljc/l$b;->create(Ljava/lang/Object;Ltj/d;)Ltj/d;

    move-result-object p1

    check-cast p1, Ljc/l$b;

    sget-object p2, Loj/t;->a:Loj/t;

    invoke-virtual {p1, p2}, Ljc/l$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 35
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    move-object/from16 v1, p0

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    iget v0, v1, Ljc/l$b;->a:I

    if-nez v0, :cond_13

    invoke-static/range {p1 .. p1}, Loj/n;->b(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v0, 0x5

    const/16 v5, 0x8

    const/16 v6, 0x9

    const-string v7, "pkgName"

    const-string v8, "calleePkg"

    const-string v9, "op"

    const-string v10, "permissionId"

    const-string v11, "mode"

    const-string v12, "startTime"

    const-string v13, "endTime"

    const-string v14, "count"

    const-string v15, "user"

    filled-new-array/range {v7 .. v15}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/String;

    iget-object v10, v1, Ljc/l$b;->b:Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v10, v9, v11

    iget v10, v1, Ljc/l$b;->c:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x1

    aput-object v10, v9, v12

    sget-boolean v10, Lcom/miui/permcenter/o;->f:Z

    const/4 v13, 0x4

    const/4 v14, 0x3

    if-eqz v10, :cond_0

    const/16 v9, 0xa

    invoke-static {v7, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    const-string v9, "copyOf(this, newSize)"

    invoke-static {v7, v9}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, [Ljava/lang/String;

    array-length v9, v7

    sub-int/2addr v9, v12

    const-string v10, "calleeUser"

    aput-object v10, v7, v9

    new-array v9, v13, [Ljava/lang/String;

    iget-object v10, v1, Ljc/l$b;->b:Ljava/lang/String;

    aput-object v10, v9, v11

    iget v10, v1, Ljc/l$b;->c:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    iget-object v10, v1, Ljc/l$b;->b:Ljava/lang/String;

    aput-object v10, v9, v8

    iget v10, v1, Ljc/l$b;->c:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v14

    const-string v10, "(pkgName == ? AND user == ? ) OR ( calleePkg == ? AND calleeUser  == ? )"

    goto :goto_0

    :cond_0
    const-string v10, "pkgName == ? AND user == ?"

    :goto_0
    move-object/from16 v17, v7

    move-object/from16 v19, v9

    move-object/from16 v18, v10

    const-string v7, "endTime DESC , _id DESC"

    iget-object v9, v1, Ljc/l$b;->d:[I

    array-length v10, v9

    const-string v15, " LIMIT "

    if-ne v10, v12, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Ljc/l$b;->d:[I

    aget v7, v7, v11

    :goto_1
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_1
    array-length v9, v9

    if-ne v9, v8, :cond_2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Ljc/l$b;->d:[I

    aget v7, v7, v11

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " OFFSET "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Ljc/l$b;->d:[I

    aget v7, v7, v12

    goto :goto_1

    :cond_2
    :goto_2
    move-object/from16 v20, v7

    const/4 v7, 0x0

    :try_start_0
    iget-object v9, v1, Ljc/l$b;->e:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    sget-object v16, Lcom/miui/permission/PermissionContract;->RECORD_URI:Landroid/net/Uri;

    invoke-virtual/range {v15 .. v20}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_12

    iget-object v9, v1, Ljc/l$b;->e:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v1, Ljc/l$b;->b:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v10, v11

    :goto_3
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v15, :cond_11

    :try_start_2
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-interface {v7, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    sget-boolean v16, Lcom/miui/permcenter/o;->f:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v16, :cond_3

    :try_start_3
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v16
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move/from16 v28, v16

    goto :goto_4

    :catch_0
    move-exception v0

    move v11, v12

    goto/16 :goto_d

    :cond_3
    :try_start_4
    iget v5, v1, Ljc/l$b;->c:I

    move/from16 v28, v5

    :goto_4
    const-string v5, "calleePkgName"

    invoke-static {v15, v5}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v15}, Ljc/l;->g(Ljava/lang/String;)Z

    move-result v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    xor-int/2addr v5, v12

    const-string v6, "callerPkgName"

    if-nez v5, :cond_4

    :try_start_5
    iget-object v8, v1, Ljc/l$b;->e:Landroid/content/Context;

    invoke-static {v10, v6}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v16, v8

    move-object/from16 v17, v10

    move/from16 v18, v27

    move-wide/from16 v19, v23

    move/from16 v21, v11

    invoke-static/range {v16 .. v21}, Ljc/l;->b(Landroid/content/Context;Ljava/lang/String;IJI)Z

    move-result v8

    if-eqz v8, :cond_4

    :goto_5
    move-wide/from16 v33, v2

    :goto_6
    const/4 v0, 0x7

    goto/16 :goto_b

    :cond_4
    if-eqz v5, :cond_5

    iget-object v5, v1, Ljc/l$b;->e:Landroid/content/Context;

    invoke-static {v10, v6}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v16, v5

    move-object/from16 v17, v10

    move/from16 v18, v27

    move-object/from16 v19, v15

    move/from16 v20, v28

    move-wide/from16 v21, v23

    invoke-static/range {v16 .. v22}, Ljc/l;->c(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;IJ)Z

    move-result v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v5, :cond_5

    goto :goto_5

    :cond_5
    :try_start_6
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v0, 0x6

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lmc/c;->c(Ljava/lang/String;)J

    move-result-wide v13

    cmp-long v16, v13, v2

    if-lez v16, :cond_6

    goto :goto_5

    :cond_6
    invoke-static {v2, v3, v13, v14}, Lmc/c;->i(JJ)I

    move-result v4

    if-le v4, v0, :cond_7

    const/4 v11, 0x1

    goto/16 :goto_c

    :cond_7
    const-wide/16 v16, 0x20

    cmp-long v0, v23, v16

    if-nez v0, :cond_8

    if-eqz v5, :cond_8

    goto :goto_5

    :cond_8
    if-eqz v5, :cond_b

    const-wide v16, 0x200000000000L

    cmp-long v4, v23, v16

    if-eqz v4, :cond_9

    sget-object v4, Ljc/h;->a:Ljc/h;

    invoke-virtual {v4, v11}, Ljc/h;->m(I)Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_9
    if-eqz v9, :cond_a

    iget-object v4, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_a

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move-wide/from16 v33, v2

    goto :goto_7

    :cond_a
    move-wide/from16 v33, v2

    const/4 v4, 0x0

    :goto_7
    const/16 v2, 0x17

    if-ge v4, v2, :cond_c

    goto :goto_6

    :cond_b
    move-wide/from16 v33, v2

    :cond_c
    if-nez v0, :cond_d

    const/4 v0, 0x7

    const/16 v26, 0x1

    goto :goto_8

    :cond_d
    const/4 v0, 0x7

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move/from16 v26, v2

    :goto_8
    new-instance v2, Ljc/g;

    iget-object v3, v1, Ljc/l$b;->e:Landroid/content/Context;

    invoke-static {v10, v6}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v5, :cond_e

    const/4 v4, 0x1

    goto :goto_9

    :cond_e
    const/4 v4, 0x0

    :goto_9
    const-string v5, "startTime"

    invoke-static {v8, v5}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "endTime"

    invoke-static {v12, v5}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v29, 0x1

    const/16 v30, 0x0

    const/16 v31, 0x1000

    const/16 v32, 0x0

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v10

    move-object/from16 v19, v15

    move/from16 v20, v11

    move-wide/from16 v21, v23

    move/from16 v23, v4

    move-object/from16 v24, v8

    move-object/from16 v25, v12

    invoke-direct/range {v16 .. v32}, Ljc/g;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJZLjava/lang/String;Ljava/lang/String;IIIIZILbk/g;)V

    invoke-virtual {v2}, Ljc/g;->m()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_f

    const/4 v3, 0x1

    goto :goto_a

    :cond_f
    const/4 v3, 0x0

    :goto_a
    if-eqz v3, :cond_10

    goto :goto_b

    :cond_10
    invoke-virtual {v2, v13, v14}, Ljc/g;->r(J)V

    iget-object v3, v1, Ljc/l$b;->f:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_b
    move-wide/from16 v2, v33

    const/4 v0, 0x5

    const/16 v5, 0x8

    const/16 v6, 0x9

    const/4 v8, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x4

    const/4 v14, 0x3

    goto/16 :goto_3

    :catch_1
    move-exception v0

    const/4 v11, 0x1

    goto :goto_d

    :cond_11
    move v11, v10

    goto :goto_c

    :catch_2
    move-exception v0

    move v11, v10

    goto :goto_d

    :cond_12
    const/4 v11, 0x0

    :goto_c
    invoke-static {v7}, Ldb/b;->a(Landroid/database/Cursor;)V

    goto :goto_e

    :catchall_0
    move-exception v0

    goto :goto_f

    :catch_3
    move-exception v0

    const/4 v11, 0x0

    :goto_d
    :try_start_7
    const-string v2, "MIUIPrivacy-UsageUtil"

    const-string v3, "loadAppBehaviorByPkgNameAndUser error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_c

    :goto_e
    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :goto_f
    invoke-static {v7}, Ldb/b;->a(Landroid/database/Cursor;)V

    throw v0

    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
