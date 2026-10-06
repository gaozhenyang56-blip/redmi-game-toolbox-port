.class final Lcom/miui/warningcenter/mijia/AlertWindowViewModel$1$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/f;


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
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/f;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/warningcenter/mijia/AlertWindowViewModel;


# direct methods
.method constructor <init>(Lcom/miui/warningcenter/mijia/AlertWindowViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/warningcenter/mijia/AlertWindowViewModel$1$3;->this$0:Lcom/miui/warningcenter/mijia/AlertWindowViewModel;

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

    iget-object p2, p0, Lcom/miui/warningcenter/mijia/AlertWindowViewModel$1$3;->this$0:Lcom/miui/warningcenter/mijia/AlertWindowViewModel;

    invoke-static {p2}, Lcom/miui/warningcenter/mijia/AlertWindowViewModel;->access$get_allWarnings$p(Lcom/miui/warningcenter/mijia/AlertWindowViewModel;)Lkotlinx/coroutines/flow/s;

    move-result-object p2

    invoke-interface {p2, p1}, Lkotlinx/coroutines/flow/s;->setValue(Ljava/lang/Object;)V

    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Ltj/d;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/miui/warningcenter/UiState;

    invoke-virtual {p0, p1, p2}, Lcom/miui/warningcenter/mijia/AlertWindowViewModel$1$3;->emit(Lcom/miui/warningcenter/UiState;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
