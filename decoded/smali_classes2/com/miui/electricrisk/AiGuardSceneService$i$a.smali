.class final Lcom/miui/electricrisk/AiGuardSceneService$i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/electricrisk/AiGuardSceneService$i;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
.field final synthetic a:Lbk/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbk/y<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lak/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lak/l<",
            "Ltj/d<",
            "-",
            "Loj/t;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Lbk/v;

.field final synthetic d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

.field final synthetic f:Lak/p;
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
.method constructor <init>(Lbk/y;Lak/l;Lbk/v;Ljava/util/concurrent/atomic/AtomicReference;Lak/p;Lak/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbk/y<",
            "Ljava/lang/String;",
            ">;",
            "Lak/l<",
            "-",
            "Ltj/d<",
            "-",
            "Loj/t;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lbk/v;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;",
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

    iput-object p1, p0, Lcom/miui/electricrisk/AiGuardSceneService$i$a;->a:Lbk/y;

    iput-object p2, p0, Lcom/miui/electricrisk/AiGuardSceneService$i$a;->b:Lak/l;

    iput-object p3, p0, Lcom/miui/electricrisk/AiGuardSceneService$i$a;->c:Lbk/v;

    iput-object p4, p0, Lcom/miui/electricrisk/AiGuardSceneService$i$a;->d:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p5, p0, Lcom/miui/electricrisk/AiGuardSceneService$i$a;->e:Lak/p;

    iput-object p6, p0, Lcom/miui/electricrisk/AiGuardSceneService$i$a;->f:Lak/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Loj/l;Ltj/d;)Ljava/lang/Object;
    .locals 9
    .param p1    # Loj/l;
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
            "Loj/l<",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            ">;",
            "Ltj/d<",
            "-",
            "Loj/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p2, Lcom/miui/electricrisk/AiGuardSceneService$i$a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/miui/electricrisk/AiGuardSceneService$i$a$a;

    iget v1, v0, Lcom/miui/electricrisk/AiGuardSceneService$i$a$a;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/miui/electricrisk/AiGuardSceneService$i$a$a;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/miui/electricrisk/AiGuardSceneService$i$a$a;

    invoke-direct {v0, p0, p2}, Lcom/miui/electricrisk/AiGuardSceneService$i$a$a;-><init>(Lcom/miui/electricrisk/AiGuardSceneService$i$a;Ltj/d;)V

    :goto_0
    iget-object p2, v0, Lcom/miui/electricrisk/AiGuardSceneService$i$a$a;->d:Ljava/lang/Object;

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/miui/electricrisk/AiGuardSceneService$i$a$a;->f:I

    const-string v3, "pkgRef.get()"

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Loj/n;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/miui/electricrisk/AiGuardSceneService$i$a$a;->b:Ljava/lang/Object;

    check-cast p1, Landroid/content/ComponentName;

    iget-object v2, v0, Lcom/miui/electricrisk/AiGuardSceneService$i$a$a;->a:Ljava/lang/Object;

    check-cast v2, Lcom/miui/electricrisk/AiGuardSceneService$i$a;

    invoke-static {p2}, Loj/n;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_3
    iget-object p1, v0, Lcom/miui/electricrisk/AiGuardSceneService$i$a$a;->c:Ljava/lang/Object;

    check-cast p1, Landroid/content/ComponentName;

    iget-object v2, v0, Lcom/miui/electricrisk/AiGuardSceneService$i$a$a;->b:Ljava/lang/Object;

    check-cast v2, Landroid/content/ComponentName;

    iget-object v8, v0, Lcom/miui/electricrisk/AiGuardSceneService$i$a$a;->a:Ljava/lang/Object;

    check-cast v8, Lcom/miui/electricrisk/AiGuardSceneService$i$a;

    invoke-static {p2}, Loj/n;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p2}, Loj/n;->b(Ljava/lang/Object;)V

    invoke-virtual {p1}, Loj/l;->a()Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Landroid/content/ComponentName;

    invoke-virtual {p1}, Loj/l;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    iget-object p2, p0, Lcom/miui/electricrisk/AiGuardSceneService$i$a;->a:Lbk/y;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p2, Lbk/y;->a:Ljava/lang/Object;

    invoke-static {}, Lcom/miui/electricrisk/f;->a()Landroid/content/ComponentName;

    move-result-object p2

    invoke-static {p1, p2}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/miui/electricrisk/AiGuardSceneService$i$a;->b:Lak/l;

    iput-object p0, v0, Lcom/miui/electricrisk/AiGuardSceneService$i$a$a;->a:Ljava/lang/Object;

    iput-object v2, v0, Lcom/miui/electricrisk/AiGuardSceneService$i$a$a;->b:Ljava/lang/Object;

    iput-object p1, v0, Lcom/miui/electricrisk/AiGuardSceneService$i$a$a;->c:Ljava/lang/Object;

    iput v6, v0, Lcom/miui/electricrisk/AiGuardSceneService$i$a$a;->f:I

    invoke-interface {p2, v0}, Lak/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    move-object v8, p0

    :goto_1
    iget-object p2, v8, Lcom/miui/electricrisk/AiGuardSceneService$i$a;->c:Lbk/v;

    iput-boolean v6, p2, Lbk/v;->a:Z

    move-object p2, v2

    move-object v2, v8

    goto :goto_2

    :cond_6
    move-object p2, v2

    move-object v2, p0

    :goto_2
    iget-object v6, v2, Lcom/miui/electricrisk/AiGuardSceneService$i$a;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-static {}, Lcom/miui/electricrisk/f;->c()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v6, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, v2, Lcom/miui/electricrisk/AiGuardSceneService$i$a;->e:Lak/p;

    iget-object v6, v2, Lcom/miui/electricrisk/AiGuardSceneService$i$a;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v3}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/miui/electricrisk/AiGuardSceneService$i$a$a;->a:Ljava/lang/Object;

    iput-object p1, v0, Lcom/miui/electricrisk/AiGuardSceneService$i$a$a;->b:Ljava/lang/Object;

    iput-object v7, v0, Lcom/miui/electricrisk/AiGuardSceneService$i$a$a;->c:Ljava/lang/Object;

    iput v5, v0, Lcom/miui/electricrisk/AiGuardSceneService$i$a$a;->f:I

    invoke-interface {p2, v6, v0}, Lak/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_7

    return-object v1

    :cond_7
    :goto_3
    iget-object p2, v2, Lcom/miui/electricrisk/AiGuardSceneService$i$a;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_9

    invoke-static {}, Lcom/miui/electricrisk/f;->c()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, v2, Lcom/miui/electricrisk/AiGuardSceneService$i$a;->c:Lbk/v;

    iget-boolean p1, p1, Lbk/v;->a:Z

    if-nez p1, :cond_9

    iget-object p1, v2, Lcom/miui/electricrisk/AiGuardSceneService$i$a;->f:Lak/p;

    iget-object p2, v2, Lcom/miui/electricrisk/AiGuardSceneService$i$a;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v3}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v7, v0, Lcom/miui/electricrisk/AiGuardSceneService$i$a$a;->a:Ljava/lang/Object;

    iput-object v7, v0, Lcom/miui/electricrisk/AiGuardSceneService$i$a$a;->b:Ljava/lang/Object;

    iput-object v7, v0, Lcom/miui/electricrisk/AiGuardSceneService$i$a$a;->c:Ljava/lang/Object;

    iput v4, v0, Lcom/miui/electricrisk/AiGuardSceneService$i$a$a;->f:I

    invoke-interface {p1, p2, v0}, Lak/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    return-object v1

    :cond_8
    :goto_4
    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1

    :cond_9
    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Ltj/d;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Loj/l;

    invoke-virtual {p0, p1, p2}, Lcom/miui/electricrisk/AiGuardSceneService$i$a;->a(Loj/l;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
