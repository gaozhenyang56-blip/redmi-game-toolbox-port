.class final Lf4/b$b;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lak/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf4/b;->e(Landroid/content/Context;ILjava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;ZZLtj/d;)Ljava/lang/Object;
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
    c = "com.miui.combinepermission.grantpermission.PermissionViewModel$loadAsync$2"
    f = "PermissionViewModel.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic f:Z

.field final synthetic g:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic h:Z

.field final synthetic i:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic j:Lf4/b;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;ILjava/util/LinkedHashMap;ZLjava/util/LinkedHashMap;ZLjava/util/LinkedHashMap;Lf4/b;Ltj/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;Z",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;Z",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;",
            "Lf4/b;",
            "Ltj/d<",
            "-",
            "Lf4/b$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lf4/b$b;->b:Landroid/content/Context;

    iput-object p2, p0, Lf4/b$b;->c:Ljava/lang/String;

    iput p3, p0, Lf4/b$b;->d:I

    iput-object p4, p0, Lf4/b$b;->e:Ljava/util/LinkedHashMap;

    iput-boolean p5, p0, Lf4/b$b;->f:Z

    iput-object p6, p0, Lf4/b$b;->g:Ljava/util/LinkedHashMap;

    iput-boolean p7, p0, Lf4/b$b;->h:Z

    iput-object p8, p0, Lf4/b$b;->i:Ljava/util/LinkedHashMap;

    iput-object p9, p0, Lf4/b$b;->j:Lf4/b;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p10}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILtj/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ltj/d;)Ltj/d;
    .locals 11
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

    new-instance p1, Lf4/b$b;

    iget-object v1, p0, Lf4/b$b;->b:Landroid/content/Context;

    iget-object v2, p0, Lf4/b$b;->c:Ljava/lang/String;

    iget v3, p0, Lf4/b$b;->d:I

    iget-object v4, p0, Lf4/b$b;->e:Ljava/util/LinkedHashMap;

    iget-boolean v5, p0, Lf4/b$b;->f:Z

    iget-object v6, p0, Lf4/b$b;->g:Ljava/util/LinkedHashMap;

    iget-boolean v7, p0, Lf4/b$b;->h:Z

    iget-object v8, p0, Lf4/b$b;->i:Ljava/util/LinkedHashMap;

    iget-object v9, p0, Lf4/b$b;->j:Lf4/b;

    move-object v0, p1

    move-object v10, p2

    invoke-direct/range {v0 .. v10}, Lf4/b$b;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/util/LinkedHashMap;ZLjava/util/LinkedHashMap;ZLjava/util/LinkedHashMap;Lf4/b;Ltj/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Llk/i0;

    check-cast p2, Ltj/d;

    invoke-virtual {p0, p1, p2}, Lf4/b$b;->invoke(Llk/i0;Ltj/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lf4/b$b;->create(Ljava/lang/Object;Ltj/d;)Ltj/d;

    move-result-object p1

    check-cast p1, Lf4/b$b;

    sget-object p2, Loj/t;->a:Loj/t;

    invoke-virtual {p1, p2}, Lf4/b$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    iget v0, p0, Lf4/b$b;->a:I

    if-nez v0, :cond_6

    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lg4/b;->a:Lg4/b;

    iget-object v1, p0, Lf4/b$b;->b:Landroid/content/Context;

    iget-object v2, p0, Lf4/b$b;->c:Ljava/lang/String;

    iget v3, p0, Lf4/b$b;->d:I

    invoke-virtual {v0, v1, v2, v3}, Lg4/b;->c(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v1, p0, Lf4/b$b;->d:I

    invoke-static {v1}, Lx4/z1;->z(I)Landroid/os/UserHandle;

    move-result-object v1

    if-eqz v0, :cond_5

    iget-object v2, p0, Lf4/b$b;->e:Ljava/util/LinkedHashMap;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    new-instance v6, Le4/a;

    invoke-direct {v6}, Le4/a;-><init>()V

    const/4 v7, 0x0

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v8, Lg4/b;->a:Lg4/b;

    iget-object v9, p0, Lf4/b$b;->b:Landroid/content/Context;

    invoke-virtual {v8, v9, v3}, Lg4/b;->e(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v6, Le4/a;->a:J

    iget-object v9, p0, Lf4/b$b;->b:Landroid/content/Context;

    invoke-virtual {v8, v9, v3}, Lg4/b;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Le4/a;->e:Ljava/lang/String;

    iput-object v3, v6, Le4/a;->d:Ljava/lang/String;

    iget-object v9, p0, Lf4/b$b;->b:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v9, v3, v10, v1}, Ltg/a;->e(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v9

    iput v9, v6, Le4/a;->b:I

    iget-object v9, p0, Lf4/b$b;->b:Landroid/content/Context;

    invoke-virtual {v8, v9, v0, v3}, Lg4/b;->i(Landroid/content/Context;Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, v6, Le4/a;->g:Z

    iget-object v9, p0, Lf4/b$b;->b:Landroid/content/Context;

    invoke-virtual {v8, v9, v0, v3}, Lg4/b;->j(Landroid/content/Context;Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, v6, Le4/a;->i:Z

    iget-boolean v9, p0, Lf4/b$b;->f:Z

    if-eqz v9, :cond_0

    iput-boolean v7, v6, Le4/a;->h:Z

    goto :goto_1

    :cond_0
    iget-object v7, p0, Lf4/b$b;->b:Landroid/content/Context;

    invoke-virtual {v8, v7, v0, v3}, Lg4/b;->k(Landroid/content/Context;Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v6, Le4/a;->h:Z

    :goto_1
    iget-boolean v3, v6, Le4/a;->i:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x6

    :goto_2
    iput v3, v6, Le4/a;->c:I

    goto :goto_3

    :cond_1
    iget-boolean v3, v6, Le4/a;->g:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x3

    goto :goto_2

    :cond_2
    :goto_3
    iget-boolean v3, p0, Lf4/b$b;->f:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lf4/b$b;->g:Ljava/util/LinkedHashMap;

    invoke-static {v4, v5}, Lkotlin/coroutines/jvm/internal/b;->c(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, -0x3e8

    if-eq v7, v8, :cond_4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_4

    :cond_3
    iget-boolean v3, p0, Lf4/b$b;->h:Z

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    :goto_4
    iput v3, v6, Le4/a;->c:I

    :cond_4
    iget-object v3, p0, Lf4/b$b;->i:Ljava/util/LinkedHashMap;

    invoke-static {v4, v5}, Lkotlin/coroutines/jvm/internal/b;->c(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v6, Le4/a;->f:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lf4/b$b;->j:Lf4/b;

    invoke-static {v0}, Lf4/b;->a(Lf4/b;)Landroidx/lifecycle/c0;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/c0;->m(Ljava/lang/Object;)V

    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
