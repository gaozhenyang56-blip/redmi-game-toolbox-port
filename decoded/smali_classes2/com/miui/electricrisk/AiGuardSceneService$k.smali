.class final Lcom/miui/electricrisk/AiGuardSceneService$k;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lak/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/electricrisk/AiGuardSceneService;->r()Lkotlinx/coroutines/flow/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/j;",
        "Lak/p<",
        "Lnk/t<",
        "-",
        "Ljava/lang/String;",
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
    c = "com.miui.electricrisk.AiGuardSceneService$voipStartMonitor$1"
    f = "AiGuardSceneService.kt"
    i = {}
    l = {
        0xce
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field private synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcom/miui/electricrisk/AiGuardSceneService;


# direct methods
.method constructor <init>(Lcom/miui/electricrisk/AiGuardSceneService;Ltj/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/electricrisk/AiGuardSceneService;",
            "Ltj/d<",
            "-",
            "Lcom/miui/electricrisk/AiGuardSceneService$k;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/electricrisk/AiGuardSceneService$k;->c:Lcom/miui/electricrisk/AiGuardSceneService;

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

    new-instance v0, Lcom/miui/electricrisk/AiGuardSceneService$k;

    iget-object v1, p0, Lcom/miui/electricrisk/AiGuardSceneService$k;->c:Lcom/miui/electricrisk/AiGuardSceneService;

    invoke-direct {v0, v1, p2}, Lcom/miui/electricrisk/AiGuardSceneService$k;-><init>(Lcom/miui/electricrisk/AiGuardSceneService;Ltj/d;)V

    iput-object p1, v0, Lcom/miui/electricrisk/AiGuardSceneService$k;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final d(Lnk/t;Ltj/d;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lnk/t;
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
            "Lnk/t<",
            "-",
            "Ljava/lang/String;",
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

    invoke-virtual {p0, p1, p2}, Lcom/miui/electricrisk/AiGuardSceneService$k;->create(Ljava/lang/Object;Ltj/d;)Ltj/d;

    move-result-object p1

    check-cast p1, Lcom/miui/electricrisk/AiGuardSceneService$k;

    sget-object p2, Loj/t;->a:Loj/t;

    invoke-virtual {p1, p2}, Lcom/miui/electricrisk/AiGuardSceneService$k;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lnk/t;

    check-cast p2, Ltj/d;

    invoke-virtual {p0, p1, p2}, Lcom/miui/electricrisk/AiGuardSceneService$k;->d(Lnk/t;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/miui/electricrisk/AiGuardSceneService$k;->a:I

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

    iget-object p1, p0, Lcom/miui/electricrisk/AiGuardSceneService$k;->b:Ljava/lang/Object;

    check-cast p1, Lnk/t;

    new-instance v1, Lcom/miui/electricrisk/AiGuardSceneService$k$b;

    iget-object v3, p0, Lcom/miui/electricrisk/AiGuardSceneService$k;->c:Lcom/miui/electricrisk/AiGuardSceneService;

    invoke-direct {v1, v3, p1}, Lcom/miui/electricrisk/AiGuardSceneService$k$b;-><init>(Lcom/miui/electricrisk/AiGuardSceneService;Lnk/t;)V

    iget-object v3, p0, Lcom/miui/electricrisk/AiGuardSceneService$k;->c:Lcom/miui/electricrisk/AiGuardSceneService;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v4, "miui.media.AUDIO_VOIP_RECORD_STATE_CHANGED_ACTION"

    invoke-direct {v5, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x2

    const-string v6, "com.miui.permission.AUDIO_VOIP_RECORD_STATE_CHANGED_ACTION"

    move-object v4, v1

    invoke-static/range {v3 .. v8}, Landroidx/core/content/ContextCompat;->l(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    new-instance v3, Lcom/miui/electricrisk/AiGuardSceneService$k$a;

    iget-object v4, p0, Lcom/miui/electricrisk/AiGuardSceneService$k;->c:Lcom/miui/electricrisk/AiGuardSceneService;

    invoke-direct {v3, v4, v1}, Lcom/miui/electricrisk/AiGuardSceneService$k$a;-><init>(Lcom/miui/electricrisk/AiGuardSceneService;Lcom/miui/electricrisk/AiGuardSceneService$k$b;)V

    iput v2, p0, Lcom/miui/electricrisk/AiGuardSceneService$k;->a:I

    invoke-static {p1, v3, p0}, Lnk/r;->a(Lnk/t;Lak/a;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method
