.class final Lcom/miui/electricrisk/AiGuardSceneService$a;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lak/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/electricrisk/AiGuardSceneService;->g()Lkotlinx/coroutines/flow/e;
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
        "Loj/l<",
        "+",
        "Ljava/lang/Integer;",
        "+",
        "Ljava/lang/String;",
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
    c = "com.miui.electricrisk.AiGuardSceneService$callState$1"
    f = "AiGuardSceneService.kt"
    i = {}
    l = {
        0xb0
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field private synthetic b:Ljava/lang/Object;

.field final synthetic c:Landroid/telephony/TelephonyManager;

.field final synthetic d:Lcom/miui/electricrisk/AiGuardSceneService;


# direct methods
.method constructor <init>(Landroid/telephony/TelephonyManager;Lcom/miui/electricrisk/AiGuardSceneService;Ltj/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/TelephonyManager;",
            "Lcom/miui/electricrisk/AiGuardSceneService;",
            "Ltj/d<",
            "-",
            "Lcom/miui/electricrisk/AiGuardSceneService$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/electricrisk/AiGuardSceneService$a;->c:Landroid/telephony/TelephonyManager;

    iput-object p2, p0, Lcom/miui/electricrisk/AiGuardSceneService$a;->d:Lcom/miui/electricrisk/AiGuardSceneService;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILtj/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ltj/d;)Ltj/d;
    .locals 3
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

    new-instance v0, Lcom/miui/electricrisk/AiGuardSceneService$a;

    iget-object v1, p0, Lcom/miui/electricrisk/AiGuardSceneService$a;->c:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/miui/electricrisk/AiGuardSceneService$a;->d:Lcom/miui/electricrisk/AiGuardSceneService;

    invoke-direct {v0, v1, v2, p2}, Lcom/miui/electricrisk/AiGuardSceneService$a;-><init>(Landroid/telephony/TelephonyManager;Lcom/miui/electricrisk/AiGuardSceneService;Ltj/d;)V

    iput-object p1, v0, Lcom/miui/electricrisk/AiGuardSceneService$a;->b:Ljava/lang/Object;

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
            "Loj/l<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
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

    invoke-virtual {p0, p1, p2}, Lcom/miui/electricrisk/AiGuardSceneService$a;->create(Ljava/lang/Object;Ltj/d;)Ltj/d;

    move-result-object p1

    check-cast p1, Lcom/miui/electricrisk/AiGuardSceneService$a;

    sget-object p2, Loj/t;->a:Loj/t;

    invoke-virtual {p1, p2}, Lcom/miui/electricrisk/AiGuardSceneService$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lnk/t;

    check-cast p2, Ltj/d;

    invoke-virtual {p0, p1, p2}, Lcom/miui/electricrisk/AiGuardSceneService$a;->d(Lnk/t;Ltj/d;)Ljava/lang/Object;

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

    iget v1, p0, Lcom/miui/electricrisk/AiGuardSceneService$a;->a:I

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

    iget-object p1, p0, Lcom/miui/electricrisk/AiGuardSceneService$a;->b:Ljava/lang/Object;

    check-cast p1, Lnk/t;

    invoke-interface {p1}, Llk/i0;->L()Ltj/g;

    move-result-object v1

    sget-object v3, Llk/d0;->b:Llk/d0$a;

    invoke-interface {v1, v3}, Ltj/g;->d(Ltj/g$c;)Ltj/g$b;

    move-result-object v1

    invoke-static {v1}, Lbk/m;->b(Ljava/lang/Object;)V

    check-cast v1, Llk/d0;

    invoke-static {v1}, Llk/k1;->a(Llk/d0;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v3, Lcom/miui/electricrisk/AiGuardSceneService$a$b;

    iget-object v4, p0, Lcom/miui/electricrisk/AiGuardSceneService$a;->d:Lcom/miui/electricrisk/AiGuardSceneService;

    invoke-direct {v3, v4, p1, v1}, Lcom/miui/electricrisk/AiGuardSceneService$a$b;-><init>(Lcom/miui/electricrisk/AiGuardSceneService;Lnk/t;Ljava/util/concurrent/Executor;)V

    iget-object v1, p0, Lcom/miui/electricrisk/AiGuardSceneService$a;->c:Landroid/telephony/TelephonyManager;

    const/16 v4, 0x20

    invoke-virtual {v1, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    new-instance v1, Lcom/miui/electricrisk/AiGuardSceneService$a$a;

    iget-object v4, p0, Lcom/miui/electricrisk/AiGuardSceneService$a;->c:Landroid/telephony/TelephonyManager;

    invoke-direct {v1, v4, v3}, Lcom/miui/electricrisk/AiGuardSceneService$a$a;-><init>(Landroid/telephony/TelephonyManager;Lcom/miui/electricrisk/AiGuardSceneService$a$b;)V

    iput v2, p0, Lcom/miui/electricrisk/AiGuardSceneService$a;->a:I

    invoke-static {p1, v1, p0}, Lnk/r;->a(Lnk/t;Lak/a;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method
