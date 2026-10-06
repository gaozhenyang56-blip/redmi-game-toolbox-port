.class public final Lcom/miui/warningcenter/mijia/repo/AlertWindowRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAlertWindowRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AlertWindowRepository.kt\ncom/miui/warningcenter/mijia/repo/AlertWindowRepository\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,34:1\n54#2:35\n57#2:39\n50#3:36\n55#3:38\n106#4:37\n*S KotlinDebug\n*F\n+ 1 AlertWindowRepository.kt\ncom/miui/warningcenter/mijia/repo/AlertWindowRepository\n*L\n20#1:35\n20#1:39\n20#1:36\n20#1:38\n20#1:37\n*E\n"
    }
.end annotation


# instance fields
.field private final api:Lcom/miui/warningcenter/mijia/api/MijiaRemoteApi;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final datasource:Lcom/miui/warningcenter/mijia/datasource/MijiaDatasource;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final ioDispatcher:Llk/d0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final warnings:Lkotlinx/coroutines/flow/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/e<",
            "Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/warningcenter/mijia/datasource/MijiaDatasource;Lcom/miui/warningcenter/mijia/api/MijiaRemoteApi;Llk/d0;)V
    .locals 1
    .param p1    # Lcom/miui/warningcenter/mijia/datasource/MijiaDatasource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/miui/warningcenter/mijia/api/MijiaRemoteApi;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Llk/d0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "datasource"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "api"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioDispatcher"

    invoke-static {p3, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/warningcenter/mijia/repo/AlertWindowRepository;->datasource:Lcom/miui/warningcenter/mijia/datasource/MijiaDatasource;

    iput-object p2, p0, Lcom/miui/warningcenter/mijia/repo/AlertWindowRepository;->api:Lcom/miui/warningcenter/mijia/api/MijiaRemoteApi;

    iput-object p3, p0, Lcom/miui/warningcenter/mijia/repo/AlertWindowRepository;->ioDispatcher:Llk/d0;

    invoke-virtual {p1}, Lcom/miui/warningcenter/mijia/datasource/MijiaDatasource;->getAlertPush()Lkotlinx/coroutines/flow/a0;

    move-result-object p1

    new-instance p2, Lcom/miui/warningcenter/mijia/repo/AlertWindowRepository$special$$inlined$mapNotNull$1;

    invoke-direct {p2, p1}, Lcom/miui/warningcenter/mijia/repo/AlertWindowRepository$special$$inlined$mapNotNull$1;-><init>(Lkotlinx/coroutines/flow/e;)V

    invoke-static {p2, p3}, Lkotlinx/coroutines/flow/g;->m(Lkotlinx/coroutines/flow/e;Ltj/g;)Lkotlinx/coroutines/flow/e;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/warningcenter/mijia/repo/AlertWindowRepository;->warnings:Lkotlinx/coroutines/flow/e;

    return-void
.end method

.method public static final synthetic access$getApi$p(Lcom/miui/warningcenter/mijia/repo/AlertWindowRepository;)Lcom/miui/warningcenter/mijia/api/MijiaRemoteApi;
    .locals 0

    iget-object p0, p0, Lcom/miui/warningcenter/mijia/repo/AlertWindowRepository;->api:Lcom/miui/warningcenter/mijia/api/MijiaRemoteApi;

    return-object p0
.end method


# virtual methods
.method public final getWarnings()Lkotlinx/coroutines/flow/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/e<",
            "Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/warningcenter/mijia/repo/AlertWindowRepository;->warnings:Lkotlinx/coroutines/flow/e;

    return-object v0
.end method

.method public final notifyServer(Ljava/util/List;Ltj/d;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/util/List;
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
            "Ljava/util/List<",
            "Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;",
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

    iget-object v0, p0, Lcom/miui/warningcenter/mijia/repo/AlertWindowRepository;->ioDispatcher:Llk/d0;

    new-instance v1, Lcom/miui/warningcenter/mijia/repo/AlertWindowRepository$notifyServer$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/miui/warningcenter/mijia/repo/AlertWindowRepository$notifyServer$2;-><init>(Lcom/miui/warningcenter/mijia/repo/AlertWindowRepository;Ljava/util/List;Ltj/d;)V

    invoke-static {v0, v1, p2}, Llk/g;->c(Ltj/g;Lak/p;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method
