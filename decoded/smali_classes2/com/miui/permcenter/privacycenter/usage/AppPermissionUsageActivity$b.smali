.class final Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$b;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lak/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->C0(Lcom/miui/permcenter/permissions/c;)V
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
    c = "com.miui.permcenter.privacycenter.usage.AppPermissionUsageActivity$onAppPermissionLoad$1"
    f = "AppPermissionUsageActivity.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAppPermissionUsageActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppPermissionUsageActivity.kt\ncom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$onAppPermissionLoad$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,533:1\n1194#2,2:534\n1222#2,4:536\n*S KotlinDebug\n*F\n+ 1 AppPermissionUsageActivity.kt\ncom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$onAppPermissionLoad$1\n*L\n435#1:534,2\n435#1:536,4\n*E\n"
    }
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

.field final synthetic c:Lcom/miui/permcenter/permissions/c;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;Lcom/miui/permcenter/permissions/c;Ltj/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;",
            "Lcom/miui/permcenter/permissions/c;",
            "Ltj/d<",
            "-",
            "Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$b;->b:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    iput-object p2, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$b;->c:Lcom/miui/permcenter/permissions/c;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILtj/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ltj/d;)Ltj/d;
    .locals 2
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

    new-instance p1, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$b;

    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$b;->b:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    iget-object v1, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$b;->c:Lcom/miui/permcenter/permissions/c;

    invoke-direct {p1, v0, v1, p2}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$b;-><init>(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;Lcom/miui/permcenter/permissions/c;Ltj/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Llk/i0;

    check-cast p2, Ltj/d;

    invoke-virtual {p0, p1, p2}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$b;->invoke(Llk/i0;Ltj/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$b;->create(Ljava/lang/Object;Ltj/d;)Ltj/d;

    move-result-object p1

    check-cast p1, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$b;

    sget-object p2, Loj/t;->a:Loj/t;

    invoke-virtual {p1, p2}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    move-object/from16 v0, p0

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    iget v1, v0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$b;->a:I

    if-nez v1, :cond_c

    invoke-static/range {p1 .. p1}, Loj/n;->b(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$b;->b:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-static {v1}, Lcom/miui/permission/PermissionManager;->getInstance(Landroid/content/Context;)Lcom/miui/permission/PermissionManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/permission/PermissionManager;->getAllPermissions(I)Ljava/util/List;

    move-result-object v1

    const-string v2, "allPermissionInfo"

    invoke-static {v1, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lqj/l;->o(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-static {v2}, Lqj/d0;->a(I)I

    move-result v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lgk/g;->a(II)I

    move-result v2

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/miui/permission/PermissionInfo;

    invoke-virtual {v4}, Lcom/miui/permission/PermissionInfo;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Lkotlin/coroutines/jvm/internal/b;->c(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$b;->c:Lcom/miui/permcenter/permissions/c;

    invoke-virtual {v1}, Lcom/miui/permcenter/permissions/c;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/permission/PermissionGroupInfo;

    invoke-virtual {v2}, Lcom/miui/permission/PermissionGroupInfo;->isShowInSecondPage()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/miui/permission/PermissionGroupInfo;->getRelativePermissionIds()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    iget-object v5, v0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$b;->b:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-static {v5}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->p0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)Landroid/util/ArrayMap;

    move-result-object v5

    invoke-static {v5}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/miui/permission/PermissionGroupInfo;->getRelativePermissionIds()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    iget-object v6, v0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$b;->b:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-static {v6}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->o0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)Landroid/util/ArrayMap;

    move-result-object v6

    invoke-static {v6}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-interface {v6, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$b;->b:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-static {v2}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->j0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    invoke-static {v2}, Lbk/m;->b(Ljava/lang/Object;)V

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v2}, Lx4/f1;->L(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    invoke-static {}, Lhc/a;->b()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$b;->b:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-static {v4}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->j0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    invoke-static {v4}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-static {v3, v4}, Lcom/miui/permission/RequiredPermissionsUtil;->isAdaptedRequiredPermissionsOnData(Landroid/content/Context;Landroid/content/pm/PackageInfo;)Z

    move-result v12

    invoke-static {}, Lhc/a;->b()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$b;->b:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-static {v4}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->j0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    invoke-static {v4}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-static {v3, v4}, Lcom/miui/permission/RequiredPermissionsUtil;->isRequiredModifiableIncludeShared(Landroid/content/Context;Landroid/content/pm/PackageInfo;)Z

    move-result v13

    const/4 v14, 0x0

    if-nez v2, :cond_5

    if-eqz v12, :cond_4

    goto :goto_3

    :cond_4
    move-object v15, v14

    goto :goto_4

    :cond_5
    :goto_3
    invoke-static {}, Lhc/a;->b()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$b;->b:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-static {v4}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->j0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    invoke-static {v4}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-static {v3, v4}, Lcom/miui/permission/RequiredPermissionsUtil;->retrieveRequiredPermissionsIncludeShared(Landroid/content/Context;Landroid/content/pm/PackageInfo;)Ljava/util/List;

    move-result-object v3

    move-object v15, v3

    :goto_4
    iget-object v3, v0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$b;->b:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-static {v3}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->n0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v3}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_6
    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v17

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$b;->b:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-static {v4}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->p0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-static {v4}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-static/range {v17 .. v18}, Lkotlin/coroutines/jvm/internal/b;->c(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static/range {v17 .. v18}, Lkotlin/coroutines/jvm/internal/b;->c(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_7
    iget-object v4, v0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$b;->b:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-static {v4}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->o0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-static {v4}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-static/range {v17 .. v18}, Lkotlin/coroutines/jvm/internal/b;->c(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, v0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$b;->b:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-static {v4}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->o0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-static {v4}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-static/range {v17 .. v18}, Lkotlin/coroutines/jvm/internal/b;->c(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lbk/m;->b(Ljava/lang/Object;)V

    check-cast v4, Lcom/miui/permission/PermissionGroupInfo;

    invoke-virtual {v4}, Lcom/miui/permission/PermissionGroupInfo;->getRelativePermissionIds()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    iget-object v6, v0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$b;->b:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-static {v6}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->n0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)Ljava/util/HashMap;

    move-result-object v6

    invoke-static {v6}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_9
    :goto_7
    iget-object v4, v0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$b;->b:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-static {v4}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->n0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/permcenter/l;->b(Ljava/util/ArrayList;Ljava/util/HashMap;)I

    move-result v7

    iget-object v3, v0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$b;->b:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-static {v3}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->j0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    invoke-static {v4}, Lbk/m;->b(Ljava/lang/Object;)V

    move-wide/from16 v5, v17

    move v8, v2

    move v9, v12

    move v10, v13

    move-object v11, v15

    invoke-static/range {v3 .. v11}, Lxc/u;->e(Landroid/content/Context;Landroid/content/pm/PackageInfo;JIZZZLjava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static/range {v17 .. v18}, Lkotlin/coroutines/jvm/internal/b;->c(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_a
    iget-object v2, v0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$b;->b:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-static {v2}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->e0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)Ljc/e;

    move-result-object v2

    if-nez v2, :cond_b

    const-string v2, "mAdapter"

    invoke-static {v2}, Lbk/m;->r(Ljava/lang/String;)V

    goto :goto_8

    :cond_b
    move-object v14, v2

    :goto_8
    invoke-virtual {v14, v1}, Ljc/e;->q(Ljava/util/ArrayList;)V

    sget-object v1, Loj/t;->a:Loj/t;

    return-object v1

    :cond_c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
