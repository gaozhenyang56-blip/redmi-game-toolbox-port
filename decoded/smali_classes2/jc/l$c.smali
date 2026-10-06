.class final Ljc/l$c;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lak/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljc/l;->k(Landroid/content/Context;Ltj/d;)Ljava/lang/Object;
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
        "-[",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.miui.permcenter.privacycenter.usage.PermissionUsageUtilKt$loadRecentAppBehavior$2"
    f = "PermissionUsageUtil.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ltj/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ltj/d<",
            "-",
            "Ljc/l$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ljc/l$c;->b:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILtj/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ltj/d;)Ltj/d;
    .locals 1
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

    new-instance p1, Ljc/l$c;

    iget-object v0, p0, Ljc/l$c;->b:Landroid/content/Context;

    invoke-direct {p1, v0, p2}, Ljc/l$c;-><init>(Landroid/content/Context;Ltj/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Llk/i0;

    check-cast p2, Ltj/d;

    invoke-virtual {p0, p1, p2}, Ljc/l$c;->invoke(Llk/i0;Ltj/d;)Ljava/lang/Object;

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
            "-[",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0, p1, p2}, Ljc/l$c;->create(Ljava/lang/Object;Ltj/d;)Ltj/d;

    move-result-object p1

    check-cast p1, Ljc/l$c;

    sget-object p2, Loj/t;->a:Loj/t;

    invoke-virtual {p1, p2}, Ljc/l$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    move-object/from16 v1, p0

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    iget v0, v1, Ljc/l$c;->a:I

    if-nez v0, :cond_8

    invoke-static/range {p1 .. p1}, Loj/n;->b(Ljava/lang/Object;)V

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/b;->b(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/b;->b(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/b;->b(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v2, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const/4 v4, 0x4

    const-string v9, "pkgName"

    const-string v10, "permissionId"

    const-string v11, "endTime"

    const-string v12, "count"

    const-string v13, "user"

    filled-new-array {v9, v10, v11, v12, v13}, [Ljava/lang/String;

    move-result-object v16

    const-string v9, "MIUIPrivacy-UsageUtil"

    const-string v10, "loadRecentAppBehavior: "

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v17, "(permissionId == ? OR permissionId == ? OR permissionId == ?) AND mode == 0 AND calleePkg == \'null\'"

    const-string v10, "32"

    const-string v11, "131072"

    const-string v12, "4096"

    filled-new-array {v10, v11, v12}, [Ljava/lang/String;

    move-result-object v18

    const/4 v10, 0x0

    :try_start_0
    iget-object v11, v1, Ljc/l$c;->b:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    sget-object v15, Lcom/miui/permission/PermissionContract;->RECORD_URI:Landroid/net/Uri;

    const-string v19, "endTime DESC , _id DESC"

    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_7

    :cond_0
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    iget-object v12, v1, Ljc/l$c;->b:Landroid/content/Context;

    const-string v11, "callerPkgName"

    invoke-static {v13, v11}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v17, 0x0

    move-wide/from16 v15, v18

    invoke-static/range {v12 .. v17}, Ljc/l;->b(Landroid/content/Context;Ljava/lang/String;IJI)Z

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v10, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lmc/c;->c(Ljava/lang/String;)J

    move-result-wide v11

    cmp-long v13, v11, v7

    if-lez v13, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v7, v8, v11, v12}, Lmc/c;->i(JJ)I

    move-result v11

    const/4 v12, 0x6

    if-le v11, v12, :cond_3

    goto :goto_2

    :cond_3
    const-wide/16 v11, 0x20

    cmp-long v11, v18, v11

    if-nez v11, :cond_4

    move v12, v5

    goto :goto_1

    :cond_4
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    :goto_1
    if-nez v11, :cond_5

    aget-object v11, v2, v3

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/2addr v11, v12

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/b;->b(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v2, v3

    goto :goto_0

    :cond_5
    const-wide/32 v13, 0x20000

    cmp-long v11, v18, v13

    if-nez v11, :cond_6

    aget-object v11, v2, v5

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/2addr v11, v12

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/b;->b(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v2, v5

    goto :goto_0

    :cond_6
    const-wide/16 v13, 0x1000

    cmp-long v11, v18, v13

    if-nez v11, :cond_0

    aget-object v11, v2, v6

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/2addr v11, v12

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/b;->b(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v2, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_1
    const-string v3, "loadRecentAppBehavior error"

    invoke-static {v9, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    :goto_2
    invoke-static {v10}, Ldb/b;->a(Landroid/database/Cursor;)V

    return-object v2

    :goto_3
    invoke-static {v10}, Ldb/b;->a(Landroid/database/Cursor;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
