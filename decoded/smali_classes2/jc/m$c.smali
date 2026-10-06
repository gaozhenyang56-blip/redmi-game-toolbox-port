.class final Ljc/m$c;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lak/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljc/m;->B(ZI)V
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
    c = "com.miui.permcenter.privacycenter.usage.PermissionUsageViewModel$loadBehaviorInfo$1"
    f = "PermissionUsageViewModel.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0
    }
    l = {
        0xaf
    }
    m = "invokeSuspend"
    n = {
        "$this$launch",
        "curFlag",
        "loadBehaviorInfo",
        "curRecordIds",
        "minLoadSize"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "I$0"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPermissionUsageViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PermissionUsageViewModel.kt\ncom/miui/permcenter/privacycenter/usage/PermissionUsageViewModel$loadBehaviorInfo$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,390:1\n1#2:391\n*E\n"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:Ljava/lang/Object;

.field d:I

.field e:I

.field private synthetic f:Ljava/lang/Object;

.field final synthetic g:Ljc/m;

.field final synthetic h:Z

.field final synthetic i:I


# direct methods
.method constructor <init>(Ljc/m;ZILtj/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljc/m;",
            "ZI",
            "Ltj/d<",
            "-",
            "Ljc/m$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ljc/m$c;->g:Ljc/m;

    iput-boolean p2, p0, Ljc/m$c;->h:Z

    iput p3, p0, Ljc/m$c;->i:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILtj/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ltj/d;)Ltj/d;
    .locals 4
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

    new-instance v0, Ljc/m$c;

    iget-object v1, p0, Ljc/m$c;->g:Ljc/m;

    iget-boolean v2, p0, Ljc/m$c;->h:Z

    iget v3, p0, Ljc/m$c;->i:I

    invoke-direct {v0, v1, v2, v3, p2}, Ljc/m$c;-><init>(Ljc/m;ZILtj/d;)V

    iput-object p1, v0, Ljc/m$c;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Llk/i0;

    check-cast p2, Ltj/d;

    invoke-virtual {p0, p1, p2}, Ljc/m$c;->invoke(Llk/i0;Ltj/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Ljc/m$c;->create(Ljava/lang/Object;Ltj/d;)Ltj/d;

    move-result-object p1

    check-cast p1, Ljc/m$c;

    sget-object p2, Loj/t;->a:Loj/t;

    invoke-virtual {p1, p2}, Ljc/m$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    move-object/from16 v1, p0

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object v0

    iget v2, v1, Ljc/m$c;->e:I

    const/16 v3, 0x7e

    const-string v4, "MIUIPrivacy-UsageModel"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_1

    if-ne v2, v5, :cond_0

    iget v2, v1, Ljc/m$c;->d:I

    iget-object v7, v1, Ljc/m$c;->c:Ljava/lang/Object;

    check-cast v7, Ljava/util/HashSet;

    iget-object v8, v1, Ljc/m$c;->b:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    iget-object v9, v1, Ljc/m$c;->a:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    iget-object v10, v1, Ljc/m$c;->f:Ljava/lang/Object;

    check-cast v10, Llk/i0;

    :try_start_0
    invoke-static/range {p1 .. p1}, Loj/n;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object v11, v1

    move-object v15, v7

    move-object v14, v8

    move-object v12, v9

    move-object v13, v10

    move-object/from16 v7, p1

    goto/16 :goto_3

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, Loj/n;->b(Ljava/lang/Object;)V

    iget-object v2, v1, Ljc/m$c;->f:Ljava/lang/Object;

    check-cast v2, Llk/i0;

    :try_start_1
    iget-object v7, v1, Ljc/m$c;->g:Ljc/m;

    invoke-static {v7}, Ljc/m;->d(Ljc/m;)Landroidx/lifecycle/c0;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    iget-object v8, v1, Ljc/m$c;->g:Ljc/m;

    invoke-static {v8}, Ljc/m;->c(Ljc/m;)Landroidx/lifecycle/c0;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v9, 0x0

    if-eqz v8, :cond_2

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_2
    move-object v10, v9

    :goto_0
    new-instance v8, Ljava/util/HashSet;

    iget-object v11, v1, Ljc/m$c;->g:Ljc/m;

    invoke-static {v11}, Ljc/m;->k(Ljc/m;)Ljava/util/Set;

    move-result-object v11

    invoke-direct {v8, v11}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    if-nez v7, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v11, v3, :cond_5

    iget-object v8, v1, Ljc/m$c;->g:Ljc/m;

    invoke-static {v8}, Ljc/m;->a(Ljc/m;)Landroidx/lifecycle/c0;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    if-eqz v8, :cond_4

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_4
    new-instance v8, Ljava/util/HashSet;

    iget-object v10, v1, Ljc/m$c;->g:Ljc/m;

    invoke-static {v10}, Ljc/m;->h(Ljc/m;)Ljava/util/Set;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v10, v9

    :cond_5
    :goto_1
    if-eqz v10, :cond_7

    iget-boolean v9, v1, Ljc/m$c;->h:Z

    if-eqz v9, :cond_6

    iget v9, v1, Ljc/m$c;->i:I

    if-eqz v9, :cond_7

    :cond_6
    iget v9, v1, Ljc/m$c;->i:I

    const/4 v11, 0x2

    if-ne v9, v11, :cond_8

    :cond_7
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    :cond_8
    iget-object v9, v1, Ljc/m$c;->g:Ljc/m;

    invoke-static {v7}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v9, v11}, Ljc/m;->f(Ljc/m;I)Ljc/b;

    move-result-object v9

    iget-object v11, v1, Ljc/m$c;->g:Ljc/m;

    invoke-static {v11, v10}, Ljc/m;->g(Ljc/m;Ljava/util/List;)I

    move-result v11
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    add-int/lit8 v11, v11, 0x32

    move-object v13, v2

    move-object v12, v7

    move-object v15, v8

    move-object v14, v10

    move v2, v11

    move-object v11, v1

    :goto_2
    :try_start_2
    iget-object v7, v11, Ljc/m$c;->g:Ljc/m;

    invoke-static {v7, v14}, Ljc/m;->g(Ljc/m;Ljava/util/List;)I

    move-result v7

    if-ge v7, v2, :cond_b

    iget-object v7, v11, Ljc/m$c;->g:Ljc/m;

    invoke-static {v7}, Ljc/m;->b(Ljc/m;)Landroid/app/Application;

    move-result-object v7

    const-string v8, "null cannot be cast to non-null type kotlin.collections.MutableList<com.miui.permcenter.privacycenter.usage.PermissionUsageData>"

    invoke-static {v14, v8}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v14}, Lbk/c0;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/16 v16, 0x32

    invoke-virtual {v9}, Ljc/b;->c()I

    move-result v17

    invoke-virtual {v9}, Ljc/b;->b()J

    move-result-wide v18

    iput-object v13, v11, Ljc/m$c;->f:Ljava/lang/Object;

    iput-object v12, v11, Ljc/m$c;->a:Ljava/lang/Object;

    iput-object v14, v11, Ljc/m$c;->b:Ljava/lang/Object;

    iput-object v15, v11, Ljc/m$c;->c:Ljava/lang/Object;

    iput v2, v11, Ljc/m$c;->d:I

    iput v5, v11, Ljc/m$c;->e:I
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move v9, v10

    move/from16 v10, v16

    move-object/from16 v16, v11

    move/from16 v11, v17

    move-object/from16 v17, v12

    move-object/from16 v20, v13

    move-wide/from16 v12, v18

    move-object/from16 v18, v14

    move-object v14, v15

    move-object/from16 v19, v15

    move-object/from16 v15, v16

    :try_start_3
    invoke-static/range {v7 .. v15}, Ljc/l;->h(Landroid/content/Context;Ljava/util/List;IIIJLjava/util/Set;Ltj/d;)Ljava/lang/Object;

    move-result-object v7
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne v7, v0, :cond_9

    return-object v0

    :cond_9
    move-object/from16 v11, v16

    move-object/from16 v12, v17

    move-object/from16 v14, v18

    move-object/from16 v15, v19

    move-object/from16 v13, v20

    :goto_3
    :try_start_4
    move-object v9, v7

    check-cast v9, Ljc/b;

    invoke-virtual {v9}, Ljc/b;->a()Z

    move-result v7

    if-nez v7, :cond_a

    const-string v0, "loading more already to end"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_a
    invoke-virtual {v9}, Ljc/b;->c()I

    move-result v7

    add-int/lit8 v7, v7, 0x32

    invoke-virtual {v9, v7}, Ljc/b;->d(I)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :catchall_1
    move-exception v0

    move-object/from16 v11, v16

    goto/16 :goto_8

    :catch_0
    move-object/from16 v11, v16

    goto :goto_6

    :cond_b
    move-object/from16 v16, v11

    move-object/from16 v17, v12

    move-object/from16 v20, v13

    move-object/from16 v18, v14

    move-object/from16 v19, v15

    :goto_4
    invoke-static {v13}, Llk/j0;->f(Llk/i0;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v11, Ljc/m$c;->g:Ljc/m;

    invoke-static {v0}, Ljc/m;->d(Ljc/m;)Landroidx/lifecycle/c0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v12, v0}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v11, Ljc/m$c;->g:Ljc/m;

    invoke-static {v12}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v2, v9}, Ljc/m;->l(Ljc/m;ILjc/b;)V

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_c

    iget-object v0, v11, Ljc/m$c;->g:Ljc/m;

    invoke-static {v0, v15}, Ljc/m;->m(Ljc/m;Ljava/util/Set;)V

    iget-object v0, v11, Ljc/m$c;->g:Ljc/m;

    invoke-static {v0}, Ljc/m;->a(Ljc/m;)Landroidx/lifecycle/c0;

    move-result-object v0

    invoke-static {v14}, Lbk/m;->b(Ljava/lang/Object;)V

    :goto_5
    invoke-virtual {v0, v14}, Landroidx/lifecycle/c0;->m(Ljava/lang/Object;)V

    goto :goto_7

    :cond_c
    iget-object v0, v11, Ljc/m$c;->g:Ljc/m;

    invoke-static {v0, v15}, Ljc/m;->q(Ljc/m;Ljava/util/Set;)V

    iget-object v0, v11, Ljc/m$c;->g:Ljc/m;

    invoke-static {v0}, Ljc/m;->c(Ljc/m;)Landroidx/lifecycle/c0;

    move-result-object v0

    invoke-static {v14}, Lbk/m;->b(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object/from16 v16, v11

    goto :goto_8

    :catch_1
    move-object/from16 v16, v11

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v11, v1

    goto :goto_8

    :catch_2
    move-object v11, v1

    :catch_3
    :goto_6
    :try_start_5
    const-string v0, "job canceled"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_d
    :goto_7
    iget-object v0, v11, Ljc/m$c;->g:Ljc/m;

    invoke-static {v0, v6}, Ljc/m;->o(Ljc/m;Z)V

    sget-object v0, Loj/t;->a:Loj/t;

    return-object v0

    :goto_8
    iget-object v2, v11, Ljc/m$c;->g:Ljc/m;

    invoke-static {v2, v6}, Ljc/m;->o(Ljc/m;Z)V

    throw v0
.end method
