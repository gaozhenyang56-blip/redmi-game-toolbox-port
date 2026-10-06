.class final Lcom/miui/permcenter/permissions/l$d;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lak/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/permissions/l;->f(ILjava/util/List;Z)V
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
    c = "com.miui.permcenter.permissions.PermissionAppsViewModel$loadAppsPermissionInfo$1"
    f = "PermissionAppsViewModel.kt"
    i = {}
    l = {
        0x3d,
        0x45
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field final synthetic b:I

.field final synthetic c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic d:Lcom/miui/permcenter/permissions/l;

.field final synthetic e:Z


# direct methods
.method constructor <init>(ILjava/util/List;Lcom/miui/permcenter/permissions/l;ZLtj/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/miui/permcenter/permissions/l;",
            "Z",
            "Ltj/d<",
            "-",
            "Lcom/miui/permcenter/permissions/l$d;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lcom/miui/permcenter/permissions/l$d;->b:I

    iput-object p2, p0, Lcom/miui/permcenter/permissions/l$d;->c:Ljava/util/List;

    iput-object p3, p0, Lcom/miui/permcenter/permissions/l$d;->d:Lcom/miui/permcenter/permissions/l;

    iput-boolean p4, p0, Lcom/miui/permcenter/permissions/l$d;->e:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILtj/d;)V

    return-void
.end method

.method public static synthetic d(Lcom/miui/permcenter/permissions/l;JLandroid/content/pm/ApplicationInfo;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/permcenter/permissions/l$d;->e(Lcom/miui/permcenter/permissions/l;JLandroid/content/pm/ApplicationInfo;)Z

    move-result p0

    return p0
.end method

.method private static final e(Lcom/miui/permcenter/permissions/l;JLandroid/content/pm/ApplicationInfo;)Z
    .locals 0

    invoke-static {p0}, Lcom/miui/permcenter/permissions/l;->a(Lcom/miui/permcenter/permissions/l;)Lcom/miui/securitycenter/Application;

    move-result-object p0

    invoke-static {p0, p3}, Lxc/m;->b(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Lxc/m$a;

    move-result-object p0

    sget-object p1, Lxc/m$a;->a:Lxc/m$a;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ltj/d;)Ltj/d;
    .locals 6
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

    new-instance p1, Lcom/miui/permcenter/permissions/l$d;

    iget v1, p0, Lcom/miui/permcenter/permissions/l$d;->b:I

    iget-object v2, p0, Lcom/miui/permcenter/permissions/l$d;->c:Ljava/util/List;

    iget-object v3, p0, Lcom/miui/permcenter/permissions/l$d;->d:Lcom/miui/permcenter/permissions/l;

    iget-boolean v4, p0, Lcom/miui/permcenter/permissions/l$d;->e:Z

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/miui/permcenter/permissions/l$d;-><init>(ILjava/util/List;Lcom/miui/permcenter/permissions/l;ZLtj/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Llk/i0;

    check-cast p2, Ltj/d;

    invoke-virtual {p0, p1, p2}, Lcom/miui/permcenter/permissions/l$d;->invoke(Llk/i0;Ltj/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/miui/permcenter/permissions/l$d;->create(Ljava/lang/Object;Ltj/d;)Ltj/d;

    move-result-object p1

    check-cast p1, Lcom/miui/permcenter/permissions/l$d;

    sget-object p2, Loj/t;->a:Loj/t;

    invoke-virtual {p1, p2}, Lcom/miui/permcenter/permissions/l$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/miui/permcenter/permissions/l$d;->a:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    sget-object p1, Lxc/u;->a:Lxc/u;

    iget v1, p0, Lcom/miui/permcenter/permissions/l$d;->b:I

    invoke-virtual {p1, v1}, Lxc/u;->n(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/miui/permcenter/permissions/l$d;->c:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    iput v3, p0, Lcom/miui/permcenter/permissions/l$d;->a:I

    invoke-virtual {p1, v1, v2, p0}, Lxc/u;->r(JLtj/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    check-cast p1, Ljava/util/ArrayList;

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    iget v3, p0, Lcom/miui/permcenter/permissions/l$d;->b:I

    invoke-virtual {p1, v3}, Lxc/u;->o(I)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/permcenter/permissions/l$d;->d:Lcom/miui/permcenter/permissions/l;

    new-instance v1, Lcom/miui/permcenter/permissions/m;

    invoke-direct {v1, p1}, Lcom/miui/permcenter/permissions/m;-><init>(Lcom/miui/permcenter/permissions/l;)V

    :cond_5
    iget-object p1, p0, Lcom/miui/permcenter/permissions/l$d;->d:Lcom/miui/permcenter/permissions/l;

    iget-object v3, p0, Lcom/miui/permcenter/permissions/l$d;->c:Ljava/util/List;

    iput v2, p0, Lcom/miui/permcenter/permissions/l$d;->a:I

    invoke-static {p1, v3, v1, p0}, Lcom/miui/permcenter/permissions/l;->b(Lcom/miui/permcenter/permissions/l;Ljava/util/List;Lxc/c;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :goto_2
    iget v0, p0, Lcom/miui/permcenter/permissions/l$d;->b:I

    const/16 v1, 0x200

    if-ne v0, v1, :cond_8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_8

    sget-boolean v0, Lcom/miui/permcenter/o;->e:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/miui/permcenter/permissions/l$d;->d:Lcom/miui/permcenter/permissions/l;

    invoke-static {v0}, Lcom/miui/permcenter/permissions/l;->a(Lcom/miui/permcenter/permissions/l;)Lcom/miui/securitycenter/Application;

    move-result-object v0

    const-wide/high16 v1, 0x2000000000000000L

    invoke-static {v0, v1, v2}, Lcom/miui/permcenter/n;->w(Landroid/content/Context;J)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/permcenter/AppPermissionInfo;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/permcenter/AppPermissionInfo;

    invoke-virtual {v4}, Lcom/miui/permcenter/AppPermissionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/miui/permcenter/AppPermissionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v4}, Lcom/miui/permcenter/AppPermissionInfo;->getPermissionToAction()Ljava/util/HashMap;

    move-result-object v5

    const-wide/16 v7, 0x20

    invoke-static {v7, v8}, Lkotlin/coroutines/jvm/internal/b;->c(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lbk/m;->b(Ljava/lang/Object;)V

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-virtual {v6}, Lcom/miui/permcenter/AppPermissionInfo;->getPermissionToAction()Ljava/util/HashMap;

    move-result-object v6

    invoke-static {v1, v2}, Lkotlin/coroutines/jvm/internal/b;->c(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lbk/m;->b(Ljava/lang/Object;)V

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-static {v5, v6}, Lcom/miui/permcenter/n;->c(II)I

    move-result v5

    invoke-virtual {v4}, Lcom/miui/permcenter/AppPermissionInfo;->getPermissionToAction()Ljava/util/HashMap;

    move-result-object v4

    const-string v6, "foreground.permissionToAction"

    invoke-static {v4, v6}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v8}, Lkotlin/coroutines/jvm/internal/b;->c(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/b;->b(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_8
    iget-boolean v0, p0, Lcom/miui/permcenter/permissions/l$d;->e:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/miui/permcenter/permissions/l$d;->d:Lcom/miui/permcenter/permissions/l;

    invoke-static {v0}, Lcom/miui/permcenter/permissions/l;->a(Lcom/miui/permcenter/permissions/l;)Lcom/miui/securitycenter/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/permcenter/permissions/l$d;->c:Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcom/miui/permcenter/q;->n(Landroid/content/Context;Ljava/util/List;Ljava/util/ArrayList;)V

    :cond_9
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/permcenter/AppPermissionInfo;

    invoke-virtual {v1}, Lcom/miui/permcenter/AppPermissionInfo;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lxc/n;->a(Ljava/lang/String;)Le3/g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/permcenter/AppPermissionInfo;->setPyInfo(Le3/g;)V

    invoke-virtual {v1}, Lcom/miui/permcenter/AppPermissionInfo;->getPackageUser()Ljava/lang/String;

    move-result-object v2

    const-string v3, "info.packageUser"

    invoke-static {v2, v3}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "info"

    invoke-static {v1, v3}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_a
    iget-object p1, p0, Lcom/miui/permcenter/permissions/l$d;->d:Lcom/miui/permcenter/permissions/l;

    invoke-virtual {p1}, Lcom/miui/permcenter/permissions/l;->c()Landroidx/lifecycle/a0;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/lifecycle/c0;->o(Ljava/lang/Object;)V

    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method
