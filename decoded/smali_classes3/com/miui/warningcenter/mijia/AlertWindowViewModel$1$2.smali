.class final Lcom/miui/warningcenter/mijia/AlertWindowViewModel$1$2;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lak/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/warningcenter/mijia/AlertWindowViewModel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/j;",
        "Lak/q<",
        "Lkotlinx/coroutines/flow/f<",
        "-",
        "Lcom/miui/warningcenter/UiState<",
        "+",
        "Ljava/util/List<",
        "+",
        "Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;",
        ">;>;>;",
        "Ljava/lang/Throwable;",
        "Ltj/d<",
        "-",
        "Loj/t;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.miui.warningcenter.mijia.AlertWindowViewModel$1$2"
    f = "AlertWindowViewModel.kt"
    i = {}
    l = {
        0x28
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Ltj/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltj/d<",
            "-",
            "Lcom/miui/warningcenter/mijia/AlertWindowViewModel$1$2;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILtj/d;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/f;

    check-cast p2, Ljava/lang/Throwable;

    check-cast p3, Ltj/d;

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/warningcenter/mijia/AlertWindowViewModel$1$2;->invoke(Lkotlinx/coroutines/flow/f;Ljava/lang/Throwable;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/flow/f;Ljava/lang/Throwable;Ltj/d;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lkotlinx/coroutines/flow/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/f<",
            "-",
            "Lcom/miui/warningcenter/UiState<",
            "+",
            "Ljava/util/List<",
            "Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;",
            ">;>;>;",
            "Ljava/lang/Throwable;",
            "Ltj/d<",
            "-",
            "Loj/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance v0, Lcom/miui/warningcenter/mijia/AlertWindowViewModel$1$2;

    invoke-direct {v0, p3}, Lcom/miui/warningcenter/mijia/AlertWindowViewModel$1$2;-><init>(Ltj/d;)V

    iput-object p1, v0, Lcom/miui/warningcenter/mijia/AlertWindowViewModel$1$2;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/miui/warningcenter/mijia/AlertWindowViewModel$1$2;->L$1:Ljava/lang/Object;

    sget-object p1, Loj/t;->a:Loj/t;

    invoke-virtual {v0, p1}, Lcom/miui/warningcenter/mijia/AlertWindowViewModel$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/miui/warningcenter/mijia/AlertWindowViewModel$1$2;->label:I

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

    iget-object p1, p0, Lcom/miui/warningcenter/mijia/AlertWindowViewModel$1$2;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/f;

    iget-object v1, p0, Lcom/miui/warningcenter/mijia/AlertWindowViewModel$1$2;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Throwable;

    new-instance v3, Lcom/miui/warningcenter/UiState$Fail;

    invoke-direct {v3, v1}, Lcom/miui/warningcenter/UiState$Fail;-><init>(Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/warningcenter/mijia/AlertWindowViewModel$1$2;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/miui/warningcenter/mijia/AlertWindowViewModel$1$2;->label:I

    invoke-interface {p1, v3, p0}, Lkotlinx/coroutines/flow/f;->emit(Ljava/lang/Object;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method
