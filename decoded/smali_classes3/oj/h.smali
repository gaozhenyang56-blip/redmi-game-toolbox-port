.class Loj/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Loj/h$a;
    }
.end annotation


# direct methods
.method public static a(Lak/a;)Loj/f;
    .locals 3
    .param p0    # Lak/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lak/a<",
            "+TT;>;)",
            "Loj/f<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "initializer"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Loj/p;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2, v1}, Loj/p;-><init>(Lak/a;Ljava/lang/Object;ILbk/g;)V

    return-object v0
.end method

.method public static b(Loj/j;Lak/a;)Loj/f;
    .locals 2
    .param p0    # Loj/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lak/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Loj/j;",
            "Lak/a<",
            "+TT;>;)",
            "Loj/f<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "mode"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initializer"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Loj/h$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v0, :cond_2

    if-eq p0, v1, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    new-instance p0, Loj/u;

    invoke-direct {p0, p1}, Loj/u;-><init>(Lak/a;)V

    goto :goto_0

    :cond_0
    new-instance p0, Loj/k;

    invoke-direct {p0}, Loj/k;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Loj/o;

    invoke-direct {p0, p1}, Loj/o;-><init>(Lak/a;)V

    goto :goto_0

    :cond_2
    new-instance p0, Loj/p;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1, v0}, Loj/p;-><init>(Lak/a;Ljava/lang/Object;ILbk/g;)V

    :goto_0
    return-object p0
.end method
