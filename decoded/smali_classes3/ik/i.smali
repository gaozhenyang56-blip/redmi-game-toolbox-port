.class Lik/i;
.super Lik/h;
.source "SourceFile"


# direct methods
.method public static a(Ljava/util/Iterator;)Lik/e;
    .locals 1
    .param p0    # Ljava/util/Iterator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TT;>;)",
            "Lik/e<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lik/i$a;

    invoke-direct {v0, p0}, Lik/i$a;-><init>(Ljava/util/Iterator;)V

    invoke-static {v0}, Lik/f;->b(Lik/e;)Lik/e;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lik/e;)Lik/e;
    .locals 1
    .param p0    # Lik/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lik/e<",
            "+TT;>;)",
            "Lik/e<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lik/a;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lik/a;

    invoke-direct {v0, p0}, Lik/a;-><init>(Lik/e;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static c()Lik/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lik/e<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lik/b;->a:Lik/b;

    return-object v0
.end method

.method public static d(Ljava/lang/Object;Lak/l;)Lik/e;
    .locals 2
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Lak/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lak/l<",
            "-TT;+TT;>;)",
            "Lik/e<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lkotlin/internal/LowPriorityInOverloadResolution;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "nextFunction"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_0

    sget-object p0, Lik/b;->a:Lik/b;

    goto :goto_0

    :cond_0
    new-instance v0, Lik/d;

    new-instance v1, Lik/i$b;

    invoke-direct {v1, p0}, Lik/i$b;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1, p1}, Lik/d;-><init>(Lak/a;Lak/l;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static varargs e([Ljava/lang/Object;)Lik/e;
    .locals 1
    .param p0    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lik/e<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "elements"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {}, Lik/f;->c()Lik/e;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lqj/f;->j([Ljava/lang/Object;)Lik/e;

    move-result-object p0

    :goto_1
    return-object p0
.end method
