.class final Landroidx/window/layout/v$b;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lak/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/window/layout/v;->a(Landroid/app/Activity;)Lkotlinx/coroutines/flow/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/j;",
        "Lak/p<",
        "Lkotlinx/coroutines/flow/f<",
        "-",
        "Landroidx/window/layout/x;",
        ">;",
        "Ltj/d<",
        "-",
        "Loj/t;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002*\u0008\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@"
    }
    d2 = {
        "Lkotlinx/coroutines/flow/f;",
        "Landroidx/window/layout/x;",
        "Loj/t;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.window.layout.WindowInfoTrackerImpl$windowLayoutInfo$1"
    f = "WindowInfoTrackerImpl.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1
    }
    l = {
        0x36,
        0x37
    }
    m = "invokeSuspend"
    n = {
        "$this$flow",
        "listener",
        "$this$flow",
        "listener"
    }
    s = {
        "L$0",
        "L$1",
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:I

.field private synthetic d:Ljava/lang/Object;

.field final synthetic e:Landroidx/window/layout/v;

.field final synthetic f:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroidx/window/layout/v;Landroid/app/Activity;Ltj/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/window/layout/v;",
            "Landroid/app/Activity;",
            "Ltj/d<",
            "-",
            "Landroidx/window/layout/v$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/window/layout/v$b;->e:Landroidx/window/layout/v;

    iput-object p2, p0, Landroidx/window/layout/v$b;->f:Landroid/app/Activity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILtj/d;)V

    return-void
.end method

.method public static synthetic d(Lnk/f;Landroidx/window/layout/x;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/window/layout/v$b;->f(Lnk/f;Landroidx/window/layout/x;)V

    return-void
.end method

.method private static final f(Lnk/f;Landroidx/window/layout/x;)V
    .locals 1

    const-string v0, "info"

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lnk/z;->m(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance v0, Landroidx/window/layout/v$b;

    iget-object v1, p0, Landroidx/window/layout/v$b;->e:Landroidx/window/layout/v;

    iget-object v2, p0, Landroidx/window/layout/v$b;->f:Landroid/app/Activity;

    invoke-direct {v0, v1, v2, p2}, Landroidx/window/layout/v$b;-><init>(Landroidx/window/layout/v;Landroid/app/Activity;Ltj/d;)V

    iput-object p1, v0, Landroidx/window/layout/v$b;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public final e(Lkotlinx/coroutines/flow/f;Ltj/d;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lkotlinx/coroutines/flow/f;
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
            "Lkotlinx/coroutines/flow/f<",
            "-",
            "Landroidx/window/layout/x;",
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

    invoke-virtual {p0, p1, p2}, Landroidx/window/layout/v$b;->create(Ljava/lang/Object;Ltj/d;)Ltj/d;

    move-result-object p1

    check-cast p1, Landroidx/window/layout/v$b;

    sget-object p2, Loj/t;->a:Loj/t;

    invoke-virtual {p1, p2}, Landroidx/window/layout/v$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/f;

    check-cast p2, Ltj/d;

    invoke-virtual {p0, p1, p2}, Landroidx/window/layout/v$b;->e(Lkotlinx/coroutines/flow/f;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Landroidx/window/layout/v$b;->c:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroidx/window/layout/v$b;->b:Ljava/lang/Object;

    check-cast v1, Lnk/h;

    iget-object v4, p0, Landroidx/window/layout/v$b;->a:Ljava/lang/Object;

    check-cast v4, Lb0/a;

    iget-object v5, p0, Landroidx/window/layout/v$b;->d:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/flow/f;

    :try_start_0
    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object p1, v5

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Landroidx/window/layout/v$b;->b:Ljava/lang/Object;

    check-cast v1, Lnk/h;

    iget-object v4, p0, Landroidx/window/layout/v$b;->a:Ljava/lang/Object;

    check-cast v4, Lb0/a;

    iget-object v5, p0, Landroidx/window/layout/v$b;->d:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/flow/f;

    :try_start_1
    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v6, v5

    move-object v5, p0

    goto :goto_2

    :cond_2
    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/window/layout/v$b;->d:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/f;

    const/16 v1, 0xa

    sget-object v4, Lnk/e;->b:Lnk/e;

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static {v1, v4, v6, v5, v6}, Lnk/i;->b(ILnk/e;Lak/l;ILjava/lang/Object;)Lnk/f;

    move-result-object v1

    new-instance v4, Landroidx/window/layout/w;

    invoke-direct {v4, v1}, Landroidx/window/layout/w;-><init>(Lnk/f;)V

    iget-object v5, p0, Landroidx/window/layout/v$b;->e:Landroidx/window/layout/v;

    invoke-static {v5}, Landroidx/window/layout/v;->b(Landroidx/window/layout/v;)Landroidx/window/layout/r;

    move-result-object v5

    iget-object v6, p0, Landroidx/window/layout/v$b;->f:Landroid/app/Activity;

    new-instance v7, Landroidx/profileinstaller/g;

    invoke-direct {v7}, Landroidx/profileinstaller/g;-><init>()V

    invoke-interface {v5, v6, v7, v4}, Landroidx/window/layout/r;->b(Landroid/app/Activity;Ljava/util/concurrent/Executor;Lb0/a;)V

    :try_start_2
    invoke-interface {v1}, Lnk/v;->iterator()Lnk/h;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    move-object v5, p0

    :goto_1
    :try_start_3
    iput-object p1, v5, Landroidx/window/layout/v$b;->d:Ljava/lang/Object;

    iput-object v4, v5, Landroidx/window/layout/v$b;->a:Ljava/lang/Object;

    iput-object v1, v5, Landroidx/window/layout/v$b;->b:Ljava/lang/Object;

    iput v3, v5, Landroidx/window/layout/v$b;->c:I

    invoke-interface {v1, v5}, Lnk/h;->a(Ltj/d;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_3

    return-object v0

    :cond_3
    move-object v8, v6

    move-object v6, p1

    move-object p1, v8

    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {v1}, Lnk/h;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/window/layout/x;

    iput-object v6, v5, Landroidx/window/layout/v$b;->d:Ljava/lang/Object;

    iput-object v4, v5, Landroidx/window/layout/v$b;->a:Ljava/lang/Object;

    iput-object v1, v5, Landroidx/window/layout/v$b;->b:Ljava/lang/Object;

    iput v2, v5, Landroidx/window/layout/v$b;->c:I

    invoke-interface {v6, p1, v5}, Lkotlinx/coroutines/flow/f;->emit(Ljava/lang/Object;Ltj/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    move-object p1, v6

    goto :goto_1

    :cond_5
    iget-object p1, v5, Landroidx/window/layout/v$b;->e:Landroidx/window/layout/v;

    invoke-static {p1}, Landroidx/window/layout/v;->b(Landroidx/window/layout/v;)Landroidx/window/layout/r;

    move-result-object p1

    invoke-interface {p1, v4}, Landroidx/window/layout/r;->a(Lb0/a;)V

    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object v5, p0

    :goto_3
    iget-object v0, v5, Landroidx/window/layout/v$b;->e:Landroidx/window/layout/v;

    invoke-static {v0}, Landroidx/window/layout/v;->b(Landroidx/window/layout/v;)Landroidx/window/layout/r;

    move-result-object v0

    invoke-interface {v0, v4}, Landroidx/window/layout/r;->a(Lb0/a;)V

    throw p1
.end method
