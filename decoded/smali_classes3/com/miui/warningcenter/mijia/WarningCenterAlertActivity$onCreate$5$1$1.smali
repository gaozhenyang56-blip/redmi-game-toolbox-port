.class final Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity$onCreate$5$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity$onCreate$5$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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


# instance fields
.field final synthetic $adapter:Lcom/miui/warningcenter/mijia/AlertWindowAdapter;

.field final synthetic $listView:Landroidx/recyclerview/widget/RecyclerView;

.field final synthetic this$0:Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity;


# direct methods
.method constructor <init>(Lcom/miui/warningcenter/mijia/AlertWindowAdapter;Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity$onCreate$5$1$1;->$adapter:Lcom/miui/warningcenter/mijia/AlertWindowAdapter;

    iput-object p2, p0, Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity$onCreate$5$1$1;->this$0:Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity;

    iput-object p3, p0, Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity$onCreate$5$1$1;->$listView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Lcom/miui/warningcenter/UiState;Ltj/d;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lcom/miui/warningcenter/UiState;
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
            "Lcom/miui/warningcenter/UiState<",
            "+",
            "Ljava/util/List<",
            "Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;",
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

    instance-of p2, p1, Lcom/miui/warningcenter/UiState$Loading;

    if-eqz p2, :cond_0

    :goto_0
    invoke-static {}, Lqj/l;->h()Ljava/util/List;

    move-result-object p1

    goto :goto_1

    :cond_0
    instance-of p2, p1, Lcom/miui/warningcenter/UiState$Success;

    if-eqz p2, :cond_1

    check-cast p1, Lcom/miui/warningcenter/UiState$Success;

    invoke-virtual {p1}, Lcom/miui/warningcenter/UiState$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    goto :goto_1

    :cond_1
    instance-of p1, p1, Lcom/miui/warningcenter/UiState$Fail;

    if-eqz p1, :cond_3

    goto :goto_0

    :goto_1
    iget-object p2, p0, Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity$onCreate$5$1$1;->$adapter:Lcom/miui/warningcenter/mijia/AlertWindowAdapter;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/p;->submitList(Ljava/util/List;)V

    iget-object p1, p0, Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity$onCreate$5$1$1;->this$0:Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity;

    invoke-static {p1}, Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity;->access$getMTinyScreen$p(Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity$onCreate$5$1$1;->$listView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity$onCreate$5$1$1;->$listView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :goto_2
    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1

    :cond_3
    new-instance p1, Loj/k;

    invoke-direct {p1}, Loj/k;-><init>()V

    throw p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Ltj/d;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/miui/warningcenter/UiState;

    invoke-virtual {p0, p1, p2}, Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity$onCreate$5$1$1;->emit(Lcom/miui/warningcenter/UiState;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
