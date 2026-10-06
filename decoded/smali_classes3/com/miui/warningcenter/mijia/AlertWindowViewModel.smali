.class public final Lcom/miui/warningcenter/mijia/AlertWindowViewModel;
.super Landroidx/lifecycle/r0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/warningcenter/mijia/AlertWindowViewModel$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/miui/warningcenter/mijia/AlertWindowViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AlertWindowViewModel"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final _allWarnings:Lkotlinx/coroutines/flow/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/s<",
            "Lcom/miui/warningcenter/UiState<",
            "Ljava/util/List<",
            "Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final allWarnings:Lkotlinx/coroutines/flow/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/a0<",
            "Lcom/miui/warningcenter/UiState<",
            "Ljava/util/List<",
            "Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private job:Llk/s1;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private latest:Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final latestWarning:Lkotlinx/coroutines/flow/e;
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

.field private playSound:Lcom/miui/warningcenter/mijia/MijiaPlaySound;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final repo:Lcom/miui/warningcenter/mijia/repo/AlertWindowRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/warningcenter/mijia/AlertWindowViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/warningcenter/mijia/AlertWindowViewModel$Companion;-><init>(Lbk/g;)V

    sput-object v0, Lcom/miui/warningcenter/mijia/AlertWindowViewModel;->Companion:Lcom/miui/warningcenter/mijia/AlertWindowViewModel$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/miui/warningcenter/mijia/AlertWindowViewModel;-><init>(Lcom/miui/warningcenter/mijia/repo/AlertWindowRepository;ILbk/g;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/warningcenter/mijia/repo/AlertWindowRepository;)V
    .locals 8
    .param p1    # Lcom/miui/warningcenter/mijia/repo/AlertWindowRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "repo"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/lifecycle/r0;-><init>()V

    iput-object p1, p0, Lcom/miui/warningcenter/mijia/AlertWindowViewModel;->repo:Lcom/miui/warningcenter/mijia/repo/AlertWindowRepository;

    sget-object v0, Lcom/miui/warningcenter/UiState$Loading;->INSTANCE:Lcom/miui/warningcenter/UiState$Loading;

    invoke-static {v0}, Lkotlinx/coroutines/flow/c0;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/s;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/warningcenter/mijia/AlertWindowViewModel;->_allWarnings:Lkotlinx/coroutines/flow/s;

    invoke-static {v0}, Lkotlinx/coroutines/flow/g;->b(Lkotlinx/coroutines/flow/s;)Lkotlinx/coroutines/flow/a0;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/warningcenter/mijia/AlertWindowViewModel;->allWarnings:Lkotlinx/coroutines/flow/a0;

    invoke-virtual {p1}, Lcom/miui/warningcenter/mijia/repo/AlertWindowRepository;->getWarnings()Lkotlinx/coroutines/flow/e;

    move-result-object p1

    new-instance v0, Lcom/miui/warningcenter/mijia/AlertWindowViewModel$latestWarning$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/warningcenter/mijia/AlertWindowViewModel$latestWarning$1;-><init>(Lcom/miui/warningcenter/mijia/AlertWindowViewModel;Ltj/d;)V

    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/g;->o(Lkotlinx/coroutines/flow/e;Lak/p;)Lkotlinx/coroutines/flow/e;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/warningcenter/mijia/AlertWindowViewModel;->latestWarning:Lkotlinx/coroutines/flow/e;

    invoke-static {p0}, Landroidx/lifecycle/s0;->a(Landroidx/lifecycle/r0;)Llk/i0;

    move-result-object v2

    new-instance v5, Lcom/miui/warningcenter/mijia/AlertWindowViewModel$1;

    invoke-direct {v5, p0, v1}, Lcom/miui/warningcenter/mijia/AlertWindowViewModel$1;-><init>(Lcom/miui/warningcenter/mijia/AlertWindowViewModel;Ltj/d;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/miui/warningcenter/mijia/repo/AlertWindowRepository;ILbk/g;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, Lcom/miui/warningcenter/mijia/di/Dependencies;->INSTANCE:Lcom/miui/warningcenter/mijia/di/Dependencies;

    invoke-virtual {p1}, Lcom/miui/warningcenter/mijia/di/Dependencies;->getAlertWindowRepository()Lcom/miui/warningcenter/mijia/repo/AlertWindowRepository;

    move-result-object p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/warningcenter/mijia/AlertWindowViewModel;-><init>(Lcom/miui/warningcenter/mijia/repo/AlertWindowRepository;)V

    return-void
.end method

.method public static final synthetic access$getLatestWarning$p(Lcom/miui/warningcenter/mijia/AlertWindowViewModel;)Lkotlinx/coroutines/flow/e;
    .locals 0

    iget-object p0, p0, Lcom/miui/warningcenter/mijia/AlertWindowViewModel;->latestWarning:Lkotlinx/coroutines/flow/e;

    return-object p0
.end method

.method public static final synthetic access$getPlaySound$p(Lcom/miui/warningcenter/mijia/AlertWindowViewModel;)Lcom/miui/warningcenter/mijia/MijiaPlaySound;
    .locals 0

    iget-object p0, p0, Lcom/miui/warningcenter/mijia/AlertWindowViewModel;->playSound:Lcom/miui/warningcenter/mijia/MijiaPlaySound;

    return-object p0
.end method

.method public static final synthetic access$getRepo$p(Lcom/miui/warningcenter/mijia/AlertWindowViewModel;)Lcom/miui/warningcenter/mijia/repo/AlertWindowRepository;
    .locals 0

    iget-object p0, p0, Lcom/miui/warningcenter/mijia/AlertWindowViewModel;->repo:Lcom/miui/warningcenter/mijia/repo/AlertWindowRepository;

    return-object p0
.end method

.method public static final synthetic access$get_allWarnings$p(Lcom/miui/warningcenter/mijia/AlertWindowViewModel;)Lkotlinx/coroutines/flow/s;
    .locals 0

    iget-object p0, p0, Lcom/miui/warningcenter/mijia/AlertWindowViewModel;->_allWarnings:Lkotlinx/coroutines/flow/s;

    return-object p0
.end method


# virtual methods
.method public final getAllWarnings()Lkotlinx/coroutines/flow/a0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/a0<",
            "Lcom/miui/warningcenter/UiState<",
            "Ljava/util/List<",
            "Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/warningcenter/mijia/AlertWindowViewModel;->allWarnings:Lkotlinx/coroutines/flow/a0;

    return-object v0
.end method

.method public final getLatest()Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/warningcenter/mijia/AlertWindowViewModel;->latest:Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;

    return-object v0
.end method

.method public final notifyServer()V
    .locals 7

    iget-object v0, p0, Lcom/miui/warningcenter/mijia/AlertWindowViewModel;->allWarnings:Lkotlinx/coroutines/flow/a0;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/a0;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/warningcenter/UiState;

    instance-of v1, v0, Lcom/miui/warningcenter/UiState$Success;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/miui/warningcenter/UiState$Success;

    invoke-virtual {v0}, Lcom/miui/warningcenter/UiState$Success;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-static {}, Lqj/l;->h()Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-static {p0}, Landroidx/lifecycle/s0;->a(Landroidx/lifecycle/r0;)Llk/i0;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Lcom/miui/warningcenter/mijia/AlertWindowViewModel$notifyServer$1;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v0, v5}, Lcom/miui/warningcenter/mijia/AlertWindowViewModel$notifyServer$1;-><init>(Lcom/miui/warningcenter/mijia/AlertWindowViewModel;Ljava/util/List;Ltj/d;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    return-void
.end method

.method protected onCleared()V
    .locals 0

    invoke-super {p0}, Landroidx/lifecycle/r0;->onCleared()V

    invoke-virtual {p0}, Lcom/miui/warningcenter/mijia/AlertWindowViewModel;->releasePlayer()V

    return-void
.end method

.method public final playSound()V
    .locals 8

    iget-object v0, p0, Lcom/miui/warningcenter/mijia/AlertWindowViewModel;->job:Llk/s1;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/miui/warningcenter/mijia/MijiaPlaySound;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/warningcenter/mijia/MijiaPlaySound;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/warningcenter/mijia/AlertWindowViewModel;->playSound:Lcom/miui/warningcenter/mijia/MijiaPlaySound;

    invoke-static {p0}, Landroidx/lifecycle/s0;->a(Landroidx/lifecycle/r0;)Llk/i0;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcom/miui/warningcenter/mijia/AlertWindowViewModel$playSound$1;

    const/4 v0, 0x0

    invoke-direct {v5, p0, v0}, Lcom/miui/warningcenter/mijia/AlertWindowViewModel$playSound$1;-><init>(Lcom/miui/warningcenter/mijia/AlertWindowViewModel;Ltj/d;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/warningcenter/mijia/AlertWindowViewModel;->job:Llk/s1;

    return-void
.end method

.method public final releasePlayer()V
    .locals 1

    iget-object v0, p0, Lcom/miui/warningcenter/mijia/AlertWindowViewModel;->playSound:Lcom/miui/warningcenter/mijia/MijiaPlaySound;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/warningcenter/mijia/MijiaPlaySound;->stop()V

    invoke-virtual {v0}, Lcom/miui/warningcenter/mijia/MijiaPlaySound;->release()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/warningcenter/mijia/AlertWindowViewModel;->playSound:Lcom/miui/warningcenter/mijia/MijiaPlaySound;

    return-void
.end method

.method public final setLatest(Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;)V
    .locals 0
    .param p1    # Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/warningcenter/mijia/AlertWindowViewModel;->latest:Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;

    return-void
.end method
