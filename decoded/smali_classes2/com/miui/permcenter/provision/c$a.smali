.class final Lcom/miui/permcenter/provision/c$a;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lak/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/provision/c;-><init>()V
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
    c = "com.miui.permcenter.provision.ProvisionViewModel$1"
    f = "ProvisionViewModel.kt"
    i = {}
    l = {
        0x1e,
        0x23,
        0x26
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/miui/permcenter/provision/c;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/provision/c;Ltj/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/permcenter/provision/c;",
            "Ltj/d<",
            "-",
            "Lcom/miui/permcenter/provision/c$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/permcenter/provision/c$a;->b:Lcom/miui/permcenter/provision/c;

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

    new-instance p1, Lcom/miui/permcenter/provision/c$a;

    iget-object v0, p0, Lcom/miui/permcenter/provision/c$a;->b:Lcom/miui/permcenter/provision/c;

    invoke-direct {p1, v0, p2}, Lcom/miui/permcenter/provision/c$a;-><init>(Lcom/miui/permcenter/provision/c;Ltj/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Llk/i0;

    check-cast p2, Ltj/d;

    invoke-virtual {p0, p1, p2}, Lcom/miui/permcenter/provision/c$a;->invoke(Llk/i0;Ltj/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/miui/permcenter/provision/c$a;->create(Ljava/lang/Object;Ltj/d;)Ltj/d;

    move-result-object p1

    check-cast p1, Lcom/miui/permcenter/provision/c$a;

    sget-object p2, Loj/t;->a:Loj/t;

    invoke-virtual {p1, p2}, Lcom/miui/permcenter/provision/c$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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

    iget v1, p0, Lcom/miui/permcenter/provision/c$a;->a:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    invoke-static {p1}, Lbm/d;->h(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/permcenter/provision/c$a;->b:Lcom/miui/permcenter/provision/c;

    invoke-static {p1}, Lcom/miui/permcenter/provision/c;->a(Lcom/miui/permcenter/provision/c;)Lkotlinx/coroutines/flow/r;

    move-result-object p1

    sget-object v1, Lcom/miui/permcenter/provision/e$a;->a:Lcom/miui/permcenter/provision/e$a;

    iput v4, p0, Lcom/miui/permcenter/provision/c$a;->a:I

    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/r;->emit(Ljava/lang/Object;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_0
    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1

    :cond_5
    sget-object p1, Lqc/e;->a:Lqc/e;

    invoke-virtual {p1}, Lqc/e;->v()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1, v4}, Lqc/e;->C(Z)V

    iget-object v1, p0, Lcom/miui/permcenter/provision/c$a;->b:Lcom/miui/permcenter/provision/c;

    invoke-static {v1}, Lcom/miui/permcenter/provision/c;->a(Lcom/miui/permcenter/provision/c;)Lkotlinx/coroutines/flow/r;

    move-result-object v1

    new-instance v2, Lcom/miui/permcenter/provision/e$b;

    invoke-virtual {p1}, Lqc/e;->q()Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/miui/permcenter/provision/e$b;-><init>(Ljava/util/List;)V

    iput v3, p0, Lcom/miui/permcenter/provision/c$a;->a:I

    invoke-interface {v1, v2, p0}, Lkotlinx/coroutines/flow/r;->emit(Ljava/lang/Object;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    :goto_1
    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1

    :cond_7
    invoke-virtual {p1}, Lqc/e;->s()Lkotlinx/coroutines/flow/s;

    move-result-object p1

    new-instance v1, Lcom/miui/permcenter/provision/c$a$a;

    iget-object v3, p0, Lcom/miui/permcenter/provision/c$a;->b:Lcom/miui/permcenter/provision/c;

    invoke-direct {v1, v3}, Lcom/miui/permcenter/provision/c$a$a;-><init>(Lcom/miui/permcenter/provision/c;)V

    iput v2, p0, Lcom/miui/permcenter/provision/c$a;->a:I

    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/w;->collect(Lkotlinx/coroutines/flow/f;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    :cond_8
    :goto_2
    new-instance p1, Loj/e;

    invoke-direct {p1}, Loj/e;-><init>()V

    throw p1
.end method
