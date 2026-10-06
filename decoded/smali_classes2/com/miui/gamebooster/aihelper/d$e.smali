.class final Lcom/miui/gamebooster/aihelper/d$e;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lak/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/aihelper/d;->g()V
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
    c = "com.miui.gamebooster.aihelper.AIHelperModel$doQueryData$1"
    f = "AIHelperModel.kt"
    i = {}
    l = {
        0x5c,
        0x6d
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/miui/gamebooster/aihelper/d;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/aihelper/d;Ltj/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gamebooster/aihelper/d;",
            "Ltj/d<",
            "-",
            "Lcom/miui/gamebooster/aihelper/d$e;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/gamebooster/aihelper/d$e;->b:Lcom/miui/gamebooster/aihelper/d;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILtj/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ltj/d;)Ltj/d;
    .locals 1
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

    new-instance p1, Lcom/miui/gamebooster/aihelper/d$e;

    iget-object v0, p0, Lcom/miui/gamebooster/aihelper/d$e;->b:Lcom/miui/gamebooster/aihelper/d;

    invoke-direct {p1, v0, p2}, Lcom/miui/gamebooster/aihelper/d$e;-><init>(Lcom/miui/gamebooster/aihelper/d;Ltj/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Llk/i0;

    check-cast p2, Ltj/d;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gamebooster/aihelper/d$e;->invoke(Llk/i0;Ltj/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/miui/gamebooster/aihelper/d$e;->create(Ljava/lang/Object;Ltj/d;)Ltj/d;

    move-result-object p1

    check-cast p1, Lcom/miui/gamebooster/aihelper/d$e;

    sget-object p2, Loj/t;->a:Loj/t;

    invoke-virtual {p1, p2}, Lcom/miui/gamebooster/aihelper/d$e;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/miui/gamebooster/aihelper/d$e;->a:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/gamebooster/aihelper/d$e;->b:Lcom/miui/gamebooster/aihelper/d;

    invoke-static {p1}, Lcom/miui/gamebooster/aihelper/d;->d(Lcom/miui/gamebooster/aihelper/d;)Lcom/miui/gamebooster/aihelper/e;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/gamebooster/aihelper/d$e;->b:Lcom/miui/gamebooster/aihelper/d;

    invoke-static {v1}, Lcom/miui/gamebooster/aihelper/d;->c(Lcom/miui/gamebooster/aihelper/d;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, "packageName"

    invoke-static {v1}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v1, v4

    :cond_3
    iput v3, p0, Lcom/miui/gamebooster/aihelper/d$e;->a:I

    invoke-virtual {p1, v1, p0}, Lcom/miui/gamebooster/aihelper/e;->i(Ljava/lang/String;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_0
    check-cast p1, Lkotlinx/coroutines/flow/e;

    invoke-static {}, Llk/w0;->b()Llk/d0;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlinx/coroutines/flow/g;->m(Lkotlinx/coroutines/flow/e;Ltj/g;)Lkotlinx/coroutines/flow/e;

    move-result-object p1

    new-instance v1, Lcom/miui/gamebooster/aihelper/d$e$a;

    iget-object v3, p0, Lcom/miui/gamebooster/aihelper/d$e;->b:Lcom/miui/gamebooster/aihelper/d;

    invoke-direct {v1, v3, v4}, Lcom/miui/gamebooster/aihelper/d$e$a;-><init>(Lcom/miui/gamebooster/aihelper/d;Ltj/d;)V

    invoke-static {p1, v1}, Lkotlinx/coroutines/flow/g;->p(Lkotlinx/coroutines/flow/e;Lak/p;)Lkotlinx/coroutines/flow/e;

    move-result-object p1

    new-instance v1, Lcom/miui/gamebooster/aihelper/d$e$b;

    iget-object v3, p0, Lcom/miui/gamebooster/aihelper/d$e;->b:Lcom/miui/gamebooster/aihelper/d;

    invoke-direct {v1, v3, v4}, Lcom/miui/gamebooster/aihelper/d$e$b;-><init>(Lcom/miui/gamebooster/aihelper/d;Ltj/d;)V

    invoke-static {p1, v1}, Lkotlinx/coroutines/flow/g;->o(Lkotlinx/coroutines/flow/e;Lak/p;)Lkotlinx/coroutines/flow/e;

    move-result-object p1

    new-instance v1, Lcom/miui/gamebooster/aihelper/d$e$c;

    iget-object v3, p0, Lcom/miui/gamebooster/aihelper/d$e;->b:Lcom/miui/gamebooster/aihelper/d;

    invoke-direct {v1, v3, v4}, Lcom/miui/gamebooster/aihelper/d$e$c;-><init>(Lcom/miui/gamebooster/aihelper/d;Ltj/d;)V

    invoke-static {p1, v1}, Lkotlinx/coroutines/flow/g;->d(Lkotlinx/coroutines/flow/e;Lak/q;)Lkotlinx/coroutines/flow/e;

    move-result-object p1

    iput v2, p0, Lcom/miui/gamebooster/aihelper/d$e;->a:I

    invoke-static {p1, p0}, Lkotlinx/coroutines/flow/g;->f(Lkotlinx/coroutines/flow/e;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_1
    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method
