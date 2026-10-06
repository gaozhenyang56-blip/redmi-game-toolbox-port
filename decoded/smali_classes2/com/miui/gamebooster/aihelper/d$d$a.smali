.class final Lcom/miui/gamebooster/aihelper/d$d$a;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lak/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/aihelper/d$d;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
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
    c = "com.miui.gamebooster.aihelper.AIHelperModel$connection$1$onServiceConnected$1"
    f = "AIHelperModel.kt"
    i = {}
    l = {
        0x22
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/miui/gamebooster/aihelper/d;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/aihelper/d;Ltj/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gamebooster/aihelper/d;",
            "Ltj/d<",
            "-",
            "Lcom/miui/gamebooster/aihelper/d$d$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/gamebooster/aihelper/d$d$a;->b:Lcom/miui/gamebooster/aihelper/d;

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

    new-instance p1, Lcom/miui/gamebooster/aihelper/d$d$a;

    iget-object v0, p0, Lcom/miui/gamebooster/aihelper/d$d$a;->b:Lcom/miui/gamebooster/aihelper/d;

    invoke-direct {p1, v0, p2}, Lcom/miui/gamebooster/aihelper/d$d$a;-><init>(Lcom/miui/gamebooster/aihelper/d;Ltj/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Llk/i0;

    check-cast p2, Ltj/d;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gamebooster/aihelper/d$d$a;->invoke(Llk/i0;Ltj/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/miui/gamebooster/aihelper/d$d$a;->create(Ljava/lang/Object;Ltj/d;)Ltj/d;

    move-result-object p1

    check-cast p1, Lcom/miui/gamebooster/aihelper/d$d$a;

    sget-object p2, Loj/t;->a:Loj/t;

    invoke-virtual {p1, p2}, Lcom/miui/gamebooster/aihelper/d$d$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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

    iget v1, p0, Lcom/miui/gamebooster/aihelper/d$d$a;->a:I

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

    iget-object p1, p0, Lcom/miui/gamebooster/aihelper/d$d$a;->b:Lcom/miui/gamebooster/aihelper/d;

    invoke-static {p1}, Lcom/miui/gamebooster/aihelper/d;->e(Lcom/miui/gamebooster/aihelper/d;)Lkotlinx/coroutines/flow/s;

    move-result-object p1

    new-instance v1, Lcom/miui/gamebooster/aihelper/d$b$d;

    iget-object v3, p0, Lcom/miui/gamebooster/aihelper/d$d$a;->b:Lcom/miui/gamebooster/aihelper/d;

    invoke-static {v3}, Lcom/miui/gamebooster/aihelper/d;->d(Lcom/miui/gamebooster/aihelper/d;)Lcom/miui/gamebooster/aihelper/e;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gamebooster/aihelper/d$d$a;->b:Lcom/miui/gamebooster/aihelper/d;

    invoke-static {v4}, Lcom/miui/gamebooster/aihelper/d;->c(Lcom/miui/gamebooster/aihelper/d;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    const-string v4, "packageName"

    invoke-static {v4}, Lbk/m;->r(Ljava/lang/String;)V

    const/4 v4, 0x0

    :cond_2
    invoke-virtual {v3, v4}, Lcom/miui/gamebooster/aihelper/e;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/miui/gamebooster/aihelper/d$b$d;-><init>(Ljava/lang/String;)V

    iput v2, p0, Lcom/miui/gamebooster/aihelper/d$d$a;->a:I

    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/r;->emit(Ljava/lang/Object;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method
