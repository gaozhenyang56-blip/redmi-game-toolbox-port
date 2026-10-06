.class Luj/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nIntrinsicsJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IntrinsicsJvm.kt\nkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt\n*L\n1#1,204:1\n165#1,4:205\n186#1:209\n165#1,4:210\n186#1:214\n*S KotlinDebug\n*F\n+ 1 IntrinsicsJvm.kt\nkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt\n*L\n91#1:205,4\n91#1:209\n126#1:210,4\n126#1:214\n*E\n"
    }
.end annotation


# direct methods
.method public static a(Lak/p;Ljava/lang/Object;Ltj/d;)Ltj/d;
    .locals 2
    .param p0    # Lak/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lak/p<",
            "-TR;-",
            "Ltj/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;TR;",
            "Ltj/d<",
            "-TT;>;)",
            "Ltj/d<",
            "Loj/t;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/g;->a(Ltj/d;)Ltj/d;

    move-result-object p2

    instance-of v0, p0, Lkotlin/coroutines/jvm/internal/a;

    if-eqz v0, :cond_0

    check-cast p0, Lkotlin/coroutines/jvm/internal/a;

    invoke-virtual {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/a;->create(Ljava/lang/Object;Ltj/d;)Ltj/d;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ltj/d;->getContext()Ltj/g;

    move-result-object v0

    sget-object v1, Ltj/h;->a:Ltj/h;

    if-ne v0, v1, :cond_1

    new-instance v0, Luj/c$a;

    invoke-direct {v0, p2, p0, p1}, Luj/c$a;-><init>(Ltj/d;Lak/p;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    new-instance v1, Luj/c$b;

    invoke-direct {v1, p2, v0, p0, p1}, Luj/c$b;-><init>(Ltj/d;Ltj/g;Lak/p;Ljava/lang/Object;)V

    move-object p0, v1

    :goto_0
    return-object p0
.end method

.method public static b(Ltj/d;)Ltj/d;
    .locals 1
    .param p0    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ltj/d<",
            "-TT;>;)",
            "Ltj/d<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lkotlin/coroutines/jvm/internal/d;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lkotlin/coroutines/jvm/internal/d;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lkotlin/coroutines/jvm/internal/d;->intercepted()Ltj/d;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object p0, v0

    :cond_2
    :goto_1
    return-object p0
.end method
