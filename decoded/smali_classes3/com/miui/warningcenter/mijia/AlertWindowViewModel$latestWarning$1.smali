.class final Lcom/miui/warningcenter/mijia/AlertWindowViewModel$latestWarning$1;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lak/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/warningcenter/mijia/AlertWindowViewModel;-><init>(Lcom/miui/warningcenter/mijia/repo/AlertWindowRepository;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/j;",
        "Lak/p<",
        "Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;",
        "Ltj/d<",
        "-",
        "Loj/t;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.miui.warningcenter.mijia.AlertWindowViewModel$latestWarning$1"
    f = "AlertWindowViewModel.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/miui/warningcenter/mijia/AlertWindowViewModel;


# direct methods
.method constructor <init>(Lcom/miui/warningcenter/mijia/AlertWindowViewModel;Ltj/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/warningcenter/mijia/AlertWindowViewModel;",
            "Ltj/d<",
            "-",
            "Lcom/miui/warningcenter/mijia/AlertWindowViewModel$latestWarning$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/warningcenter/mijia/AlertWindowViewModel$latestWarning$1;->this$0:Lcom/miui/warningcenter/mijia/AlertWindowViewModel;

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

    new-instance v0, Lcom/miui/warningcenter/mijia/AlertWindowViewModel$latestWarning$1;

    iget-object v1, p0, Lcom/miui/warningcenter/mijia/AlertWindowViewModel$latestWarning$1;->this$0:Lcom/miui/warningcenter/mijia/AlertWindowViewModel;

    invoke-direct {v0, v1, p2}, Lcom/miui/warningcenter/mijia/AlertWindowViewModel$latestWarning$1;-><init>(Lcom/miui/warningcenter/mijia/AlertWindowViewModel;Ltj/d;)V

    iput-object p1, v0, Lcom/miui/warningcenter/mijia/AlertWindowViewModel$latestWarning$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;Ltj/d;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;
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
            "Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;",
            "Ltj/d<",
            "-",
            "Loj/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/miui/warningcenter/mijia/AlertWindowViewModel$latestWarning$1;->create(Ljava/lang/Object;Ltj/d;)Ltj/d;

    move-result-object p1

    check-cast p1, Lcom/miui/warningcenter/mijia/AlertWindowViewModel$latestWarning$1;

    sget-object p2, Loj/t;->a:Loj/t;

    invoke-virtual {p1, p2}, Lcom/miui/warningcenter/mijia/AlertWindowViewModel$latestWarning$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;

    check-cast p2, Ltj/d;

    invoke-virtual {p0, p1, p2}, Lcom/miui/warningcenter/mijia/AlertWindowViewModel$latestWarning$1;->invoke(Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    iget v0, p0, Lcom/miui/warningcenter/mijia/AlertWindowViewModel$latestWarning$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/warningcenter/mijia/AlertWindowViewModel$latestWarning$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;

    iget-object v0, p0, Lcom/miui/warningcenter/mijia/AlertWindowViewModel$latestWarning$1;->this$0:Lcom/miui/warningcenter/mijia/AlertWindowViewModel;

    invoke-virtual {v0, p1}, Lcom/miui/warningcenter/mijia/AlertWindowViewModel;->setLatest(Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;)V

    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
