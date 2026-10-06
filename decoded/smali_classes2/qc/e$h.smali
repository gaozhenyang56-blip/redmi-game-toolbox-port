.class final Lqc/e$h;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lak/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqc/e;->x()V
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
    c = "com.miui.permcenter.provision.ProvisionHelper$loadAll$1"
    f = "ProvisionHelper.kt"
    i = {}
    l = {
        0x118,
        0x1b7
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nProvisionHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProvisionHelper.kt\ncom/miui/permcenter/provision/ProvisionHelper$loadAll$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArrayMap.kt\nandroidx/collection/ArrayMapKt\n*L\n1#1,481:1\n766#2:482\n857#2,2:483\n766#2:485\n857#2,2:486\n766#2:488\n857#2,2:489\n766#2:491\n857#2,2:492\n1855#2,2:495\n1855#2,2:498\n22#3:494\n22#3:497\n*S KotlinDebug\n*F\n+ 1 ProvisionHelper.kt\ncom/miui/permcenter/provision/ProvisionHelper$loadAll$1\n*L\n288#1:482\n288#1:483,2\n290#1:485\n290#1:486,2\n293#1:488\n293#1:489,2\n297#1:491\n297#1:492,2\n336#1:495,2\n343#1:498,2\n335#1:494\n340#1:497\n*E\n"
    }
.end annotation


# instance fields
.field a:I

