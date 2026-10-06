.class public abstract Lbk/s;
.super Lbk/u;
.source "SourceFile"

# interfaces
.implements Lhk/f;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation build Lkotlin/SinceKotlin;
        version = "1.4"
    .end annotation

    invoke-direct/range {p0 .. p5}, Lbk/u;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected d()Lhk/a;
    .locals 1

    invoke-static {p0}, Lbk/z;->e(Lbk/s;)Lhk/f;

    move-result-object v0

    return-object v0
.end method

.method public invoke()Ljava/lang/Object;
    .locals 1

    invoke-interface {p0}, Lhk/f;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
