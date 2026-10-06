.class final Ljc/m$d;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lak/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljc/m;->H(Ljava/lang/String;)V
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
    c = "com.miui.permcenter.privacycenter.usage.PermissionUsageViewModel$loadTerminalPermissionUsage$1"
    f = "PermissionUsageViewModel.kt"
    i = {
        0x0
    }
    l = {
        0x143
    }
    m = "invokeSuspend"
    n = {
        "loadBehaviorInfo"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:I

.field final synthetic d:Ljc/m;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljc/m;Ljava/lang/String;Ltj/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljc/m;",
            "Ljava/lang/String;",
            "Ltj/d<",
            "-",
            "Ljc/m$d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ljc/m$d;->d:Ljc/m;

    iput-object p2, p0, Ljc/m$d;->e:Ljava/lang/String;

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

    new-instance p1, Ljc/m$d;

    iget-object v0, p0, Ljc/m$d;->d:Ljc/m;

    iget-object v1, p0, Ljc/m$d;->e:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Ljc/m$d;-><init>(Ljc/m;Ljava/lang/String;Ltj/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Llk/i0;

    check-cast p2, Ltj/d;

    invoke-virtual {p0, p1, p2}, Ljc/m$d;->invoke(Llk/i0;Ltj/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Ljc/m$d;->create(Ljava/lang/Object;Ltj/d;)Ltj/d;

    move-result-object p1

    check-cast p1, Ljc/m$d;

    sget-object p2, Loj/t;->a:Loj/t;

    invoke-virtual {p1, p2}, Ljc/m$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Ljc/m$d;->c:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Ljc/m$d;->b:Ljava/lang/Object;

    check-cast v0, Ljc/m;

    iget-object v1, p0, Ljc/m$d;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Ljc/m$d;->d:Ljc/m;

    invoke-static {p1}, Ljc/m;->a(Ljc/m;)Landroidx/lifecycle/c0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_2

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    move-object v1, p1

    iget-object p1, p0, Ljc/m$d;->d:Ljc/m;

    invoke-static {p1}, Ljc/m;->b(Ljc/m;)Landroid/app/Application;

    move-result-object v3

    iget-object v4, p0, Ljc/m$d;->e:Ljava/lang/String;

    invoke-static {v1}, Lbk/c0;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    iput-object v1, p0, Ljc/m$d;->a:Ljava/lang/Object;

    iput-object p1, p0, Ljc/m$d;->b:Ljava/lang/Object;

    iput v2, p0, Ljc/m$d;->c:I

    invoke-static {v3, v4, v5, p0}, Ljc/l;->l(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ltj/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_3

    return-object v0

    :cond_3
    move-object v0, p1

    move-object p1, v2

    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Ljc/m;->p(Ljc/m;Z)V

    iget-object p1, p0, Ljc/m$d;->d:Ljc/m;

    invoke-static {p1}, Ljc/m;->c(Ljc/m;)Landroidx/lifecycle/c0;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/c0;->m(Ljava/lang/Object;)V

    iget-object p1, p0, Ljc/m$d;->d:Ljc/m;

    invoke-static {p1}, Ljc/m;->a(Ljc/m;)Landroidx/lifecycle/c0;

    move-result-object p1

    invoke-static {v1}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroidx/lifecycle/c0;->m(Ljava/lang/Object;)V

    iget-object p1, p0, Ljc/m$d;->d:Ljc/m;

    invoke-static {p1}, Ljc/m;->e(Ljc/m;)Landroidx/lifecycle/c0;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/c0;->m(Ljava/lang/Object;)V

    iget-object p1, p0, Ljc/m$d;->d:Ljc/m;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljc/m;->o(Ljc/m;Z)V

    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method
