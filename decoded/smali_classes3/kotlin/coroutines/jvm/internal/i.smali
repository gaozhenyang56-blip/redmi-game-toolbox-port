.class public abstract Lkotlin/coroutines/jvm/internal/i;
.super Lkotlin/coroutines/jvm/internal/a;
.source "SourceFile"


# annotations
.annotation build Lkotlin/SinceKotlin;
    version = "1.3"
.end annotation


# direct methods
.method public constructor <init>(Ltj/d;)V
    .locals 1
    .param p1    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltj/d<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lkotlin/coroutines/jvm/internal/a;-><init>(Ltj/d;)V

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ltj/d;->getContext()Ltj/g;

    move-result-object p1

    sget-object v0, Ltj/h;->a:Ltj/h;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Coroutines with restricted suspension must have EmptyCoroutineContext"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public getContext()Ltj/g;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Ltj/h;->a:Ltj/h;

    return-object v0
.end method
