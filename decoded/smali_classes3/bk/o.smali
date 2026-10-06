.class public abstract Lbk/o;
.super Lbk/q;
.source "SourceFile"

# interfaces
.implements Lhk/e;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation build Lkotlin/SinceKotlin;
        version = "1.4"
    .end annotation

    invoke-direct/range {p0 .. p5}, Lbk/q;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public b()Lhk/g$a;
    .locals 1

    invoke-virtual {p0}, Lbk/u;->i()Lhk/h;

    move-result-object v0

    check-cast v0, Lhk/e;

    invoke-interface {v0}, Lhk/g;->b()Lhk/g$a;

    move-result-object v0

    return-object v0
.end method

.method protected d()Lhk/a;
    .locals 1

    invoke-static {p0}, Lbk/z;->d(Lbk/o;)Lhk/e;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1}, Lhk/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
