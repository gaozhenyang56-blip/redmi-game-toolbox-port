.class final Lyc/s$b;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lak/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyc/s;->i(Lyc/r;)V
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
    c = "com.miui.permcenter.wakepath.WakePathViewModel$delete$1"
    f = "WakePathViewModel.kt"
    i = {}
    l = {
        0xb4,
        0xb5
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lyc/s;

.field final synthetic c:Lyc/r;


# direct methods
.method constructor <init>(Lyc/s;Lyc/r;Ltj/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyc/s;",
            "Lyc/r;",
            "Ltj/d<",
            "-",
            "Lyc/s$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lyc/s$b;->b:Lyc/s;

    iput-object p2, p0, Lyc/s$b;->c:Lyc/r;

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

    new-instance p1, Lyc/s$b;

    iget-object v0, p0, Lyc/s$b;->b:Lyc/s;

    iget-object v1, p0, Lyc/s$b;->c:Lyc/r;

    invoke-direct {p1, v0, v1, p2}, Lyc/s$b;-><init>(Lyc/s;Lyc/r;Ltj/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Llk/i0;

    check-cast p2, Ltj/d;

    invoke-virtual {p0, p1, p2}, Lyc/s$b;->invoke(Llk/i0;Ltj/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lyc/s$b;->create(Ljava/lang/Object;Ltj/d;)Ltj/d;

    move-result-object p1

    check-cast p1, Lyc/s$b;

    sget-object p2, Loj/t;->a:Loj/t;

    invoke-virtual {p1, p2}, Lyc/s$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lyc/s$b;->a:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_2
    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    invoke-static {}, Lx4/z1;->r()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/miui/permcenter/r;->f:Landroid/net/Uri;

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/miui/permcenter/r;->g:Landroid/net/Uri;

    :goto_0
    iget-object v1, p0, Lyc/s$b;->b:Lyc/s;

    invoke-static {v1}, Lyc/s;->c(Lyc/s;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v4, p0, Lyc/s$b;->c:Lyc/r;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lyc/r;

    invoke-virtual {v6}, Lyc/r;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lyc/r;->d()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    :goto_1
    check-cast v5, Lyc/r;

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lyc/r;->a()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v4, p0, Lyc/s$b;->c:Lyc/r;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    :cond_6
    iget-object v1, p0, Lyc/s$b;->b:Lyc/s;

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lyc/s$b;->b:Lyc/s;

    invoke-static {v5}, Lyc/s;->c(Lyc/s;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1, v4}, Lyc/s;->g(Lyc/s;Ljava/util/ArrayList;)V

    iget-object v1, p0, Lyc/s$b;->b:Lyc/s;

    invoke-static {v1}, Lyc/s;->a(Lyc/s;)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lyc/s$b;->c:Lyc/r;

    invoke-virtual {v6}, Lyc/r;->d()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    iget-object v5, p0, Lyc/s$b;->c:Lyc/r;

    invoke-virtual {v5}, Lyc/r;->b()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v5, "callerPkgName =? AND calleePkgName =?"

    invoke-virtual {v1, p1, v5, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object p1, p0, Lyc/s$b;->b:Lyc/s;

    invoke-static {p1, v3}, Lyc/s;->f(Lyc/s;Z)V

    sget-object p1, Lyc/q;->a:Lyc/q;

    invoke-virtual {p1}, Lyc/q;->d()Lkotlinx/coroutines/flow/r;

    move-result-object p1

    iget-object v1, p0, Lyc/s$b;->c:Lyc/r;

    iput v3, p0, Lyc/s$b;->a:I

    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/r;->emit(Ljava/lang/Object;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    :cond_7
    :goto_2
    iget-object p1, p0, Lyc/s$b;->b:Lyc/s;

    invoke-static {p1}, Lyc/s;->e(Lyc/s;)Lkotlinx/coroutines/flow/r;

    move-result-object p1

    iget-object v1, p0, Lyc/s$b;->b:Lyc/s;

    invoke-static {v1}, Lyc/s;->c(Lyc/s;)Ljava/util/ArrayList;

    move-result-object v1

    iput v2, p0, Lyc/s$b;->a:I

    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/r;->emit(Ljava/lang/Object;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    :cond_8
    :goto_3
    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method
