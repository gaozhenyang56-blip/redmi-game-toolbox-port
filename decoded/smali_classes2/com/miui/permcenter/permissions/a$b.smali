.class final Lcom/miui/permcenter/permissions/a$b;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lak/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/permissions/a;->e(Landroid/content/pm/PackageInfo;)V
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
    c = "com.miui.permcenter.permissions.AppPermissionsViewModel$loadAppPermissions$1"
    f = "AppPermissionsViewModel.kt"
    i = {}
    l = {
        0x30
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:I

.field final synthetic c:Lcom/miui/permcenter/permissions/a;

.field final synthetic d:Landroid/content/pm/PackageInfo;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/permissions/a;Landroid/content/pm/PackageInfo;Ltj/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/permcenter/permissions/a;",
            "Landroid/content/pm/PackageInfo;",
            "Ltj/d<",
            "-",
            "Lcom/miui/permcenter/permissions/a$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/permcenter/permissions/a$b;->c:Lcom/miui/permcenter/permissions/a;

    iput-object p2, p0, Lcom/miui/permcenter/permissions/a$b;->d:Landroid/content/pm/PackageInfo;

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

    new-instance p1, Lcom/miui/permcenter/permissions/a$b;

    iget-object v0, p0, Lcom/miui/permcenter/permissions/a$b;->c:Lcom/miui/permcenter/permissions/a;

    iget-object v1, p0, Lcom/miui/permcenter/permissions/a$b;->d:Landroid/content/pm/PackageInfo;

    invoke-direct {p1, v0, v1, p2}, Lcom/miui/permcenter/permissions/a$b;-><init>(Lcom/miui/permcenter/permissions/a;Landroid/content/pm/PackageInfo;Ltj/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Llk/i0;

    check-cast p2, Ltj/d;

    invoke-virtual {p0, p1, p2}, Lcom/miui/permcenter/permissions/a$b;->invoke(Llk/i0;Ltj/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/miui/permcenter/permissions/a$b;->create(Ljava/lang/Object;Ltj/d;)Ltj/d;

    move-result-object p1

    check-cast p1, Lcom/miui/permcenter/permissions/a$b;

    sget-object p2, Loj/t;->a:Loj/t;

    invoke-virtual {p1, p2}, Lcom/miui/permcenter/permissions/a$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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

    move-result-object v0

    iget v1, p0, Lcom/miui/permcenter/permissions/a$b;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/permissions/a$b;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/a0;

    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/permcenter/permissions/a$b;->c:Lcom/miui/permcenter/permissions/a;

    invoke-virtual {p1}, Lcom/miui/permcenter/permissions/a;->c()Landroidx/lifecycle/a0;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/permcenter/permissions/a$b;->c:Lcom/miui/permcenter/permissions/a;

    iget-object v3, p0, Lcom/miui/permcenter/permissions/a$b;->d:Landroid/content/pm/PackageInfo;

    iput-object p1, p0, Lcom/miui/permcenter/permissions/a$b;->a:Ljava/lang/Object;

    iput v2, p0, Lcom/miui/permcenter/permissions/a$b;->b:I

    invoke-static {v1, v3, p0}, Lcom/miui/permcenter/permissions/a;->b(Lcom/miui/permcenter/permissions/a;Landroid/content/pm/PackageInfo;Ltj/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    move-object p1, v1

    :goto_0
    invoke-virtual {v0, p1}, Landroidx/lifecycle/c0;->o(Ljava/lang/Object;)V

    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method
