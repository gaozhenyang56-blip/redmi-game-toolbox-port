.class final Lcom/miui/electricrisk/AiGuardSceneService$d;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lak/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/electricrisk/AiGuardSceneService;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/j;",
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

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.miui.electricrisk.AiGuardSceneService$startMonitors$3"
    f = "AiGuardSceneService.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAiGuardSceneService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AiGuardSceneService.kt\ncom/miui/electricrisk/AiGuardSceneService$startMonitors$3\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,421:1\n1#2:422\n*E\n"
    }
.end annotation


# instance fields
.field a:I

.field synthetic b:Ljava/lang/Object;

.field final synthetic c:I

.field final synthetic d:Lcom/miui/electricrisk/AiGuardSceneService;


# direct methods
.method constructor <init>(ILcom/miui/electricrisk/AiGuardSceneService;Ltj/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/miui/electricrisk/AiGuardSceneService;",
            "Ltj/d<",
            "-",
            "Lcom/miui/electricrisk/AiGuardSceneService$d;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lcom/miui/electricrisk/AiGuardSceneService$d;->c:I

    iput-object p2, p0, Lcom/miui/electricrisk/AiGuardSceneService$d;->d:Lcom/miui/electricrisk/AiGuardSceneService;

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

    new-instance v0, Lcom/miui/electricrisk/AiGuardSceneService$d;

    iget v1, p0, Lcom/miui/electricrisk/AiGuardSceneService$d;->c:I

    iget-object v2, p0, Lcom/miui/electricrisk/AiGuardSceneService$d;->d:Lcom/miui/electricrisk/AiGuardSceneService;

    invoke-direct {v0, v1, v2, p2}, Lcom/miui/electricrisk/AiGuardSceneService$d;-><init>(ILcom/miui/electricrisk/AiGuardSceneService;Ltj/d;)V

    iput-object p1, v0, Lcom/miui/electricrisk/AiGuardSceneService$d;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final d(Ljava/lang/String;Ltj/d;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/String;
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

    invoke-virtual {p0, p1, p2}, Lcom/miui/electricrisk/AiGuardSceneService$d;->create(Ljava/lang/Object;Ltj/d;)Ltj/d;

    move-result-object p1

    check-cast p1, Lcom/miui/electricrisk/AiGuardSceneService$d;

    sget-object p2, Loj/t;->a:Loj/t;

    invoke-virtual {p1, p2}, Lcom/miui/electricrisk/AiGuardSceneService$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ltj/d;

    invoke-virtual {p0, p1, p2}, Lcom/miui/electricrisk/AiGuardSceneService$d;->d(Ljava/lang/String;Ltj/d;)Ljava/lang/Object;

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

    iget v0, p0, Lcom/miui/electricrisk/AiGuardSceneService$d;->a:I

    if-nez v0, :cond_4

    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/electricrisk/AiGuardSceneService$d;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const-string v0, "AiGuardDaemon"

    const-string v1, "VoIP scam detection is starting."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.tencent.mobileqq"

    invoke-static {p1, v1}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    new-array p1, v2, [I

    fill-array-data p1, :array_0

    goto :goto_0

    :cond_0
    const-string v1, "com.tencent.mm"

    invoke-static {p1, v1}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-array p1, v2, [I

    fill-array-data p1, :array_1

    :goto_0
    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget p1, p1, v1

    iget v3, p0, Lcom/miui/electricrisk/AiGuardSceneService$d;->c:I

    and-int/2addr v3, v1

    const-string v4, "CAPABILITIES"

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/miui/electricrisk/AiGuardSceneService$d;->d:Lcom/miui/electricrisk/AiGuardSceneService;

    invoke-static {v3, v1}, Lcom/miui/electricrisk/AiGuardSceneService;->b(Lcom/miui/electricrisk/AiGuardSceneService;I)Landroid/content/Intent;

    move-result-object v1

    const-string v3, "PHONE_SCAM_SCENE"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    iget v1, p0, Lcom/miui/electricrisk/AiGuardSceneService$d;->c:I

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/electricrisk/AiGuardSceneService$d;->d:Lcom/miui/electricrisk/AiGuardSceneService;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    iget v0, p0, Lcom/miui/electricrisk/AiGuardSceneService$d;->c:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/electricrisk/AiGuardSceneService$d;->d:Lcom/miui/electricrisk/AiGuardSceneService;

    invoke-static {v0, v2}, Lcom/miui/electricrisk/AiGuardSceneService;->b(Lcom/miui/electricrisk/AiGuardSceneService;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "VIDEO_SCAM_SCENE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    iget v0, p0, Lcom/miui/electricrisk/AiGuardSceneService$d;->c:I

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/electricrisk/AiGuardSceneService$d;->d:Lcom/miui/electricrisk/AiGuardSceneService;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_2
    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity missing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :array_0
    .array-data 4
        0x3
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x4
        0x2
    .end array-data
.end method