.field private synthetic b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ltj/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltj/d<",
            "-",
            "Lqc/e$h;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILtj/d;)V

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

    new-instance v0, Lqc/e$h;

    invoke-direct {v0, p2}, Lqc/e$h;-><init>(Ltj/d;)V

    iput-object p1, v0, Lqc/e$h;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Llk/i0;

    check-cast p2, Ltj/d;

    invoke-virtual {p0, p1, p2}, Lqc/e$h;->invoke(Llk/i0;Ltj/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lqc/e$h;->create(Ljava/lang/Object;Ltj/d;)Ltj/d;

    move-result-object p1

    check-cast p1, Lqc/e$h;

    sget-object p2, Loj/t;->a:Loj/t;

    invoke-virtual {p1, p2}, Lqc/e$h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 38
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    move-object/from16 v1, p0

    const-string v2, ""

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object v3

    iget v0, v1, Lqc/e$h;->a:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v5, :cond_1

    if-ne v0, v4, :cond_0

    invoke-static/range {p1 .. p1}, Loj/n;->b(Ljava/lang/Object;)V

    move-object v2, v1

    goto/16 :goto_1e

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, Loj/n;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static/range {p1 .. p1}, Loj/n;->b(Ljava/lang/Object;)V

    iget-object v0, v1, Lqc/e$h;->b:Ljava/lang/Object;

    check-cast v0, Llk/i0;

    sget-object v0, Lqc/e;->a:Lqc/e;

    invoke-static {v0}, Lqc/e;->c(Lqc/e;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lbm/d;->h(Landroid/content/Context;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_4

    invoke-virtual {v0, v7}, Lqc/e;->B(Z)V

    invoke-virtual {v0}, Lqc/e;->s()Lkotlinx/coroutines/flow/s;

    move-result-object v0

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput v5, v1, Lqc/e$h;->a:I

    invoke-interface {v0, v2, v1}, Lkotlinx/coroutines/flow/r;->emit(Ljava/lang/Object;Ltj/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_3

    return-object v3

    :cond_3
    :goto_0
    sget-object v0, Loj/t;->a:Loj/t;

    return-object v0

    :cond_4
    invoke-static {v0}, Lqc/e;->i(Lqc/e;)Ljava/util/HashMap;

    move-result-object v6

    invoke-static {v6}, Lqc/e;->j(Ljava/util/HashMap;)V

    invoke-virtual {v0}, Lqc/e;->q()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0, v7}, Lqc/e;->B(Z)V

    invoke-static {v0}, Lqc/e;->c(Lqc/e;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Li4/a;->k(Landroid/content/Context;)Li4/a;

    move-result-object v0

    invoke-virtual {v0}, Li4/a;->j()Ljava/util/List;

    move-result-object v0

    const-string v6, "getInstance(context).installedPkgList"

    invoke-static {v0, v6}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Landroid/content/pm/PackageInfo;

    iget-object v9, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v9, v9, 0x4

    if-eqz v9, :cond_6

    move v9, v5

    goto :goto_2

    :cond_6
    move v9, v7

    :goto_2
    if-eqz v9, :cond_5

    invoke-interface {v6, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v10, v8

    check-cast v10, Landroid/content/pm/PackageInfo;

    invoke-static {}, Lqc/e;->h()Ljava/util/ArrayList;

    move-result-object v11

    iget-object v12, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    iget-object v10, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v11, "it.packageName"

    invoke-static {v10, v11}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "com.example.testandroid"

    invoke-static {v10, v11, v7, v4, v9}, Ljk/f;->u(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    goto :goto_4

    :cond_9
    move v9, v7

    goto :goto_5

    :cond_a
    :goto_4
    move v9, v5

    :goto_5
    if-eqz v9, :cond_8

    invoke-interface {v0, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_b
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v10, v8

    check-cast v10, Landroid/content/pm/PackageInfo;

    iget-object v10, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v10, :cond_d

    const-string v11, "cta_provision"

    invoke-virtual {v10, v11, v7}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_d

    move v10, v5

    goto :goto_7

    :cond_d
    move v10, v7

    :goto_7
    if-eqz v10, :cond_c

    invoke-interface {v6, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_f
    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v10, v8

    check-cast v10, Landroid/content/pm/PackageInfo;

    invoke-static {}, Lqc/e;->e()Ljava/util/HashMap;

    move-result-object v11

    invoke-static {v11}, Lbk/m;->b(Ljava/lang/Object;)V

    iget-object v12, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    invoke-static {}, Lqc/e;->e()Ljava/util/HashMap;

    move-result-object v11

    invoke-static {v11}, Lbk/m;->b(Ljava/lang/Object;)V

    iget-object v10, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lqc/a;

    if-eqz v10, :cond_10

    invoke-virtual {v10}, Lqc/a;->n()Z

    move-result v10

    if-ne v10, v5, :cond_10

    move v10, v5

    goto :goto_9

    :cond_10
    move v10, v7

    :goto_9
    if-nez v10, :cond_11

    goto :goto_a

    :cond_11
    move v10, v7

    goto :goto_b

    :cond_12
    :goto_a
    move v10, v5

    :goto_b
    if-eqz v10, :cond_f

    invoke-interface {v0, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_13
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cta apps :"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "ProvisionExtra"

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    :try_start_0
    sget-object v10, Loj/m;->b:Loj/m$a;

    iget-object v10, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    sget-object v11, Lqc/e;->a:Lqc/e;

    invoke-static {v11}, Lqc/e;->c(Lqc/e;)Landroid/content/Context;

    move-result-object v12

    iget-object v13, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v12

    const-string v13, "context.createPackageCon\u2026ckageInfo.packageName, 0)"

    invoke-static {v12, v13}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v13, Lxc/e;->a:Lxc/e;

    const-string v14, "cta_name"

    invoke-virtual {v10, v14}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v12, v14}, Lxc/e;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_14

    invoke-static {v11}, Lqc/e;->c(Lqc/e;)Landroid/content/Context;

    move-result-object v11

    iget-object v14, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v11, v14}, Lx4/f1;->P(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v14

    :cond_14
    const-string v11, "cta_purpose"

    invoke-virtual {v10, v11}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v12, v11}, Lxc/e;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_15

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " purpose is empty"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    move-object/from16 v37, v2

    move-object/from16 v36, v3

    move-object/from16 v35, v6

    goto/16 :goto_1a

    :cond_15
    const-string v15, "cta_use_network"

    invoke-virtual {v10, v15, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    const-string v7, "cta_required_permissions"

    invoke-virtual {v10, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const-string v22, ";"

    if-eqz v7, :cond_16

    :try_start_1
    const-string v4, "getString(CTA_REQUIRED_PERMISSIONS)"

    invoke-static {v7, v4}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array/range {v22 .. v22}, [Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x6

    const/16 v21, 0x0

    move-object/from16 v16, v7

    invoke-static/range {v16 .. v21}, Ljk/f;->f0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_17

    :cond_16
    invoke-static {}, Lqj/l;->h()Ljava/util/List;

    move-result-object v4

    :cond_17
    move-object/from16 v23, v4

    const-string v4, "cta_required_permissions_desc"

    invoke-virtual {v10, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v12, v4}, Lxc/e;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_18

    filled-new-array/range {v22 .. v22}, [Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x6

    const/16 v21, 0x0

    invoke-static/range {v16 .. v21}, Ljk/f;->f0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_18

    goto :goto_e

    :cond_18
    invoke-static {}, Lqj/l;->h()Ljava/util/List;

    move-result-object v4

    :goto_e
    move-object/from16 v24, v4

    invoke-interface/range {v23 .. v23}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v5

    if-eqz v4, :cond_19

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v7

    if-eq v4, v7, :cond_19

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " requiredPermissions.size != requiredPermissionsDesc.size"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :cond_19
    new-instance v4, Lm/a;

    invoke-direct {v4}, Lm/a;-><init>()V

    const-string v7, "cta_grant_permissions"

    invoke-virtual {v10, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1a

    const-string v13, "getString(CTA_GRANT_PERMISSIONS)"

    invoke-static {v7, v13}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array/range {v22 .. v22}, [Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x6

    const/16 v21, 0x0

    move-object/from16 v16, v7

    invoke-static/range {v16 .. v21}, Ljk/f;->f0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v7

    if-nez v7, :cond_1b

    :cond_1a
    invoke-static {}, Lqj/l;->h()Ljava/util/List;

    move-result-object v7

    :cond_1b
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    const/16 v16, 0x3

    if-eqz v13, :cond_1c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static/range {v16 .. v16}, Lkotlin/coroutines/jvm/internal/b;->b(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v4, v13, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v9, 0x0

    goto :goto_f

    :cond_1c
    new-instance v7, Lm/a;

    invoke-direct {v7}, Lm/a;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const-string v13, "cta_grant_optional_permissions"

    invoke-virtual {v10, v13}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_1d

    const-string v5, "getString(CTA_GRANT_OPTIONAL_PERMISSIONS)"

    invoke-static {v13, v5}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array/range {v22 .. v22}, [Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x6

    const/16 v30, 0x0

    move-object/from16 v25, v13

    invoke-static/range {v25 .. v30}, Ljk/f;->f0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_1e

    :cond_1d
    invoke-static {}, Lqj/l;->h()Ljava/util/List;

    move-result-object v5

    :cond_1e
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-eqz v13, :cond_20

    :try_start_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v17, v5

    sget-object v5, Lg4/b;->a:Lg4/b;

    sget-object v18, Lqc/e;->a:Lqc/e;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v35, v6

    :try_start_3
    invoke-static/range {v18 .. v18}, Lqc/e;->c(Lqc/e;)Landroid/content/Context;

    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v36, v3

    :try_start_4
    const-string v3, "packageInfo"

    invoke-static {v0, v3}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v6, v0, v13}, Lg4/b;->j(Landroid/content/Context;Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v3, 0x6

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/b;->b(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_11
    invoke-interface {v7, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    :cond_1f
    invoke-static/range {v16 .. v16}, Lkotlin/coroutines/jvm/internal/b;->b(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_11

    :goto_12
    move-object/from16 v5, v17

    move-object/from16 v6, v35

    move-object/from16 v3, v36

    goto :goto_10

    :catchall_0
    move-exception v0

    move-object/from16 v36, v3

    goto/16 :goto_1b

    :catchall_1
    move-exception v0

    move-object/from16 v36, v3

    move-object/from16 v35, v6

    goto/16 :goto_1b

    :cond_20
    move-object/from16 v36, v3

    move-object/from16 v35, v6

    sget-object v3, Lqc/e;->a:Lqc/e;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lqc/e;->B(Z)V

    const-string v5, "cta_optional_permissions"

    invoke-virtual {v10, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_21

    const-string v6, "getString(CTA_OPTIONAL_PERMISSIONS)"

    invoke-static {v5, v6}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array/range {v22 .. v22}, [Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x6

    const/16 v21, 0x0

    move-object/from16 v16, v5

    invoke-static/range {v16 .. v21}, Ljk/f;->f0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_22

    :cond_21
    invoke-static {}, Lqj/l;->h()Ljava/util/List;

    move-result-object v5

    :cond_22
    move-object/from16 v25, v5

    const-string v5, "cta_optional_permissions_desc"

    invoke-virtual {v10, v5, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lxc/e;->a:Lxc/e;

    invoke-virtual {v6, v12, v5}, Lxc/e;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_23

    filled-new-array/range {v22 .. v22}, [Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x6

    const/16 v21, 0x0

    invoke-static/range {v16 .. v21}, Ljk/f;->f0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_24

    :cond_23
    invoke-static {}, Lqj/l;->h()Ljava/util/List;

    move-result-object v5

    :cond_24
    move-object/from16 v26, v5

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    const/4 v13, 0x1

    xor-int/2addr v5, v13

    if-eqz v5, :cond_25

    invoke-virtual {v7}, Lm/g;->size()I

    move-result v5

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v13

    if-eq v5, v13, :cond_25

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " grantOptionalPermissions.size != optionalPermissionsDesc.size"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v37, v2

    goto/16 :goto_1a

    :cond_25
    const-string v5, "cta_user_agreement"

    invoke-virtual {v10, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v12, v5}, Lxc/e;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_26

    move-object/from16 v30, v2

    goto :goto_13

    :cond_26
    move-object/from16 v30, v5

    :goto_13
    const-string v5, "cta_user_agreement_offline"

    invoke-virtual {v10, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_27

    move-object v5, v2

    :cond_27
    const-string v13, "metaData.getString(CTA_U\u2026_AGREEMENT_OFFLINE) ?: \"\""

    invoke-static {v5, v13}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v2}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_28

    invoke-static {v3}, Lqc/e;->d(Lqc/e;)Llk/i0;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    new-instance v13, Lqc/e$h$a;

    const/4 v1, 0x0

    invoke-direct {v13, v12, v5, v1}, Lqc/e$h$a;-><init>(Landroid/content/Context;Ljava/lang/String;Ltj/d;)V

    const/16 v20, 0x3

    const/16 v21, 0x0

    move-object/from16 v19, v13

    invoke-static/range {v16 .. v21}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    :cond_28
    const-string v1, "cta_privacy_policy"

    invoke-virtual {v10, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v12, v1}, Lxc/e;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_29

    move-object/from16 v32, v2

    goto :goto_14

    :cond_29
    move-object/from16 v32, v1

    :goto_14
    const-string v1, "cta_privacy_policy_offline"

    invoke-virtual {v10, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2a

    move-object v1, v2

    :cond_2a
    const-string v13, "metaData.getString(CTA_P\u2026ACY_POLICY_OFFLINE) ?: \"\""

    invoke-static {v1, v13}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2b

    invoke-static {v3}, Lqc/e;->d(Lqc/e;)Llk/i0;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    new-instance v13, Lqc/e$h$b;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object/from16 v37, v2

    const/4 v2, 0x0

    :try_start_5
    invoke-direct {v13, v12, v1, v2}, Lqc/e$h$b;-><init>(Landroid/content/Context;Ljava/lang/String;Ltj/d;)V

    const/16 v20, 0x3

    const/16 v21, 0x0

    move-object/from16 v19, v13

    invoke-static/range {v16 .. v21}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    goto :goto_15

    :cond_2b
    move-object/from16 v37, v2

    const/4 v2, 0x0

    :goto_15
    const-string v13, "cta_version"

    invoke-virtual {v10, v13}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v23 .. v23}, Ljava/util/Collection;->isEmpty()Z

    move-result v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/16 v16, 0x1

    xor-int/lit8 v13, v13, 0x1

    const-string v2, "{\n                      \u2026                        }"

    if-eqz v13, :cond_2d

    :try_start_6
    invoke-static {v3}, Lqc/e;->c(Lqc/e;)Landroid/content/Context;

    move-result-object v13

    if-eqz v15, :cond_2c

    const v15, 0x7f121922

    goto :goto_16

    :cond_2c
    const v15, 0x7f121923

    :goto_16
    invoke-virtual {v13, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    :goto_17
    invoke-static {v13, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_18

    :cond_2d
    if-eqz v15, :cond_2e

    invoke-static {v3}, Lqc/e;->c(Lqc/e;)Landroid/content/Context;

    move-result-object v13

    const v15, 0x7f121924

    invoke-virtual {v13, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_17

    :cond_2e
    move-object/from16 v13, v37

    goto :goto_17

    :goto_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const-string v2, "cta_custom_link"

    invoke-virtual {v10, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v12, v2}, Lxc/e;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2f

    move-object/from16 v34, v37

    goto :goto_19

    :cond_2f
    move-object/from16 v34, v2

    :goto_19
    new-instance v2, Lqc/a;

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v10, "packageInfo.packageName"

    invoke-static {v6, v10}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    const/16 v20, 0x1

    const-string v10, "name"

    invoke-static {v14, v10}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {v22 .. v22}, Lbk/m;->b(Ljava/lang/Object;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0x2d

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object v15, v2

    move-object/from16 v16, v6

    move-object/from16 v21, v14

    move-object/from16 v27, v4

    move-object/from16 v28, v7

    move-object/from16 v29, v9

    invoke-direct/range {v15 .. v34}, Lqc/a;-><init>(Ljava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lqc/e;->q()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1a
    sget-object v0, Loj/t;->a:Loj/t;

    invoke-static {v0}, Loj/m;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1d

    :catchall_2
    move-exception v0

    goto :goto_1c

    :catchall_3
    move-exception v0

    :goto_1b
    move-object/from16 v37, v2

    goto :goto_1c

    :catchall_4
    move-exception v0

    move-object/from16 v37, v2

    move-object/from16 v36, v3

    move-object/from16 v35, v6

    :goto_1c
    sget-object v1, Loj/m;->b:Loj/m$a;

    invoke-static {v0}, Loj/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Loj/m;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1d
    invoke-static {v0}, Loj/m;->f(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-static {v0}, Loj/m;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    const-string v1, "load failed"

    invoke-static {v8, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_30
    move-object/from16 v1, p0

    move-object/from16 v6, v35

    move-object/from16 v3, v36

    move-object/from16 v2, v37

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    goto/16 :goto_c

    :cond_31
    move-object/from16 v36, v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load complete:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lqc/e;->a:Lqc/e;

    invoke-virtual {v1}, Lqc/e;->v()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lqc/e;->v()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {v1}, Lqc/e;->q()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lqc/e;->g()Lqc/e$k;

    move-result-object v2

    invoke-static {v0, v2}, Lqj/l;->q(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_32
    invoke-virtual {v1}, Lqc/e;->s()Lkotlinx/coroutines/flow/s;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v3, 0x2

    move-object/from16 v2, p0

    iput v3, v2, Lqc/e$h;->a:I

    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/flow/r;->emit(Ljava/lang/Object;Ltj/d;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v1, v36

    if-ne v0, v1, :cond_33

    return-object v1

    :cond_33
    :goto_1e
    sget-object v0, Loj/t;->a:Loj/t;

    return-object v0
.end method
