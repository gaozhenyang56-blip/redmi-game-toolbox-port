.class final Lcom/miui/electricrisk/AiGuardSceneService$i;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lak/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/electricrisk/AiGuardSceneService;->p(Lak/p;Lak/p;Lak/p;Lak/l;Lak/l;)V
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
    c = "com.miui.electricrisk.AiGuardSceneService$voipMonitor$3"
    f = "AiGuardSceneService.kt"
    i = {}
    l = {
        0xef
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lkotlinx/coroutines/flow/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/e<",
            "Loj/l<",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            ">;>;"
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

.field final synthetic d:Lak/l;
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

.field final synthetic e:Lbk/v;

.field final synthetic f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic g:Lak/p;
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

.field final synthetic h:Lak/p;
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
.method constructor <init>(Lkotlinx/coroutines/flow/e;Lbk/y;Lak/l;Lbk/v;Ljava/util/concurrent/atomic/AtomicReference;Lak/p;Lak/p;Ltj/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/e<",
            "Loj/l<",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            ">;>;",
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
            ">;",
            "Ltj/d<",
            "-",
            "Lcom/miui/electricrisk/AiGuardSceneService$i;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/electricrisk/AiGuardSceneService$i;->b:Lkotlinx/coroutines/flow/e;

    iput-object p2, p0, Lcom/miui/electricrisk/AiGuardSceneService$i;->c:Lbk/y;

    iput-object p3, p0, Lcom/miui/electricrisk/AiGuardSceneService$i;->d:Lak/l;

    iput-object p4, p0, Lcom/miui/electricrisk/AiGuardSceneService$i;->e:Lbk/v;

    iput-object p5, p0, Lcom/miui/electricrisk/AiGuardSceneService$i;->f:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p6, p0, Lcom/miui/electricrisk/AiGuardSceneService$i;->g:Lak/p;

    iput-object p7, p0, Lcom/miui/electricrisk/AiGuardSceneService$i;->h:Lak/p;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILtj/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ltj/d;)Ltj/d;
    .locals 9
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

    new-instance p1, Lcom/miui/electricrisk/AiGuardSceneService$i;

    iget-object v1, p0, Lcom/miui/electricrisk/AiGuardSceneService$i;->b:Lkotlinx/coroutines/flow/e;

    iget-object v2, p0, Lcom/miui/electricrisk/AiGuardSceneService$i;->c:Lbk/y;

    iget-object v3, p0, Lcom/miui/electricrisk/AiGuardSceneService$i;->d:Lak/l;

    iget-object v4, p0, Lcom/miui/electricrisk/AiGuardSceneService$i;->e:Lbk/v;

    iget-object v5, p0, Lcom/miui/electricrisk/AiGuardSceneService$i;->f:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v6, p0, Lcom/miui/electricrisk/AiGuardSceneService$i;->g:Lak/p;

    iget-object v7, p0, Lcom/miui/electricrisk/AiGuardSceneService$i;->h:Lak/p;

    move-object v0, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/miui/electricrisk/AiGuardSceneService$i;-><init>(Lkotlinx/coroutines/flow/e;Lbk/y;Lak/l;Lbk/v;Ljava/util/concurrent/atomic/AtomicReference;Lak/p;Lak/p;Ltj/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Llk/i0;

    check-cast p2, Ltj/d;

    invoke-virtual {p0, p1, p2}, Lcom/miui/electricrisk/AiGuardSceneService$i;->invoke(Llk/i0;Ltj/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/miui/electricrisk/AiGuardSceneService$i;->create(Ljava/lang/Object;Ltj/d;)Ltj/d;

    move-result-object p1

    check-cast p1, Lcom/miui/electricrisk/AiGuardSceneService$i;

    sget-object p2, Loj/t;->a:Loj/t;

    invoke-virtual {p1, p2}, Lcom/miui/electricrisk/AiGuardSceneService$i;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/miui/electricrisk/AiGuardSceneService$i;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/electricrisk/AiGuardSceneService$i;->b:Lkotlinx/coroutines/flow/e;

    new-instance v1, Lcom/miui/electricrisk/AiGuardSceneService$i$a;

    iget-object v4, p0, Lcom/miui/electricrisk/AiGuardSceneService$i;->c:Lbk/y;

    iget-object v5, p0, Lcom/miui/electricrisk/AiGuardSceneService$i;->d:Lak/l;

    iget-object v6, p0, Lcom/miui/electricrisk/AiGuardSceneService$i;->e:Lbk/v;

    iget-object v7, p0, Lcom/miui/electricrisk/AiGuardSceneService$i;->f:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v8, p0, Lcom/miui/electricrisk/AiGuardSceneService$i;->g:Lak/p;

    iget-object v9, p0, Lcom/miui/electricrisk/AiGuardSceneService$i;->h:Lak/p;

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/miui/electricrisk/AiGuardSceneService$i$a;-><init>(Lbk/y;Lak/l;Lbk/v;Ljava/util/concurrent/atomic/AtomicReference;Lak/p;Lak/p;)V

    iput v2, p0, Lcom/miui/electricrisk/AiGuardSceneService$i;->a:I

    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/e;->collect(Lkotlinx/coroutines/flow/f;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method
