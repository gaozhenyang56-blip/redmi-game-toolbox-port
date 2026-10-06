.class final Lcom/miui/gamebooster/aihelper/e$b;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lak/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/aihelper/e;->f(Ljava/lang/String;I)Lkotlinx/coroutines/flow/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/j;",
        "Lak/p<",
        "Lkotlinx/coroutines/flow/f<",
        "-",
        "Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse<",
        "Lcom/xiaomi/venus/gameaisettingstartlib/bean/ChangeSettingResult;",
        ">;>;",
        "Ltj/d<",
        "-",
        "Loj/t;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.miui.gamebooster.aihelper.AIHelperRepository$changeSetting$1"
    f = "AIHelperRepository.kt"
    i = {}
    l = {
        0x1a
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field private synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcom/miui/gamebooster/aihelper/e;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:I


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/aihelper/e;Ljava/lang/String;ILtj/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gamebooster/aihelper/e;",
            "Ljava/lang/String;",
            "I",
            "Ltj/d<",
            "-",
            "Lcom/miui/gamebooster/aihelper/e$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/gamebooster/aihelper/e$b;->c:Lcom/miui/gamebooster/aihelper/e;

    iput-object p2, p0, Lcom/miui/gamebooster/aihelper/e$b;->d:Ljava/lang/String;

    iput p3, p0, Lcom/miui/gamebooster/aihelper/e$b;->e:I

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

    new-instance v0, Lcom/miui/gamebooster/aihelper/e$b;

    iget-object v1, p0, Lcom/miui/gamebooster/aihelper/e$b;->c:Lcom/miui/gamebooster/aihelper/e;

    iget-object v2, p0, Lcom/miui/gamebooster/aihelper/e$b;->d:Ljava/lang/String;

    iget v3, p0, Lcom/miui/gamebooster/aihelper/e$b;->e:I

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/miui/gamebooster/aihelper/e$b;-><init>(Lcom/miui/gamebooster/aihelper/e;Ljava/lang/String;ILtj/d;)V

    iput-object p1, v0, Lcom/miui/gamebooster/aihelper/e$b;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final d(Lkotlinx/coroutines/flow/f;Ltj/d;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lkotlinx/coroutines/flow/f;
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
            "Lkotlinx/coroutines/flow/f<",
            "-",
            "Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse<",
            "Lcom/xiaomi/venus/gameaisettingstartlib/bean/ChangeSettingResult;",
            ">;>;",
            "Ltj/d<",
            "-",
            "Loj/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/miui/gamebooster/aihelper/e$b;->create(Ljava/lang/Object;Ltj/d;)Ltj/d;

    move-result-object p1

    check-cast p1, Lcom/miui/gamebooster/aihelper/e$b;

    sget-object p2, Loj/t;->a:Loj/t;

    invoke-virtual {p1, p2}, Lcom/miui/gamebooster/aihelper/e$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/f;

    check-cast p2, Ltj/d;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gamebooster/aihelper/e$b;->d(Lkotlinx/coroutines/flow/f;Ltj/d;)Ljava/lang/Object;

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

    iget v1, p0, Lcom/miui/gamebooster/aihelper/e$b;->a:I

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

    iget-object p1, p0, Lcom/miui/gamebooster/aihelper/e$b;->b:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/f;

    iget-object v1, p0, Lcom/miui/gamebooster/aihelper/e$b;->c:Lcom/miui/gamebooster/aihelper/e;

    invoke-static {v1}, Lcom/miui/gamebooster/aihelper/e;->c(Lcom/miui/gamebooster/aihelper/e;)Lcom/xiaomi/venus/gameaisettingstartlib/GameAiSettingManager;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/gamebooster/aihelper/e$b;->c:Lcom/miui/gamebooster/aihelper/e;

    invoke-static {v3}, Lcom/miui/gamebooster/aihelper/e;->b(Lcom/miui/gamebooster/aihelper/e;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gamebooster/aihelper/e$b;->c:Lcom/miui/gamebooster/aihelper/e;

    invoke-static {v4}, Lcom/miui/gamebooster/aihelper/e;->d(Lcom/miui/gamebooster/aihelper/e;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/gamebooster/aihelper/e$b;->d:Ljava/lang/String;

    iget v6, p0, Lcom/miui/gamebooster/aihelper/e$b;->e:I

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/xiaomi/venus/gameaisettingstartlib/GameAiSettingManager;->changeAiSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeSetting(key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/miui/gamebooster/aihelper/e$b;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/miui/gamebooster/aihelper/e$b;->e:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AIHelperRepository"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Lcom/miui/gamebooster/aihelper/e$b;->a:I

    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/f;->emit(Ljava/lang/Object;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method
