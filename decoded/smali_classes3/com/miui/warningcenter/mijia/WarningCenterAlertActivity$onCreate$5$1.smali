.class final Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity$onCreate$5$1;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lak/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity$onCreate$5;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/j;",
        "Lak/p<",
        "Llk/i0;",
        "Ltj/d<",
        "-",
        "Loj/t;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.miui.warningcenter.mijia.WarningCenterAlertActivity$onCreate$5$1"
    f = "WarningCenterAlertActivity.kt"
    i = {}
    l = {
        0x68
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $adapter:Lcom/miui/warningcenter/mijia/AlertWindowAdapter;

.field final synthetic $listView:Landroidx/recyclerview/widget/RecyclerView;

.field label:I

.field final synthetic this$0:Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity;


# direct methods
.method constructor <init>(Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity;Lcom/miui/warningcenter/mijia/AlertWindowAdapter;Landroidx/recyclerview/widget/RecyclerView;Ltj/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity;",
            "Lcom/miui/warningcenter/mijia/AlertWindowAdapter;",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Ltj/d<",
            "-",
            "Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity$onCreate$5$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity$onCreate$5$1;->this$0:Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity;

    iput-object p2, p0, Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity$onCreate$5$1;->$adapter:Lcom/miui/warningcenter/mijia/AlertWindowAdapter;

    iput-object p3, p0, Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity$onCreate$5$1;->$listView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILtj/d;)V

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

    new-instance p1, Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity$onCreate$5$1;

    iget-object v0, p0, Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity$onCreate$5$1;->this$0:Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity;

    iget-object v1, p0, Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity$onCreate$5$1;->$adapter:Lcom/miui/warningcenter/mijia/AlertWindowAdapter;

    iget-object v2, p0, Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity$onCreate$5$1;->$listView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity$onCreate$5$1;-><init>(Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity;Lcom/miui/warningcenter/mijia/AlertWindowAdapter;Landroidx/recyclerview/widget/RecyclerView;Ltj/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Llk/i0;

    check-cast p2, Ltj/d;

    invoke-virtual {p0, p1, p2}, Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity$onCreate$5$1;->invoke(Llk/i0;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Llk/i0;Ltj/d;)Ljava/lang/Object;
    .locals 0
    .param p1    # Llk/i0;
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
            "Llk/i0;",
            "Ltj/d<",
            "-",
            "Loj/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity$onCreate$5$1;->create(Ljava/lang/Object;Ltj/d;)Ltj/d;

    move-result-object p1

    check-cast p1, Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity$onCreate$5$1;

    sget-object p2, Loj/t;->a:Loj/t;

    invoke-virtual {p1, p2}, Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity$onCreate$5$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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

    iget v1, p0, Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity$onCreate$5$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-eq v1, v2, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity$onCreate$5$1;->this$0:Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity;

    invoke-static {p1}, Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity;->access$getViewModel(Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity;)Lcom/miui/warningcenter/mijia/AlertWindowViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/warningcenter/mijia/AlertWindowViewModel;->getAllWarnings()Lkotlinx/coroutines/flow/a0;

    move-result-object p1

    new-instance v1, Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity$onCreate$5$1$1;

    iget-object v3, p0, Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity$onCreate$5$1;->$adapter:Lcom/miui/warningcenter/mijia/AlertWindowAdapter;

    iget-object v4, p0, Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity$onCreate$5$1;->this$0:Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity;

    iget-object v5, p0, Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity$onCreate$5$1;->$listView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {v1, v3, v4, v5}, Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity$onCreate$5$1$1;-><init>(Lcom/miui/warningcenter/mijia/AlertWindowAdapter;Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity;Landroidx/recyclerview/widget/RecyclerView;)V

    iput v2, p0, Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity$onCreate$5$1;->label:I

    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/w;->collect(Lkotlinx/coroutines/flow/f;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    new-instance p1, Loj/e;

    invoke-direct {p1}, Loj/e;-><init>()V

    throw p1
.end method
