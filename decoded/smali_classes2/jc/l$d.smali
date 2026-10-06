.class final Ljc/l$d;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lak/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljc/l;->l(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ltj/d;)Ljava/lang/Object;
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
    c = "com.miui.permcenter.privacycenter.usage.PermissionUsageUtilKt$loadTerminalBehavior$2"
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

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljc/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/util/List;Ltj/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljc/g;",
            ">;",
            "Ltj/d<",
            "-",
            "Ljc/l$d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ljc/l$d;->b:Ljava/lang/String;

    iput-object p2, p0, Ljc/l$d;->c:Landroid/content/Context;

    iput-object p3, p0, Ljc/l$d;->d:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILtj/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ltj/d;)Ltj/d;
    .locals 3
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

    new-instance p1, Ljc/l$d;

    iget-object v0, p0, Ljc/l$d;->b:Ljava/lang/String;

    iget-object v1, p0, Ljc/l$d;->c:Landroid/content/Context;

    iget-object v2, p0, Ljc/l$d;->d:Ljava/util/List;

    invoke-direct {p1, v0, v1, v2, p2}, Ljc/l$d;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/util/List;Ltj/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Llk/i0;

    check-cast p2, Ltj/d;

    invoke-virtual {p0, p1, p2}, Ljc/l$d;->invoke(Llk/i0;Ltj/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Ljc/l$d;->create(Ljava/lang/Object;Ltj/d;)Ltj/d;

    move-result-object p1

    check-cast p1, Ljc/l$d;

    sget-object p2, Loj/t;->a:Loj/t;

    invoke-virtual {p1, p2}, Ljc/l$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 28
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    move-object/from16 v1, p0

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    iget v0, v1, Ljc/l$d;->a:I

    if-nez v0, :cond_6

    invoke-static/range {p1 .. p1}, Loj/n;->b(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v0, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x5

    const-string v7, "pkgName"

    const-string v8, "calleePkg"

    const-string v9, "op"

    const-string v10, "permissionId"

    const-string v11, "startTime"

    const-string v12, "endTime"

    const-string v13, "count"

    filled-new-array/range {v7 .. v13}, [Ljava/lang/String;

    move-result-object v16

    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_0
    invoke-static {}, Lcom/market/sdk/utils/a;->a()Landroid/content/ContentResolver;

    move-result-object v14

    sget-object v15, Lcom/miui/permission/PermissionContract;->RECORD_URI:Landroid/net/Uri;

    const-string v17, "calleePkg == ? "

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "@miui:device:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Ljc/l$d;->b:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v8

    const-string v19, "endTime DESC , _id DESC"

    move-object/from16 v18, v10

    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_5

    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    invoke-static {v13, v14}, Lz4/b;->f(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v7, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lmc/c;->c(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v11, v4, v2

    if-lez v11, :cond_1

    const/4 v4, 0x3

    const/4 v5, 0x4

    goto :goto_0

    :cond_1
    invoke-static {v2, v3, v4, v5}, Lmc/c;->i(JJ)I

    move-result v11

    const/4 v0, 0x6

    if-le v11, v0, :cond_2

    goto :goto_3

    :cond_2
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    new-instance v0, Ljc/g;

    iget-object v11, v1, Ljc/l$d;->c:Landroid/content/Context;

    const-string v6, "callerPkgName"

    invoke-static {v13, v6}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "calleePkgName"

    invoke-static {v14, v6}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v18, 0x1

    const-string v6, "startTime"

    invoke-static {v10, v6}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "endTime"

    invoke-static {v12, v6}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x0

    const/16 v26, 0x1000

    const/16 v27, 0x0

    move-object v6, v11

    move-object v11, v0

    move-object/from16 v20, v12

    move-object v12, v6

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v27}, Ljc/g;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJZLjava/lang/String;Ljava/lang/String;IIIIZILbk/g;)V

    invoke-virtual {v0}, Ljc/g;->m()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_3

    move v6, v9

    goto :goto_1

    :cond_3
    move v6, v8

    :goto_1
    if-eqz v6, :cond_4

    :goto_2
    const/4 v0, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x5

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v4, v5}, Ljc/g;->r(J)V

    iget-object v4, v1, Ljc/l$d;->d:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "MIUIPrivacy-UsageUtil"

    const-string v3, "loadTerminalBehavior error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :goto_3
    invoke-static {v7}, Ldb/b;->a(Landroid/database/Cursor;)V

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :goto_4
    invoke-static {v7}, Ldb/b;->a(Landroid/database/Cursor;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
