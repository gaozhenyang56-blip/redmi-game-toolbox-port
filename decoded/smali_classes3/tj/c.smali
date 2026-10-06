.class public final Ltj/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltj/g;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lkotlin/SinceKotlin;
    version = "1.3"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCoroutineContextImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineContextImpl.kt\nkotlin/coroutines/CombinedContext\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,196:1\n1#2:197\n*E\n"
    }
.end annotation


# instance fields
.field private final a:Ltj/g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Ltj/g$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ltj/g;Ltj/g$b;)V
    .locals 1
    .param p1    # Ltj/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ltj/g$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "left"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltj/c;->a:Ltj/g;

    iput-object p2, p0, Ltj/c;->b:Ltj/g$b;

    return-void
.end method

.method private final a(Ltj/g$b;)Z
    .locals 1

    invoke-interface {p1}, Ltj/g$b;->getKey()Ltj/g$c;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltj/c;->d(Ltj/g$c;)Ltj/g$b;

    move-result-object v0

    invoke-static {v0, p1}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private final b(Ltj/c;)Z
    .locals 1

    :goto_0
    iget-object v0, p1, Ltj/c;->b:Ltj/g$b;

    invoke-direct {p0, v0}, Ltj/c;->a(Ltj/g$b;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p1, p1, Ltj/c;->a:Ltj/g;

    instance-of v0, p1, Ltj/c;

    if-eqz v0, :cond_1

    check-cast p1, Ltj/c;

    goto :goto_0

    :cond_1
    const-string v0, "null cannot be cast to non-null type kotlin.coroutines.CoroutineContext.Element"

    invoke-static {p1, v0}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ltj/g$b;

    invoke-direct {p0, p1}, Ltj/c;->a(Ltj/g$b;)Z

    move-result p1

    return p1
.end method

.method private final h()I
    .locals 3

    const/4 v0, 0x2

    move-object v1, p0

    :goto_0
    iget-object v1, v1, Ltj/c;->a:Ltj/g;

    instance-of v2, v1, Ltj/c;

    if-eqz v2, :cond_0

    check-cast v1, Ltj/c;

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public d(Ltj/g$c;)Ltj/g$b;
    .locals 2
    .param p1    # Ltj/g$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ltj/g$b;",
            ">(",
            "Ltj/g$c<",
            "TE;>;)TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    :goto_0
    iget-object v1, v0, Ltj/c;->b:Ltj/g$b;

    invoke-interface {v1, p1}, Ltj/g$b;->d(Ltj/g$c;)Ltj/g$b;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    iget-object v0, v0, Ltj/c;->a:Ltj/g;

    instance-of v1, v0, Ltj/c;

    if-eqz v1, :cond_1

    check-cast v0, Ltj/c;

    goto :goto_0

    :cond_1
    invoke-interface {v0, p1}, Ltj/g;->d(Ltj/g$c;)Ltj/g$b;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Ltj/c;

    if-eqz v0, :cond_0

    check-cast p1, Ltj/c;

    invoke-direct {p1}, Ltj/c;->h()I

    move-result v0

    invoke-direct {p0}, Ltj/c;->h()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-direct {p1, p0}, Ltj/c;->b(Ltj/c;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public g(Ltj/g;)Ltj/g;
    .locals 0
    .param p1    # Ltj/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Ltj/g$a;->a(Ltj/g;Ltj/g;)Ltj/g;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Ltj/c;->a:Ltj/g;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Ltj/c;->b:Ltj/g$b;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public l(Ltj/g$c;)Ltj/g;
    .locals 2
    .param p1    # Ltj/g$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltj/g$c<",
            "*>;)",
            "Ltj/g;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ltj/c;->b:Ltj/g$b;

    invoke-interface {v0, p1}, Ltj/g$b;->d(Ltj/g$c;)Ltj/g$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Ltj/c;->a:Ltj/g;

    return-object p1

    :cond_0
    iget-object v0, p0, Ltj/c;->a:Ltj/g;

    invoke-interface {v0, p1}, Ltj/g;->l(Ltj/g$c;)Ltj/g;

    move-result-object p1

    iget-object v0, p0, Ltj/c;->a:Ltj/g;

    if-ne p1, v0, :cond_1

    move-object p1, p0

    goto :goto_0

    :cond_1
    sget-object v0, Ltj/h;->a:Ltj/h;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Ltj/c;->b:Ltj/g$b;

    goto :goto_0

    :cond_2
    new-instance v0, Ltj/c;

    iget-object v1, p0, Ltj/c;->b:Ltj/g$b;

    invoke-direct {v0, p1, v1}, Ltj/c;-><init>(Ltj/g;Ltj/g$b;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public o(Ljava/lang/Object;Lak/p;)Ljava/lang/Object;
    .locals 1
    .param p2    # Lak/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lak/p<",
            "-TR;-",
            "Ltj/g$b;",
            "+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "operation"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ltj/c;->a:Ltj/g;

    invoke-interface {v0, p1, p2}, Ltj/g;->o(Ljava/lang/Object;Lak/p;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Ltj/c;->b:Ltj/g$b;

    invoke-interface {p2, p1, v0}, Lak/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v1, Ltj/c$a;->a:Ltj/c$a;

    const-string v2, ""

    invoke-virtual {p0, v2, v1}, Ltj/c;->o(Ljava/lang/Object;Lak/p;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
