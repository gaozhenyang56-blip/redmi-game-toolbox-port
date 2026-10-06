.class final Lcom/miui/electricrisk/AiGuardSceneService$j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/electricrisk/AiGuardSceneService$j;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
.field final synthetic a:Lak/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lak/p<",
            "Ljava/lang/String;",
            "Ltj/d<",
            "-",
            "Loj/t;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Lbk/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbk/y<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic d:Lbk/v;

.field final synthetic e:Lak/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lak/p<",
            "Ljava/lang/String;",
            "Ltj/d<",
            "-",
            "Loj/t;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lak/p;Ljava/util/concurrent/atomic/AtomicReference;Lbk/y;Lbk/v;Lak/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lak/p<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ltj/d<",
            "-",
            "Loj/t;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;",
            "Lbk/y<",
            "Ljava/lang/String;",
            ">;",
            "Lbk/v;",
            "Lak/p<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ltj/d<",
            "-",
            "Loj/t;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/electricrisk/AiGuardSceneService$j$a;->a:Lak/p;

    iput-object p2, p0, Lcom/miui/electricrisk/AiGuardSceneService$j$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/miui/electricrisk/AiGuardSceneService$j$a;->c:Lbk/y;

    iput-object p4, p0, Lcom/miui/electricrisk/AiGuardSceneService$j$a;->d:Lbk/v;

    iput-object p5, p0, Lcom/miui/electricrisk/AiGuardSceneService$j$a;->e:Lak/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ltj/d;)Ljava/lang/Object;
    .locals 5
    .param p1    # Ljava/lang/String;
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
            "Ljava/lang/String;",
            "Ltj/d<",
            "-",
            "Loj/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p2, Lcom/miui/electricrisk/AiGuardSceneService$j$a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/miui/electricrisk/AiGuardSceneService$j$a$a;

    iget v1, v0, Lcom/miui/electricrisk/AiGuardSceneService$j$a$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/miui/electricrisk/AiGuardSceneService$j$a$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/miui/electricrisk/AiGuardSceneService$j$a$a;

    invoke-direct {v0, p0, p2}, Lcom/miui/electricrisk/AiGuardSceneService$j$a$a;-><init>(Lcom/miui/electricrisk/AiGuardSceneService$j$a;Ltj/d;)V

    :goto_0
    iget-object p2, v0, Lcom/miui/electricrisk/AiGuardSceneService$j$a$a;->c:Ljava/lang/Object;

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/miui/electricrisk/AiGuardSceneService$j$a$a;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Loj/n;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/miui/electricrisk/AiGuardSceneService$j$a$a;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v2, v0, Lcom/miui/electricrisk/AiGuardSceneService$j$a$a;->a:Ljava/lang/Object;

    check-cast v2, Lcom/miui/electricrisk/AiGuardSceneService$j$a;

    invoke-static {p2}, Loj/n;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Loj/n;->b(Ljava/lang/Object;)V

    invoke-static {}, Lcom/miui/electricrisk/f;->d()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/miui/electricrisk/AiGuardSceneService$j$a;->a:Lak/p;

    iput-object p0, v0, Lcom/miui/electricrisk/AiGuardSceneService$j$a$a;->a:Ljava/lang/Object;

    iput-object p1, v0, Lcom/miui/electricrisk/AiGuardSceneService$j$a$a;->b:Ljava/lang/Object;

    iput v4, v0, Lcom/miui/electricrisk/AiGuardSceneService$j$a$a;->e:I

    invoke-interface {p2, p1, v0}, Lak/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    :goto_1
    iget-object p2, v2, Lcom/miui/electricrisk/AiGuardSceneService$j$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-static {}, Lcom/miui/electricrisk/f;->c()Ljava/util/List;

    move-result-object p2

    iget-object v4, v2, Lcom/miui/electricrisk/AiGuardSceneService$j$a;->c:Lbk/y;

    iget-object v4, v4, Lbk/y;->a:Ljava/lang/Object;

    invoke-static {p2, v4}, Lqj/l;->w(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, v2, Lcom/miui/electricrisk/AiGuardSceneService$j$a;->d:Lbk/v;

    iget-boolean p2, p2, Lbk/v;->a:Z

    if-nez p2, :cond_6

    iget-object p2, v2, Lcom/miui/electricrisk/AiGuardSceneService$j$a;->e:Lak/p;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/miui/electricrisk/AiGuardSceneService$j$a$a;->a:Ljava/lang/Object;

    iput-object v2, v0, Lcom/miui/electricrisk/AiGuardSceneService$j$a$a;->b:Ljava/lang/Object;

    iput v3, v0, Lcom/miui/electricrisk/AiGuardSceneService$j$a$a;->e:I

    invoke-interface {p2, p1, v0}, Lak/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1

    :cond_6
    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Ltj/d;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/miui/electricrisk/AiGuardSceneService$j$a;->a(Ljava/lang/String;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
