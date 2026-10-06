.class final Lyc/s$g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyc/s$g;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/f;"
    }
.end annotation


# instance fields
.field final synthetic a:Lyc/s;


# direct methods
.method constructor <init>(Lyc/s;)V
    .locals 0

    iput-object p1, p0, Lyc/s$g$a;->a:Lyc/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lyc/r;Ltj/d;)Ljava/lang/Object;
    .locals 7
    .param p1    # Lyc/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyc/r;",
            "Ltj/d<",
            "-",
            "Loj/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p2, Lyc/s$g$a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lyc/s$g$a$a;

    iget v1, v0, Lyc/s$g$a$a;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lyc/s$g$a$a;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Lyc/s$g$a$a;

    invoke-direct {v0, p0, p2}, Lyc/s$g$a$a;-><init>(Lyc/s$g$a;Ltj/d;)V

    :goto_0
    iget-object p2, v0, Lyc/s$g$a$a;->a:Ljava/lang/Object;

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lyc/s$g$a$a;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p2}, Loj/n;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Loj/n;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Lyc/s$g$a;->a:Lyc/s;

    :try_start_1
    sget-object v2, Loj/m;->b:Loj/m$a;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v2

    invoke-static {v2}, Li4/a;->k(Landroid/content/Context;)Li4/a;

    move-result-object v2

    invoke-virtual {p1}, Lyc/r;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Li4/a;->f(Ljava/lang/String;)Li4/b;

    move-result-object v2

    invoke-virtual {v2}, Li4/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v4

    invoke-static {v4}, Li4/a;->k(Landroid/content/Context;)Li4/a;

    move-result-object v4

    invoke-virtual {p1}, Lyc/r;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Li4/a;->f(Ljava/lang/String;)Li4/b;

    move-result-object v4

    invoke-virtual {v4}, Li4/b;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "callerLabel"

    invoke-static {v2, v5}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lyc/r;->o(Ljava/lang/String;)V

    const-string v2, "calleeLabel"

    invoke-static {v4, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Lyc/r;->n(Ljava/lang/String;)V

    invoke-static {p2}, Lyc/s;->c(Lyc/s;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lyc/r;

    invoke-virtual {v5}, Lyc/r;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lyc/r;->d()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :goto_1
    check-cast v4, Lyc/r;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lyc/r;->a()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    :cond_5
    invoke-static {p2}, Lyc/s;->a(Lyc/s;)V

    invoke-static {p2}, Lyc/s;->e(Lyc/s;)Lkotlinx/coroutines/flow/r;

    move-result-object p1

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p2}, Lyc/s;->c(Lyc/s;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput v3, v0, Lyc/s$g$a$a;->c:I

    invoke-interface {p1, v2, v0}, Lkotlinx/coroutines/flow/r;->emit(Ljava/lang/Object;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    :goto_2
    sget-object p1, Loj/t;->a:Loj/t;

    invoke-static {p1}, Loj/m;->b(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    sget-object p2, Loj/m;->b:Loj/m$a;

    invoke-static {p1}, Loj/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Loj/m;->b(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Ltj/d;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lyc/r;

    invoke-virtual {p0, p1, p2}, Lyc/s$g$a;->a(Lyc/r;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
