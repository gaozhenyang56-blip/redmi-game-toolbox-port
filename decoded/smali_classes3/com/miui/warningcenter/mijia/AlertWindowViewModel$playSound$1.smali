.class final Lcom/miui/warningcenter/mijia/AlertWindowViewModel$playSound$1;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lak/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/warningcenter/mijia/AlertWindowViewModel;->playSound()V
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
    c = "com.miui.warningcenter.mijia.AlertWindowViewModel$playSound$1"
    f = "AlertWindowViewModel.kt"
    i = {}
    l = {
        0x3e
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
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
            "Lcom/miui/warningcenter/mijia/AlertWindowViewModel$playSound$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/warningcenter/mijia/AlertWindowViewModel$playSound$1;->this$0:Lcom/miui/warningcenter/mijia/AlertWindowViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILtj/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ltj/d;)Ltj/d;
    .locals 1
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

    new-instance p1, Lcom/miui/warningcenter/mijia/AlertWindowViewModel$playSound$1;

    iget-object v0, p0, Lcom/miui/warningcenter/mijia/AlertWindowViewModel$playSound$1;->this$0:Lcom/miui/warningcenter/mijia/AlertWindowViewModel;

    invoke-direct {p1, v0, p2}, Lcom/miui/warningcenter/mijia/AlertWindowViewModel$playSound$1;-><init>(Lcom/miui/warningcenter/mijia/AlertWindowViewModel;Ltj/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Llk/i0;

    check-cast p2, Ltj/d;

    invoke-virtual {p0, p1, p2}, Lcom/miui/warningcenter/mijia/AlertWindowViewModel$playSound$1;->invoke(Llk/i0;Ltj/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/miui/warningcenter/mijia/AlertWindowViewModel$playSound$1;->create(Ljava/lang/Object;Ltj/d;)Ltj/d;

    move-result-object p1

    check-cast p1, Lcom/miui/warningcenter/mijia/AlertWindowViewModel$playSound$1;

    sget-object p2, Loj/t;->a:Loj/t;

    invoke-virtual {p1, p2}, Lcom/miui/warningcenter/mijia/AlertWindowViewModel$playSound$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/miui/warningcenter/mijia/AlertWindowViewModel$playSound$1;->label:I

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

    iget-object p1, p0, Lcom/miui/warningcenter/mijia/AlertWindowViewModel$playSound$1;->this$0:Lcom/miui/warningcenter/mijia/AlertWindowViewModel;

    invoke-static {p1}, Lcom/miui/warningcenter/mijia/AlertWindowViewModel;->access$getPlaySound$p(Lcom/miui/warningcenter/mijia/AlertWindowViewModel;)Lcom/miui/warningcenter/mijia/MijiaPlaySound;

    move-result-object p1

    if-eqz p1, :cond_2

    const v1, 0x7f11000f

    invoke-virtual {p1, v1}, Lcom/miui/warningcenter/mijia/MijiaPlaySound;->playSound(I)V

    :cond_2
    sget-object p1, Lkk/a;->b:Lkk/a$a;

    const/16 p1, 0xf

    sget-object v1, Lkk/d;->e:Lkk/d;

    invoke-static {p1, v1}, Lkk/c;->h(ILkk/d;)J

    move-result-wide v3

    iput v2, p0, Lcom/miui/warningcenter/mijia/AlertWindowViewModel$playSound$1;->label:I

    invoke-static {v3, v4, p0}, Llk/q0;->b(JLtj/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/miui/warningcenter/mijia/AlertWindowViewModel$playSound$1;->this$0:Lcom/miui/warningcenter/mijia/AlertWindowViewModel;

    invoke-virtual {p1}, Lcom/miui/warningcenter/mijia/AlertWindowViewModel;->releasePlayer()V

    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method
