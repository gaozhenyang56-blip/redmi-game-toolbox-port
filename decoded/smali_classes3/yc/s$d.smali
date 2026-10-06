.class final Lyc/s$d;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lak/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyc/s;->r(Landroid/content/Context;)V
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
        "Loj/t;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.miui.permcenter.wakepath.WakePathViewModel$loadData$1"
    f = "WakePathViewModel.kt"
    i = {}
    l = {
        0x6e
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field private synthetic b:Ljava/lang/Object;

.field final synthetic c:Lyc/s;

.field final synthetic d:Landroid/content/Context;


# direct methods
.method constructor <init>(Lyc/s;Landroid/content/Context;Ltj/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyc/s;",
            "Landroid/content/Context;",
            "Ltj/d<",
            "-",
            "Lyc/s$d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lyc/s$d;->c:Lyc/s;

    iput-object p2, p0, Lyc/s$d;->d:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILtj/d;)V

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

    new-instance v0, Lyc/s$d;

    iget-object v1, p0, Lyc/s$d;->c:Lyc/s;

    iget-object v2, p0, Lyc/s$d;->d:Landroid/content/Context;

    invoke-direct {v0, v1, v2, p2}, Lyc/s$d;-><init>(Lyc/s;Landroid/content/Context;Ltj/d;)V

    iput-object p1, v0, Lyc/s$d;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Llk/i0;

    check-cast p2, Ltj/d;

    invoke-virtual {p0, p1, p2}, Lyc/s$d;->invoke(Llk/i0;Ltj/d;)Ljava/lang/Object;

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
            "Loj/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lyc/s$d;->create(Ljava/lang/Object;Ltj/d;)Ltj/d;

    move-result-object p1

    check-cast p1, Lyc/s$d;

    sget-object p2, Loj/t;->a:Loj/t;

    invoke-virtual {p1, p2}, Lyc/s$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    move-object/from16 v1, p0

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object v2

    iget v0, v1, Lyc/s$d;->a:I

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v3, :cond_0

    invoke-static/range {p1 .. p1}, Loj/n;->b(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, Loj/n;->b(Ljava/lang/Object;)V

    iget-object v0, v1, Lyc/s$d;->b:Ljava/lang/Object;

    check-cast v0, Llk/i0;

    invoke-static {}, Lx4/z1;->r()Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    iget-object v0, v1, Lyc/s$d;->c:Lyc/s;

    invoke-static {v0}, Lyc/s;->d(Lyc/s;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v1, Lyc/s$d;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v5, 0x3e7

    invoke-static {v0, v4, v5}, Loc/g$c;->a(Landroid/content/pm/PackageManager;II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v6, v3

    if-nez v6, :cond_2

    iget-object v6, v1, Lyc/s$d;->c:Lyc/s;

    invoke-virtual {v6}, Lyc/s;->q()Ljava/util/HashMap;

    move-result-object v6

    iget-object v7, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v8, "xSpaceInfo.packageName"

    invoke-static {v7, v8}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "xSpaceInfo"

    invoke-static {v5, v8}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget-object v0, v1, Lyc/s$d;->c:Lyc/s;

    invoke-static {v0}, Lyc/s;->c(Lyc/s;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v1, Lyc/s$d;->c:Lyc/s;

    invoke-static {v0}, Lyc/s;->c(Lyc/s;)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v5, Lyc/c;->a:Lyc/c;

    iget-object v6, v1, Lyc/s$d;->d:Landroid/content/Context;

    iget-object v7, v1, Lyc/s$d;->c:Lyc/s;

    invoke-virtual {v7}, Lyc/s;->q()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lyc/c;->a(Landroid/content/Context;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lx4/z1;->r()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/miui/permcenter/r;->f:Landroid/net/Uri;

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/miui/permcenter/r;->g:Landroid/net/Uri;

    :goto_1
    move-object v11, v0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v6, v11

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_a

    :cond_5
    :goto_2
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "callerPkgName"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v6, "calleePkgName"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v0, v7, :cond_5

    if-ne v6, v7, :cond_6

    goto :goto_2

    :cond_6
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lyc/s$d;->c:Lyc/s;

    const-string v8, "caller"

    invoke-static {v0, v8}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lyc/s;->p(Ljava/lang/String;)Lyc/r;

    move-result-object v7

    iget-object v8, v1, Lyc/s$d;->c:Lyc/s;

    :try_start_0
    sget-object v9, Loj/m;->b:Loj/m$a;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v9

    invoke-static {v9}, Li4/a;->k(Landroid/content/Context;)Li4/a;

    move-result-object v9

    invoke-virtual {v9, v0}, Li4/a;->f(Ljava/lang/String;)Li4/b;

    move-result-object v9

    invoke-virtual {v9}, Li4/b;->a()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v10

    invoke-static {v10}, Li4/a;->k(Landroid/content/Context;)Li4/a;

    move-result-object v10

    invoke-virtual {v10, v6}, Li4/a;->f(Ljava/lang/String;)Li4/b;

    move-result-object v10

    invoke-virtual {v10}, Li4/b;->a()Ljava/lang/String;

    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v12, "calleeLabel"

    const-string v13, "callerLabel"

    const-string v14, "callee"

    if-nez v7, :cond_7

    :try_start_1
    invoke-static {v8}, Lyc/s;->c(Lyc/s;)Ljava/util/ArrayList;

    move-result-object v7

    new-instance v8, Lyc/r;

    invoke-static {v6, v14}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v13}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v12}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v22, 0x0

    new-array v15, v3, [Lyc/r;

    new-instance v23, Lyc/r;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x70

    const/16 v21, 0x0

    move-object/from16 v12, v23

    move-object v13, v0

    move-object v14, v6

    move-object/from16 v24, v15

    move-object v15, v9

    move-object/from16 v16, v10

    invoke-direct/range {v12 .. v21}, Lyc/r;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;IILbk/g;)V

    aput-object v23, v24, v4

    invoke-static/range {v24 .. v24}, Lqj/l;->f([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x50

    const/16 v21, 0x0

    move-object v12, v8

    move-object v13, v0

    move-object v14, v6

    move-object v15, v9

    move-object/from16 v16, v10

    move/from16 v17, v22

    invoke-direct/range {v12 .. v21}, Lyc/r;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;IILbk/g;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    :goto_3
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_4

    :cond_7
    invoke-virtual {v7}, Lyc/r;->h()I

    move-result v8

    if-ne v8, v3, :cond_8

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "callerPkgName =?"

    new-array v8, v3, [Ljava/lang/String;

    invoke-virtual {v7}, Lyc/r;->d()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v8, v4

    invoke-virtual {v0, v11, v6, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/b;->b(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_4

    :cond_8
    invoke-virtual {v7}, Lyc/r;->a()Ljava/util/ArrayList;

    move-result-object v7

    new-instance v8, Lyc/r;

    invoke-static {v6, v14}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v13}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v12}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x70

    const/16 v21, 0x0

    move-object v12, v8

    move-object v13, v0

    move-object v14, v6

    move-object v15, v9

    move-object/from16 v16, v10

    invoke-direct/range {v12 .. v21}, Lyc/r;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;IILbk/g;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    :goto_4
    invoke-static {v0}, Loj/m;->b(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    sget-object v6, Loj/m;->b:Loj/m$a;

    invoke-static {v0}, Loj/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Loj/m;->b(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_9
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_a
    iget-object v0, v1, Lyc/s$d;->c:Lyc/s;

    invoke-static {v0}, Lyc/s;->a(Lyc/s;)V

    iget-object v0, v1, Lyc/s$d;->c:Lyc/s;

    invoke-static {v0}, Lyc/s;->e(Lyc/s;)Lkotlinx/coroutines/flow/r;

    move-result-object v0

    iget-object v4, v1, Lyc/s$d;->c:Lyc/s;

    invoke-static {v4}, Lyc/s;->c(Lyc/s;)Ljava/util/ArrayList;

    move-result-object v4

    iput v3, v1, Lyc/s$d;->a:I

    invoke-interface {v0, v4, v1}, Lkotlinx/coroutines/flow/r;->emit(Ljava/lang/Object;Ltj/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_b

    return-object v2

    :cond_b
    :goto_5
    sget-object v0, Loj/t;->a:Loj/t;

    return-object v0
.end method
