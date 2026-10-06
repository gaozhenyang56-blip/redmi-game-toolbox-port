.class final Lcom/miui/warningcenter/mijia/AlertWindowViewModel$1$1;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lak/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/warningcenter/mijia/AlertWindowViewModel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/j;",
        "Lak/q<",
        "Ljava/util/ArrayList<",
        "Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;",
        ">;",
        "Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;",
        "Ltj/d<",
        "-",
        "Lcom/miui/warningcenter/UiState<",
        "+",
        "Ljava/util/List<",
        "+",
        "Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;",
        ">;>;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.miui.warningcenter.mijia.AlertWindowViewModel$1$1"
    f = "AlertWindowViewModel.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Ltj/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltj/d<",
            "-",
            "Lcom/miui/warningcenter/mijia/AlertWindowViewModel$1$1;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILtj/d;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/ArrayList;

    check-cast p2, Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;

    check-cast p3, Ltj/d;

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/warningcenter/mijia/AlertWindowViewModel$1$1;->invoke(Ljava/util/ArrayList;Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/util/ArrayList;Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;Ltj/d;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;",
            ">;",
            "Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;",
            "Ltj/d<",
            "-",
            "Lcom/miui/warningcenter/UiState<",
            "+",
            "Ljava/util/List<",
            "Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance v0, Lcom/miui/warningcenter/mijia/AlertWindowViewModel$1$1;

    invoke-direct {v0, p3}, Lcom/miui/warningcenter/mijia/AlertWindowViewModel$1$1;-><init>(Ltj/d;)V

    iput-object p1, v0, Lcom/miui/warningcenter/mijia/AlertWindowViewModel$1$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/miui/warningcenter/mijia/AlertWindowViewModel$1$1;->L$1:Ljava/lang/Object;

    sget-object p1, Loj/t;->a:Loj/t;

    invoke-virtual {v0, p1}, Lcom/miui/warningcenter/mijia/AlertWindowViewModel$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    iget v0, p0, Lcom/miui/warningcenter/mijia/AlertWindowViewModel$1$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/warningcenter/mijia/AlertWindowViewModel$1$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/warningcenter/mijia/AlertWindowViewModel$1$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    new-instance v0, Lcom/miui/warningcenter/UiState$Success;

    invoke-static {p1}, Lqj/l;->Q(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/miui/warningcenter/UiState$Success;-><init>(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
