.class public final Ltj/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lak/p;Ljava/lang/Object;Ltj/d;)V
    .locals 1
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
            "-TT;>;)V"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Luj/b;->a(Lak/p;Ljava/lang/Object;Ltj/d;)Ltj/d;

    move-result-object p0

    invoke-static {p0}, Luj/b;->b(Ltj/d;)Ltj/d;

    move-result-object p0

    sget-object p1, Loj/m;->b:Loj/m$a;

    sget-object p1, Loj/t;->a:Loj/t;

    invoke-static {p1}, Loj/m;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ltj/d;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
