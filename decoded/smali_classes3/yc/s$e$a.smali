.class final Lyc/s$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyc/s$e;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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

    iput-object p1, p0, Lyc/s$e$a;->a:Lyc/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lyc/r;Ltj/d;)Ljava/lang/Object;
    .locals 4
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

    iget-object v0, p0, Lyc/s$e$a;->a:Lyc/s;

    invoke-static {v0}, Lyc/s;->b(Lyc/s;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1

    :cond_0
    iget-object v0, p0, Lyc/s$e$a;->a:Lyc/s;

    invoke-static {v0}, Lyc/s;->c(Lyc/s;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lyc/r;

    invoke-virtual {v2}, Lyc/r;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lyc/r;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lyc/r;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lyc/r;->a()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    :cond_3
    iget-object p1, p0, Lyc/s$e$a;->a:Lyc/s;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lyc/s$e$a;->a:Lyc/s;

    invoke-static {v1}, Lyc/s;->c(Lyc/s;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1, v0}, Lyc/s;->g(Lyc/s;Ljava/util/ArrayList;)V

    iget-object p1, p0, Lyc/s$e$a;->a:Lyc/s;

    invoke-static {p1}, Lyc/s;->a(Lyc/s;)V

    iget-object p1, p0, Lyc/s$e$a;->a:Lyc/s;

    invoke-static {p1}, Lyc/s;->e(Lyc/s;)Lkotlinx/coroutines/flow/r;

    move-result-object p1

    iget-object v0, p0, Lyc/s$e$a;->a:Lyc/s;

    invoke-static {v0}, Lyc/s;->c(Lyc/s;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lkotlinx/coroutines/flow/r;->emit(Ljava/lang/Object;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_4

    return-object p1

    :cond_4
    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Ltj/d;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lyc/r;

    invoke-virtual {p0, p1, p2}, Lyc/s$e$a;->a(Lyc/r;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
