.class public final Luj/b;
.super Luj/d;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Lak/p;Ljava/lang/Object;Ltj/d;)Ltj/d;
    .locals 0
    .param p0    # Lak/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1, p2}, Luj/c;->a(Lak/p;Ljava/lang/Object;Ltj/d;)Ltj/d;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic b(Ltj/d;)Ltj/d;
    .locals 0
    .param p0    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Luj/c;->b(Ltj/d;)Ltj/d;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic c()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Luj/d;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
