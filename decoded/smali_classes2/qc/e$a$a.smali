.class final Lqc/e$a$a;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lak/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqc/e$a;->onChange(Z)V
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
    c = "com.miui.permcenter.provision.ProvisionHelper$1$onChange$2"
    f = "ProvisionHelper.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I


# direct methods
.method constructor <init>(Ltj/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltj/d<",
            "-",
            "Lqc/e$a$a;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILtj/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ltj/d;)Ltj/d;
    .locals 0
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

    new-instance p1, Lqc/e$a$a;

    invoke-direct {p1, p2}, Lqc/e$a$a;-><init>(Ltj/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Llk/i0;

    check-cast p2, Ltj/d;

    invoke-virtual {p0, p1, p2}, Lqc/e$a$a;->invoke(Llk/i0;Ltj/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lqc/e$a$a;->create(Ljava/lang/Object;Ltj/d;)Ltj/d;

    move-result-object p1

    check-cast p1, Lqc/e$a$a;

    sget-object p2, Loj/t;->a:Loj/t;

    invoke-virtual {p1, p2}, Lqc/e$a$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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

    iget v0, p0, Lqc/e$a$a;->a:I

    if-nez v0, :cond_1

    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    :try_start_0
    sget-object p1, Loj/m;->b:Loj/m$a;

    sget-object p1, Lqc/e;->a:Lqc/e;

    invoke-virtual {p1}, Lqc/e;->r()Lcom/google/gson/Gson;

    move-result-object p1

    invoke-static {}, Lqc/e;->e()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lqc/d;->a:Lqc/d;

    invoke-virtual {v0}, Lqc/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lbl/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Loj/t;->a:Loj/t;

    invoke-static {p1}, Loj/m;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v0, Loj/m;->b:Loj/m$a;

    invoke-static {p1}, Loj/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Loj/m;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Loj/m;->f(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Loj/m;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    const-string v0, "ProvisionExtra"

    const-string v1, "storeStatus error"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
