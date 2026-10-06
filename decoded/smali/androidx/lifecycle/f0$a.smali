.class final Landroidx/lifecycle/f0$a;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lak/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/f0;->b(Landroidx/lifecycle/l;Landroidx/lifecycle/l$b;Lak/p;Ltj/d;)Ljava/lang/Object;
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
        "-TT;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.lifecycle.PausingDispatcherKt$whenStateAtLeast$2"
    f = "PausingDispatcher.kt"
    i = {
        0x0
    }
    l = {
        0xcb
    }
    m = "invokeSuspend"
    n = {
        "controller"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field a:I

.field private synthetic b:Ljava/lang/Object;

.field final synthetic c:Landroidx/lifecycle/l;

.field final synthetic d:Landroidx/lifecycle/l$b;

.field final synthetic e:Lak/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lak/p<",
            "Llk/i0;",
            "Ltj/d<",
            "-TT;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/lifecycle/l;Landroidx/lifecycle/l$b;Lak/p;Ltj/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/l;",
            "Landroidx/lifecycle/l$b;",
            "Lak/p<",
            "-",
            "Llk/i0;",
            "-",
            "Ltj/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Ltj/d<",
            "-",
            "Landroidx/lifecycle/f0$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/lifecycle/f0$a;->c:Landroidx/lifecycle/l;

    iput-object p2, p0, Landroidx/lifecycle/f0$a;->d:Landroidx/lifecycle/l$b;

    iput-object p3, p0, Landroidx/lifecycle/f0$a;->e:Lak/p;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILtj/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ltj/d;)Ltj/d;
    .locals 4
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

    new-instance v0, Landroidx/lifecycle/f0$a;

    iget-object v1, p0, Landroidx/lifecycle/f0$a;->c:Landroidx/lifecycle/l;

    iget-object v2, p0, Landroidx/lifecycle/f0$a;->d:Landroidx/lifecycle/l$b;

    iget-object v3, p0, Landroidx/lifecycle/f0$a;->e:Lak/p;

    invoke-direct {v0, v1, v2, v3, p2}, Landroidx/lifecycle/f0$a;-><init>(Landroidx/lifecycle/l;Landroidx/lifecycle/l$b;Lak/p;Ltj/d;)V

    iput-object p1, v0, Landroidx/lifecycle/f0$a;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Llk/i0;

    check-cast p2, Ltj/d;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/f0$a;->invoke(Llk/i0;Ltj/d;)Ljava/lang/Object;

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
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/f0$a;->create(Ljava/lang/Object;Ltj/d;)Ltj/d;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/f0$a;

    sget-object p2, Loj/t;->a:Loj/t;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/f0$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Landroidx/lifecycle/f0$a;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Landroidx/lifecycle/f0$a;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/n;

    :try_start_0
    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/lifecycle/f0$a;->b:Ljava/lang/Object;

    check-cast p1, Llk/i0;

    invoke-interface {p1}, Llk/i0;->L()Ltj/g;

    move-result-object p1

    sget-object v1, Llk/s1;->c0:Llk/s1$b;

    invoke-interface {p1, v1}, Ltj/g;->d(Ltj/g$c;)Ltj/g$b;

    move-result-object p1

    check-cast p1, Llk/s1;

    if-eqz p1, :cond_3

    new-instance v1, Landroidx/lifecycle/e0;

    invoke-direct {v1}, Landroidx/lifecycle/e0;-><init>()V

    new-instance v3, Landroidx/lifecycle/n;

    iget-object v4, p0, Landroidx/lifecycle/f0$a;->c:Landroidx/lifecycle/l;

    iget-object v5, p0, Landroidx/lifecycle/f0$a;->d:Landroidx/lifecycle/l$b;

    iget-object v6, v1, Landroidx/lifecycle/e0;->c:Landroidx/lifecycle/g;

    invoke-direct {v3, v4, v5, v6, p1}, Landroidx/lifecycle/n;-><init>(Landroidx/lifecycle/l;Landroidx/lifecycle/l$b;Landroidx/lifecycle/g;Llk/s1;)V

    :try_start_1
    iget-object p1, p0, Landroidx/lifecycle/f0$a;->e:Lak/p;

    iput-object v3, p0, Landroidx/lifecycle/f0$a;->b:Ljava/lang/Object;

    iput v2, p0, Landroidx/lifecycle/f0$a;->a:I

    invoke-static {v1, p1, p0}, Llk/g;->c(Ltj/g;Lak/p;Ltj/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, v3

    :goto_0
    invoke-virtual {v0}, Landroidx/lifecycle/n;->b()V

    return-object p1

    :catchall_1
    move-exception p1

    move-object v0, v3

    :goto_1
    invoke-virtual {v0}, Landroidx/lifecycle/n;->b()V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "when[State] methods should have a parent job"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
