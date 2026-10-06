.class final Lcom/miui/gamebooster/aihelper/d$e$b;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lak/p;


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
        "Lak/p<",
        "Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse<",
        "Lcom/miui/gamebooster/aihelper/GameAISettingsDTO;",
        ">;",
        "Ltj/d<",
        "-",
        "Loj/t;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.miui.gamebooster.aihelper.AIHelperModel$doQueryData$1$2"
    f = "AIHelperModel.kt"
    i = {}
    l = {
        0x61
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
            "Lcom/miui/gamebooster/aihelper/d$e$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/gamebooster/aihelper/d$e$b;->c:Lcom/miui/gamebooster/aihelper/d;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILtj/d;)V

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

    new-instance v0, Lcom/miui/gamebooster/aihelper/d$e$b;

    iget-object v1, p0, Lcom/miui/gamebooster/aihelper/d$e$b;->c:Lcom/miui/gamebooster/aihelper/d;

    invoke-direct {v0, v1, p2}, Lcom/miui/gamebooster/aihelper/d$e$b;-><init>(Lcom/miui/gamebooster/aihelper/d;Ltj/d;)V

    iput-object p1, v0, Lcom/miui/gamebooster/aihelper/d$e$b;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final d(Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse;Ltj/d;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse;
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
            "Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse<",
            "Lcom/miui/gamebooster/aihelper/GameAISettingsDTO;",
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

    invoke-virtual {p0, p1, p2}, Lcom/miui/gamebooster/aihelper/d$e$b;->create(Ljava/lang/Object;Ltj/d;)Ltj/d;

    move-result-object p1

    check-cast p1, Lcom/miui/gamebooster/aihelper/d$e$b;

    sget-object p2, Loj/t;->a:Loj/t;

    invoke-virtual {p1, p2}, Lcom/miui/gamebooster/aihelper/d$e$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse;

    check-cast p2, Ltj/d;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gamebooster/aihelper/d$e$b;->d(Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse;Ltj/d;)Ljava/lang/Object;

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

    iget v1, p0, Lcom/miui/gamebooster/aihelper/d$e$b;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

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

    iget-object p1, p0, Lcom/miui/gamebooster/aihelper/d$e$b;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse;

    iget-object v1, p0, Lcom/miui/gamebooster/aihelper/d$e$b;->c:Lcom/miui/gamebooster/aihelper/d;

    invoke-static {v1}, Lcom/miui/gamebooster/aihelper/d;->e(Lcom/miui/gamebooster/aihelper/d;)Lkotlinx/coroutines/flow/s;

    move-result-object v1

    iget v3, p1, Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse;->code:I

    if-eqz v3, :cond_3

    const/16 v4, 0x5dd

    if-eq v3, v4, :cond_2

    new-instance v3, Lcom/miui/gamebooster/aihelper/d$b$b;

    iget-object p1, p1, Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse;->msg:Ljava/lang/String;

    invoke-direct {v3, p1}, Lcom/miui/gamebooster/aihelper/d$b$b;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/miui/gamebooster/aihelper/d$b$a;->a:Lcom/miui/gamebooster/aihelper/d$b$a;

    goto :goto_0

    :cond_3
    new-instance v3, Lcom/miui/gamebooster/aihelper/d$b$g;

    iget-object p1, p1, Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/miui/gamebooster/aihelper/GameAISettingsDTO;

    invoke-direct {v3, p1}, Lcom/miui/gamebooster/aihelper/d$b$g;-><init>(Lcom/miui/gamebooster/aihelper/GameAISettingsDTO;)V

    :goto_0
    iput v2, p0, Lcom/miui/gamebooster/aihelper/d$e$b;->a:I

    invoke-interface {v1, v3, p0}, Lkotlinx/coroutines/flow/r;->emit(Ljava/lang/Object;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method
