.class final Lyc/s$c;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lak/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyc/s;->j(Ljava/lang/String;Z)V
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
    c = "com.miui.permcenter.wakepath.WakePathViewModel$deleteAll$1"
    f = "WakePathViewModel.kt"
    i = {
        0x0
    }
    l = {
        0xd7,
        0xd9,
        0xe6
    }
    m = "invokeSuspend"
    n = {
        "filter"
    }
    s = {
        "L$0"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nWakePathViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WakePathViewModel.kt\ncom/miui/permcenter/wakepath/WakePathViewModel$deleteAll$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,275:1\n1855#2,2:276\n*S KotlinDebug\n*F\n+ 1 WakePathViewModel.kt\ncom/miui/permcenter/wakepath/WakePathViewModel$deleteAll$1\n*L\n225#1:276,2\n*E\n"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lyc/s;

.field final synthetic e:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Lyc/s;ZLtj/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lyc/s;",
            "Z",
            "Ltj/d<",
            "-",
            "Lyc/s$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lyc/s$c;->c:Ljava/lang/String;

    iput-object p2, p0, Lyc/s$c;->d:Lyc/s;

    iput-boolean p3, p0, Lyc/s$c;->e:Z

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

    new-instance p1, Lyc/s$c;

    iget-object v0, p0, Lyc/s$c;->c:Ljava/lang/String;

    iget-object v1, p0, Lyc/s$c;->d:Lyc/s;

    iget-boolean v2, p0, Lyc/s$c;->e:Z

    invoke-direct {p1, v0, v1, v2, p2}, Lyc/s$c;-><init>(Ljava/lang/String;Lyc/s;ZLtj/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Llk/i0;

    check-cast p2, Ltj/d;

    invoke-virtual {p0, p1, p2}, Lyc/s$c;->invoke(Llk/i0;Ltj/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lyc/s$c;->create(Ljava/lang/Object;Ltj/d;)Ltj/d;

    move-result-object p1

    check-cast p1, Lyc/s$c;

    sget-object p2, Loj/t;->a:Loj/t;

    invoke-virtual {p1, p2}, Lyc/s$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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

    iget v1, p0, Lyc/s$c;->b:I

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v5, :cond_2

    if-eq v1, v2, :cond_1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_2
    iget-object v1, p0, Lyc/s$c;->a:Ljava/lang/Object;

    check-cast v1, Lyc/r;

    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_3
    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    invoke-static {}, Lx4/z1;->r()Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lcom/miui/permcenter/r;->f:Landroid/net/Uri;

    goto :goto_1

    :cond_4
    sget-object p1, Lcom/miui/permcenter/r;->g:Landroid/net/Uri;

    :goto_1
    iget-object v1, p0, Lyc/s$c;->c:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lyc/s$c;->d:Lyc/s;

    invoke-static {v1, v5}, Lyc/s;->f(Lyc/s;Z)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-array v6, v5, [Ljava/lang/String;

    iget-object v7, p0, Lyc/s$c;->c:Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-string v7, "callerPkgName =?"

    invoke-virtual {v1, p1, v7, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object p1, p0, Lyc/s$c;->d:Lyc/s;

    invoke-static {p1}, Lyc/s;->c(Lyc/s;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v1, p0, Lyc/s$c;->c:Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lyc/r;

    invoke-virtual {v7}, Lyc/r;->d()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v1}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_2

    :cond_6
    move-object v6, v4

    :goto_2
    move-object v1, v6

    check-cast v1, Lyc/r;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lyc/r;->a()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_7
    if-nez v1, :cond_8

    goto :goto_4

    :cond_8
    iget-object p1, p0, Lyc/s$c;->d:Lyc/s;

    invoke-static {p1}, Lyc/s;->d(Lyc/s;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-boolean p1, p0, Lyc/s$c;->e:Z

    if-eqz p1, :cond_9

    move v3, v8

    goto :goto_3

    :cond_9
    move v3, v5

    :cond_a
    :goto_3
    invoke-virtual {v1, v3}, Lyc/r;->r(I)V

    :goto_4
    iget-object p1, p0, Lyc/s$c;->d:Lyc/s;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v6, p0, Lyc/s$c;->d:Lyc/s;

    invoke-static {v6}, Lyc/s;->c(Lyc/s;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1, v3}, Lyc/s;->g(Lyc/s;Ljava/util/ArrayList;)V

    iget-object p1, p0, Lyc/s$c;->d:Lyc/s;

    invoke-static {p1}, Lyc/s;->e(Lyc/s;)Lkotlinx/coroutines/flow/r;

    move-result-object p1

    iget-object v3, p0, Lyc/s$c;->d:Lyc/s;

    invoke-static {v3}, Lyc/s;->c(Lyc/s;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v1, p0, Lyc/s$c;->a:Ljava/lang/Object;

    iput v5, p0, Lyc/s$c;->b:I

    invoke-interface {p1, v3, p0}, Lkotlinx/coroutines/flow/r;->emit(Ljava/lang/Object;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_b

    return-object v0

    :cond_b
    :goto_5
    if-eqz v1, :cond_e

    sget-object p1, Lyc/q;->a:Lyc/q;

    invoke-virtual {p1}, Lyc/q;->c()Lkotlinx/coroutines/flow/r;

    move-result-object p1

    iput-object v4, p0, Lyc/s$c;->a:Ljava/lang/Object;

    iput v2, p0, Lyc/s$c;->b:I

    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/r;->emit(Ljava/lang/Object;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_e

    return-object v0

    :cond_c
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object p1, p0, Lyc/s$c;->d:Lyc/s;

    invoke-static {p1}, Lyc/s;->c(Lyc/s;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyc/r;

    invoke-virtual {v1}, Lyc/r;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_6

    :cond_d
    iget-object p1, p0, Lyc/s$c;->d:Lyc/s;

    invoke-static {p1}, Lyc/s;->a(Lyc/s;)V

    iget-object p1, p0, Lyc/s$c;->d:Lyc/s;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lyc/s$c;->d:Lyc/s;

    invoke-static {v2}, Lyc/s;->c(Lyc/s;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1, v1}, Lyc/s;->g(Lyc/s;Ljava/util/ArrayList;)V

    iget-object p1, p0, Lyc/s$c;->d:Lyc/s;

    invoke-static {p1}, Lyc/s;->e(Lyc/s;)Lkotlinx/coroutines/flow/r;

    move-result-object p1

    iget-object v1, p0, Lyc/s$c;->d:Lyc/s;

    invoke-static {v1}, Lyc/s;->c(Lyc/s;)Ljava/util/ArrayList;

    move-result-object v1

    iput v3, p0, Lyc/s$c;->b:I

    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/r;->emit(Ljava/lang/Object;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_e

    return-object v0

    :cond_e
    :goto_7
    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method
