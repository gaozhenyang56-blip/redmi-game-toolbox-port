.class final Lcom/miui/electricrisk/AiGuardSceneService$monitorActivities$1;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lak/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/electricrisk/AiGuardSceneService;->m(Ljava/util/List;Ljava/util/List;)Lkotlinx/coroutines/flow/e;
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
        "Landroid/content/ComponentName;",
        "+",
        "Landroid/content/ComponentName;",
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
    c = "com.miui.electricrisk.AiGuardSceneService$monitorActivities$1"
    f = "AiGuardSceneService.kt"
    i = {}
    l = {
        0x11f
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field private synthetic b:Ljava/lang/Object;

.field final synthetic c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic e:Lcom/miui/electricrisk/AiGuardSceneService;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/List;Lcom/miui/electricrisk/AiGuardSceneService;Ltj/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/miui/electricrisk/AiGuardSceneService;",
            "Ltj/d<",
            "-",
            "Lcom/miui/electricrisk/AiGuardSceneService$monitorActivities$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/electricrisk/AiGuardSceneService$monitorActivities$1;->c:Ljava/util/List;

    iput-object p2, p0, Lcom/miui/electricrisk/AiGuardSceneService$monitorActivities$1;->d:Ljava/util/List;

    iput-object p3, p0, Lcom/miui/electricrisk/AiGuardSceneService$monitorActivities$1;->e:Lcom/miui/electricrisk/AiGuardSceneService;

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

    new-instance v0, Lcom/miui/electricrisk/AiGuardSceneService$monitorActivities$1;

    iget-object v1, p0, Lcom/miui/electricrisk/AiGuardSceneService$monitorActivities$1;->c:Ljava/util/List;

    iget-object v2, p0, Lcom/miui/electricrisk/AiGuardSceneService$monitorActivities$1;->d:Ljava/util/List;

    iget-object v3, p0, Lcom/miui/electricrisk/AiGuardSceneService$monitorActivities$1;->e:Lcom/miui/electricrisk/AiGuardSceneService;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/miui/electricrisk/AiGuardSceneService$monitorActivities$1;-><init>(Ljava/util/List;Ljava/util/List;Lcom/miui/electricrisk/AiGuardSceneService;Ltj/d;)V

    iput-object p1, v0, Lcom/miui/electricrisk/AiGuardSceneService$monitorActivities$1;->b:Ljava/lang/Object;

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
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
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

    invoke-virtual {p0, p1, p2}, Lcom/miui/electricrisk/AiGuardSceneService$monitorActivities$1;->create(Ljava/lang/Object;Ltj/d;)Ltj/d;

    move-result-object p1

    check-cast p1, Lcom/miui/electricrisk/AiGuardSceneService$monitorActivities$1;

    sget-object p2, Loj/t;->a:Loj/t;

    invoke-virtual {p1, p2}, Lcom/miui/electricrisk/AiGuardSceneService$monitorActivities$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lnk/t;

    check-cast p2, Ltj/d;

    invoke-virtual {p0, p1, p2}, Lcom/miui/electricrisk/AiGuardSceneService$monitorActivities$1;->d(Lnk/t;Ltj/d;)Ljava/lang/Object;

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

    iget v1, p0, Lcom/miui/electricrisk/AiGuardSceneService$monitorActivities$1;->a:I

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

    iget-object p1, p0, Lcom/miui/electricrisk/AiGuardSceneService$monitorActivities$1;->b:Ljava/lang/Object;

    check-cast p1, Lnk/t;

    const-string v1, "miui.process.ProcessManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v3, "com.gzy.redmiport.compat.process.IActivityChangeListener"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/util/List;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, Ljava/util/List;

    aput-object v6, v5, v2

    const/4 v6, 0x2

    aput-object v3, v5, v6

    const-string v8, "registerActivityChangeListener"

    invoke-virtual {v1, v8, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v8, v2, [Ljava/lang/Class;

    aput-object v3, v8, v7

    const-string v3, "unregisterActivityChanageListener"

    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-instance v3, Lcom/miui/electricrisk/AiGuardSceneService$monitorActivities$1$cb$1;

    iget-object v8, p0, Lcom/miui/electricrisk/AiGuardSceneService$monitorActivities$1;->e:Lcom/miui/electricrisk/AiGuardSceneService;

    invoke-direct {v3, v8, p1}, Lcom/miui/electricrisk/AiGuardSceneService$monitorActivities$1$cb$1;-><init>(Lcom/miui/electricrisk/AiGuardSceneService;Lnk/t;)V

    const/4 v8, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/miui/electricrisk/AiGuardSceneService$monitorActivities$1;->c:Ljava/util/List;

    aput-object v9, v4, v7

    iget-object v7, p0, Lcom/miui/electricrisk/AiGuardSceneService$monitorActivities$1;->d:Ljava/util/List;

    aput-object v7, v4, v2

    aput-object v3, v4, v6

    invoke-virtual {v5, v8, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/miui/electricrisk/AiGuardSceneService$monitorActivities$1$a;

    invoke-direct {v4, v1, v3}, Lcom/miui/electricrisk/AiGuardSceneService$monitorActivities$1$a;-><init>(Ljava/lang/reflect/Method;Lcom/miui/electricrisk/AiGuardSceneService$monitorActivities$1$cb$1;)V

    iput v2, p0, Lcom/miui/electricrisk/AiGuardSceneService$monitorActivities$1;->a:I

    invoke-static {p1, v4, p0}, Lnk/r;->a(Lnk/t;Lak/a;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method
