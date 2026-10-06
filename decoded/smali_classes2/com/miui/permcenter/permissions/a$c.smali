.class final Lcom/miui/permcenter/permissions/a$c;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lak/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/permissions/a;->f(Landroid/content/pm/PackageInfo;Ltj/d;)Ljava/lang/Object;
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
        "Lcom/miui/permcenter/permissions/c;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.miui.permcenter.permissions.AppPermissionsViewModel$loadAsync$2"
    f = "AppPermissionsViewModel.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field final synthetic b:Landroid/content/pm/PackageInfo;

.field final synthetic c:Lcom/miui/permcenter/permissions/a;


# direct methods
.method constructor <init>(Landroid/content/pm/PackageInfo;Lcom/miui/permcenter/permissions/a;Ltj/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfo;",
            "Lcom/miui/permcenter/permissions/a;",
            "Ltj/d<",
            "-",
            "Lcom/miui/permcenter/permissions/a$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/permcenter/permissions/a$c;->b:Landroid/content/pm/PackageInfo;

    iput-object p2, p0, Lcom/miui/permcenter/permissions/a$c;->c:Lcom/miui/permcenter/permissions/a;

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

    new-instance p1, Lcom/miui/permcenter/permissions/a$c;

    iget-object v0, p0, Lcom/miui/permcenter/permissions/a$c;->b:Landroid/content/pm/PackageInfo;

    iget-object v1, p0, Lcom/miui/permcenter/permissions/a$c;->c:Lcom/miui/permcenter/permissions/a;

    invoke-direct {p1, v0, v1, p2}, Lcom/miui/permcenter/permissions/a$c;-><init>(Landroid/content/pm/PackageInfo;Lcom/miui/permcenter/permissions/a;Ltj/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Llk/i0;

    check-cast p2, Ltj/d;

    invoke-virtual {p0, p1, p2}, Lcom/miui/permcenter/permissions/a$c;->invoke(Llk/i0;Ltj/d;)Ljava/lang/Object;

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
            "Lcom/miui/permcenter/permissions/c;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/miui/permcenter/permissions/a$c;->create(Ljava/lang/Object;Ltj/d;)Ltj/d;

    move-result-object p1

    check-cast p1, Lcom/miui/permcenter/permissions/a$c;

    sget-object p2, Loj/t;->a:Loj/t;

    invoke-virtual {p1, p2}, Lcom/miui/permcenter/permissions/a$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    iget v0, p0, Lcom/miui/permcenter/permissions/a$c;->a:I

    if-nez v0, :cond_1

    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    new-instance p1, Lcom/miui/permcenter/permissions/c;

    invoke-direct {p1}, Lcom/miui/permcenter/permissions/c;-><init>()V

    iget-object v0, p0, Lcom/miui/permcenter/permissions/a$c;->b:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Lx4/z1;->m(I)I

    move-result v0

    iget-object v1, p0, Lcom/miui/permcenter/permissions/a$c;->c:Lcom/miui/permcenter/permissions/a;

    invoke-static {v1}, Lcom/miui/permcenter/permissions/a;->a(Lcom/miui/permcenter/permissions/a;)Lcom/miui/securitycenter/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/permcenter/permissions/a$c;->b:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/miui/permcenter/l;->i(Landroid/content/Context;ILjava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p1, Lcom/miui/permcenter/permissions/c;->c:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p1, Lcom/miui/permcenter/permissions/c;->c:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/miui/permcenter/permissions/a$c;->b:Landroid/content/pm/PackageInfo;

    iget-object v1, p1, Lcom/miui/permcenter/permissions/c;->c:Ljava/util/HashMap;

    const-string v2, "dataHolder.permissionToAction"

    invoke-static {v1, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lxc/u;->d(Landroid/content/pm/PackageInfo;Ljava/util/Map;)V

    sget-object v0, Lxc/u;->a:Lxc/u;

    iget-object v1, p0, Lcom/miui/permcenter/permissions/a$c;->c:Lcom/miui/permcenter/permissions/a;

    invoke-static {v1}, Lcom/miui/permcenter/permissions/a;->a(Lcom/miui/permcenter/permissions/a;)Lcom/miui/securitycenter/Application;

    move-result-object v1

    const-string v2, "app"

    invoke-static {v1, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/miui/permcenter/permissions/c;->c:Ljava/util/HashMap;

    invoke-static {v2}, Lbk/m;->b(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/miui/permcenter/permissions/a$c;->b:Landroid/content/pm/PackageInfo;

    invoke-virtual {v0, v1, v2, v3}, Lxc/u;->s(Landroid/content/Context;Ljava/util/HashMap;Landroid/content/pm/PackageInfo;)V

    invoke-static {}, Lhc/a;->c()Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/miui/permcenter/permissions/c;->b:Ljava/util/List;

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
