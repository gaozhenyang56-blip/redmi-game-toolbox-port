.class final Lcom/miui/gamebooster/aihelper/d$e$c;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lak/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/aihelper/d$e;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse<",
        "Lcom/miui/gamebooster/aihelper/GameAISettingsDTO;",
        ">;>;",
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
    c = "com.miui.gamebooster.aihelper.AIHelperModel$doQueryData$1$3"
    f = "AIHelperModel.kt"
    i = {}
    l = {
        0x6a
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcom/miui/gamebooster/aihelper/d;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/aihelper/d;Ltj/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gamebooster/aihelper/d;",
            "Ltj/d<",
            "-",
            "Lcom/miui/gamebooster/aihelper/d$e$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/gamebooster/aihelper/d$e$c;->c:Lcom/miui/gamebooster/aihelper/d;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILtj/d;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/f;

    check-cast p2, Ljava/lang/Throwable;

    check-cast p3, Ltj/d;

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/gamebooster/aihelper/d$e$c;->invoke(Lkotlinx/coroutines/flow/f;Ljava/lang/Throwable;Ltj/d;)Ljava/lang/Object;

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
            "Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse<",
            "Lcom/miui/gamebooster/aihelper/GameAISettingsDTO;",
            ">;>;",
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

    new-instance p1, Lcom/miui/gamebooster/aihelper/d$e$c;

    iget-object v0, p0, Lcom/miui/gamebooster/aihelper/d$e$c;->c:Lcom/miui/gamebooster/aihelper/d;

    invoke-direct {p1, v0, p3}, Lcom/miui/gamebooster/aihelper/d$e$c;-><init>(Lcom/miui/gamebooster/aihelper/d;Ltj/d;)V

    iput-object p2, p1, Lcom/miui/gamebooster/aihelper/d$e$c;->b:Ljava/lang/Object;

    sget-object p2, Loj/t;->a:Loj/t;

    invoke-virtual {p1, p2}, Lcom/miui/gamebooster/aihelper/d$e$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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

    iget v1, p0, Lcom/miui/gamebooster/aihelper/d$e$c;->a:I

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

    iget-object p1, p0, Lcom/miui/gamebooster/aihelper/d$e$c;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    const-string v1, "AIHelperViewModel"

    const-string v3, "an error occurred when queryCardList"

    invoke-static {v1, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lcom/miui/gamebooster/aihelper/d$e$c;->c:Lcom/miui/gamebooster/aihelper/d;

    invoke-static {p1}, Lcom/miui/gamebooster/aihelper/d;->e(Lcom/miui/gamebooster/aihelper/d;)Lkotlinx/coroutines/flow/s;

    move-result-object p1

    new-instance v1, Lcom/miui/gamebooster/aihelper/d$b$b;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Lcom/miui/gamebooster/aihelper/d$b$b;-><init>(Ljava/lang/String;ILbk/g;)V

    iput v2, p0, Lcom/miui/gamebooster/aihelper/d$e$c;->a:I

    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/r;->emit(Ljava/lang/Object;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method
