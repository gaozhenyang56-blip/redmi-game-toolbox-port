.class final Ljc/m$b;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lak/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljc/m;->z(Ljava/lang/String;IZ)V
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
    c = "com.miui.permcenter.privacycenter.usage.PermissionUsageViewModel$loadAppPermissionUsage$1"
    f = "PermissionUsageViewModel.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0x120
    }
    m = "invokeSuspend"
    n = {
        "loadBehaviorInfo",
        "minLoadSize"
    }
    s = {
        "L$0",
        "I$0"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:I

.field d:I

.field final synthetic e:Ljc/m;

.field final synthetic f:Z

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:I


# direct methods
.method constructor <init>(Ljc/m;ZLjava/lang/String;ILtj/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljc/m;",
            "Z",
            "Ljava/lang/String;",
            "I",
            "Ltj/d<",
            "-",
            "Ljc/m$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ljc/m$b;->e:Ljc/m;

    iput-boolean p2, p0, Ljc/m$b;->f:Z

    iput-object p3, p0, Ljc/m$b;->g:Ljava/lang/String;

    iput p4, p0, Ljc/m$b;->h:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILtj/d;)V

    return-void
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

    new-instance p1, Ljc/m$b;

    iget-object v1, p0, Ljc/m$b;->e:Ljc/m;

    iget-boolean v2, p0, Ljc/m$b;->f:Z

    iget-object v3, p0, Ljc/m$b;->g:Ljava/lang/String;

    iget v4, p0, Ljc/m$b;->h:I

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ljc/m$b;-><init>(Ljc/m;ZLjava/lang/String;ILtj/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Llk/i0;

    check-cast p2, Ltj/d;

    invoke-virtual {p0, p1, p2}, Ljc/m$b;->invoke(Llk/i0;Ltj/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Ljc/m$b;->create(Ljava/lang/Object;Ltj/d;)Ltj/d;

    move-result-object p1

    check-cast p1, Ljc/m$b;

    sget-object p2, Loj/t;->a:Loj/t;

    invoke-virtual {p1, p2}, Ljc/m$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Ljc/m$b;->d:I

    const/4 v2, 0x0

    const/16 v3, 0x32

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v4, :cond_0

    iget v1, p0, Ljc/m$b;->c:I

    iget-object v5, p0, Ljc/m$b;->b:Ljava/lang/Object;

    check-cast v5, Ljc/m;

    iget-object v6, p0, Ljc/m$b;->a:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    move-object v7, v6

    move-object v6, v5

    move v5, v1

    move-object v1, v0

    move-object v0, p0

    goto/16 :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Ljc/m$b;->e:Ljc/m;

    invoke-static {p1}, Ljc/m;->a(Ljc/m;)Landroidx/lifecycle/c0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    iget-boolean v1, p0, Ljc/m$b;->f:Z

    if-eqz v1, :cond_3

    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v3

    move-object v6, p1

    move-object p1, p0

    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, v1, :cond_6

    iget-object v5, p1, Ljc/m$b;->e:Ljc/m;

    invoke-static {v5}, Ljc/m;->b(Ljc/m;)Landroid/app/Application;

    move-result-object v7

    iget-object v8, p1, Ljc/m$b;->g:Ljava/lang/String;

    iget v9, p1, Ljc/m$b;->h:I

    const-string v10, "null cannot be cast to non-null type kotlin.collections.MutableList<com.miui.permcenter.privacycenter.usage.PermissionUsageData>"

    invoke-static {v6, v10}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Lbk/c0;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x2

    new-array v11, v11, [I

    aput v3, v11, v2

    iget-object v12, p1, Ljc/m$b;->e:Ljc/m;

    invoke-static {v12}, Ljc/m;->i(Ljc/m;)I

    move-result v12

    aput v12, v11, v4

    iput-object v6, p1, Ljc/m$b;->a:Ljava/lang/Object;

    iput-object v5, p1, Ljc/m$b;->b:Ljava/lang/Object;

    iput v1, p1, Ljc/m$b;->c:I

    iput v4, p1, Ljc/m$b;->d:I

    move-object v12, p1

    invoke-static/range {v7 .. v12}, Ljc/l;->j(Landroid/content/Context;Ljava/lang/String;ILjava/util/List;[ILtj/d;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v0, :cond_4

    return-object v0

    :cond_4
    move-object v13, v0

    move-object v0, p1

    move-object p1, v7

    move-object v7, v6

    move-object v6, v5

    move v5, v1

    move-object v1, v13

    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v6, p1}, Ljc/m;->p(Ljc/m;Z)V

    iget-object p1, v0, Ljc/m$b;->e:Ljc/m;

    invoke-static {p1}, Ljc/m;->j(Ljc/m;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "MIUIPrivacy-UsageModel"

    const-string v1, "loading more already to end"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v0

    move-object v6, v7

    goto :goto_2

    :cond_5
    iget-object p1, v0, Ljc/m$b;->e:Ljc/m;

    invoke-static {p1}, Ljc/m;->i(Ljc/m;)I

    move-result v6

    add-int/2addr v6, v3

    invoke-static {p1, v6}, Ljc/m;->n(Ljc/m;I)V

    move-object p1, v0

    move-object v0, v1

    move v1, v5

    move-object v6, v7

    goto :goto_0

    :cond_6
    :goto_2
    iget-object v0, p1, Ljc/m$b;->e:Ljc/m;

    invoke-static {v0}, Ljc/m;->c(Ljc/m;)Landroidx/lifecycle/c0;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c0;->m(Ljava/lang/Object;)V

    iget-object v0, p1, Ljc/m$b;->e:Ljc/m;

    invoke-static {v0}, Ljc/m;->a(Ljc/m;)Landroidx/lifecycle/c0;

    move-result-object v0

    invoke-static {v6}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v6}, Landroidx/lifecycle/c0;->m(Ljava/lang/Object;)V

    iget-object p1, p1, Ljc/m$b;->e:Ljc/m;

    invoke-static {p1, v2}, Ljc/m;->o(Ljc/m;Z)V

    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method
