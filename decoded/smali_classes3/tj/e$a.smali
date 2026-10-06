.class public final Ltj/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltj/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Ltj/e;Ltj/g$c;)Ltj/g$b;
    .locals 2
    .param p0    # Ltj/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ltj/g$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ltj/g$b;",
            ">(",
            "Ltj/e;",
            "Ltj/g$c<",
            "TE;>;)TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Ltj/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Ltj/b;

    invoke-interface {p0}, Ltj/g$b;->getKey()Ltj/g$c;

    move-result-object v0

    invoke-virtual {p1, v0}, Ltj/b;->a(Ltj/g$c;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Ltj/b;->b(Ltj/g$b;)Ltj/g$b;

    move-result-object p0

    instance-of p1, p0, Ltj/g$b;

    if-eqz p1, :cond_0

    move-object v1, p0

    :cond_0
    return-object v1

    :cond_1
    sget-object v0, Ltj/e;->e0:Ltj/e$b;

    if-ne v0, p1, :cond_2

    const-string p1, "null cannot be cast to non-null type E of kotlin.coroutines.ContinuationInterceptor.get"

    invoke-static {p0, p1}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object p0, v1

    :goto_0
    return-object p0
.end method

.method public static b(Ltj/e;Ltj/g$c;)Ltj/g;
    .locals 1
    .param p0    # Ltj/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ltj/g$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltj/e;",
            "Ltj/g$c<",
            "*>;)",
            "Ltj/g;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Ltj/b;

    if-eqz v0, :cond_1

    check-cast p1, Ltj/b;

    invoke-interface {p0}, Ltj/g$b;->getKey()Ltj/g$c;

    move-result-object v0

    invoke-virtual {p1, v0}, Ltj/b;->a(Ltj/g$c;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Ltj/b;->b(Ltj/g$b;)Ltj/g$b;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object p0, Ltj/h;->a:Ltj/h;

    :cond_0
    return-object p0

    :cond_1
    sget-object v0, Ltj/e;->e0:Ltj/e$b;

    if-ne v0, p1, :cond_2

    sget-object p0, Ltj/h;->a:Ltj/h;

    :cond_2
    return-object p0
.end method
