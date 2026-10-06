.class final Lcom/miui/electricrisk/AiGuardSceneService$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/electricrisk/AiGuardSceneService$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAiGuardSceneService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AiGuardSceneService.kt\ncom/miui/electricrisk/AiGuardSceneService$startMonitors$1$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,421:1\n1#2:422\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/electricrisk/AiGuardSceneService;

.field final synthetic b:I

.field final synthetic c:Lbk/w;


# direct methods
.method constructor <init>(Lcom/miui/electricrisk/AiGuardSceneService;ILbk/w;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/electricrisk/AiGuardSceneService$b$a;->a:Lcom/miui/electricrisk/AiGuardSceneService;

    iput p2, p0, Lcom/miui/electricrisk/AiGuardSceneService$b$a;->b:I

    iput-object p3, p0, Lcom/miui/electricrisk/AiGuardSceneService$b$a;->c:Lbk/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Loj/l;Ltj/d;)Ljava/lang/Object;
    .locals 2
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
            "Ljava/lang/Integer;",
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

    invoke-virtual {p1}, Loj/l;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p1}, Loj/l;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x2

    if-eqz p2, :cond_1

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/miui/electricrisk/AiGuardSceneService$b$a;->a:Lcom/miui/electricrisk/AiGuardSceneService;

    invoke-static {v1, p1}, Lcom/miui/electricrisk/AiGuardSceneService;->c(Lcom/miui/electricrisk/AiGuardSceneService;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/electricrisk/AiGuardSceneService$b$a;->a:Lcom/miui/electricrisk/AiGuardSceneService;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/miui/electricrisk/AiGuardSceneService;->b(Lcom/miui/electricrisk/AiGuardSceneService;I)Landroid/content/Intent;

    move-result-object p1

    const-string v1, "PHONE_SCAM_SCENE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    iget v0, p0, Lcom/miui/electricrisk/AiGuardSceneService$b$a;->b:I

    const-string v1, "CAPABILITIES"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/electricrisk/AiGuardSceneService$b$a;->a:Lcom/miui/electricrisk/AiGuardSceneService;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const-string p1, "AiGuardDaemon"

    const-string v0, "Phone scam detection is starting."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/electricrisk/AiGuardSceneService$b$a;->c:Lbk/w;

    iget p1, p1, Lbk/w;->a:I

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/miui/electricrisk/AiGuardSceneService$b$a;->a:Lcom/miui/electricrisk/AiGuardSceneService;

    invoke-static {p1}, Lcom/miui/electricrisk/AiGuardSceneService;->e(Lcom/miui/electricrisk/AiGuardSceneService;)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/miui/electricrisk/AiGuardSceneService$b$a;->c:Lbk/w;

    iput p2, p1, Lbk/w;->a:I

    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Ltj/d;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Loj/l;

    invoke-virtual {p0, p1, p2}, Lcom/miui/electricrisk/AiGuardSceneService$b$a;->a(Loj/l;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
