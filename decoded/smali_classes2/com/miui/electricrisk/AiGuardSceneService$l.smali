.class final Lcom/miui/electricrisk/AiGuardSceneService$l;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lak/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/electricrisk/AiGuardSceneService;->s(Ljava/util/concurrent/atomic/AtomicReference;)Lkotlinx/coroutines/flow/e;
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
        "Ljava/lang/Integer;",
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
    c = "com.miui.electricrisk.AiGuardSceneService$voipStopMonitor$1"
    f = "AiGuardSceneService.kt"
    i = {}
    l = {
        0x9c
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAiGuardSceneService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AiGuardSceneService.kt\ncom/miui/electricrisk/AiGuardSceneService$voipStopMonitor$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,421:1\n1549#2:422\n1620#2,3:423\n*S KotlinDebug\n*F\n+ 1 AiGuardSceneService.kt\ncom/miui/electricrisk/AiGuardSceneService$voipStopMonitor$1\n*L\n147#1:422\n147#1:423,3\n*E\n"
    }
.end annotation


# instance fields
.field a:I

.field private synthetic b:Ljava/lang/Object;

.field final synthetic c:Landroid/media/AudioManager;

.field final synthetic d:Lcom/miui/electricrisk/AiGuardSceneService;

.field final synthetic e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/media/AudioManager;Lcom/miui/electricrisk/AiGuardSceneService;Ljava/util/concurrent/atomic/AtomicReference;Ltj/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioManager;",
            "Lcom/miui/electricrisk/AiGuardSceneService;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;",
            "Ltj/d<",
            "-",
            "Lcom/miui/electricrisk/AiGuardSceneService$l;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/electricrisk/AiGuardSceneService$l;->c:Landroid/media/AudioManager;

    iput-object p2, p0, Lcom/miui/electricrisk/AiGuardSceneService$l;->d:Lcom/miui/electricrisk/AiGuardSceneService;

    iput-object p3, p0, Lcom/miui/electricrisk/AiGuardSceneService$l;->e:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILtj/d;)V

    return-void
.end method

.method public static synthetic d(Lcom/miui/electricrisk/AiGuardSceneService;Landroid/media/AudioManager;Ljava/util/concurrent/atomic/AtomicReference;Lnk/t;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/electricrisk/AiGuardSceneService$l;->f(Lcom/miui/electricrisk/AiGuardSceneService;Landroid/media/AudioManager;Ljava/util/concurrent/atomic/AtomicReference;Lnk/t;I)V

    return-void
.end method

.method private static final f(Lcom/miui/electricrisk/AiGuardSceneService;Landroid/media/AudioManager;Ljava/util/concurrent/atomic/AtomicReference;Lnk/t;I)V
    .locals 1

    invoke-static {p0}, Lcom/miui/electricrisk/AiGuardSceneService;->d(Lcom/miui/electricrisk/AiGuardSceneService;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/miui/electricrisk/c;->a(Landroid/media/AudioManager;)Ljava/util/List;

    move-result-object p0

    const-string p1, "am.activeRecordingConfigurations"

    invoke-static {p0, p1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lqj/l;->o(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioRecordingConfiguration;

    invoke-virtual {v0}, Landroid/media/AudioRecordingConfiguration;->getClientPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-nez p4, :cond_2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p3, p0}, Lnk/z;->m(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
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

    new-instance v0, Lcom/miui/electricrisk/AiGuardSceneService$l;

    iget-object v1, p0, Lcom/miui/electricrisk/AiGuardSceneService$l;->c:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/miui/electricrisk/AiGuardSceneService$l;->d:Lcom/miui/electricrisk/AiGuardSceneService;

    iget-object v3, p0, Lcom/miui/electricrisk/AiGuardSceneService$l;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/miui/electricrisk/AiGuardSceneService$l;-><init>(Landroid/media/AudioManager;Lcom/miui/electricrisk/AiGuardSceneService;Ljava/util/concurrent/atomic/AtomicReference;Ltj/d;)V

    iput-object p1, v0, Lcom/miui/electricrisk/AiGuardSceneService$l;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final e(Lnk/t;Ltj/d;)Ljava/lang/Object;
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
            "Ljava/lang/Integer;",
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

    invoke-virtual {p0, p1, p2}, Lcom/miui/electricrisk/AiGuardSceneService$l;->create(Ljava/lang/Object;Ltj/d;)Ltj/d;

    move-result-object p1

    check-cast p1, Lcom/miui/electricrisk/AiGuardSceneService$l;

    sget-object p2, Loj/t;->a:Loj/t;

    invoke-virtual {p1, p2}, Lcom/miui/electricrisk/AiGuardSceneService$l;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lnk/t;

    check-cast p2, Ltj/d;

    invoke-virtual {p0, p1, p2}, Lcom/miui/electricrisk/AiGuardSceneService$l;->e(Lnk/t;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/miui/electricrisk/AiGuardSceneService$l;->a:I

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

    iget-object p1, p0, Lcom/miui/electricrisk/AiGuardSceneService$l;->b:Ljava/lang/Object;

    check-cast p1, Lnk/t;

    iget-object v1, p0, Lcom/miui/electricrisk/AiGuardSceneService$l;->d:Lcom/miui/electricrisk/AiGuardSceneService;

    iget-object v3, p0, Lcom/miui/electricrisk/AiGuardSceneService$l;->c:Landroid/media/AudioManager;

    iget-object v4, p0, Lcom/miui/electricrisk/AiGuardSceneService$l;->e:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v5, Lcom/miui/electricrisk/d;

    invoke-direct {v5, v1, v3, v4, p1}, Lcom/miui/electricrisk/d;-><init>(Lcom/miui/electricrisk/AiGuardSceneService;Landroid/media/AudioManager;Ljava/util/concurrent/atomic/AtomicReference;Lnk/t;)V

    iget-object v1, p0, Lcom/miui/electricrisk/AiGuardSceneService$l;->c:Landroid/media/AudioManager;

    invoke-interface {p1}, Llk/i0;->L()Ltj/g;

    move-result-object v3

    sget-object v4, Llk/d0;->b:Llk/d0$a;

    invoke-interface {v3, v4}, Ltj/g;->d(Ltj/g$c;)Ltj/g$b;

    move-result-object v3

    invoke-static {v3}, Lbk/m;->b(Ljava/lang/Object;)V

    check-cast v3, Llk/d0;

    invoke-static {v3}, Llk/k1;->a(Llk/d0;)Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-static {v1, v3, v5}, Lcom/miui/electricrisk/b;->a(Landroid/media/AudioManager;Ljava/util/concurrent/Executor;Landroid/media/AudioManager$OnModeChangedListener;)V

    new-instance v1, Lcom/miui/electricrisk/AiGuardSceneService$l$a;

    iget-object v3, p0, Lcom/miui/electricrisk/AiGuardSceneService$l;->c:Landroid/media/AudioManager;

    invoke-direct {v1, v3, v5}, Lcom/miui/electricrisk/AiGuardSceneService$l$a;-><init>(Landroid/media/AudioManager;Landroid/media/AudioManager$OnModeChangedListener;)V

    iput v2, p0, Lcom/miui/electricrisk/AiGuardSceneService$l;->a:I

    invoke-static {p1, v1, p0}, Lnk/r;->a(Lnk/t;Lak/a;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method
